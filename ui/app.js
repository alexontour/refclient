function newDocumentId(){if(crypto.randomUUID)return crypto.randomUUID();const bytes=crypto.getRandomValues(new Uint8Array(16));bytes[6]=(bytes[6]&15)|64;bytes[8]=(bytes[8]&63)|128;const hex=[...bytes].map(b=>b.toString(16).padStart(2,'0')).join('');return hex.slice(0,8)+'-'+hex.slice(8,12)+'-'+hex.slice(12,16)+'-'+hex.slice(16,20)+'-'+hex.slice(20)}
const $=id=>document.getElementById(id),form=$('vaccination');
let selectedZpiPatient,template,catalog=[],documents=[],selectedBundle,currentBlob;
let selectedTransferId = null;
async function transferRequest(url, options = {}) {
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), 15000);
  try {
    return await request(url, {...options, signal:controller.signal});
  } catch (error) {
    if (controller.signal.aborted) throw new Error('Zeitüberschreitung nach 15 Sekunden. Status erneut prüfen oder Übertragung wiederholen; derselbe Beleg wird wiederverwendet.');
    throw error;
  } finally {
    clearTimeout(timer);
  }
}
function transferResult(receipt) {
  const complete = receipt.status === 'simulated-success';
  $('transfer-elga').disabled = complete;
  $('transfer-elga').textContent = complete ? 'Übertragung simuliert' : 'An ELGA übertragen (Mock)';
  $('transfer-status').textContent = complete
    ? receipt.message + ' Beleg: ' + receipt.receiptId + ' · ' + new Date(receipt.transferredAt).toLocaleString('de-DE', {timeZone:'Europe/Berlin'}) + ' Uhr (Berlin)'
    : 'Dieses Dokument wurde noch nicht an ELGA übertragen (Mock).';
}
async function showTransfer(url) {
  const id = url?.match(/^\/api\/eimpf\/documents\/([0-9a-f-]+)\/cda$/i)?.[1] || null;
  selectedTransferId = id;
  $('transfer-panel').hidden = !id;
  if (!id) return;
  $('transfer-elga').disabled = true;
  $('transfer-status').textContent = 'Übertragungsstatus wird geladen …';
  try {
    const receipt = await transferRequest('/api/eimpf/documents/' + id + '/transfer');
    if (selectedTransferId === id) transferResult(receipt);
  } catch (error) {
    if (selectedTransferId === id) {
      $('transfer-elga').disabled = false;
      $('transfer-elga').textContent = 'An ELGA übertragen (Mock)';
      $('transfer-status').textContent = 'Übertragungsstatus nicht verfügbar: ' + error.message;
    }
  }
}
$('transfer-elga').onclick = async () => {
  const id = selectedTransferId;
  if (!id) return;
  $('transfer-elga').disabled = true;
  $('transfer-status').textContent = 'Übertragung an ELGA wird simuliert …';
  try {
    const receipt = await transferRequest('/api/eimpf/documents/' + id + '/transfer', {method:'POST'});
    if (selectedTransferId === id) transferResult(receipt);
  } catch (error) {
    if (selectedTransferId === id) {
      $('transfer-elga').disabled = false;
      $('transfer-status').textContent = 'Mock-Übertragung fehlgeschlagen: ' + error.message + ' Bitte erneut versuchen.';
    }
  }
};
form.addEventListener('input',e=>{if(['given','family','birth','gender','ssn'].includes(e.target.name)){selectedZpiPatient=null;$('patient-origin').textContent='Patientendaten manuell geändert; kein ZPI-Treffer aktiv.';patientChanged()}});
$('patient-search').onsubmit=async e=>{
  e.preventDefault();const values=Object.fromEntries(new FormData(e.target)),criteria={resourceType:'Patient'},name={};
  if(values.identifier.trim())criteria.identifier=[{value:values.identifier.trim()}];
  if(values.family.trim())name.family=values.family.trim();if(values.given.trim())name.given=[values.given.trim()];
  if(Object.keys(name).length)criteria.name=[name];if(values.birth)criteria.birthDate=values.birth;
  $('patient-search-submit').disabled=true;$('patient-search-status').textContent='ZPI/PDQ-Mock wird abgefragt …';$('patient-matches').replaceChildren();
  try{
    const result=await request('/api/eimpf/patients/search',{method:'POST',headers:{'Content-Type':'application/fhir+json'},body:JSON.stringify(criteria)});
    $('patient-search-status').textContent=result.total+' Treffer im synthetischen ZPI-/PDQ-Index. Patient auswählen, um Demografie und Kennungen zu übernehmen.';
    for(const entry of result.entry||[]){const p=entry.resource,row=document.createElement('div'),label=document.createElement('p'),button=document.createElement('button');row.className='patient-match';label.textContent=patientName(p)+' · '+p.birthDate+' · SVNR '+p.identifier[0].value;button.type='button';button.textContent='Patient übernehmen';button.onclick=()=>{selectedZpiPatient=structuredClone(p);const n=p.name[0];form.elements.given.value=(n.given||[]).join(' ');form.elements.family.value=n.family;form.elements.birth.value=p.birthDate;form.elements.gender.value=p.gender;form.elements.ssn.value=p.identifier[0].value;$('patient-origin').textContent='Aus ZPI-/PDQ-Mock übernommen: '+patientName(p)+' · '+p.identifier.length+' Testkennungen.';patientChanged();tab('create');$('create').scrollIntoView({behavior:'smooth',block:'start'})};row.append(label,button);$('patient-matches').append(row)}
  }catch(error){$('patient-search-status').textContent='Patientensuche fehlgeschlagen: '+error.message}
  finally{$('patient-search-submit').disabled=false}
};
function status(message,error=false){$('status').textContent=message;$('status').classList.toggle('error',error)}
const requestDetails=new Map();
async function request(url,options){
  const r=await fetch(url,options),text=await r.text(),id=r.headers.get('X-Request-ID');
  if(id){
    const limit=128*1024,clip=value=>{const s=String(value||'');return {text:s.slice(0,limit),truncated:s.length>limit}};
    requestDetails.set(id,{url,method:options?.method||'GET',requestHeaders:Object.fromEntries(new Headers(options?.headers).entries()),requestBody:clip(options?.body),status:r.status,responseHeaders:Object.fromEntries(r.headers.entries()),responseBody:clip(text)});
    while(requestDetails.size>100)requestDetails.delete(requestDetails.keys().next().value);
  }
  if(!r.ok){let message=text;try{message=JSON.parse(text).issue?.[0]?.diagnostics||text}catch{}throw Error(message)}return (r.headers.get('content-type')||'').includes('json')?JSON.parse(text):text
}
function tab(name){$('create').hidden=name!=='create';$('records').hidden=name!=='records';$('tab-create').setAttribute('aria-pressed',String(name==='create'));$('tab-records').setAttribute('aria-pressed',String(name==='records'))}
function build(){const v=Object.fromEntries(new FormData(form)),b=structuredClone(template);b.identifier={system:v.oid,value:newDocumentId()};const r=t=>b.entry.find(e=>e.resource.resourceType===t).resource,c=r('Composition'),p=r('Patient'),i=r('Immunization'),d=r('Practitioner'),o=r('Organization'),now=new Date().toISOString();if(selectedZpiPatient)Object.assign(p,structuredClone(selectedZpiPatient),{id:p.id});c.date=now;c.attester[0].time=now;c.event[0].period={start:v.date,end:v.date};p.name[0].given=[v.given];p.name[0].family=v.family;p.birthDate=v.birth;p.gender=v.gender;p.identifier[0].value=v.ssn;d.name[0].given=[v.doctorGiven];d.name[0].family=v.doctorFamily;o.name=v.organization;o.identifier[0]={system:v.oid,value:v.oid};i.identifier[0]={system:v.oid,value:newDocumentId()};i.occurrenceDateTime=v.date;i.recorded=now;i.vaccineCode={coding:[{code:v.vaccine}]};i.lotNumber=v.lot;i.expirationDate=v.expiration;i.protocolApplied[0].series=v.series;i.protocolApplied[0].doseNumberString=v.dose;delete i.protocolApplied[0].targetDisease;return b}
function valid(){if(!form.reportValidity())return false;const v=Object.fromEntries(new FormData(form)),today=new Date().toISOString().slice(0,10);if(v.date>today||v.birth>v.date||v.expiration<v.date){status('Datumsangaben prüfen: Geburt vor Impfung, Impfung nicht in der Zukunft, Ablaufdatum nicht vor der Impfung.',true);return false}return true}
async function create(preview){if(!template||!valid())return;const buttons=[...form.querySelectorAll('button')];buttons.forEach(b=>b.disabled=true);status('Impfdokument wird mit HUSKY erzeugt …');try{const data=await request(preview?'/api/v1/Composition':'/api/eimpf/documents',{method:'POST',headers:{'Content-Type':'application/fhir+json'},body:JSON.stringify(build())});if(preview){showXml(data,null);status('CDA-Vorschau erzeugt. Noch nicht abgelegt.')}else{await load();tab('records');await show(data);status('Impfdokument erstellt und abgelegt. Die Anzeige stammt aus dem gespeicherten CDA.')}}catch(e){status(e.message,true)}finally{buttons.forEach(b=>b.disabled=false)}}
function resources(b,t){return(b.entry||[]).map(e=>e.resource).filter(r=>r?.resourceType===t)}
function patientName(p){const n=p?.name?.[0];return n?[...(n.given||[]),n.family||''].join(' '):'Unbekannt'}
function cell(row,text){const td=document.createElement('td');td.textContent=text;row.append(td);return td}
function patientDocuments(){const ssn=form.elements.ssn.value.trim();return /^\d{10}$/.test(ssn)?documents.filter(doc=>resources(doc.bundle,'Patient').some(p=>(p.identifier||[]).some(id=>id.value===ssn))):[]}
function patientChanged(){selectedTransferId=null;$('transfer-panel').hidden=true;++renderVersion;$('detail').hidden=true;$('cda-view').hidden=true;$('cda-view').removeAttribute('srcdoc');selectedBundle=null;render()}
function render(){
  const docs=patientDocuments(),ssn=form.elements.ssn.value.trim();$('rows').replaceChildren();let count=0;
  $('records-patient').textContent='Ausgewählter Patient: '+form.elements.given.value+' '+form.elements.family.value+' · SVNR '+(ssn||'—');
  const entries=docs.flatMap(doc=>resources(doc.bundle,'Immunization').map(i=>({doc,i}))).sort((a,b)=>(b.i.occurrenceDateTime||'').localeCompare(a.i.occurrenceDateTime||''));
  for(const {doc,i} of entries){count++;const row=document.createElement('tr');cell(row,(i.occurrenceDateTime||'').slice(0,10));const code=i.vaccineCode?.coding?.[0];cell(row,code?.display||catalog.find(v=>v.code===code?.code)?.name||code?.code||'Nicht angegeben');cell(row,i.lotNumber||'—');cell(row,i.protocolApplied?.[0]?.doseNumberString||i.protocolApplied?.[0]?.doseNumberPositiveInt||'—');const button=document.createElement('button');button.textContent='Dokument anzeigen';button.onclick=()=>show(doc).catch(e=>status(e.message,true));cell(row,'').append(button);$('rows').append(row)}
  $('passport-summary').textContent=count+' Impfung(en) aus '+docs.length+' gespeicherten Dokument(en).';
  $('document-list').replaceChildren();for(const doc of docs){const item=document.createElement('li'),button=document.createElement('button');button.textContent='Impfdokument · '+resources(doc.bundle,'Immunization').length+' Impfung(en) · '+doc.id;button.onclick=()=>show(doc).catch(e=>status(e.message,true));item.append(button);$('document-list').append(item)}
  $('record-table').hidden=!count;$('empty').hidden=!!docs.length;$('empty').textContent=/^\d{10}$/.test(ssn)?'Für diesen Patienten sind keine Impfdokumente gespeichert.':'Bitte einen Patienten auswählen oder eine gültige SVNR erfassen.';
}
async function load(){documents=await request('/api/eimpf/documents');render()}
async function show(doc){if(!patientDocuments().some(d=>d.id===doc.id))return;const ssn=form.elements.ssn.value.trim(),xml=await request(doc.cdaUrl);if(ssn!==form.elements.ssn.value.trim())return;selectedBundle=doc.bundle;const p=resources(doc.bundle,'Patient')[0];$('detail-title').textContent='Impfdokument · '+patientName(p);$('detail-summary').textContent='Aus gespeichertem CDA gelesen · '+resources(doc.bundle,'Immunization').length+' Impfung(en) · Geburtsdatum '+(p?.birthDate||'—');$('fhir').textContent=JSON.stringify(doc.bundle,null,2);showXml(xml,doc.cdaUrl)}
let renderVersion=0;
async function renderCda(xml){const version=++renderVersion,frame=$('cda-view');frame.hidden=true;frame.removeAttribute('srcdoc');$('cda-view-status').textContent='CDA-Dokumentansicht wird erzeugt …';try{const html=await request('/api/eimpf/cda/view',{method:'POST',headers:{'Content-Type':'application/xml'},body:xml});if(version!==renderVersion)return;frame.srcdoc=html;frame.hidden=false;$('cda-view-status').textContent='ELGA-Referenzstylesheet · 1.18.2+20260318'}catch(e){if(version===renderVersion)$('cda-view-status').textContent='CDA-Darstellung fehlgeschlagen: '+e.message}}
function showXml(xml,url){showTransfer(url);$('detail').hidden=false;$('xml').textContent=xml;if(currentBlob)URL.revokeObjectURL(currentBlob);currentBlob=URL.createObjectURL(new Blob([xml],{type:'application/xml'}));$('download-cda').href=url||currentBlob;$('download-cda').download='eimpfpass.xml';$('download-fhir').hidden=!url;$('fhir-details').hidden=!url;if(!url){$('detail-title').textContent='CDA-Vorschau';$('detail-summary').textContent='Mit originaler HUSKY-Logik erzeugt; noch nicht abgelegt.';$('fhir').textContent='FHIR-Anzeige nach dem Ablegen verfügbar.'}renderCda(xml);$('detail').scrollIntoView({behavior:'smooth',block:'start'})}
$('open-cda').onclick=async()=>{const file=$('cda-file').files[0];if(!file){status('Bitte eine CDA-XML-Datei auswählen.',true);return}if(file.size>1048576){status('Maximal 1 MB pro Dokument.',true);return}try{showXml(await file.text(),null);$('detail-title').textContent='CDA-Datei · '+file.name;$('detail-summary').textContent='Lokal geöffnete Datei; nicht abgelegt. Keine Prüfung auf vollständige ELGA-Konformität.';status('CDA-Datei geöffnet.')}catch(e){status(e.message,true)}};
form.onsubmit=e=>{e.preventDefault();create(false)};$('preview').onclick=()=>create(true);$('tab-create').onclick=()=>tab('create');$('tab-records').onclick=()=>{tab('records');load().catch(e=>status(e.message,true))};$('refresh').onclick=()=>load().then(()=>status('Impfdokumente aktualisiert.')).catch(e=>status(e.message,true));$('close-detail').onclick=()=>{$('detail').hidden=true};$('download-fhir').onclick=()=>{const a=document.createElement('a'),u=URL.createObjectURL(new Blob([JSON.stringify(selectedBundle,null,2)],{type:'application/fhir+json'}));a.href=u;a.download='eimpfpass.fhir.json';a.click();setTimeout(()=>URL.revokeObjectURL(u),1000)};
(async()=>{try{[template,catalog]=await Promise.all([request('/template.json'),request('/api/eimpf/vaccines')]);$('vaccine').replaceChildren();for(const v of catalog){const o=document.createElement('option');o.value=v.code;o.textContent=(v.name||v.shortName||'Impfstoff')+' · '+v.code;$('vaccine').append(o)}if(catalog.some(v=>v.code==='4209702'))$('vaccine').value='4209702';form.elements.date.value=new Date().toISOString().slice(0,10);form.elements.expiration.value='2027-12-31';await load();status('Bereit. '+catalog.length+' Impfstoffe aus dem mitgelieferten Katalog.')}catch(e){status(e.message,true);$('submit').disabled=true;$('preview').disabled=true}})();
