// Check local links in the current functional documentation, not generated Javadoc.
const fs = require('node:fs');
const path = require('node:path');
const root = path.resolve(__dirname, '..');
const files = ['README.md', 'docs/Bedienung.md', 'docs/Docker.md',
  'schulimpfung/README.md', 'tests/README.md', 'ui/help.html', 'ui/interfaces.html', 'ui/tests.html'];
const routes = {'/':'ui/index.html', '/schulimpfung/':'schulimpfung/templates/index.html'};
const failures = [];
let checked = 0;
for (const file of files) {
  const text = fs.readFileSync(path.join(root, file), 'utf8');
  const pattern = file.endsWith('.md') ? /\[[^\]]*\]\(([^)]+)\)/g : /(?:href|src)="([^"]+)"/g;
  for (const match of text.matchAll(pattern)) {
    const link = match[1];
    if (/^(?:https?:|data:|mailto:)/.test(link)) continue;
    const relative = decodeURIComponent(link.split(/[?#]/)[0]);
    const target = routes[relative] || (relative.startsWith('/') && file.startsWith('ui/')
      ? 'ui/' + relative.slice(1) : null);
    const absolute = target ? path.join(root, target) : relative
      ? path.resolve(path.dirname(path.join(root, file)), relative) : path.join(root, file);
    if (!absolute.startsWith(root + path.sep) || !fs.existsSync(absolute)) failures.push(file + ': ' + link);
    else checked++;
  }
}
if (failures.length) {
  process.stderr.write('Broken local documentation links:\n' + failures.join('\n') + '\n');
  process.exitCode = 1;
} else console.log('PASS: ' + checked + ' local links in ' + files.length + ' functional documentation files.');
