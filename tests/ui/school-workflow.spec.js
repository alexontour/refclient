const { test, expect } = require('@playwright/test');

test('Schulimpfung von CSV über Bestätigung bis zum gemeinsamen Impfpass', async ({ page }, testInfo) => {
  test.setTimeout(120000);
  const errors = [];
  page.on('pageerror', error => errors.push(error.message));
  await page.goto('/schulimpfung/');
  await page.locator('#student_list').setInputFiles({name:'release-test.csv', mimeType:'text/csv',
    buffer:Buffer.from('vorname,nachname,gebdat,svnr,schule,klasse\nRelease,Testperson,02.01.2010,9999010210,Testschule,1A\n')});
  await page.locator('form.student-upload-form button[type=submit]').click();
  await expect(page.getByText('Upload abgeschlossen', {exact:true})).toBeVisible();
  await page.getByRole('link', {name:'eImpfpass laden', exact:true}).click();
  await expect(page.getByText('eImpfpässe für aktive Schüler wurden heruntergeladen.', {exact:true})).toBeVisible();
  await page.getByRole('link', {name:'Impfung dokumentieren', exact:true}).click();
  const form = page.locator('#vaccinationDocumentationForm');
  for (const [name, value] of [['Schema','SCHEMA005'],['Impfstoff','4209702'],['Dosis','D1'],['Grund','IG1']])
    await form.locator('select[name="' + name + '"]').selectOption(value);
  const lot = 'RELEASE-UI-' + testInfo.project.name + '-' + Date.now();
  await form.locator('input[name="Chargennummer"]').fill(lot);
  await form.locator('input[name="Datum"]').fill('2026-11-01');
  await page.getByRole('button', {name:'Zusammenfassung anzeigen', exact:true}).click();
  const summary = page.getByRole('dialog', {name:'Zusammenfassung', exact:true});
  await expect(summary).toBeVisible();
  await expect(summary).toContainText(lot);
  await summary.getByRole('button', {name:'OK', exact:true}).click();
  await expect(page.getByText('Impfung wurde für aktive Schüler dokumentiert.', {exact:true})).toBeVisible();
  await page.getByRole('button', {name:'eImpfpass hochladen', exact:true}).click();
  await expect(page.getByText('Impfdokumente wurden im gemeinsamen Referenzclient gespeichert.', {exact:true})).toBeVisible();
  await page.screenshot({path:testInfo.outputPath('school-upload.png'), fullPage:true});
  await page.getByRole('navigation', {name:'Oberfläche auswählen'}).getByRole('link', {name:'Referenzclient', exact:true}).click();
  await expect(page.locator('#status')).toContainText('Bereit.');
  await page.locator('#vaccination input[name="ssn"]').fill('9999010210');
  await page.getByRole('button', {name:'Impfpass anzeigen', exact:true}).click();
  await expect(page.locator('#record-table')).toContainText(lot);
  expect(errors).toEqual([]);
});
