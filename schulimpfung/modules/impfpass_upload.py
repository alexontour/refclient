"""Mock-Upload erzeugter CDA-Dokumente in den eImpfpass.

Input: aktive Schueler, erzeugte CDA-Dateien und Validierungsstatus.
Output: Upload-Ergebnis-CSV je Schueler, Anzahl erfolgreicher Uploads und erster Fehlercode.
"""

from __future__ import annotations

import csv
from datetime import datetime
from pathlib import Path
from typing import Callable


UPLOAD_RESULT_FIELDS = [
    "svnr",
    "cda_datei",
    "status",
    "fehlercode",
    "meldung",
    "ziel",
    "zeitpunkt",
]


def upload_cda_documents_to_eimpfpass(
    active_students: list[dict],
    *,
    ensure_session: Callable[[], None],
    document_dir: Path,
    target_dir: Path,
    cda_update_filename_for: Callable[[dict], str],
    upload_result_filename_for: Callable[[dict], str],
    read_validation_status: Callable[[dict], str],
    error_message: Callable[[str], str | None],
    upload_document: Callable | None = None,
) -> tuple[int, str | None]:
    """Write mock upload results for generated CDA documents."""
    ensure_session()
    target_dir.mkdir(parents=True, exist_ok=True)
    uploaded_count = 0
    first_error = None

    for student in active_students:
        cda_path = document_dir / cda_update_filename_for(student)
        validation_status = read_validation_status(student)
        result_path = target_dir / upload_result_filename_for(student)

        if validation_status != "ok":
            status = "fehler"
            error_code = "103"
            message = error_message(error_code) or "CDA validieren fehlgeschlagen"
        elif not cda_path.exists():
            status = "fehler"
            error_code = "104"
            message = error_message(error_code) or "Upload eImpfpass fehlgeschlagen"
        else:
            try:
                receipt_path = result_path.with_suffix('.receipt.json')
                if upload_document and not receipt_path.exists():
                    import json
                    receipt = upload_document(cda_path)
                    receipt_path.write_text(json.dumps(receipt), encoding='utf-8')
                status = "ok"
                error_code = ""
                message = "Referenzclient: Dokument gespeichert" if upload_document else "Mock-Upload erfolgreich"
                uploaded_count += 1
            except RuntimeError as exc:
                status = "fehler"
                error_code = "104"
                message = str(exc)

        if error_code and first_error is None:
            first_error = error_code

        with result_path.open("w", encoding="utf-8", newline="") as csv_file:
            writer = csv.DictWriter(csv_file, fieldnames=UPLOAD_RESULT_FIELDS)
            writer.writeheader()
            writer.writerow(
                {
                    "svnr": student["social_security_number"],
                    "cda_datei": cda_path.name,
                    "status": status,
                    "fehlercode": error_code,
                    "meldung": message,
                    "ziel": "Referenzclient" if upload_document else "eImpfpass Mock",
                    "zeitpunkt": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
                }
            )

    return uploaded_count, first_error
