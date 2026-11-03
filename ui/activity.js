(() => {
  const el = id => document.getElementById(id);
  let entries = [], cursor = 0, runId, paused = false;
  const clock = new Intl.DateTimeFormat('de-AT', {timeZone:'Europe/Berlin',hour:'2-digit',minute:'2-digit',second:'2-digit',fractionalSecondDigits:3});
  const specDialog=document.createElement('dialog');specDialog.id='spec-dialog';specDialog.setAttribute('aria-labelledby','spec-dialog-title');
  const specTitle=document.createElement('h2');specTitle.id='spec-dialog-title';
  const specClose=document.createElement('button');specClose.type='button';specClose.textContent='Beschreibung schließen';specClose.onclick=()=>specDialog.close();
  const specFrame=document.createElement('iframe');specFrame.title='Schnittstellenbeschreibung';specFrame.referrerPolicy='no-referrer';
  const specHint=document.createElement('p');specHint.textContent='Falls die Quelle die Einbettung sperrt, kann die Beschreibung über den folgenden Link in einem neuen Tab geöffnet werden.';
  const specExternal=document.createElement('a');specExternal.textContent='Quelle in neuem Tab öffnen';specExternal.target='_blank';specExternal.rel='noopener noreferrer';
  specDialog.append(specTitle,specClose,specFrame,specHint,specExternal);document.body.append(specDialog);
  specDialog.addEventListener('close',()=>{specFrame.src='about:blank'});
  function specLink(label,url){
    const a=document.createElement('a');a.textContent=label;a.href=url;
    a.onclick=event=>{event.preventDefault();specTitle.textContent=label;specFrame.title=label;specExternal.href=url;specFrame.src=url;specDialog.showModal()};return a;
  }
  function references(e) {
    const m=e.message;
    if(/ELGA-Übertragung \(Mock\)|\/api\/eimpf\/documents\/[^/]+\/transfer(?:\s|$)/.test(m)) return [['Lokale API · ELGA-Übertragung (Mock)','interfaces.html#mock-transfer']];
    if(/PVP-Demo|\/api\/demo\//.test(m)) return [["Lokale API · PVP-Demo-Login","interfaces.html#demo-login"]];
    if(/ZPI\/PDQ|patients\/search/.test(m)) return [
      ['Lokale API · Patientensuche','interfaces.html#patient'],
      ['ELGA Refclient · Patient (Originalschnittstelle)','https://developer.elga.gv.at/apis/elga-referenzclient/v1.0.0/schnitstellen/Patient/'],
      ['IHE PDQ · ITI-47 (fachliche Referenz)','https://profiles.ihe.net/ITI/TF/Volume2/ITI-47.html'],
      ['ELGA · Patientenidentifikation','https://developer.elga.gv.at/apis/BeS/v5.5/impfpass/public/patientenidentifikation/']];
    if(/ELGA Upload/.test(m)) return [['Lokale API · CDA speichern','interfaces.html#documents'],['IHE XDS · ITI-41 (fachliche Referenz)','https://profiles.ihe.net/ITI/TF/Volume2/ITI-41.html']];
    if(/ELGA Suche/.test(m)) return [['Lokale API · Dokumentensuche','interfaces.html#documents'],['IHE XDS · ITI-18 (fachliche Referenz)','https://profiles.ihe.net/ITI/TF/Volume2/ITI-18.html']];
    if(/CDA-Abruf/.test(m)) return [['Lokale API · CDA abrufen','interfaces.html#documents'],['IHE XDS · ITI-43 (fachliche Referenz)','https://profiles.ihe.net/ITI/TF/Volume2/ITI-43.html']];
    if(/Composition|FHIR → CDA|CDA erzeugt/.test(m)) return [['Lokale API · CDA erzeugen','interfaces.html#composition'],['ELGA Refclient · Composition','https://developer.elga.gv.at/apis/elga-referenzclient/v1.0.0/schnitstellen/Composition/']];
    if(/CDA → HTML|cda\/view/.test(m)) return [['Lokale API · CDA darstellen','interfaces.html#view']];
    if(/CDA → FHIR|\/api\/eimpf\/documents/.test(m)) return [['Lokale API · Dokumente','interfaces.html#documents']];
    if(/\/api\/eimpf\/vaccines/.test(m)) return [['Lokale API · Impfstoffkatalog','interfaces.html#vaccines']];
    return [];
  }
  function connection(message, offline=false) { el('activity-state').textContent=message; el('activity-state').classList.toggle('offline',offline); }
  const dialog=document.createElement('dialog');dialog.id='request-dialog';dialog.setAttribute('aria-labelledby','request-dialog-title');
  const title=document.createElement('h2');title.id='request-dialog-title';title.textContent='Request / Response';
  const close=document.createElement('button');close.type='button';close.textContent='Schließen';close.onclick=()=>dialog.close();
  const detail=document.createElement('div');dialog.append(title,close,detail);document.body.append(dialog);
  const pretty=text=>{try{return JSON.stringify(JSON.parse(text),null,2)}catch{return text}};
  function showAssertion(e) {
    const a=e.assertion; title.textContent=a.kind+' Assertion · PVP-Demo'; detail.replaceChildren();
    const hint=document.createElement('p');
    hint.textContent='Synthetisches, unsigniertes Demo-XML. Keine echte PVP-/ELGA-Assertion und keine Signaturprüfung. Kein Sitzungstoken enthalten.';
    const summary=document.createElement('pre');summary.textContent=[
      'Assertion-ID: '+a.id, 'Aussteller: '+a.issuer, 'Zielgruppe (Audience): '+a.audience,
      'Ausgestellt: '+a.issuedAt, 'Gültig bis: '+a.expiresAt,
      'Vorgänger: '+(a.parentId||'– (erste Assertion)'), 'Anfrage-ID: '+e.requestId
    ].join('\n');
    const heading=document.createElement('h3');heading.textContent='Assertion als XML';
    const xml=document.createElement('pre');xml.className='assertion-xml';xml.textContent=a.xml;
    detail.append(hint,summary,heading,xml);dialog.showModal();
  }
  function showDetails(e){
    title.textContent='Request / Response';
    detail.replaceChildren();const data=requestDetails.get(e.requestId),note=document.createElement('p');
    note.textContent='Anfrage '+e.requestId+' · HTTP-Verkehr zwischen dieser UI und dem Referenzclient. Interne Mock-Aufrufe verwenden dieselbe Anfrage-ID.';detail.append(note);
    const specs=document.createElement('nav');specs.className='dialog-specs';specs.setAttribute('aria-label','Schnittstellenspezifikationen');
    const refs=references(data?{message:data.method+' '+data.url}:e);
    refs.push(['ELGA Referenzclient · Schnittstellenübersicht','https://developer.elga.gv.at/apis/elga-referenzclient/v1.0.0/produktbeschreibung/#endpunkte']);
    for(const [label,url] of refs)specs.append(specLink(label,url));detail.append(specs);
    if(!data){const missing=document.createElement('p');missing.textContent='Keine Daten in diesem Browser verfügbar: Die Anfrage stammt aus einer früheren Sitzung oder einem anderen Client, ist noch nicht abgeschlossen oder wurde aus dem begrenzten Speicher entfernt.';detail.append(missing)}
    else{
      const summary=document.createElement('p');summary.textContent=data.method+' '+data.url+' · HTTP '+data.status;detail.append(summary);
      for(const [label,headers,body] of [['Request',data.requestHeaders,data.requestBody],['Response',data.responseHeaders,data.responseBody]]){
        const heading=document.createElement('h3');heading.textContent=label;const pre=document.createElement('pre');pre.textContent=JSON.stringify(headers,null,2)+'\n\n'+(body.text?pretty(body.text):'(kein Body)')+(body.truncated?'\n\n[Anzeige nach 128 KiB Zeichen gekürzt]':'');detail.append(heading,pre);
      }
    }
    dialog.showModal();
  }
  function render() {
    const list=el('activity-list'),position=list.scrollTop,source=el('activity-source').value,query=el('activity-filter').value.toLowerCase();
    const transferRequests = new Set(), statusRequests = new Set(), readRequests = new Set();
    for (const e of entries) {
      if (!e.requestId) continue;
      if (/^POST \/api\/eimpf\/documents\/[^/]+\/transfer(?:\s|$)/.test(e.message)) transferRequests.add(e.requestId);
      else if (/^GET \/api\/eimpf\/documents\/[^/]+\/transfer(?:\s|$)/.test(e.message)) statusRequests.add(e.requestId);
      else if (/^GET \/api\/eimpf\/documents(?:\/[^/]+(?:\/(?:cda|view))?)?(?:\s|$)/.test(e.message)) readRequests.add(e.requestId);
    }
    const category = e => {
      if (transferRequests.has(e.requestId) || /^ELGA-Übertragung \(Mock\)/.test(e.message)) return 'ELGA_TRANSFER';
      if (!statusRequests.has(e.requestId) && (readRequests.has(e.requestId) || /^ELGA Suche|^ELGA-Dokumentmock · CDA-Abruf/.test(e.message))) return 'ELGA_READ';
      return '';
    };
    const visible=entries.filter(e=>(!source||(source==='AUTH'
      ? /^PVP-Demo ·|\/api\/demo\/(?:login|logout)(?:\s|$)/.test(e.message)
      : source.startsWith('ELGA_') ? category(e)===source : source===e.component))&&(!query||(e.message+' '+e.requestId+' '+e.level).toLowerCase().includes(query)));
    const fragment=document.createDocumentFragment();
    for(const e of visible){
      const row=document.createElement('div'); row.className='log-entry '+e.level.toLowerCase();
      const meta=document.createElement('div');meta.className='log-meta';
      const time=document.createElement('time');time.dateTime=e.time;time.title=e.time;time.textContent=clock.format(new Date(e.time));
      const badge=document.createElement('span');badge.className='log-source'+(e.component==='MOCK'?' mock':'');badge.textContent=category(e)==='ELGA_TRANSFER'?'ELGA-Übertragung':category(e)==='ELGA_READ'?'ELGA-Abrufe':e.component==='MOCK'?'ELGA-Mock':'Refclient';
      badge.title=e.component==='MOCK'?'Quelle: ELGA-Mock':'Quelle: Referenzclient';
      const level=document.createElement('span');level.className='log-level';level.textContent=e.level;
      meta.append(time,badge,level);
      const message=document.createElement('p');message.textContent=e.message;row.append(meta,message);
      if(e.requestId){const request=document.createElement('span');request.className='log-request';request.textContent='Anfrage '+e.requestId.slice(0,8);request.title=e.requestId;row.append(request)}
      if(e.requestId){const button=document.createElement('button');button.type='button';button.className='log-detail';button.textContent='Request / Response';button.onclick=()=>showDetails(e);row.append(button)}
      if(e.assertion?.synthetic){const button=document.createElement('button');button.type='button';button.className='log-detail';button.textContent=e.assertion.kind+' Assertion anzeigen';button.onclick=()=>showAssertion(e);row.append(button)}
      const refs=references(e);
      if(refs.length){const links=document.createElement('div');links.className='log-references';for(const [label,url] of refs)links.append(specLink(label,url));row.append(links)}
      fragment.append(row);
    }
    if(!visible.length){const empty=document.createElement('p');empty.textContent=entries.length?'Keine passenden Aktivitäten.':'Noch keine Aktivitäten.';fragment.append(empty)}
    list.replaceChildren(fragment);el('activity-count').textContent=visible.length+' sichtbar · '+entries.length+' Ereignisse';
    list.scrollTop=el('activity-follow').checked?list.scrollHeight:position;
  }
  el('activity-source').onchange=render;el('activity-filter').oninput=render;
  el('activity-follow').onchange=render;
  el('activity-clear').onclick=()=>{entries=[];render()};
  el('activity-pause').onclick=()=>{paused=!paused;el('activity-pause').textContent=paused?'Fortsetzen':'Pausieren';connection(paused?'Pausiert':'Verbinde …',paused)};
  async function poll(){
    try{
      if(paused)return;
      let data=await request('/api/eimpf/activity?after='+cursor);
      if(paused)return;
      if(runId&&runId!==data.runId){entries=[];cursor=0;data=await request('/api/eimpf/activity?after=0')}
      if(paused)return;
      runId=data.runId;
      const gap=cursor>0&&data.firstId>cursor+1;
      if(data.events.length){entries.push(...data.events);entries=entries.slice(-500);render()}
      cursor=data.lastId;
      if(!paused)connection(gap?'Live · ältere Ereignisse ausgelassen':'Live · alle 1 s');
    }catch(e){if(!paused)connection('Verbindung unterbrochen · erneuter Versuch',true)}
    finally{setTimeout(poll,1000)}
  }
  render();poll();
})();
