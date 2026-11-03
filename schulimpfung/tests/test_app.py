import io
import tempfile
import unittest
from pathlib import Path

import app as app_module


class FrontendSmokeTest(unittest.TestCase):
    def setUp(self):
        self.temp_dir = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp_dir.cleanup)
        self.original_session_root = app_module.SESSION_ROOT
        self.original_log_dir = app_module.LOG_DIR
        self.original_vaccination_protocol_path = app_module.VACCINATION_PROTOCOL_PATH
        self.original_download_delay = app_module.DOWNLOAD_DELAY_SECONDS
        self.original_gda_detail_from_url = app_module.gda_detail_from_url
        app_module.SESSION_ROOT = Path(self.temp_dir.name) / "sessions"
        app_module.LOG_DIR = Path(self.temp_dir.name) / "logs"
        app_module.VACCINATION_PROTOCOL_PATH = Path(self.temp_dir.name) / "impfprotokoll.csv"
        app_module.DOWNLOAD_DELAY_SECONDS = 0
        app_module.gda_detail_from_url = self.fake_gda_detail_from_url
        app_module.student_rows.clear()
        app_module.downloaded_passes_by_svnr.clear()
        app_module.current_session_id = None
        app_module.current_session_gda.clear()
        self.addCleanup(self.restore_globals)
        self.client = app_module.app.test_client()

    def restore_globals(self):
        app_module.SESSION_ROOT = self.original_session_root
        app_module.LOG_DIR = self.original_log_dir
        app_module.VACCINATION_PROTOCOL_PATH = self.original_vaccination_protocol_path
        app_module.DOWNLOAD_DELAY_SECONDS = self.original_download_delay
        app_module.gda_detail_from_url = self.original_gda_detail_from_url
        app_module.student_rows.clear()
        app_module.downloaded_passes_by_svnr.clear()
        app_module.current_session_id = None
        app_module.current_session_gda.clear()

    def fake_gda_detail_from_url(self, detail_url):
        if "1.2.40.0.34.3.1.1177" in detail_url:
            return {
                "Name": "Landessanitätsdirektion Salzburg, Referat 20902, Abteilung 9 Gesundheit, Land Salzburg",
                "Titel": "",
                "Vorname": "",
                "Nachname": "",
            }
        return {
            "Name": "Dr. Irmi Impfarzt",
            "Titel": "Dr.",
            "Vorname": "Irmi",
            "Nachname": "Impfarzt",
        }

    def add_student(self):
        return self.client.post(
            "/students/add",
            data={
                "first_name": "Mina",
                "last_name": "Muster",
                "birth_date": "02.02.15",
                "social_security_number": "1111222233",
                "school": "VS Hallein",
                "class_name": "3A",
            },
            follow_redirects=True,
        )

    def test_index_starts_with_empty_student_list(self):
        html = self.client.get("/").get_data(as_text=True)
        self.assertIn("Schulimpfung dokumentieren", html)
        self.assertIn("v2.1.0 build", html)
        self.assertNotIn("MVP 2.0", html)
        self.assertIn('aria-label="Prozessstatus"', html)
        self.assertIn("Schülerliste bearbeiten", html)
        self.assertIn("Impfung dokumentieren", html)
        self.assertIn("Impfung übertragen", html)
        self.assertNotIn("Ende:", html)
        self.assertIn("Sch&uuml;lerliste hochladen", html)
        self.assertIn("Keine Schüler", html)
        self.assertIn('aria-label="Schüler ergänzen"', html)
        self.assertNotIn("<h3 class=\"h6 mb-3\">Schüler ergänzen</h3>", html)
        self.assertNotIn("Schüler ändern", html)
        self.assertNotIn("eImpfpass anzeigen", html)
        self.assertNotIn("<h3 class=\"h6 mb-0\">eImpfpass hochladen</h3>", html)
        self.assertNotIn("vaccination_1", html)
        self.assertNotIn("CDA-Regel", html)
        self.assertNotIn("Anton Arnreiter", html)

    def test_health_smoke_reports_runtime_dependencies(self):
        response = self.client.get("/health/smoke")
        payload = response.get_json()
        self.assertEqual(response.status_code, 200)
        self.assertEqual(payload["status"], "ok")
        self.assertTrue(payload["checks"]["session_root_writable"]["ok"])
        self.assertTrue(payload["checks"]["log_dir_writable"]["ok"])
        self.assertTrue(payload["checks"]["cda_document"]["ok"])

    def test_plus_opens_add_student_form(self):
        html = self.client.get("/?view=new").get_data(as_text=True)
        self.assertIn("<h3 class=\"h6 mb-3\">Schüler ergänzen</h3>", html)
        self.assertIn("add_first_name", html)
        self.assertNotIn("Schüler ändern", html)

    def test_gda_detail_extraction_splits_physician_name(self):
        detail = app_module.split_physician_name("Dr. Irmi Impfarzt")
        self.assertEqual(detail["Titel"], "Dr.")
        self.assertEqual(detail["Vorname"], "Irmi")
        self.assertEqual(detail["Nachname"], "Impfarzt")

    def test_upload_populates_student_list_without_status_column_or_pass_icons(self):
        csv_content = (
            "vorname,nachname,gebdat,svnr,schule,klasse\n"
            "Anton,Arnreiter,01.12.14,1234567890,VS Hallein,1A\n"
            "Benni,Brenner,31.12.04,9876543210,VS Hallein,2B\n"
        )
        response = self.client.post(
            "/students/upload",
            data={"student_list": (io.BytesIO(csv_content.encode("utf-8")), "students.csv")},
            content_type="multipart/form-data",
            follow_redirects=True,
        )
        html = response.get_data(as_text=True)
        self.assertIn("Upload abgeschlossen", html)
        self.assertIn("Anton Arnreiter", html)
        self.assertIn("Benni Brenner", html)
        self.assertIn("Landessanitätsdirektion Salzburg", html)
        self.assertIn("Dr. Irmi Impfarzt", html)
        self.assertNotIn("ORG</span>", html)
        self.assertNotIn("GDA</span>", html)
        self.assertNotIn("<th>Status</th>", html)
        self.assertNotIn("eImpfpass anzeigen", html)
        self.assertNotIn("<h3 class=\"h6 mb-1\">eImpfpass</h3>", html)
        self.assertIsNotNone(app_module.current_session_id)
        self.assertTrue((app_module.session_dir() / "schuelerliste.csv").exists())
        self.assertTrue((app_module.session_dir() / "gda.csv").exists())
        gda_text = (app_module.session_dir() / "gda.csv").read_text(encoding="utf-8")
        self.assertIn("Landessanitätsdirektion Salzburg", gda_text)
        self.assertIn("Irmi", gda_text)
        self.assertIn("Impfarzt", gda_text)

        edit_html = self.client.get("/?student_id=S-0001&view=edit").get_data(as_text=True)
        self.assertIn("Schüler ändern", edit_html)
        self.assertNotIn("<h3 class=\"h6 mb-3\">eImpfpass</h3>", edit_html)
        self.assertNotIn("cda-frame", edit_html)
        self.assertNotIn("vaccination_1", edit_html)

    def test_upload_without_file_shows_readable_warning(self):
        response = self.client.post(
            "/students/upload",
            data={},
            content_type="multipart/form-data",
            follow_redirects=True,
        )
        html = response.get_data(as_text=True)
        self.assertIn("Keine Datei ausgewählt", html)
        self.assertNotIn("ausgewÃ", html)

    def test_security_headers_are_sent(self):
        response = self.client.get("/")
        self.assertEqual(response.headers["X-Content-Type-Options"], "nosniff")
        self.assertEqual(response.headers["X-Frame-Options"], "SAMEORIGIN")
        self.assertIn("frame-ancestors 'self'", response.headers["Content-Security-Policy"])
        self.assertIn("camera=()", response.headers["Permissions-Policy"])

    def test_upload_rejects_non_csv_filename(self):
        response = self.client.post(
            "/students/upload",
            data={"student_list": (io.BytesIO(b"not,csv\n"), "students.txt")},
            content_type="multipart/form-data",
            follow_redirects=True,
        )
        html = response.get_data(as_text=True)
        self.assertIn("Schülerliste fehlerhaft", html)

    def test_upload_rejects_invalid_utf8_and_broken_csv(self):
        for content in (b"\xff\xfeinvalid", b'vorname,nachname,gebdat,svnr,schule,klasse\n"unclosed',
                        b"vorname,nachname,gebdat,svnr,schule,klasse\nAnna,Test\n"):
            with self.subTest(content=content):
                response = self.client.post(
                    "/students/upload",
                    data={"student_list": (io.BytesIO(content), "students.csv")},
                    content_type="multipart/form-data",
                    follow_redirects=True,
                )
                self.assertEqual(response.status_code, 200)
                self.assertIn("Schülerliste fehlerhaft", response.get_data(as_text=True))

    def test_cda_files_are_served(self):
        xml = self.client.get("/cda/eImpf-Kompletter_Immunisierungsstatus.xml")
        stylesheet = self.client.get("/cda/eimpf-stylesheet_v1.0.xsl")
        self.assertEqual(xml.status_code, 200)
        self.assertIn(b"eimpf-stylesheet_v1.0.xsl", xml.data)
        self.assertEqual(stylesheet.status_code, 200)
        self.assertIn(b"xsl:stylesheet", stylesheet.data)
        self.assertIn(
            "script-src 'self' data: 'unsafe-inline'",
            xml.headers["Content-Security-Policy"],
        )
        self.assertIn(
            "style-src 'self' data: 'unsafe-inline'",
            xml.headers["Content-Security-Policy"],
        )
        self.assertIn(
            "script-src 'self' data: 'unsafe-inline'",
            stylesheet.headers["Content-Security-Policy"],
        )
        self.assertIn(
            "style-src 'self' data: 'unsafe-inline'",
            stylesheet.headers["Content-Security-Policy"],
        )

    def test_download_simulates_database_fetch_and_copies_cda_by_svnr(self):
        self.add_student()
        before_html = self.client.get("/").get_data(as_text=True)
        self.assertIn("eImpfpass laden", before_html)
        self.assertNotIn("eImpfpass anzeigen", before_html)

        response = self.client.get("/vaccination-passes/download", follow_redirects=True)
        html = response.get_data(as_text=True)
        expected_file = "1111222233_eImpf-Kompletter_Immunisierungsstatus.xml"
        self.assertIn("eImpfpässe für aktive Schüler wurden heruntergeladen", html)
        self.assertIn("eImpfpass anzeigen", html)
        self.assertTrue((app_module.pass_download_dir() / expected_file).exists())
        self.assertTrue((app_module.pass_download_dir() / app_module.CDA_STYLESHEET_NAME).exists())

        pass_html = self.client.get("/?student_id=S-0001&view=pass").get_data(as_text=True)
        self.assertIn("eImpfpass", pass_html)
        self.assertIn("Mina Muster", pass_html)
        self.assertIn(expected_file, pass_html)
        self.assertIn(f"/downloaded-passes/{expected_file}", pass_html)
        self.assertIn('aria-label="eImpfpass groß anzeigen"', pass_html)
        self.assertIn('data-local-modal-target="#vaccinationPassLargeModal"', pass_html)
        self.assertIn("data-local-modal-dismiss", pass_html)
        self.assertIn("local-modal", pass_html)
        self.assertIn("vaccinationPassLargeModal", pass_html)
        self.assertIn("eImpfpass CDA groß", pass_html)
        copied_xml = self.client.get(f"/downloaded-passes/{expected_file}")
        self.assertEqual(copied_xml.status_code, 200)
        self.assertIn(b"xml-stylesheet", copied_xml.data)
        self.assertIn(app_module.CDA_STYLESHEET_NAME.encode("utf-8"), copied_xml.data)
        copied_stylesheet = self.client.get(
            f"/downloaded-passes/{app_module.CDA_STYLESHEET_NAME}"
        )
        self.assertEqual(copied_stylesheet.status_code, 200)
        self.assertIn(b"xsl:stylesheet", copied_stylesheet.data)
        self.assertIn(
            "script-src 'self' data: 'unsafe-inline'",
            copied_xml.headers["Content-Security-Policy"],
        )
        self.assertIn(
            "style-src 'self' data: 'unsafe-inline'",
            copied_xml.headers["Content-Security-Policy"],
        )
        self.assertIn(
            "script-src 'self' data: 'unsafe-inline'",
            copied_stylesheet.headers["Content-Security-Policy"],
        )
        self.assertIn(
            "style-src 'self' data: 'unsafe-inline'",
            copied_stylesheet.headers["Content-Security-Policy"],
        )

    def test_local_modal_script_is_loaded(self):
        html = self.client.get("/").get_data(as_text=True)
        self.assertIn("/static/app.js", html)

    def test_download_only_copies_passes_for_active_students(self):
        self.add_student()
        self.client.post(
            "/students/add",
            data={
                "first_name": "Benni",
                "last_name": "Brenner",
                "birth_date": "31.12.04",
                "social_security_number": "9876543210",
                "school": "VS Hallein",
                "class_name": "2B",
            },
            follow_redirects=True,
        )
        self.client.post("/students/S-0002/active", data={}, follow_redirects=True)

        self.client.get("/vaccination-passes/download", follow_redirects=True)

        self.assertTrue(
            (
                app_module.pass_download_dir()
                / "1111222233_eImpf-Kompletter_Immunisierungsstatus.xml"
            ).exists()
        )
        self.assertFalse(
            (
                app_module.pass_download_dir()
                / "9876543210_eImpf-Kompletter_Immunisierungsstatus.xml"
            ).exists()
        )

    def test_vaccination_documentation_opens_form_and_saves_csv_by_svnr(self):
        self.add_student()
        blocked_html = self.client.get("/?view=vaccination").get_data(as_text=True)
        self.assertNotIn("vaccination_1", blocked_html)

        self.client.get("/vaccination-passes/download", follow_redirects=True)
        form_html = self.client.get("/?view=vaccination").get_data(as_text=True)
        self.assertIn("Impfung dokumentieren", form_html)
        self.assertIn("vaccination_1", form_html)
        self.assertIn("D1 - Dosis 1", form_html)
        self.assertIn("IG1 - Indikationsimpfung für Risikogruppe", form_html)
        self.assertIn("SCHEMA005 - FSME Grundschema, FSME-Immun", form_html)
        self.assertIn("3511764 - MMRVAXPRO PLV+LSM FSPR +2K", form_html)
        self.assertIn("Klassifikation", form_html)
        self.assertIn("Setting", form_html)
        self.assertIn("Programm", form_html)
        self.assertIn('data-bs-toggle="tooltip"', form_html)
        self.assertIn('data-bs-title="Hilfetext"', form_html)
        self.assertIn('aria-label="Hilfetext zu Schema"', form_html)
        self.assertIn("required-marker", form_html)
        self.assertIn("required-field", form_html)
        form_start = form_html.index('action="/vaccinations/document"')
        form_section = form_html[form_start:]
        schema_start = form_section.index('for="vaccination_1"')
        vaccine_start = form_section.index('for="vaccination_2"')
        dose_start = form_section.index('for="vaccination_3"')
        reason_start = form_section.index('for="vaccination_4"')
        self.assertIn("Schema", form_section[schema_start:vaccine_start])
        self.assertIn("Impfstoff", form_section[vaccine_start:dose_start])
        self.assertIn("Dosis", form_section[dose_start:reason_start])

        response = self.client.post(
            "/vaccinations/document",
            data={
                "Dosis": "D2",
                "Grund": "IG1",
                "Relevante Erkrankung": "RE1",
                "Schema": "SCHEMA005",
                "Impfstoff": "3511764",
                "Klassifikation": "ZK1",
                "Setting": "IS1",
                "Programm": "IP1",
                "Chargennummer": "ABC123",
                "Datum": "2026-04-26",
                "confirm_documentation": "yes",
            },
            follow_redirects=True,
        )
        html = response.get_data(as_text=True)
        expected_file = app_module.vaccination_document_dir() / "1111222233_impfung.csv"
        expected_mapping_file = app_module.vaccination_document_dir() / "1111222233_cda_mapping.csv"
        expected_cda_file = app_module.vaccination_document_dir() / "1111222233.xml"
        expected_validation_file = app_module.vaccination_document_dir() / "1111222233_cda_validation.csv"
        self.assertIn("Impfung wurde für aktive Schüler dokumentiert", html)
        self.assertIn("1 dokumentiert", html)
        self.assertIn('process-status-marker">2</span>', html)
        self.assertIn("Die Daten werden an die eImpf-Datenbank übertragen", html)
        self.assertIn("/vaccination-documents/1111222233.xml", html)
        self.assertFalse(app_module.pass_download_dir().exists())
        self.assertEqual(app_module.downloaded_passes_by_svnr, {})
        self.assertTrue(expected_file.exists())
        self.assertTrue(expected_mapping_file.exists())
        self.assertTrue(expected_cda_file.exists())
        self.assertTrue(expected_validation_file.exists())
        csv_text = expected_file.read_text(encoding="utf-8")
        self.assertIn("Mina Muster", csv_text)
        self.assertIn("1111222233", csv_text)
        self.assertIn("gda_organisation_name", csv_text)
        self.assertIn("Landessanitätsdirektion Salzburg", csv_text)
        self.assertIn("1.2.40.0.34.3.1.1177", csv_text)
        self.assertIn("gda_impfarzt_titel", csv_text)
        self.assertIn("Irmi", csv_text)
        self.assertIn("Impfarzt", csv_text)
        self.assertIn("1.2.40.0.34.3.2.34619", csv_text)
        self.assertIn("3511764", csv_text)
        self.assertIn("D2", csv_text)
        self.assertIn("RE1", csv_text)
        self.assertIn("ZK1", csv_text)
        self.assertIn("IS1", csv_text)
        self.assertIn("IP1", csv_text)
        self.assertIn("ABC123", csv_text)
        self.assertIn("2026-04-26", csv_text)
        mapping_text = expected_mapping_file.read_text(encoding="utf-8")
        self.assertIn("eImpf-Update_Immunisierungsstatus.xml", mapping_text)
        self.assertIn("recordTarget/patientRole/patient/name/given", mapping_text)
        self.assertIn("recordTarget/patientRole/patient/name/family", mapping_text)
        self.assertIn("recordTarget/patientRole/patient/birthTime/@value", mapping_text)
        self.assertIn("Mina", mapping_text)
        self.assertIn("Muster", mapping_text)
        self.assertIn("02.02.15", mapping_text)
        self.assertIn("substanceAdministration/effectiveTime/@value", mapping_text)
        self.assertIn("precondition/criterion/value/@code", mapping_text)
        self.assertIn("consumable/manufacturedProduct/manufacturedMaterial/lotNumberText", mapping_text)
        self.assertIn("gda_impfarzt_nachname", mapping_text)
        self.assertIn("gda_organisation_name", mapping_text)
        self.assertNotIn(",fehlt", mapping_text)
        cda_text = expected_cda_file.read_text(encoding="utf-8")
        self.assertIn("Update Immunisierungsstatus", cda_text)
        self.assertIn('extension="1111222233"', cda_text)
        self.assertIn("<given>Mina</given>", cda_text)
        self.assertIn("<family>Muster</family>", cda_text)
        self.assertIn('value="20260426', cda_text)
        self.assertIn('code="D2"', cda_text)
        self.assertIn('code="SCHEMA005"', cda_text)
        self.assertIn('code="3511764"', cda_text)
        self.assertIn(">ABC123<", cda_text)
        self.assertIn("<given>Irmi</given>", cda_text)
        self.assertIn("<family>Impfarzt</family>", cda_text)
        cda_root = app_module.ET.fromstring(cda_text)
        for row in cda_root.findall(".//{urn:hl7-org:v3}tr"):
            self.assertTrue(row.text is None or row.text.strip() == "")
        cda_download = self.client.get("/vaccination-documents/1111222233.xml")
        self.assertEqual(cda_download.status_code, 200)
        validation_text = expected_validation_file.read_text(encoding="utf-8")
        self.assertIn("https://ovp.elga-services.at/download.html", validation_text)
        self.assertIn("https://gitlab.com/elga-gmbh/cda/schema", validation_text)
        self.assertIn("https://gitlab.com/elga-gmbh/cda/schematron", validation_text)
        self.assertIn("XML Wohlgeformtheit", validation_text)
        self.assertIn("CDA Mapping Pflichtfelder", validation_text)
        self.assertNotIn('xmlns:pharm="urn:ihe:pharm"', cda_text)
        self.assertNotIn("<pharm:ingredient", cda_text)

        upload_response = self.client.post("/eimpfpass/upload", follow_redirects=True)
        upload_html = upload_response.get_data(as_text=True)
        upload_file = app_module.vaccination_upload_dir() / "1111222233_eimpfpass_upload.csv"
        self.assertIn("CDA-Dateien wurden an den eImpfpass Mock", upload_html)
        self.assertIn("Das ist nicht Teil der Demo", upload_html)
        self.assertIn("https://ovp.elga-services.at/validation.html", upload_html)
        self.assertIn("Neue Impfserie", upload_html)
        self.assertIn("Übertragung an den eImpfpass nicht verfügbar", upload_html)
        self.assertIn('data-local-modal-target="#eImpfpassUnavailableModal"', upload_html)
        self.assertIn("/vaccination-documents/1111222233.xml", upload_html)
        self.assertIn("Protokoll", upload_html)
        self.assertIn("Dr. Irmi Impfarzt", upload_html)
        self.assertIn("1 Impfungen", upload_html)
        self.assertNotIn("Dr. Irmi Impfarzt: 1 Impfungen", upload_html)
        self.assertTrue(upload_file.exists())
        upload_text = upload_file.read_text(encoding="utf-8")
        self.assertIn("Mock-Upload erfolgreich", upload_text)
        self.assertIn("1111222233.xml", upload_text)

        protocol_text = app_module.vaccination_protocol_path().read_text(encoding="utf-8")
        self.assertEqual(app_module.vaccination_protocol_path().name, "impfprotokoll_12400343234619.csv")
        self.assertIn("gda,impfstoff,datum", protocol_text)
        self.assertIn("Dr. Irmi Impfarzt,3511764,2026-04-26", protocol_text)
        protocol_response = self.client.get("/protocol")
        self.assertEqual(protocol_response.status_code, 200)
        self.assertIn(b"Dr. Irmi Impfarzt,3511764,2026-04-26", protocol_response.data)

    def test_vaccination_documentation_requires_summary_confirmation(self):
        self.add_student()
        self.client.get("/vaccination-passes/download", follow_redirects=True)
        response = self.client.post(
            "/vaccinations/document",
            data={
                "Dosis": "D2",
                "Grund": "IG1",
                "Relevante Erkrankung": "RE1",
                "Schema": "SCHEMA005",
                "Impfstoff": "3511764",
                "Klassifikation": "ZK1",
                "Setting": "IS1",
                "Programm": "IP1",
                "Chargennummer": "ABC123",
                "Datum": "2026-04-26",
            },
            follow_redirects=True,
        )
        html = response.get_data(as_text=True)
        self.assertIn("Zusammenfassung", html)
        self.assertIn("Anzahl der Schüler", html)
        self.assertIn("3511764", html)
        self.assertFalse((app_module.vaccination_document_dir() / "1111222233.xml").exists())

    def test_close_session_deletes_runtime_data_and_resets_list(self):
        self.add_student()
        session_path = app_module.session_dir()
        self.assertTrue(session_path.exists())

        response = self.client.post("/session/close", follow_redirects=True)
        html = response.get_data(as_text=True)

        self.assertIn("Session wurde abgeschlossen", html)
        self.assertFalse(session_path.exists())
        self.assertEqual(app_module.current_session_id, None)
        self.assertEqual(app_module.student_rows, [])
        self.assertIn("Keine Schüler", html)

    def test_vaccination_required_fields_match_cda_mapping(self):
        fields = app_module.read_vaccination_form_fields()
        self.assertEqual(
            [field["label"] for field in fields],
            [
                "Schema",
                "Impfstoff",
                "Dosis",
                "Grund",
                "Chargennummer",
                "Datum",
                "Klassifikation",
                "Setting",
                "Programm",
                "Relevante Erkrankung",
            ],
        )
        required_labels = {field["label"] for field in fields if field["required"]}
        self.assertEqual(
            required_labels,
            {"Dosis", "Grund", "Schema", "Impfstoff", "Chargennummer", "Datum"},
        )

    def test_optional_vaccination_fields_may_be_empty(self):
        self.add_student()
        self.client.get("/vaccination-passes/download", follow_redirects=True)
        response = self.client.post(
            "/vaccinations/document",
            data={
                "Dosis": "D2",
                "Grund": "IG1",
                "Relevante Erkrankung": "",
                "Schema": "SCHEMA005",
                "Impfstoff": "3511764",
                "Klassifikation": "",
                "Setting": "",
                "Programm": "",
                "Chargennummer": "ABC123",
                "Datum": "2026-04-26",
                "confirm_documentation": "yes",
            },
            follow_redirects=True,
        )
        html = response.get_data(as_text=True)
        self.assertIn("Impfung wurde", html)
        self.assertIn("dokumentiert", html)
        mapping_text = (app_module.vaccination_document_dir() / "1111222233_cda_mapping.csv").read_text(encoding="utf-8")
        self.assertIn("Relevante Erkrankung,,nein,ok", mapping_text)
        self.assertNotIn(",ja,fehlt", mapping_text)

    def test_missing_required_vaccination_field_is_blocked(self):
        self.add_student()
        self.client.get("/vaccination-passes/download", follow_redirects=True)
        response = self.client.post(
            "/vaccinations/document",
            data={
                "Dosis": "D2",
                "Grund": "IG1",
                "Schema": "SCHEMA005",
                "Impfstoff": "",
                "Chargennummer": "ABC123",
                "Datum": "2026-04-26",
            },
            follow_redirects=True,
        )
        html = response.get_data(as_text=True)
        self.assertIn("CDA validieren fehlgeschlagen", html)
        self.assertFalse((app_module.vaccination_document_dir() / "1111222233.xml").exists())

    def test_mock_upload_uses_validation_error_code(self):
        self.add_student()
        self.client.get("/vaccination-passes/download", follow_redirects=True)
        self.client.post(
            "/vaccinations/document",
            data={
                "Dosis": "D2",
                "Grund": "IG1",
                "Relevante Erkrankung": "RE1",
                "Schema": "SCHEMA005",
                "Impfstoff": "3511764",
                "Klassifikation": "ZK1",
                "Setting": "IS1",
                "Programm": "IP1",
                "Chargennummer": "ABC123",
                "Datum": "2026-04-26",
                "confirm_documentation": "yes",
            },
            follow_redirects=True,
        )
        validation_file = app_module.vaccination_document_dir() / "1111222233_cda_validation.csv"
        validation_file.write_text(
            "pruefung,ressource,quelle,status,hinweis\nCDA Mapping Pflichtfelder,1111222233_cda_mapping.csv,lokal,fehlt,Test\n",
            encoding="utf-8",
        )

        response = self.client.post("/eimpfpass/upload", follow_redirects=True)
        html = response.get_data(as_text=True)
        upload_file = app_module.vaccination_upload_dir() / "1111222233_eimpfpass_upload.csv"
        self.assertIn("Upload in den eImpfpass Mock fehlgeschlagen", html)
        self.assertIn("CDA validieren fehlgeschlagen", html)
        self.assertTrue(upload_file.exists())
        upload_text = upload_file.read_text(encoding="utf-8")
        self.assertIn(",103,", upload_text)

    def test_cda_mapping_detects_missing_required_fields(self):
        vaccination_fields = app_module.read_vaccination_form_fields()
        rows = app_module.cda_mapping_rows(
            {
                "svnr": "1111222233",
                "patient_vorname": "Mina",
                "patient_nachname": "Muster",
                "patient_geburtsdatum": "02.02.15",
                "Datum": "2026-04-26",
                "Dosis": "D2",
                "Schema": "SCHEMA005",
                "Impfstoff": "",
                "Chargennummer": "ABC123",
                "Grund": "IG1",
                "gda_impfarzt_oid": "1.2.40.0.34.3.2.34619",
                "gda_impfarzt_titel": "Dr.",
                "gda_impfarzt_vorname": "Irmi",
                "gda_impfarzt_nachname": "Impfarzt",
                "gda_organisation_oid": "1.2.40.0.34.3.1.1177",
                "gda_organisation_name": "Landessanitätsdirektion Salzburg",
            },
            vaccination_fields,
        )
        self.assertFalse(app_module.cda_mapping_is_complete(rows))
        self.assertIn(
            "Impfstoff",
            [row["feld"] for row in rows if row["status"] == "fehlt"],
        )

    def test_vaccination_documentation_requires_downloaded_passes(self):
        self.add_student()
        response = self.client.post(
            "/vaccinations/document",
            data={
                "Dosis": "D2",
                "Grund": "IG1",
                "Relevante Erkrankung": "RE1",
                "Schema": "SCHEMA005",
                "Impfstoff": "3511764",
                "Klassifikation": "ZK1",
                "Setting": "IS1",
                "Programm": "IP1",
                "Chargennummer": "ABC123",
                "Datum": "2026-04-26",
                "confirm_documentation": "yes",
            },
            follow_redirects=True,
        )
        html = response.get_data(as_text=True)
        self.assertIn("Bitte zuerst eImpfpässe herunterladen", html)
        self.assertFalse((app_module.vaccination_document_dir() / "1111222233_impfung.csv").exists())

    def test_duplicate_svnr_uses_error_catalog(self):
        self.add_student()
        response = self.client.post(
            "/students/add",
            data={
                "first_name": "Mina",
                "last_name": "Doppelt",
                "birth_date": "02.02.15",
                "social_security_number": "1111222233",
                "school": "VS Hallein",
                "class_name": "3A",
            },
            follow_redirects=True,
        )
        html = response.get_data(as_text=True)
        self.assertIn("SVNr doppelt", html)

    def test_invalid_upload_uses_error_catalog(self):
        csv_content = (
            "vorname,nachname,gebdat,svnr,schule,klasse\n"
            "Anton,Arnreiter,01.12.14,abc,VS Hallein,1A\n"
        )
        response = self.client.post(
            "/students/upload",
            data={"student_list": (io.BytesIO(csv_content.encode("utf-8")), "students.csv")},
            content_type="multipart/form-data",
            follow_redirects=True,
        )
        html = response.get_data(as_text=True)
        self.assertIn("Schülerliste fehlerhaft", html)

    def test_invalid_svnr_uses_error_catalog(self):
        response = self.client.post(
            "/students/add",
            data={
                "first_name": "Mina",
                "last_name": "Muster",
                "birth_date": "02.02.15",
                "social_security_number": "abc",
                "school": "VS Hallein",
                "class_name": "3A",
            },
            follow_redirects=True,
        )
        html = response.get_data(as_text=True)
        self.assertIn("SVNr fehlerhaft", html)

    def test_nine_digit_svnr_is_rejected_before_documentation(self):
        response = self.client.post("/students/add", data={
            "first_name": "Test", "last_name": "Person", "birth_date": "2010-01-02",
            "social_security_number": "123456789", "school": "Testschule", "class_name": "1A"
        }, follow_redirects=True)
        self.assertEqual(response.status_code, 200)
        self.assertIn("SVNr fehlerhaft", response.get_data(as_text=True))
        self.assertEqual(app_module.read_student_rows(), [])

    def test_add_and_edit_student(self):
        add_response = self.add_student()
        self.assertIn("Mina Muster", add_response.get_data(as_text=True))

        edit_response = self.client.post(
            "/students/S-0001/edit",
            data={
                "first_name": "Mina",
                "last_name": "Geändert",
                "birth_date": "02.02.15",
                "social_security_number": "1111222233",
                "school": "VS Hallein",
                "class_name": "3B",
            },
            follow_redirects=True,
        )
        html = edit_response.get_data(as_text=True)
        self.assertIn("Schüler wurde geändert", html)
        self.assertIn("Mina Geändert", html)
        self.assertIn("3B", html)

    def test_active_uses_checkbox_not_switch(self):
        self.add_student()
        html = self.client.get("/").get_data(as_text=True)
        self.assertIn('type="checkbox"', html)
        self.assertNotIn("form-switch", html)


if __name__ == "__main__":
    unittest.main()
