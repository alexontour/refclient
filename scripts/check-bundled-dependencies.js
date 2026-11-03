const fs = require('node:fs');
const path = require('node:path');
const crypto = require('node:crypto');
const directory = path.resolve(__dirname, '../ref-client-ihe/librariesNeeded/repo/net/ihe/gazelle');
const manifest = fs.readFileSync(path.join(directory, 'SHA256SUMS'), 'utf8').trim().split(/\r?\n/);
for (const line of manifest) {
  const match = /^([a-f0-9]{64})  (.+)$/.exec(line);
  if (!match) throw new Error('Invalid checksum manifest entry');
  const file = path.resolve(directory, match[2]);
  if (!file.startsWith(directory + path.sep)) throw new Error('Invalid artifact path');
  const bytes = fs.readFileSync(file);
  const sha256 = crypto.createHash('sha256').update(bytes).digest('hex');
  const sha1 = crypto.createHash('sha1').update(bytes).digest('hex');
  if (sha256 !== match[1] || sha1 !== fs.readFileSync(file + '.sha1', 'utf8').trim())
    throw new Error('Bundled dependency checksum mismatch: ' + match[2]);
}
console.log('PASS: ' + manifest.length + ' bundled artifacts match SHA-256 and original SHA-1 checksums.');
