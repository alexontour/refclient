import csv
import html as html_parser
import io
import json
import logging
import os
import re
import shutil
import sys
import time
import uuid
from datetime import datetime
from functools import lru_cache
from pathlib import Path
from urllib.error import URLError
from urllib.request import urlopen
import xml.etree.ElementTree as ET

from flask import Flask, jsonify, redirect, render_template, request, send_from_directory, url_for

from modules.cda_generation import generate_cda_documents_for_students
from modules.impfpass_upload import upload_cda_documents_to_eimpfpass
from modules.refclient import Refclient, RefclientError
from mount import mount_application

app = Flask(__name__)
app.wsgi_app = mount_application(app.wsgi_app, os.environ.get("APPLICATION_ROOT", ""))
refclient = Refclient(os.environ["REFCLIENT_URL"]) if os.environ.get("REFCLIENT_URL") else None


@app.errorhandler(RefclientError)
def refclient_error(error):
    return render_template("backend_error.html", message=str(error)), 502

MVP_VERSION = "MVP 2.0 (Überarbeitung)"
APP_VERSION = "2.1.0"
BUILD_DATE = os.environ.get("BUILD_DATE", datetime.now().strftime("%Y-%m-%d"))
VERSION_LABEL = f"v{APP_VERSION} build {BUILD_DATE}"
APP_ENV = os.environ.get("APP_ENV", os.environ.get("FLASK_ENV", "dev")).lower()
APP_HOST = os.environ.get("APP_HOST", "0.0.0.0")
APP_PORT = int(os.environ.get("PORT", os.environ.get("APP_PORT", "5000")))
app.config["ENV_NAME"] = APP_ENV
app.config["SECRET_KEY"] = os.environ.get("SECRET_KEY", "dev-only-change-me")
app.config["MAX_CONTENT_LENGTH"] = 1024 * 1024
app.config["SESSION_COOKIE_HTTPONLY"] = True
app.config["SESSION_COOKIE_SAMESITE"] = "Lax"
app.config["SESSION_COOKIE_SECURE"] = APP_ENV == "prod"
DATA_DIR = Path(__file__).parent / "data"
RUNTIME_DATA_DIR = Path(os.environ.get("SCHULIMPFUNG_DATA_DIR", DATA_DIR)).resolve()
LOG_DIR = Path(os.environ.get("SCHULIMPFUNG_LOG_DIR", RUNTIME_DATA_DIR / "logs")).resolve()
CDA_DIR = DATA_DIR / "cda"
SESSION_ROOT = RUNTIME_DATA_DIR / "sessions"
VACCINATION_PROTOCOL_PATH = RUNTIME_DATA_DIR / "impfprotokoll.csv"
SAMPLE_STUDENT_LIST_PATH = DATA_DIR / "schülerliste.csv"
VACCINATION_FORM_PATH = DATA_DIR / "impfung.csv"
GDA_PATH = DATA_DIR / "gda.csv"
ERROR_PATH = DATA_DIR / "error.csv"
CDA_DOCUMENT_NAME = "eImpf-Kompletter_Immunisierungsstatus.xml"
CDA_UPDATE_DOCUMENT_NAME = "eImpf-Update_Immunisierungsstatus.xml"
CDA_STYLESHEET_NAME = "eimpf-stylesheet_v1.0.xsl"
OVP_DOWNLOAD_URL = "https://ovp.elga-services.at/download.html"
OVP_CDA_SCHEMA_URL = "https://gitlab.com/elga-gmbh/cda/schema"
OVP_CDA_SCHEMATRON_URL = "https://gitlab.com/elga-gmbh/cda/schematron"
HL7_NS = "urn:hl7-org:v3"
XSI_NS = "http://www.w3.org/2001/XMLSchema-instance"
PHARM_NS = "urn:ihe:pharm:medication"
SDTC_NS = "urn:hl7-org:sdtc"
IPS_NS = "urn:hl7-org:ips"
HL7AT_NS = "urn:hl7-at:v3"
CSV_FIELDS = ["vorname", "nachname", "gebdat", "svnr", "schule", "klasse", "active"]
DOWNLOAD_DELAY_SECONDS = float(os.environ.get("DOWNLOAD_DELAY_SECONDS", "3"))
VALUE_SET_TIMEOUT_SECONDS = float(os.environ.get("VALUE_SET_TIMEOUT_SECONDS", "4"))
GDA_DETAIL_TIMEOUT_SECONDS = float(os.environ.get("GDA_DETAIL_TIMEOUT_SECONDS", "4"))
GDA_FIELDNAMES = [
    "Bezeichnung",
    "OID",
    "Details",
    "Name",
    "Titel",
    "Vorname",
    "Nachname",
]
VACCINATION_PROTOCOL_FIELDS = ["gda", "impfstoff", "datum"]
CDA_VIEWER_CSP = (
    "default-src 'self'; "
    "script-src 'self' data: 'unsafe-inline'; "
    "style-src 'self' data: 'unsafe-inline'; "
    "img-src 'self' data:; "
    "frame-src 'self'; "
    "object-src 'none'; "
    "base-uri 'self'; "
    "frame-ancestors 'self'"
)
ANONYMIZED_IMPFARZT = {
    "Name": "Dr. Irmi Impfarzt",
    "Titel": "Dr.",
    "Vorname": "Irmi",
    "Nachname": "Impfarzt",
}
student_rows: list[dict] = []
downloaded_passes_by_svnr: dict[str, str] = {}
current_session_id: str | None = None
current_session_gda: list[dict] = []


def configure_logging() -> None:
    log_level = os.environ.get("LOG_LEVEL", "INFO").upper()
    handlers: list[logging.Handler] = [logging.StreamHandler(sys.stdout)]
    LOG_DIR.mkdir(parents=True, exist_ok=True)
    handlers.append(logging.FileHandler(LOG_DIR / "schulimpfung.log", encoding="utf-8"))
    logging.basicConfig(
        level=getattr(logging, log_level, logging.INFO),
        format="%(asctime)s %(levelname)s %(name)s %(message)s",
        handlers=handlers,
        force=True,
    )
    app.logger.setLevel(getattr(logging, log_level, logging.INFO))


configure_logging()

ET.register_namespace("", HL7_NS)
ET.register_namespace("xsi", XSI_NS)
ET.register_namespace("pharm", PHARM_NS)
ET.register_namespace("sdtc", SDTC_NS)
ET.register_namespace("ips", IPS_NS)
ET.register_namespace("hl7at", HL7AT_NS)


@app.context_processor
def app_metadata():
    return {
        "app_version": APP_VERSION,
        "build_date": BUILD_DATE,
        "version_label": VERSION_LABEL,
        "refclient_enabled": refclient is not None,
    }


FALLBACK_VALUE_SET_OPTIONS = {
    "https://termgit.elga.gv.at/ValueSet-eimpf-impfdosis.html": [
        {"value": "D1", "label": "D1 - Dosis 1"},
        {"value": "D2", "label": "D2 - Dosis 2"},
        {"value": "D3", "label": "D3 - Dosis 3"},
        {"value": "B", "label": "B - Auffrischung"},
    ],
    "https://termgit.elga.gv.at/ValueSet-eimpf-impfgrund.html": [
        {"value": "IG1", "label": "IG1 - Indikationsimpfung für Risikogruppe"},
        {
            "value": "IG2",
            "label": "IG2 - Wiederholungsimpfung aufgrund medizinischer Indikation",
        },
    ],
    "https://termgit.elga.gv.at/ValueSet-eimpf-impfrelevanteerkrankung.html": [
        {"value": "RE1", "label": "RE1 - Relevante Erkrankung"},
    ],
    "https://termgit.elga.gv.at/ValueSet-eimpf-impfschema.html": [
        {"value": "SCHEMA005", "label": "SCHEMA005 - FSME Grundschema, FSME-Immun"},
        {"value": "SCHEMA020", "label": "SCHEMA020 - HPV Grundschema"},
        {"value": "SCHEMA025", "label": "SCHEMA025 - MMR Grundschema ab 9 Monaten"},
    ],
    "https://termgit.elga.gv.at/ValueSet-eimpf-impfstoffe.html": [
        {"value": "0514986", "label": "0514986 - FSME-IMMUN FSPR 0,5ML NAD F"},
        {"value": "1325750", "label": "1325750 - PRIORIX PLV+LSM IMPFDS"},
        {"value": "3511764", "label": "3511764 - MMRVAXPRO PLV+LSM FSPR +2K"},
    ],
    "https://termgit.elga.gv.at/ValueSet-eimpf-zusatzklassifikation.html": [
        {"value": "ZK1", "label": "ZK1 - Zusatzklassifikation"},
    ],
    "https://termgit.elga.gv.at/ValueSet-eimpf-zusatzklassifikation-impfsetting.html": [
        {"value": "IS1", "label": "IS1 - Impfsetting"},
    ],
    "https://termgit.elga.gv.at/ValueSet-eimpf-zusatzklassifikation-impfprogramm.html": [
        {"value": "IP1", "label": "IP1 - Impfprogramm"},
    ],
}

CDA_ENTRY_FIELD_MAPPING = [
    {
        "field": "svnr",
        "target": "recordTarget/patientRole/id[@root='1.2.40.0.10.1.4.3.1']/@extension",
        "required": True,
    },
    {"field": "patient_vorname", "target": "recordTarget/patientRole/patient/name/given", "required": True},
    {"field": "patient_nachname", "target": "recordTarget/patientRole/patient/name/family", "required": True},
    {"field": "patient_geburtsdatum", "target": "recordTarget/patientRole/patient/birthTime/@value", "required": True},
    {"field": "Datum", "target": "substanceAdministration/effectiveTime/@value", "required": True},
    {"field": "Dosis", "target": "precondition/criterion/value/@code", "required": True},
    {"field": "Schema", "target": "precondition/criterion/code/@code", "required": True},
    {
        "field": "Impfstoff",
        "target": "consumable/manufacturedProduct/manufacturedMaterial/code/@code",
        "required": True,
    },
    {
        "field": "Chargennummer",
        "target": "consumable/manufacturedProduct/manufacturedMaterial/lotNumberText",
        "required": True,
    },
    {
        "field": "Grund",
        "target": "entryRelationship[@typeCode='SUBJ']/act/code/qualifier/value/@code",
        "required": True,
    },
    {
        "field": "Setting",
        "target": "entryRelationship Zusatzklassifikation Impfsetting/value/@code",
        "required": False,
    },
    {
        "field": "Programm",
        "target": "entryRelationship Zusatzklassifikation Impfprogramm/value/@code",
        "required": False,
    },
    {
        "field": "Klassifikation",
        "target": "entryRelationship Zusatzklassifikation allgemein/value/@code",
        "required": False,
    },
    {
        "field": "Relevante Erkrankung",
        "target": "section Impfrelevante Erkrankungen/observation/value/@code",
        "required": False,
    },
    {
        "field": "gda_impfarzt_oid",
        "target": "substanceAdministration/performer/assignedEntity/id/@root",
        "required": True,
    },
    {
        "field": "gda_impfarzt_titel",
        "target": "substanceAdministration/performer/assignedPerson/name/prefix",
        "required": True,
    },
    {
        "field": "gda_impfarzt_vorname",
        "target": "substanceAdministration/performer/assignedPerson/name/given",
        "required": True,
    },
    {
        "field": "gda_impfarzt_nachname",
        "target": "substanceAdministration/performer/assignedPerson/name/family",
        "required": True,
    },
    {
        "field": "gda_organisation_oid",
        "target": "substanceAdministration/performer/representedOrganization/id/@root",
        "required": True,
    },
    {
        "field": "gda_organisation_name",
        "target": "substanceAdministration/performer/representedOrganization/name",
        "required": True,
    },
]
VACCINATION_REQUIRED_FIELDS = {
    mapping["field"]
    for mapping in CDA_ENTRY_FIELD_MAPPING
    if mapping["required"]
}


def start_new_session() -> Path:
    global current_session_id, current_session_gda
    timestamp = datetime.now().strftime("%Y%m%d-%H%M%S")
    current_session_id = f"{timestamp}-{uuid.uuid4().hex[:8]}"
    current_session_gda = read_gda_entries()
    session_dir().mkdir(parents=True, exist_ok=True)
    write_session_gda()
    return session_dir()


def ensure_session() -> Path:
    if current_session_id is None:
        return start_new_session()
    session_dir().mkdir(parents=True, exist_ok=True)
    return session_dir()


def session_dir() -> Path:
    if current_session_id is None:
        return SESSION_ROOT / "_none"
    return SESSION_ROOT / current_session_id


def session_student_list_path() -> Path:
    return session_dir() / "schuelerliste.csv"


def session_gda_path() -> Path:
    return session_dir() / "gda.csv"


def pass_download_dir() -> Path:
    return session_dir() / "downloaded_impfpaesse"


def vaccination_document_dir() -> Path:
    return session_dir() / "dokumentierte_impfungen"


def vaccination_upload_dir() -> Path:
    return session_dir() / "eimpfpass_uploads"


def cda_mapping_filename_for(student: dict) -> str:
    svnr = "".join(
        character
        for character in student["social_security_number"]
        if character.isalnum()
    )
    return f"{svnr}_cda_mapping.csv"


def cda_update_filename_for(student: dict) -> str:
    svnr = "".join(
        character
        for character in student["social_security_number"]
        if character.isalnum()
    )
    return f"{svnr}.xml"


def cda_update_downloads_for(students: list[dict]) -> list[dict]:
    downloads = []
    for student in students:
        filename = cda_update_filename_for(student)
        if (vaccination_document_dir() / filename).exists():
            downloads.append({"filename": filename, "student_name": student["name"]})
    return downloads


def cda_validation_filename_for(student: dict) -> str:
    svnr = "".join(
        character
        for character in student["social_security_number"]
        if character.isalnum()
    )
    return f"{svnr}_cda_validation.csv"


def upload_result_filename_for(student: dict) -> str:
    svnr = "".join(
        character
        for character in student["social_security_number"]
        if character.isalnum()
    )
    return f"{svnr}_eimpfpass_upload.csv"


def protocol_oid_part(oid: str | None) -> str:
    value = "".join(character for character in (oid or "") if character.isalnum())
    return value or "unbekannt"


def current_impfarzt_oid() -> str:
    for entry in current_session_gda:
        if entry.get("Bezeichnung") == "Impfarzt":
            return entry.get("OID", "")
    return ""


def vaccination_protocol_path(impfarzt_oid: str | None = None) -> Path:
    oid = impfarzt_oid if impfarzt_oid is not None else current_impfarzt_oid()
    oid_part = protocol_oid_part(oid)
    return VACCINATION_PROTOCOL_PATH.with_name(
        f"{VACCINATION_PROTOCOL_PATH.stem}_{oid_part}{VACCINATION_PROTOCOL_PATH.suffix}"
    )


def vaccination_protocol_paths() -> list[Path]:
    parent = VACCINATION_PROTOCOL_PATH.parent
    pattern = f"{VACCINATION_PROTOCOL_PATH.stem}_*{VACCINATION_PROTOCOL_PATH.suffix}"
    paths = sorted(parent.glob(pattern)) if parent.exists() else []
    if VACCINATION_PROTOCOL_PATH.exists():
        paths.append(VACCINATION_PROTOCOL_PATH)
    return paths


def ensure_vaccination_protocol(impfarzt_oid: str | None = None) -> Path:
    protocol_path = vaccination_protocol_path(impfarzt_oid)
    protocol_path.parent.mkdir(parents=True, exist_ok=True)
    if not protocol_path.exists():
        with protocol_path.open("w", encoding="utf-8", newline="") as csv_file:
            writer = csv.DictWriter(csv_file, fieldnames=VACCINATION_PROTOCOL_FIELDS)
            writer.writeheader()
    return protocol_path


def append_vaccination_protocol_row(vaccination_record: dict) -> None:
    protocol_path = ensure_vaccination_protocol(
        vaccination_record.get("gda_impfarzt_oid")
    )
    gda_name = " ".join(
        part
        for part in [
            vaccination_record.get("gda_impfarzt_titel", ""),
            vaccination_record.get("gda_impfarzt_vorname", ""),
            vaccination_record.get("gda_impfarzt_nachname", ""),
        ]
        if part
    ).strip()
    if not gda_name:
        gda_name = vaccination_record.get("gda_impfarzt_oid", "")

    with protocol_path.open("a", encoding="utf-8", newline="") as csv_file:
        writer = csv.DictWriter(csv_file, fieldnames=VACCINATION_PROTOCOL_FIELDS)
        writer.writerow(
            {
                "gda": gda_name,
                "impfstoff": vaccination_record.get("Impfstoff", ""),
                "datum": vaccination_record.get("Datum", ""),
            }
        )


def vaccination_protocol_summary() -> list[dict]:
    counts: dict[str, int] = {}
    for protocol_path in vaccination_protocol_paths():
        for row in read_csv_rows(protocol_path):
            gda_name = row.get("gda", "").strip() or "Unbekannter GDA"
            counts[gda_name] = counts.get(gda_name, 0) + 1
    return [
        {"gda": gda_name, "count": count}
        for gda_name, count in sorted(counts.items())
    ]


def read_student_rows() -> list[dict]:
    return student_rows.copy()


def read_csv_rows(path: Path) -> list[dict]:
    with path.open("r", encoding="utf-8-sig", newline="") as csv_file:
        return list(csv.DictReader(csv_file))


def read_gda_entries() -> list[dict]:
    return [enrich_gda_entry(row) for row in read_csv_rows(GDA_PATH)]


def visible_text(html_fragment: str) -> str:
    text = re.sub(r"<.*?>", " ", html_fragment, flags=re.S)
    return " ".join(html_parser.unescape(text).split())


def extract_gda_name(detail_html: str) -> str:
    match = re.search(r'<div class="my-5">\s*<h2>(.*?)</h2>', detail_html, re.S)
    if not match:
        return ""
    return visible_text(match.group(1))


def split_physician_name(full_name: str) -> dict:
    tokens = full_name.split()
    title_parts = []
    while tokens and (tokens[0].endswith(".") or tokens[0].lower() in {"dr", "mag"}):
        title_parts.append(tokens.pop(0))

    return {
        "Titel": " ".join(title_parts),
        "Vorname": tokens[0] if tokens else "",
        "Nachname": " ".join(tokens[1:]) if len(tokens) > 1 else "",
    }


@lru_cache(maxsize=16)
def gda_detail_from_url(detail_url: str) -> dict:
    if not detail_url.startswith("https://"):
        return {}

    try:
        with urlopen(detail_url, timeout=GDA_DETAIL_TIMEOUT_SECONDS) as response:
            detail_html = response.read().decode("utf-8", errors="replace")
    except (OSError, TimeoutError, URLError):
        return {}

    full_name = extract_gda_name(detail_html)
    return {"Name": full_name, **split_physician_name(full_name)}


def enrich_gda_entry(row: dict) -> dict:
    entry = {field: row.get(field, "").strip() for field in GDA_FIELDNAMES}
    if entry["Bezeichnung"] == "Impfarzt":
        entry.update(ANONYMIZED_IMPFARZT)
    elif not entry["Name"]:
        entry["Name"] = gda_detail_from_url(entry["Details"]).get("Name", "")
    return entry


def read_error_messages() -> dict[str, str]:
    return {
        row.get("Code", "").strip(): row.get("Fehlermeldung", "").strip()
        for row in read_csv_rows(ERROR_PATH)
    }


def error_message(error_code: str | None) -> str | None:
    if not error_code:
        return None
    return read_error_messages().get(error_code)


def write_session_gda() -> None:
    session_dir().mkdir(parents=True, exist_ok=True)
    with session_gda_path().open("w", encoding="utf-8", newline="") as csv_file:
        writer = csv.DictWriter(csv_file, fieldnames=GDA_FIELDNAMES)
        writer.writeheader()
        writer.writerows(current_session_gda)


def write_student_rows(rows: list[dict]) -> None:
    ensure_session()
    student_rows.clear()
    student_rows.extend(rows)
    with session_student_list_path().open("w", encoding="utf-8", newline="") as csv_file:
        writer = csv.DictWriter(csv_file, fieldnames=CSV_FIELDS)
        writer.writeheader()
        writer.writerows(rows)


def cleanup_downloaded_vaccination_passes() -> None:
    target_dir = pass_download_dir()
    if target_dir.exists():
        shutil.rmtree(target_dir)
    downloaded_passes_by_svnr.clear()
    app.logger.info("downloaded_vaccination_passes_deleted", extra={"session_id": current_session_id})


def close_current_session() -> None:
    global current_session_id
    if current_session_id is not None:
        target_dir = session_dir().resolve()
        session_root = SESSION_ROOT.resolve()
        if target_dir == session_root or session_root not in target_dir.parents:
            raise RuntimeError("Refusing to delete a path outside the session root")
        if target_dir.exists():
            shutil.rmtree(target_dir)

    student_rows.clear()
    downloaded_passes_by_svnr.clear()
    current_session_gda.clear()
    current_session_id = None
    app.logger.info("session_closed")


def writable_directory_check(path: Path) -> tuple[bool, str]:
    try:
        path.mkdir(parents=True, exist_ok=True)
        probe_path = path / ".healthcheck"
        probe_path.write_text(datetime.now().isoformat(), encoding="utf-8")
        probe_path.unlink(missing_ok=True)
    except OSError as exc:
        return False, str(exc)
    return True, "ok"


def smoke_check_report() -> tuple[dict, int]:
    checks = {
        "environment": {"ok": APP_ENV in {"dev", "prod", "test"}, "value": APP_ENV},
        "runtime_data_dir": {"ok": False, "path": str(RUNTIME_DATA_DIR)},
        "session_root_writable": {},
        "log_dir_writable": {},
        "sample_student_list": {"ok": SAMPLE_STUDENT_LIST_PATH.exists(), "path": str(SAMPLE_STUDENT_LIST_PATH)},
        "cda_document": {"ok": (CDA_DIR / CDA_DOCUMENT_NAME).exists(), "path": str(CDA_DIR / CDA_DOCUMENT_NAME)},
        "cda_stylesheet": {"ok": (CDA_DIR / CDA_STYLESHEET_NAME).exists(), "path": str(CDA_DIR / CDA_STYLESHEET_NAME)},
        "vaccination_form": {"ok": VACCINATION_FORM_PATH.exists(), "path": str(VACCINATION_FORM_PATH)},
        "gda_catalog": {"ok": GDA_PATH.exists(), "path": str(GDA_PATH)},
        "error_catalog": {"ok": ERROR_PATH.exists(), "path": str(ERROR_PATH)},
    }
    session_ok, session_message = writable_directory_check(SESSION_ROOT)
    log_ok, log_message = writable_directory_check(LOG_DIR)
    checks["runtime_data_dir"]["ok"] = RUNTIME_DATA_DIR.exists()
    checks["session_root_writable"] = {"ok": session_ok, "path": str(SESSION_ROOT), "message": session_message}
    checks["log_dir_writable"] = {"ok": log_ok, "path": str(LOG_DIR), "message": log_message}
    ok = all(check.get("ok") for check in checks.values())
    return {
        "status": "ok" if ok else "error",
        "version": MVP_VERSION,
        "app_version": APP_VERSION,
        "build_date": BUILD_DATE,
        "environment": APP_ENV,
        "checks": checks,
    }, 200 if ok else 503


def is_allowed_student_upload(filename: str) -> bool:
    return filename.lower().endswith(".csv")


def form_to_student_row() -> dict:
    return {
        "vorname": request.form.get("first_name", "").strip(),
        "nachname": request.form.get("last_name", "").strip(),
        "gebdat": request.form.get("birth_date", "").strip(),
        "svnr": request.form.get("social_security_number", "").strip(),
        "schule": request.form.get("school", "").strip(),
        "klasse": request.form.get("class_name", "").strip(),
    }


@lru_cache(maxsize=16)
def value_set_options_from_url(value_set_url: str) -> tuple[dict, ...]:
    if not value_set_url.startswith("https://"):
        return tuple()
    if APP_ENV == "test":
        return tuple(FALLBACK_VALUE_SET_OPTIONS.get(value_set_url, []))

    try:
        with urlopen(value_set_url, timeout=VALUE_SET_TIMEOUT_SECONDS) as response:
            value_set_html = response.read().decode("utf-8")
    except (OSError, TimeoutError, URLError):
        return tuple(FALLBACK_VALUE_SET_OPTIONS.get(value_set_url, []))

    options = []
    for raw_json in re.findall(r"data-clipboard-text='(\{.*?\})'", value_set_html):
        try:
            coding = json.loads(html_parser.unescape(raw_json))
        except json.JSONDecodeError:
            continue

        code = coding.get("code", "").strip()
        display = coding.get("display", "").strip()
        if not code or not display:
            continue

        options.append({"value": code, "label": f"{code} - {display}"})

    if not options:
        return tuple(FALLBACK_VALUE_SET_OPTIONS.get(value_set_url, []))
    return tuple(options)


def read_vaccination_form_fields() -> list[dict]:
    def order_value(row: dict) -> int:
        try:
            return int(row.get("Order", "").strip())
        except ValueError:
            return 999

    with VACCINATION_FORM_PATH.open("r", encoding="utf-8-sig", newline="") as csv_file:
        fields = []
        rows = sorted(csv.DictReader(csv_file), key=order_value)
        for row in rows:
            label = row.get("Anzeige", "").strip()
            if refclient and label in {'Setting', 'Programm', 'Klassifikation', 'Relevante Erkrankung'}:
                continue
            if not label:
                continue
            input_id = f"vaccination_{len(fields) + 1}"
            default_value = ""
            if "now" in row.get("ValueSet", "").lower():
                default_value = datetime.now().strftime("%Y-%m-%d")
            value_set = row.get("ValueSet", "").strip()
            options = () if refclient and label == "Impfstoff" else value_set_options_from_url(value_set)
            if refclient and label == "Impfstoff":
                options = [{"value": item["code"], "label": item["name"] + " · " + item["code"]}
                           for item in refclient.request('/api/eimpf/vaccines')]
            control = row.get("Anzeige als", "").strip()
            if not control and options:
                control = "DropDown"
            fields.append(
                {
                    "id": input_id,
                    "name": label,
                    "label": label,
                    "control": control,
                    "help": row.get("Hilfetext", "").strip(),
                    "value_set": value_set,
                    "options": options,
                    "default": default_value,
                    "required": label in VACCINATION_REQUIRED_FIELDS,
                }
            )
    return fields


def is_active(row: dict) -> bool:
    return (row.get("active") or "true").lower() != "false"


def normalized_svnr(row: dict) -> str:
    return "".join(character for character in (row.get("svnr") or "") if character.isdigit())


def is_valid_svnr(svnr: str) -> bool:
    return len(svnr) == 10 and svnr.isascii() and svnr.isdigit()


def has_duplicate_svnr(rows: list[dict]) -> bool:
    seen = set()
    for row in rows:
        svnr = normalized_svnr(row)
        if svnr in seen:
            return True
        seen.add(svnr)
    return False


def rows_have_invalid_svnr(rows: list[dict]) -> bool:
    return any(not is_valid_svnr(normalized_svnr(row)) for row in rows)


def duplicate_svnr_exists(rows: list[dict], svnr: str, ignored_index: int | None = None) -> bool:
    for index, row in enumerate(rows):
        if ignored_index is not None and index == ignored_index:
            continue
        if normalized_svnr(row) == svnr:
            return True
    return False


def build_student_view_model() -> list[dict]:
    students = []
    shared_documents = refclient.request('/api/eimpf/documents') if refclient else []
    for index, row in enumerate(read_student_rows(), start=1):
        student_id = f"S-{index:04d}"
        has_vaccination = index == 1
        svnr = row.get("svnr", "")
        shared_vaccinations = []
        if refclient:
            for document in shared_documents:
                entries = [entry['resource'] for entry in document['bundle'].get('entry', [])]
                if any(resource.get('resourceType') == 'Patient' and any(identifier.get('value') == svnr
                       for identifier in resource.get('identifier', [])) for resource in entries):
                    shared_vaccinations.extend(resource for resource in entries if resource.get('resourceType') == 'Immunization')
            has_vaccination = bool(shared_vaccinations)
        downloaded_pass_file = downloaded_passes_by_svnr.get(svnr)
        students.append(
            {
                "id": student_id,
                "first_name": row.get("vorname", ""),
                "last_name": row.get("nachname", ""),
                "name": f"{row.get('vorname', '')} {row.get('nachname', '')}".strip(),
                "birth_date": row.get("gebdat", ""),
                "social_security_number": svnr,
                "school": row.get("schule", ""),
                "class_name": row.get("klasse", ""),
                "active": is_active(row),
                "pass_downloaded": downloaded_pass_file is not None,
                "pass_file_name": downloaded_pass_file,
                "vaccination": (', '.join(v.get('vaccineCode', {}).get('coding', [{}])[0].get('display') or
                                          v.get('vaccineCode', {}).get('coding', [{}])[0].get('code', '')
                                          for v in shared_vaccinations) or '—') if refclient else ("FSME" if has_vaccination else "—"),
                "vaccination_status": "eingetragen" if has_vaccination else "offen",
                "pass_updated_at": "2026-04-20" if has_vaccination else "—",
                "pass_history": ["MMR", "Tetanus", "FSME"] if has_vaccination else [],
                "dose": "Booster" if has_vaccination else "",
                "vaccination_date": "2026-04-20" if has_vaccination else "",
            }
        )
    return students


def selected_student_from(students: list[dict]) -> dict | None:
    if not students:
        return None

    selected_id = request.args.get("student_id")
    if not selected_id:
        return None

    return next(
        (student for student in students if student["id"] == selected_id),
        None,
    )


def pass_filename_for(student: dict) -> str:
    svnr = "".join(
        character
        for character in student["social_security_number"]
        if character.isalnum()
    )
    return f"{svnr}_{CDA_DOCUMENT_NAME}"


def vaccination_filename_for(student: dict) -> str:
    svnr = "".join(
        character
        for character in student["social_security_number"]
        if character.isalnum()
    )
    return f"{svnr}_impfung.csv"


def cda_date(value: str) -> str:
    value = value.strip()
    for date_format in ("%Y-%m-%d", "%d.%m.%Y", "%d.%m.%y"):
        try:
            return datetime.strptime(value, date_format).strftime("%Y%m%d")
        except ValueError:
            continue
    return "".join(character for character in value if character.isdigit())


def display_date(value: str) -> str:
    cda_value = cda_date(value)
    if len(cda_value) == 8:
        return f"{cda_value[6:8]}.{cda_value[4:6]}.{cda_value[0:4]}"
    return value


def ns_tag(tag: str) -> str:
    return f"{{{HL7_NS}}}{tag}"


def pharm_tag(tag: str) -> str:
    return f"{{{PHARM_NS}}}{tag}"


def find_first(root: ET.Element, path: str) -> ET.Element | None:
    return root.find(path, {"hl7": HL7_NS})


def find_by_id(root: ET.Element, element_id: str) -> ET.Element | None:
    return root.find(f".//*[@ID='{element_id}']")


def set_text(root: ET.Element, path: str, value: str) -> None:
    element = find_first(root, path)
    if element is not None:
        element.text = value


def set_attr(root: ET.Element, path: str, attribute: str, value: str) -> None:
    element = find_first(root, path)
    if element is not None:
        element.set(attribute, value)


def remove_pharm_ingredients(root: ET.Element) -> None:
    for material in root.findall(".//hl7:manufacturedMaterial", {"hl7": HL7_NS}):
        for ingredient in list(material.findall("pharm:ingredient", {"pharm": PHARM_NS})):
            material.remove(ingredient)


def build_vaccination_record(student: dict, vaccination: dict) -> dict:
    gda_by_name = {
        entry.get("Bezeichnung", ""): entry
        for entry in current_session_gda
    }
    organisation = gda_by_name.get("Organisation", {})
    impfarzt = gda_by_name.get("Impfarzt", {})
    return {
        "schueler_id": student["id"],
        "name": student["name"],
        "svnr": student["social_security_number"],
        "patient_vorname": student["first_name"],
        "patient_nachname": student["last_name"],
        "patient_geburtsdatum": student["birth_date"],
        "gda_organisation_name": organisation.get("Name", ""),
        "gda_organisation_oid": organisation.get("OID", ""),
        "gda_impfarzt_titel": impfarzt.get("Titel", ""),
        "gda_impfarzt_vorname": impfarzt.get("Vorname", ""),
        "gda_impfarzt_nachname": impfarzt.get("Nachname", ""),
        "gda_impfarzt_oid": impfarzt.get("OID", ""),
        **vaccination,
    }


def download_vaccination_passes_from_database(active_students: list[dict]) -> int:
    ensure_session()
    target_dir = pass_download_dir()
    target_dir.mkdir(parents=True, exist_ok=True)
    if refclient:
        documents = refclient.request('/api/eimpf/documents')
        for student in active_students:
            svnr = student['social_security_number']
            matches = [doc for doc in documents if any(
                entry['resource'].get('resourceType') == 'Patient' and any(
                    identifier.get('value') == svnr for identifier in entry['resource'].get('identifier', []))
                for entry in doc['bundle'].get('entry', []))]
            sections = [refclient.request('/api/eimpf/documents/' + doc['id'] + '/view') for doc in matches]
            filename = Path(pass_filename_for(student)).stem + '.html'
            # Separate frames preserve each complete document's stylesheet and markup.
            content = '<!doctype html><html lang="de"><meta charset="utf-8"><title>Impfpass</title><h1>Impfpass</h1>'
            content += ''.join('<iframe title="Impfdokument" style="width:100%;height:90vh" srcdoc="' + html_parser.escape(section, quote=True) + '"></iframe>' for section in sections)
            if not sections:
                content += '<p>Keine Impfdokumente im Referenzclient gespeichert.</p>'
            (target_dir / filename).write_text(content + '</html>', encoding='utf-8')
            downloaded_passes_by_svnr[svnr] = filename
        return len(active_students)
    shutil.copyfile(
        CDA_DIR / CDA_STYLESHEET_NAME,
        target_dir / CDA_STYLESHEET_NAME,
    )

    source_document = CDA_DIR / CDA_DOCUMENT_NAME
    for student in active_students:
        pass_file_name = pass_filename_for(student)
        shutil.copyfile(source_document, target_dir / pass_file_name)
        downloaded_passes_by_svnr[student["social_security_number"]] = pass_file_name
    return len(active_students)


def document_vaccination_for_active_students(
    active_students: list[dict], vaccination: dict, vaccination_fields: list[dict]
) -> int:
    return generate_cda_documents_for_students(
        active_students,
        vaccination,
        vaccination_fields,
        ensure_session=ensure_session,
        target_dir=vaccination_document_dir(),
        build_vaccination_record=build_vaccination_record,
        vaccination_filename_for=vaccination_filename_for,
        write_cda_mapping_report_for_student=write_cda_mapping_report_for_student,
        write_cda_update_for_student=write_cda_update_for_student,
        write_cda_validation_report_for_student=write_cda_validation_report_for_student,
        append_vaccination_protocol_row=append_vaccination_protocol_row,
    )


def cda_mapping_rows(vaccination_record: dict, vaccination_fields: list[dict]) -> list[dict]:
    vaccination_field_names = {field["label"] for field in vaccination_fields}
    rows = []
    for mapping in CDA_ENTRY_FIELD_MAPPING:
        value = vaccination_record.get(mapping["field"], "")
        required = mapping["required"]
        source_type = "impfung.csv" if mapping["field"] in vaccination_field_names else "session"
        rows.append(
            {
                "cda_vorlage": CDA_UPDATE_DOCUMENT_NAME,
                "cda_ziel": mapping["target"],
                "quelle": source_type,
                "feld": mapping["field"],
                "wert": value,
                "pflichtfeld": "ja" if required else "nein",
                "status": "ok" if value or not required else "fehlt",
            }
        )
    return rows


def cda_mapping_is_complete(mapping_rows: list[dict]) -> bool:
    return all(row["status"] == "ok" for row in mapping_rows if row["pflichtfeld"] == "ja")


def write_cda_mapping_report_for_student(
    student: dict, vaccination: dict, vaccination_fields: list[dict]
) -> list[dict]:
    vaccination_record = build_vaccination_record(student, vaccination)
    rows = cda_mapping_rows(vaccination_record, vaccination_fields)
    report_path = vaccination_document_dir() / cda_mapping_filename_for(student)
    with report_path.open("w", encoding="utf-8", newline="") as csv_file:
        writer = csv.DictWriter(
            csv_file,
            fieldnames=[
                "cda_vorlage",
                "cda_ziel",
                "quelle",
                "feld",
                "wert",
                "pflichtfeld",
                "status",
            ],
        )
        writer.writeheader()
        writer.writerows(rows)
    return rows


def write_cda_validation_report_for_student(student: dict, cda_path: Path, mapping_rows: list[dict]) -> None:
    validation_rows = [
        {
            "pruefung": "XML Wohlgeformtheit",
            "ressource": str(cda_path.name),
            "quelle": "lokal",
            "status": "ok",
            "hinweis": "CDA-Datei wurde mit ElementTree erzeugt und erneut gelesen.",
        },
        {
            "pruefung": "CDA Schema",
            "ressource": OVP_CDA_SCHEMA_URL,
            "quelle": OVP_DOWNLOAD_URL,
            "status": "referenziert",
            "hinweis": "Offizielle Schema-Ressourcen laut OVP-Downloadseite.",
        },
        {
            "pruefung": "CDA Schematron",
            "ressource": OVP_CDA_SCHEMATRON_URL,
            "quelle": OVP_DOWNLOAD_URL,
            "status": "referenziert",
            "hinweis": "Offizielle Schematron-Ressourcen laut OVP-Downloadseite.",
        },
        {
            "pruefung": "CDA Mapping Pflichtfelder",
            "ressource": cda_mapping_filename_for(student),
            "quelle": "lokal",
            "status": "ok" if cda_mapping_is_complete(mapping_rows) else "fehlt",
            "hinweis": "Alle Pflichtfelder muessen vor Schema/Schematron-Validierung befuellt sein.",
        },
    ]
    ET.parse(cda_path)
    report_path = vaccination_document_dir() / cda_validation_filename_for(student)
    with report_path.open("w", encoding="utf-8", newline="") as csv_file:
        writer = csv.DictWriter(
            csv_file,
            fieldnames=["pruefung", "ressource", "quelle", "status", "hinweis"],
        )
        writer.writeheader()
        writer.writerows(validation_rows)


def write_cda_update_for_student(student: dict, vaccination_record: dict) -> Path:
    if refclient:
        bundle = refclient.bundle(vaccination_record)
        xml = refclient.request('/api/v1/Composition', bundle)
        target = vaccination_document_dir() / cda_update_filename_for(student)
        target.write_text(xml, encoding='utf-8')
        target.with_suffix('.fhir.json').write_text(json.dumps(bundle), encoding='utf-8')
        result = vaccination_upload_dir() / upload_result_filename_for(student)
        result.unlink(missing_ok=True)
        result.with_suffix('.receipt.json').unlink(missing_ok=True)
        return target
    tree = ET.parse(CDA_DIR / CDA_UPDATE_DOCUMENT_NAME)
    root = tree.getroot()

    svnr = vaccination_record["svnr"]
    now_value = datetime.now().strftime("%Y%m%d%H%M%S+0100")
    vaccination_date = cda_date(vaccination_record.get("Datum", ""))

    set_attr(root, ".//hl7:recordTarget/hl7:patientRole/hl7:id[@root='1.2.40.0.10.1.4.3.1']", "extension", svnr)
    set_text(root, ".//hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name/hl7:given", vaccination_record["patient_vorname"])
    set_text(root, ".//hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name/hl7:family", vaccination_record["patient_nachname"])
    set_attr(root, ".//hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:birthTime", "value", cda_date(vaccination_record["patient_geburtsdatum"]))
    set_attr(root, ".//hl7:effectiveTime", "value", now_value)

    row = find_by_id(root, "sbdm-1")
    if row is not None:
        first_cell = row.find("hl7:td", {"hl7": HL7_NS})
        if first_cell is not None:
            first_cell.text = display_date(vaccination_record.get("Datum", ""))

    for element_id, value in {
        "target-1": vaccination_record.get("Impfstoff", ""),
        "dosenr-1": vaccination_record.get("Dosis", ""),
        "criterion-1": vaccination_record.get("Schema", ""),
        "prodName-1": vaccination_record.get("Impfstoff", ""),
    }.items():
        element = find_by_id(root, element_id)
        if element is not None:
            element.text = value

    substance = find_first(root, ".//hl7:section[hl7:title='Impfungen']/hl7:entry/hl7:substanceAdministration")
    if substance is not None:
        effective_time = substance.find("hl7:effectiveTime", {"hl7": HL7_NS})
        if effective_time is not None:
            effective_time.set("value", f"{vaccination_date}000000+0100")

        material_code = substance.find(
            ".//hl7:manufacturedMaterial/hl7:code",
            {"hl7": HL7_NS},
        )
        if material_code is not None:
            material_code.set("code", vaccination_record.get("Impfstoff", ""))
            material_code.set("displayName", vaccination_record.get("Impfstoff", ""))

        lot_number = substance.find(
            ".//hl7:manufacturedMaterial/hl7:lotNumberText",
            {"hl7": HL7_NS},
        )
        if lot_number is not None:
            lot_number.text = vaccination_record.get("Chargennummer", "")

        schema_code = substance.find(
            ".//hl7:precondition/hl7:criterion/hl7:code",
            {"hl7": HL7_NS},
        )
        if schema_code is not None:
            schema_code.set("code", vaccination_record.get("Schema", ""))
            schema_code.set("displayName", vaccination_record.get("Schema", ""))

        dose_value = substance.find(
            ".//hl7:precondition/hl7:criterion/hl7:value",
            {"hl7": HL7_NS},
        )
        if dose_value is not None:
            dose_value.set("code", vaccination_record.get("Dosis", ""))
            dose_value.set("displayName", vaccination_record.get("Dosis", ""))

        reason_value = substance.find(
            ".//hl7:entryRelationship/hl7:act/hl7:code/hl7:qualifier/hl7:value",
            {"hl7": HL7_NS},
        )
        if reason_value is not None:
            reason_value.set("code", vaccination_record.get("Grund", ""))

        for person_path in [
            ".//hl7:performer/hl7:assignedEntity",
            ".//hl7:author/hl7:assignedAuthor",
        ]:
            person = substance.find(person_path, {"hl7": HL7_NS})
            if person is None:
                continue
            identifier = person.find("hl7:id", {"hl7": HL7_NS})
            if identifier is not None:
                identifier.set("root", vaccination_record.get("gda_impfarzt_oid", ""))
            set_person_name(person, vaccination_record)
            set_represented_organization(person, vaccination_record)

    remove_pharm_ingredients(root)
    remove_whitespace_only_text_nodes(root)
    target_path = vaccination_document_dir() / cda_update_filename_for(student)
    tree.write(target_path, encoding="utf-8", xml_declaration=True)
    return target_path


def read_validation_status(student: dict) -> str:
    validation_path = vaccination_document_dir() / cda_validation_filename_for(student)
    if not validation_path.exists():
        return "fehlt"
    rows = read_csv_rows(validation_path)
    return "ok" if all(row.get("status") in {"ok", "referenziert"} for row in rows) else "fehlt"


def mock_upload_cda_to_eimpfpass(active_students: list[dict]) -> tuple[int, str | None]:
    return upload_cda_documents_to_eimpfpass(
        active_students,
        ensure_session=ensure_session,
        document_dir=vaccination_document_dir(),
        target_dir=vaccination_upload_dir(),
        cda_update_filename_for=cda_update_filename_for,
        upload_result_filename_for=upload_result_filename_for,
        read_validation_status=read_validation_status,
        error_message=error_message,
        upload_document=(lambda path: refclient.request('/api/eimpf/documents', json.loads(path.with_suffix('.fhir.json').read_text(encoding='utf-8')))) if refclient else None,
    )


def set_person_name(element: ET.Element, vaccination_record: dict) -> None:
    name = element.find(".//hl7:assignedPerson/hl7:name", {"hl7": HL7_NS})
    if name is None:
        return
    for child_tag, value in {
        "prefix": vaccination_record.get("gda_impfarzt_titel", ""),
        "given": vaccination_record.get("gda_impfarzt_vorname", ""),
        "family": vaccination_record.get("gda_impfarzt_nachname", ""),
    }.items():
        child = name.find(f"hl7:{child_tag}", {"hl7": HL7_NS})
        if child is None:
            child = ET.SubElement(name, ns_tag(child_tag))
        child.text = value


def set_represented_organization(element: ET.Element, vaccination_record: dict) -> None:
    organization = element.find("hl7:representedOrganization", {"hl7": HL7_NS})
    if organization is None:
        return
    identifier = organization.find("hl7:id", {"hl7": HL7_NS})
    if identifier is not None:
        identifier.set("root", vaccination_record.get("gda_organisation_oid", ""))
    name = organization.find("hl7:name", {"hl7": HL7_NS})
    if name is not None:
        name.text = vaccination_record.get("gda_organisation_name", "")


def remove_whitespace_only_text_nodes(element: ET.Element) -> None:
    if element.text is not None and element.text.strip() == "":
        element.text = None
    if element.tail is not None and element.tail.strip() == "":
        element.tail = None
    for child in list(element):
        remove_whitespace_only_text_nodes(child)


def cda_viewer_response(directory: Path, filename: str):
    response = send_from_directory(directory, filename)
    if filename.lower().endswith((".xml", ".xsl")):
        response.headers["Content-Security-Policy"] = CDA_VIEWER_CSP
    return response

@app.after_request
def log_request(response):
    response.headers.setdefault("X-Content-Type-Options", "nosniff")
    response.headers.setdefault("X-Frame-Options", "SAMEORIGIN")
    response.headers.setdefault("Referrer-Policy", "strict-origin-when-cross-origin")
    response.headers.setdefault("Permissions-Policy", "camera=(), microphone=(), geolocation=()")
    response.headers.setdefault(
        "Content-Security-Policy",
        "default-src 'self'; "
        "script-src 'self' https://cdn.jsdelivr.net; "
        "style-src 'self' https://cdn.jsdelivr.net 'unsafe-inline'; "
        "frame-src 'self'; "
        "img-src 'self' data:; "
        "object-src 'none'; "
        "base-uri 'self'; "
        "frame-ancestors 'self'",
    )
    app.logger.info(
        "request_completed",
        extra={
            "method": request.method,
            "path": request.path,
            "status_code": response.status_code,
        },
    )
    return response


@app.get("/health/live")
def health_live():
    return jsonify(
        {
            "status": "ok",
            "version": MVP_VERSION,
            "app_version": APP_VERSION,
            "build_date": BUILD_DATE,
            "environment": APP_ENV,
        }
    )


@app.get("/health/ready")
def health_ready():
    report, status_code = smoke_check_report()
    return jsonify(report), status_code


@app.get("/health/smoke")
def health_smoke():
    report, status_code = smoke_check_report()
    return jsonify(report), status_code


@app.route("/")
def index():
    global current_session_gda
    current_session_gda = read_gda_entries()
    if current_session_id is not None:
        write_session_gda()

    students = build_student_view_model()
    selected_student = selected_student_from(students)
    active_students = [student for student in students if student["active"]]
    active_students_with_pass = [
        student for student in active_students if student["pass_downloaded"]
    ]
    can_document_vaccination = (
        len(active_students) > 0 and len(active_students_with_pass) == len(active_students)
    )
    can_upload_eimpfpass = (
        len(active_students) > 0
        and all((vaccination_document_dir() / cda_update_filename_for(student)).exists() for student in active_students)
    )
    vaccination_downloads = cda_update_downloads_for(active_students)
    completed_active_count = len(vaccination_downloads)
    loaded_active_count = sum(1 for student in active_students if student["pass_downloaded"])
    uploaded_active_count = sum(
        1
        for student in active_students
        if ((vaccination_upload_dir() / upload_result_filename_for(student)).with_suffix('.receipt.json').exists()
            if refclient else (vaccination_upload_dir() / upload_result_filename_for(student)).exists())
    )
    return render_template(
        "index.html",
        mvp_version=MVP_VERSION,
        csv_source="Sitzungsspeicher",
        sample_csv_source=SAMPLE_STUDENT_LIST_PATH.name,
        cda_document_name=CDA_DOCUMENT_NAME,
        session_id=current_session_id,
        upload_message=request.args.get("upload"),
        action_message=request.args.get("action"),
        error_message=error_message(request.args.get("error")),
        workbench_mode=request.args.get("view"),
        vaccination_summary_open=request.args.get("confirm") == "vaccination",
        session_gda=current_session_gda,
        protocol_summary=vaccination_protocol_summary(),
        students=students,
        selected_student=selected_student,
        active_count=len(active_students),
        can_document_vaccination=can_document_vaccination,
        can_upload_eimpfpass=can_upload_eimpfpass,
        completed_active_count=completed_active_count,
        vaccination_downloads=vaccination_downloads,
        loaded_active_count=loaded_active_count,
        uploaded_active_count=uploaded_active_count,
        vaccination_fields=read_vaccination_form_fields(),
    )


@app.post("/students/upload")
def upload_students():
    uploaded_file = request.files.get("student_list")
    if not uploaded_file or uploaded_file.filename == "":
        return redirect(url_for("index", upload="missing"))
    if not is_allowed_student_upload(uploaded_file.filename):
        return redirect(url_for("index", error="101"))

    try:
        csv_text = uploaded_file.read().decode("utf-8-sig")
        rows = list(csv.DictReader(io.StringIO(csv_text), strict=True))
    except (UnicodeDecodeError, csv.Error):
        return redirect(url_for("index", error="101"))
    required_fields = set(CSV_FIELDS) - {"active"}
    if not rows or not required_fields.issubset(set(rows[0].keys())):
        return redirect(url_for("index", error="101"))
    if any(None in row or any(row.get(field) is None for field in required_fields) for row in rows):
        return redirect(url_for("index", error="101"))
    if has_duplicate_svnr(rows) or rows_have_invalid_svnr(rows):
        return redirect(url_for("index", error="101"))

    start_new_session()
    write_student_rows(rows)
    downloaded_passes_by_svnr.clear()
    app.logger.info("student_list_uploaded", extra={"session_id": current_session_id, "row_count": len(rows)})
    return redirect(url_for("index", upload="success"))


@app.post("/students/add")
def add_student():
    rows = read_student_rows()
    row = form_to_student_row()
    svnr = normalized_svnr(row)
    if not is_valid_svnr(svnr):
        return redirect(url_for("index", view="new", error="102"))
    if duplicate_svnr_exists(rows, svnr):
        return redirect(url_for("index", view="new", error="100"))

    row["active"] = "true"
    rows.append(row)
    write_student_rows(rows)
    return redirect(url_for("index", action="added", student_id=f"S-{len(rows):04d}"))


@app.post("/students/<student_id>/edit")
def edit_student(student_id: str):
    rows = read_student_rows()
    try:
        row_index = int(student_id.removeprefix("S-")) - 1
    except ValueError:
        return redirect(url_for("index", action="missing"))

    if row_index < 0 or row_index >= len(rows):
        return redirect(url_for("index", action="missing"))

    row = form_to_student_row()
    svnr = normalized_svnr(row)
    if not is_valid_svnr(svnr):
        return redirect(url_for("index", view="edit", student_id=student_id, error="102"))
    if duplicate_svnr_exists(rows, svnr, ignored_index=row_index):
        return redirect(url_for("index", view="edit", student_id=student_id, error="100"))

    row["active"] = rows[row_index].get("active", "true")
    rows[row_index] = row
    write_student_rows(rows)
    return redirect(url_for("index", action="updated", student_id=student_id))


@app.post("/students/<student_id>/active")
def update_student_active(student_id: str):
    rows = read_student_rows()
    try:
        row_index = int(student_id.removeprefix("S-")) - 1
    except ValueError:
        return redirect(url_for("index", action="missing"))

    if row_index < 0 or row_index >= len(rows):
        return redirect(url_for("index", action="missing"))

    rows[row_index]["active"] = "true" if request.form.get("active") == "on" else "false"
    write_student_rows(rows)
    return redirect(url_for("index"))


@app.get("/cda/<path:filename>")
def cda_file(filename: str):
    return cda_viewer_response(CDA_DIR, filename)


@app.get("/vaccination-passes/download")
def download_vaccination_passes():
    active_students = [
        student for student in build_student_view_model() if student["active"]
    ]
    time.sleep(DOWNLOAD_DELAY_SECONDS)
    downloaded_count = download_vaccination_passes_from_database(active_students)
    app.logger.info("vaccination_passes_downloaded", extra={"session_id": current_session_id, "count": downloaded_count})
    return redirect(url_for("index", action="passes_downloaded", count=downloaded_count))


@app.get("/downloaded-passes/<path:filename>")
def downloaded_pass_file(filename: str):
    return cda_viewer_response(pass_download_dir(), filename)


@app.get("/vaccination-documents/<path:filename>")
def vaccination_document_file(filename: str):
    return cda_viewer_response(vaccination_document_dir(), filename)


@app.get("/protocol")
def vaccination_protocol_file():
    protocol_path = ensure_vaccination_protocol()
    return send_from_directory(
        protocol_path.parent,
        protocol_path.name,
        as_attachment=True,
    )


@app.post("/vaccinations/document")
def document_vaccination():
    active_students = [student for student in build_student_view_model() if student["active"]]
    active_students_with_pass = [
        student for student in active_students if student["pass_downloaded"]
    ]
    if not active_students or len(active_students_with_pass) != len(active_students):
        return redirect(url_for("index", action="vaccination_blocked"))

    vaccination_fields = read_vaccination_form_fields()
    vaccination = {
        field["label"]: request.form.get(field["name"], "").strip()
        for field in vaccination_fields
    }
    missing_required_fields = [
        field["label"]
        for field in vaccination_fields
        if field["required"] and not vaccination.get(field["label"])
    ]
    if missing_required_fields:
        return redirect(url_for("index", view="vaccination", error="103"))

    if request.form.get("confirm_documentation") != "yes":
        query = {
            "view": "vaccination",
            "confirm": "vaccination",
            "active_count": len(active_students),
        }
        for field in vaccination_fields:
            query[f"summary_{field['name']}"] = vaccination.get(field["label"], "")
        return redirect(url_for("index", **query))

    documented_count = document_vaccination_for_active_students(
        active_students, vaccination, vaccination_fields
    )
    cleanup_downloaded_vaccination_passes()
    app.logger.info("vaccinations_documented", extra={"session_id": current_session_id, "count": documented_count})
    return redirect(
        url_for("index", action="vaccination_documented", count=documented_count)
    )


@app.post("/session/close")
def close_session():
    close_current_session()
    return redirect(url_for("index", action="session_closed"))


@app.post("/eimpfpass/upload")
def upload_eimpfpass():
    active_students = [student for student in build_student_view_model() if student["active"]]
    if not active_students:
        return redirect(url_for("index", error="104"))

    uploaded_count, first_error = mock_upload_cda_to_eimpfpass(active_students)
    if first_error:
        app.logger.warning("eimpfpass_upload_failed", extra={"session_id": current_session_id, "error_code": first_error})
        return redirect(url_for("index", action="eimpfpass_upload_failed", error=first_error))
    app.logger.info("eimpfpass_uploaded", extra={"session_id": current_session_id, "count": uploaded_count})
    return redirect(url_for("index", action="eimpfpass_uploaded", count=uploaded_count))


if __name__ == "__main__":
    app.run(host=APP_HOST, port=APP_PORT, debug=APP_ENV == "dev")
