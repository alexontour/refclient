const { test, expect } = require('@playwright/test');

test('beide Oberflächen sind über den gemeinsamen Einstieg auswählbar', async ({ page }) => {
  const errors = [];
  page.on('pageerror', error => errors.push(error.message));
  await page.goto('/');
  await expect(page).toHaveTitle(/Referenzclient/);
  await page.getByRole('navigation', { name: 'Oberfläche auswählen' }).getByRole('link', { name: 'Schulimpfung', exact: true }).click();
  await expect(page).toHaveURL(/\/schulimpfung\/$/);
  await expect(page).toHaveTitle(/Schulimpfung/);
  await expect(page.getByText('Schulimpfung dokumentieren', { exact: true })).toBeVisible();
  await expect(page.locator('link[href="/schulimpfung/static/app.css"]')).toHaveCount(1);
  await expect(page.locator('body')).toHaveCSS('font-family', /sans-serif/);
  await page.getByRole('navigation', { name: 'Oberfläche auswählen' }).getByRole('link', { name: 'Referenzclient', exact: true }).click();
  await expect(page).toHaveURL(/\/(?:index\.html)?$/);
  await expect(page.getByRole('heading', { name: 'eImpfpass', exact: true })).toBeVisible();
  expect(errors).toEqual([]);
});
