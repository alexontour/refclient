"""CDA-Erzeugung fuer dokumentierte Impfungen.

Input: aktive Schueler, validierte Impfparameter, Session-/GDA-Daten ueber Callbacks.
Output: Impfdokumentations-CSV, CDA-Mapping, CDA-XML, Validierungsreport und Protokolleintrag.
"""

from __future__ import annotations

import csv
from pathlib import Path
from typing import Callable


VACCINATION_RECORD_BASE_FIELDS = [
    "schueler_id",
    "name",
    "svnr",
    "patient_vorname",
    "patient_nachname",
    "patient_geburtsdatum",
    "gda_organisation_name",
    "gda_organisation_oid",
    "gda_impfarzt_titel",
    "gda_impfarzt_vorname",
    "gda_impfarzt_nachname",
    "gda_impfarzt_oid",
]


def generate_cda_documents_for_students(
    active_students: list[dict],
    vaccination: dict,
    vaccination_fields: list[dict],
    *,
    ensure_session: Callable[[], None],
    target_dir: Path,
    build_vaccination_record: Callable[[dict, dict], dict],
    vaccination_filename_for: Callable[[dict], str],
    write_cda_mapping_report_for_student: Callable[[dict, dict, list[dict]], list[dict]],
    write_cda_update_for_student: Callable[[dict, dict], Path],
    write_cda_validation_report_for_student: Callable[[dict, Path, list[dict]], Path],
    append_vaccination_protocol_row: Callable[[dict], None],
) -> int:
    """Generate all vaccination documentation artifacts for the active students."""
    ensure_session()
    target_dir.mkdir(parents=True, exist_ok=True)

    fieldnames = [
        *VACCINATION_RECORD_BASE_FIELDS,
        *[field["label"] for field in vaccination_fields],
    ]

    for student in active_students:
        vaccination_record = build_vaccination_record(student, vaccination)
        with (target_dir / vaccination_filename_for(student)).open(
            "w", encoding="utf-8", newline=""
        ) as csv_file:
            writer = csv.DictWriter(csv_file, fieldnames=fieldnames)
            writer.writeheader()
            writer.writerow(vaccination_record)

        mapping_rows = write_cda_mapping_report_for_student(
            student, vaccination, vaccination_fields
        )
        cda_path = write_cda_update_for_student(student, vaccination_record)
        write_cda_validation_report_for_student(student, cda_path, mapping_rows)
        append_vaccination_protocol_row(vaccination_record)

    return len(active_students)
