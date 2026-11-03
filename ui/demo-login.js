(() => {
  const status = document.getElementById('demo-session');
  const login = document.getElementById('demo-login');
  const logout = document.getElementById('demo-logout');
  let busy = false;
  async function refresh() {
    const response = await fetch('/api/demo/session', {cache: 'no-store'});
    if (!response.ok) throw new Error('Demo-Anmeldung ist nur im lokalen Mock-Betrieb verfügbar.');
    const session = await response.json();
    if (session.mode !== 'pvp-demo') throw new Error('Demo-Anmeldung nicht verfügbar.');
    login.hidden = session.authenticated;
    logout.hidden = !session.authenticated;
    status.textContent = session.authenticated
      ? `${session.user.name} · ${session.user.organization} · ${session.user.roleName} (${session.user.role}) · Demo-Sitzung bis ${new Date(session.expiresAt).toLocaleTimeString('de-DE', {timeZone: 'Europe/Berlin'})} Uhr (Berlin)`
      : 'Nicht angemeldet · Demobenutzer: Dr. Anna Demo · Rolle 716 (Amtsärztin/Amtsarzt)';
  }
  async function act(action) {
    busy = true; login.disabled = logout.disabled = true;
    try {
      await request('/api/demo/' + action, {method: 'POST', headers: {'X-Refclient-Demo': '1'}});
      await refresh();
    } catch (error) { status.textContent = error.message; }
    finally { busy = false; login.disabled = logout.disabled = false; }
  }
  login.onclick = () => act('login');
  logout.onclick = () => act('logout');
  refresh().then(() => { login.disabled = false; }).catch(error => { status.textContent = error.message; });
  setInterval(() => { if (!busy) refresh().catch(error => { status.textContent = error.message; }); }, 15000);
})();
