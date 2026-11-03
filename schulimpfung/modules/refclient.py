"""Adapter for the reference client's FHIR/CDA API."""
import json
import uuid
from datetime import datetime
from urllib.error import HTTPError, URLError
from urllib.request import Request, urlopen


class RefclientError(RuntimeError):
    pass


class Refclient:
    def __init__(self, base_url):
        self.base_url = base_url.rstrip('/')

    def request(self, path, payload=None):
        data = json.dumps(payload).encode() if payload is not None else None
        request = Request(self.base_url + path, data=data,
                          headers={'Content-Type': 'application/fhir+json'})
        try:
            with urlopen(request, timeout=90) as response:
                body = response.read().decode('utf-8')
                return json.loads(body) if 'json' in response.headers.get('Content-Type', '') else body
        except HTTPError as exc:
            try:
                message = json.loads(exc.read()).get('issue', [{}])[0].get('diagnostics', str(exc))
            except (ValueError, KeyError):
                message = str(exc)
            raise RefclientError(message) from exc
        except (URLError, TimeoutError) as exc:
            raise RefclientError('Referenzclient nicht erreichbar.') from exc

    def bundle(self, record):
        bundle = self.request('/template.json')
        resources = {e['resource']['resourceType']: e['resource'] for e in bundle['entry']}
        oid = record['gda_organisation_oid']
        if not oid:
            raise RefclientError('OID der Organisation fehlt.')
        bundle['identifier'] = {'system': oid, 'value': str(uuid.uuid4())}
        patient = resources['Patient']
        # Do not carry template demographics into another patient's document.
        patient.clear()
        patient.update(resourceType='Patient', id='1',
                       identifier=[{'system': '1.2.40.0.10.1.4.3.1', 'value': record['svnr']}],
                       name=[{'given': [record['patient_vorname']], 'family': record['patient_nachname']}],
                       birthDate=iso_date(record['patient_geburtsdatum']), gender='unknown')
        doctor = resources['Practitioner']
        doctor.clear()
        doctor.update(resourceType='Practitioner', id='1', name=[{
            'given': [record['gda_impfarzt_vorname']], 'family': record['gda_impfarzt_nachname']}])
        organization = resources['Organization']
        organization.clear()
        organization.update(resourceType='Organization', id='1', name=record['gda_organisation_name'],
                            identifier=[{'system': oid, 'value': oid}])
        date = iso_date(record['Datum'])
        now = datetime.now().astimezone().isoformat()
        composition = resources['Composition']
        composition['date'] = now
        composition['attester'][0]['time'] = now
        composition['event'][0]['period'] = {'start': date, 'end': date}
        composition['identifier'] = dict(bundle['identifier'])
        vaccination = resources['Immunization']
        vaccination['identifier'] = [{'system': oid, 'value': str(uuid.uuid4())}]
        vaccination['occurrenceDateTime'] = date
        vaccination['recorded'] = now
        vaccination['vaccineCode'] = {'coding': [{'code': record['Impfstoff']}]}
        vaccination['lotNumber'] = record['Chargennummer']
        if record.get('Grund'):
            vaccination['reasonCode'] = [{'coding': [{'code': record['Grund']}]}]
        vaccination.pop('expirationDate', None)
        protocol = vaccination['protocolApplied'][0]
        protocol['series'] = record['Schema']
        protocol['doseNumberString'] = record['Dosis']
        protocol.pop('targetDisease', None)
        return bundle


def iso_date(value):
    value = value.strip()
    for pattern in ('%Y-%m-%d', '%d.%m.%Y', '%d.%m.%y', '%Y%m%d'):
        try:
            return datetime.strptime(value, pattern).date().isoformat()
        except ValueError:
            continue
    raise RefclientError('Ungültiges Datum: ' + value)
