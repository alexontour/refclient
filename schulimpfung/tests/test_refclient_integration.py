"""Run against the local Refclient mock with REFCLIENT_URL set."""
import json
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

import app as school


@unittest.skipUnless(school.refclient, 'REFCLIENT_URL required')
class RefclientIntegrationTest(unittest.TestCase):
    def test_generate_upload_read_shared_documents(self):
        student = {'id': 'S-0001', 'name': 'Integration Schulimpfung',
                   'first_name': 'Integration', 'last_name': 'Schulimpfung',
                   'birth_date': '2010-01-02', 'social_security_number': '9999010210'}
        gda = [{'Bezeichnung': 'Organisation', 'OID': '1.2.40.0.34.99.10.2.1.2.14827', 'Name': 'Testschule'},
               {'Bezeichnung': 'Impfarzt', 'OID': '1.2.40.0.34.99.1', 'Vorname': 'Test', 'Nachname': 'Arzt'}]
        with tempfile.TemporaryDirectory() as directory, \
             patch.object(school, 'SESSION_ROOT', Path(directory)), \
             patch.object(school, 'VACCINATION_PROTOCOL_PATH', Path(directory) / 'protocol.csv'), \
             patch.object(school, 'current_session_id', 'integration'), \
             patch.object(school, 'current_session_gda', gda), \
             patch.object(school, 'downloaded_passes_by_svnr', {}):
            school.session_dir().mkdir(parents=True)
            school.vaccination_document_dir().mkdir(parents=True)
            record = school.build_vaccination_record(student, {
                'Datum': '2026-11-01', 'Impfstoff': '4209702', 'Schema': 'SCHEMA007',
                'Dosis': 'D1', 'Grund': 'IG1', 'Chargennummer': 'SCHOOL-INTEGRATION'})
            document = school.write_cda_update_for_student(student, record)
            self.assertIn('ClinicalDocument', document.read_text())
            self.assertIn('Schulimpfung', document.read_text())
            with patch.object(school, 'read_validation_status', return_value='ok'):
                self.assertEqual((1, None), school.mock_upload_cda_to_eimpfpass([student]))
                before = len(school.refclient.request('/api/eimpf/documents'))
                self.assertEqual((1, None), school.mock_upload_cda_to_eimpfpass([student]))
                self.assertEqual(before, len(school.refclient.request('/api/eimpf/documents')))
            receipt = (school.vaccination_upload_dir() / school.upload_result_filename_for(student)).with_suffix('.receipt.json')
            stored = json.loads(receipt.read_text())
            self.assertIn('SCHOOL-INTEGRATION', school.refclient.request(stored['cdaUrl']))
            self.assertEqual(1, school.download_vaccination_passes_from_database([student]))
            passport = school.pass_download_dir() / school.downloaded_passes_by_svnr[student['social_security_number']]
            self.assertIn('iframe', passport.read_text())

    def test_mount_and_assets(self):
        with patch.object(school, 'read_gda_entries', return_value=[]), \
             patch.object(school, 'value_set_options_from_url', return_value=()):
            client = school.app.test_client()
            response = client.get('/schulimpfung/')
            self.assertEqual(200, response.status_code)
            self.assertIn(b'/schulimpfung/static/app.js', response.data)
            self.assertIn(b'href="/"', response.data)
            with client.get('/schulimpfung/static/app.js') as asset:
                self.assertEqual(200, asset.status_code)
            with client.get('/schulimpfung/static/vendor/bootstrap.min.css') as asset:
                self.assertEqual(200, asset.status_code)
