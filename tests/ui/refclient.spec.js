const { test, expect } = require('@playwright/test');

test.beforeEach(async ({ page, request }) => {
  const health = await request.get('/health');
  expect(health.ok()).toBeTruthy();
  expect(await health.json()).toMatchObject({ mode: 'external-mock' });
  await page.goto('/');
  await expect(page.locator('#status')).toContainText('Bereit.');
  await expect(page.locator('#activity-panel')).toBeVisible();
  await expect(page.getByRole('button', {name:/Protokoll (anzeigen|ausblenden)/})).toHaveCount(0);
});

test('Patient suchen, übernehmen und manuell ändern', async ({ page }) => {
  await page.locator('#patient-search-submit').click();
  await expect(page.locator('#patient-search-status')).toContainText('1 Treffer');
  await page.getByRole('button', { name: 'Patient übernehmen', exact: true }).click();
  await expect(page.locator('#patient-origin')).toContainText('Aus ZPI-/PDQ-Mock übernommen');
  await expect(page.locator('#vaccination input[name="given"]')).toHaveValue('Max');
  await page.locator('#vaccination input[name="given"]').fill('Test');
  await expect(page.locator('#patient-origin')).toContainText('manuell geändert');
});

test('Patientensuche ohne Treffer', async ({ page }) => {
  await page.locator('#patient-search input[name="identifier"]').fill('0000000000');
  await page.locator('#patient-search-submit').click();
  await expect(page.locator('#patient-search-status')).toContainText('0 Treffer');
  await expect(page.locator('#patient-matches button')).toHaveCount(0);
});

test('CDA-Vorschau und Download mit echter HUSKY-Verarbeitung', async ({ page }) => {
  const errors = [];
  page.on('pageerror', error => errors.push(error.message));
  await page.locator('#vaccination input[name="date"]').fill('2026-01-15');
  await page.locator('#vaccination input[name="expiration"]').fill('2027-12-31');
  await page.locator('#preview').click();
  await expect(page.locator('#status')).toContainText('CDA-Vorschau erzeugt');
  await expect(page.locator('#detail')).toBeVisible();
  await expect(page.locator('#transfer-panel')).toBeHidden();
  await expect(page.locator('#xml')).toContainText('ClinicalDocument');
  await expect(page.locator('#cda-view')).toBeVisible();
  await expect(page.locator('#cda-view-status')).toContainText('ELGA-Referenzstylesheet');
  const downloadEvent = page.waitForEvent('download');
  await page.locator('#download-cda').click();
  const download = await downloadEvent;
  expect(download.suggestedFilename()).toBe('eimpfpass.xml');
  expect(await download.failure()).toBeNull();
  await page.locator('#close-detail').click();
  await expect(page.locator('#detail')).toBeHidden();
  expect(errors).toEqual([]);
});

test('gespeichertes eImpfdokument an ELGA übertragen (Mock), Beleg und Wiederholung', async ({ page, request }, testInfo) => {
  test.setTimeout(90000);
  await page.locator('#vaccination input[name="date"]').fill('2026-01-15');
  await page.locator('#vaccination input[name="expiration"]').fill('2027-12-31');
  await page.locator('#submit').click();
  await expect(page.locator('#status')).toContainText('erstellt und abgelegt');
  await expect(page.locator('#transfer-status')).toContainText('noch nicht');
  const cdaUrl = await page.locator('#download-cda').getAttribute('href');
  const endpoint = cdaUrl.replace(/\/cda$/, '/transfer');
  // A stalled connection must release the button and allow a safe retry.
  await page.route('**' + endpoint, route => {
    if (route.request().method() === 'POST') return;
    return route.continue();
  });
  await page.getByRole('button', { name: 'An ELGA übertragen (Mock)', exact: true }).click();
  await expect(page.locator('#transfer-status')).toContainText('Zeitüberschreitung nach 15 Sekunden', {timeout:20000});
  await expect(page.locator('#transfer-elga')).toBeEnabled();
  await page.unroute('**' + endpoint);
  const response = page.waitForResponse(r => r.url().endsWith(endpoint) && r.request().method() === 'POST');
  const started = Date.now();
  await page.getByRole('button', { name: 'An ELGA übertragen (Mock)', exact: true }).click();
  const receipt = await (await response).json();
  expect(Date.now() - started).toBeLessThan(15000);
  expect(receipt).toMatchObject({mode:'external-mock', status:'simulated-success'});
  expect(receipt.receiptId).toMatch(/^[0-9a-f-]{36}$/);
  await expect(page.locator('#transfer-status')).toContainText(receipt.receiptId);
  await expect(page.locator('#transfer-status')).toContainText('Keine externe Übertragung');
  await expect(page.locator('#transfer-elga')).toBeDisabled();
  await page.locator('#transfer-panel').screenshot({path:testInfo.outputPath('elga-transfer.png')});
  expect(await (await request.post(endpoint)).json()).toEqual(receipt);
  expect(await (await request.get(endpoint)).json()).toEqual(receipt);
  const activity = await (await request.get('/api/eimpf/activity')).json();
  expect(JSON.stringify(activity)).toContain('erfolgreich simuliert · Beleg ' + receipt.receiptId);
  expect((await request.post('/api/eimpf/documents/00000000-0000-0000-0000-000000000000/transfer')).status()).toBe(404);
  expect((await request.post('/api/eimpf/documents/invalid/transfer')).status()).toBe(400);
  expect((await request.delete(endpoint)).status()).toBe(405);
});

test('Testzugang bietet die Bruno-Sammlung als ZIP an', async ({ page }) => {
  await page.getByRole('link', { name: 'Bruno-Tests und Testoberfläche' }).click();
  await expect(page).toHaveTitle('Testzugänge · ELGA Referenzclient');
  const downloadEvent = page.waitForEvent('download');
  await page.getByRole('link', { name: 'Bruno-Mock-Sammlung herunterladen (ZIP)' }).click();
  const download = await downloadEvent;
  expect(download.suggestedFilename()).toBe('refclient-bruno-mock.zip');
  expect(await download.failure()).toBeNull();
});
