const { test, expect } = require('@playwright/test');

test('Quellen unterscheiden ELGA-Übertragung, Abrufe und Statusabfragen', async ({ page }, testInfo) => {
  const examples = [
    ['transfer', 'REFCLIENT', 'POST /api/eimpf/documents/123/transfer · Anfrage empfangen'],
    ['transfer', 'MOCK', 'ELGA-Dokumentmock · CDA-Abruf erfolgreich · interne Prüfung'],
    ['transfer', 'MOCK', 'ELGA-Übertragung (Mock) · erfolgreich simuliert · Beleg TEST-BELEG'],
    ['read', 'REFCLIENT', 'GET /api/eimpf/documents/123/cda · Anfrage empfangen'],
    ['read', 'MOCK', 'ELGA-Dokumentmock · CDA-Abruf erfolgreich · Dokument TEST-DOKUMENT'],
    ['search', 'MOCK', 'ELGA Suche erfolgreich · 1 Dokument(e).'],
    ['status', 'REFCLIENT', 'GET /api/eimpf/documents/123/transfer · Anfrage empfangen'],
    ['status', 'MOCK', 'ELGA-Dokumentmock · CDA-Abruf erfolgreich · Statusprüfung'],
    ['patient', 'MOCK', 'ZPI/PDQ-Mock · Patientensuche abgeschlossen'],
    ['save', 'MOCK', 'ELGA Upload erfolgreich · lokale Ablage']
  ];
  const events = examples.map(([requestId, component, message], i) => ({
    id:i+1, requestId, component, message, level:'INFO', time:'2026-11-03T12:00:00Z'
  }));
  await page.route('**/api/eimpf/activity?*', route => {
    const after = Number(new URL(route.request().url()).searchParams.get('after'));
    return route.fulfill({json:{runId:'filter-test', firstId:1, lastId:events.length, events:events.filter(e => e.id > after)}});
  });
  await page.goto('/');
  await expect(page.locator('#activity-panel')).toBeVisible();
  await expect(page.locator('#activity-list .log-entry')).toHaveCount(10);
  await page.locator('#activity-source').selectOption({label:'ELGA-Übertragung'});
  await expect(page.locator('#activity-list .log-entry')).toHaveCount(3);
  await expect(page.locator('#activity-list')).toContainText('TEST-BELEG');
  await expect(page.locator('#activity-list')).not.toContainText('Statusprüfung');
  await page.locator('#activity-source').selectOption({label:'ELGA-Abrufe'});
  await expect(page.locator('#activity-list .log-entry')).toHaveCount(3);
  await expect(page.locator('#activity-list')).toContainText('TEST-DOKUMENT');
  await expect(page.locator('#activity-list')).not.toContainText('interne Prüfung');
  await expect(page.locator('#activity-list')).not.toContainText('Statusprüfung');
  await expect(page.locator('#activity-list')).not.toContainText('lokale Ablage');
  await page.locator('#activity-filter').fill('TEST-DOKUMENT');
  await expect(page.locator('#activity-list .log-entry')).toHaveCount(1);
  await page.locator('#activity-filter').fill('');
  await page.locator('#activity-panel').screenshot({path:testInfo.outputPath('elga-source-filter.png')});
  await page.locator('#activity-source').selectOption('MOCK');
  await expect(page.locator('#activity-list .log-entry')).toHaveCount(7);
});
