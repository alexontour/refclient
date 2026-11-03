"""Date formats accepted by student lists must also work in the FHIR adapter."""
import unittest
from unittest.mock import patch

from modules.refclient import Refclient, RefclientError, iso_date


class RefclientDateTests(unittest.TestCase):
    def test_supported_date_formats(self):
        for value in ('01.12.14', '01.12.2014', '2014-12-01', '20141201', ' 01.12.14 '):
            with self.subTest(value=value):
                self.assertEqual(iso_date(value), '2014-12-01')
        self.assertEqual(iso_date('29.02.24'), '2024-02-29')

    def test_invalid_dates_are_rejected(self):
        for value in ('31.02.14', '29.02.23', '01.13.14', '', 'kein Datum'):
            with self.subTest(value=value), self.assertRaises(RefclientError):
                iso_date(value)

    def test_student_list_dates_reach_fhir_bundle(self):
        template = {'entry': [{'resource': resource} for resource in (
            {'resourceType': 'Patient'}, {'resourceType': 'Practitioner'},
            {'resourceType': 'Organization'},
            {'resourceType': 'Composition', 'attester': [{}], 'event': [{}]},
            {'resourceType': 'Immunization', 'protocolApplied': [{}]},
        )]}
        record = dict(gda_organisation_oid='1.2.3', svnr='synthetic',
                      patient_vorname='Test', patient_nachname='Schueler',
                      patient_geburtsdatum='01.12.14', gda_impfarzt_vorname='Test',
                      gda_impfarzt_nachname='Arzt', gda_organisation_name='Testschule',
                      Datum='03.11.26', Impfstoff='test', Chargennummer='test',
                      Schema='test', Dosis='D1')
        adapter = Refclient('http://unused')
        with patch.object(adapter, 'request', return_value=template):
            bundle = adapter.bundle(record)
        resources = {entry['resource']['resourceType']: entry['resource'] for entry in bundle['entry']}
        self.assertEqual(resources['Patient']['birthDate'], '2014-12-01')
        self.assertEqual(resources['Immunization']['occurrenceDateTime'], '2026-11-03')
        self.assertEqual(resources['Composition']['event'][0]['period'],
                         {'start': '2026-11-03', 'end': '2026-11-03'})