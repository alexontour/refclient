const { test, expect } = require('@playwright/test');

test('PVP demo login, reload, protocol and logout', async ({ page, context }, testInfo) => {
  const errors = [];
  page.on('pageerror', error => errors.push(error.message));
  page.on('console', message => { if (['error', 'warning'].includes(message.type())) errors.push(message.text()); });
  await page.goto('/');
  await expect(page).toHaveTitle(/eImpfpass/);
  await expect(page.locator('#demo-session')).toContainText('Nicht angemeldet');
  await page.getByRole('button', { name: 'Mit PVP-Demobenutzer anmelden' }).click();
  await expect(page.locator('#demo-session')).toContainText('Dr. Anna Demo · Landessanitätsdirektion Salzburg, Referat 20902, Abteilung 9 Gesundheit, Land Salzburg');
  await expect(page.locator('#demo-session')).toContainText('Amtsärztin/Amtsarzt (716)');
  const session = await (await page.request.get('/api/demo/session')).json();
  expect(session.user).toMatchObject({ organizationId: '1.2.40.0.34.3.1.1177', role: '716', roleName: 'Amtsärztin/Amtsarzt' });
  await expect(page.locator('#activity-panel')).toBeVisible();
  await expect(page.locator('#activity-list')).toContainText('PVP-Demo · Anmeldung erfolgreich');
  await expect(page.locator('#activity-list')).toContainText('Identity Assertion simuliert');
  await page.locator('#activity-source').selectOption('AUTH');
  await expect(page.locator('#activity-list')).toContainText('PVP-Demo · Anmeldung erfolgreich');
  expect(await page.locator('#activity-list .log-entry p').allTextContents()).toEqual(
    expect.arrayContaining([expect.stringContaining('Identity Assertion simuliert')]));
  for (const message of await page.locator('#activity-list .log-entry p').allTextContents())
    expect(message).toMatch(/^PVP-Demo ·|\/api\/demo\/(?:login|logout)(?:\s|$)/);
  await page.locator('#activity-filter').fill('PVP-Demo');
  await page.getByRole('button', { name: 'Identity Assertion anzeigen', exact: true }).last().click();
  await expect(page.locator('#request-dialog')).toBeVisible();
  await expect(page.locator('.assertion-xml')).toContainText('<saml:NameID>demo-anna</saml:NameID>');
  await expect(page.locator('.assertion-xml')).toContainText('urn:refclient:demo:ets');
  await page.screenshot({ path: `/tmp/pvp-demo-${testInfo.project.name}.png` });
  await page.locator('#request-dialog').getByRole('button', { name: 'Schließen', exact: true }).click();
  const cookie = (await context.cookies()).find(cookie => cookie.name === 'refclient_demo_session');
  expect(cookie.httpOnly).toBe(true);
  expect(cookie.sameSite).toBe('Strict');
  const feedResponse = await page.request.get('/api/eimpf/activity');
  const feed = await feedResponse.text();
  expect(feed).not.toContain(cookie.value);
  const assertions = JSON.parse(feed).events.filter(e => e.assertion).slice(-3).map(e => e.assertion);
  expect(assertions.map(a => a.kind)).toEqual(['Identity', 'HCP', 'eImpf-Kontext']);
  expect(assertions[1].parentId).toBe(assertions[0].id);
  expect(assertions[2].parentId).toBe(assertions[1].id);
  for (const assertion of assertions) {
    expect(assertion.signed).toBe(false);
    expect(assertion.xml).toContain('Landessanitätsdirektion Salzburg, Referat 20902, Abteilung 9 Gesundheit, Land Salzburg');
    expect(assertion.xml).toContain('<saml:AttributeValue>1.2.40.0.34.3.1.1177</saml:AttributeValue>');
    expect(assertion.xml).toContain('<saml:AttributeValue>716</saml:AttributeValue>');
    expect(await page.evaluate(xml => {
      const doc = new DOMParser().parseFromString(xml, 'application/xml');
      return !doc.querySelector('parsererror') && doc.documentElement.namespaceURI === 'urn:oasis:names:tc:SAML:2.0:assertion';
    }, assertion.xml)).toBe(true);
  }
  await page.reload();
  await expect(page.locator('#demo-session')).toContainText('Dr. Anna Demo');
  await expect(page.locator('#activity-panel')).toBeVisible();
  await page.getByRole('button', { name: 'eImpf-Kontext Assertion anzeigen', exact: true }).last().click();
  await expect(page.locator('.assertion-xml')).toContainText('saml:AssertionIDRef');
  await page.locator('#request-dialog').getByRole('button', { name: 'Schließen', exact: true }).click();
  await page.getByRole('button', { name: 'Abmelden', exact: true }).click();
  await expect(page.locator('#demo-session')).toContainText('Nicht angemeldet');
  await expect(page.locator('#activity-list')).toContainText('Sitzung widerrufen');
  // Replaying a revoked cookie cannot restore the session.
  const replay = await page.request.get('/api/demo/session', { headers: { Cookie: `refclient_demo_session=${cookie.value}` } });
  expect((await replay.json()).authenticated).toBe(false);
  expect((await page.request.post('/api/demo/login')).status()).toBe(403);
  expect((await page.request.get('/api/demo/logout')).status()).toBe(405);
  expect(errors).toEqual([]);
  expect(await page.locator('body').evaluate(el => el.scrollWidth <= innerWidth)).toBe(true);
});
