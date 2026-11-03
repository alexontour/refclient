const { test, expect } = require('@playwright/test');

test('Hilfe beschreibt alle Hauptfunktionen und ist aus beiden Oberflächen erreichbar', async ({page}, testInfo) => {
  for (const route of ['/', '/schulimpfung/']) {
    await page.goto(route);
    await page.getByRole('link', {name:'Hilfe & Bedienung', exact:true}).click();
    await expect(page).toHaveTitle('Hilfe & Bedienung · ELGA Referenzclient');
    for (const id of ['start','documents','transfer','login','school','activity','troubleshooting'])
      await expect(page.locator('#' + id)).toBeVisible();
    await expect(page.locator('#transfer')).toContainText('15 Sekunden');
    await expect(page.locator('#login')).toContainText('716');
    await expect(page.locator('#activity')).toContainText('ELGA-Abrufe');
  }
  expect(await page.locator('body').evaluate(el => el.scrollWidth <= innerWidth)).toBe(true);
  await page.screenshot({path:testInfo.outputPath('functional-help.png'), fullPage:true});
});
