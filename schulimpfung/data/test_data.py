"""Testdaten für das Schulimpfung-MVP."""

STUDENTS = [
    {
        "id": "S-1001",
        "name": "Anna Berger",
        "class_name": "2A",
        "birth_date": "2015-03-14",
        "active": True,
    },
    {
        "id": "S-1002",
        "name": "Lukas Huber",
        "class_name": "2A",
        "birth_date": "2015-06-03",
        "active": True,
    },
    {
        "id": "S-1003",
        "name": "Mila Gruber",
        "class_name": "2B",
        "birth_date": "2014-12-01",
        "active": False,
    },
]

VACCINATION_PASSES = {
    "S-1001": {
        "document_name": "impfpass_anna_berger.pdf",
        "updated_at": "2026-04-20",
        "vaccinations": ["MMR", "Tetanus", "FSME"],
    },
    "S-1002": {
        "document_name": "impfpass_lukas_huber.pdf",
        "updated_at": "2026-04-18",
        "vaccinations": ["MMR", "Polio"],
    },
    "S-1003": {
        "document_name": "impfpass_mila_gruber.pdf",
        "updated_at": "2026-04-11",
        "vaccinations": ["MMR"],
    },
}

VACCINATION_ENTRIES = {
    "S-1001": {
        "status": "eingetragen",
        "vaccine": "FSME",
        "date": "2026-04-20",
        "dose": "Booster",
    },
    "S-1002": {
        "status": "offen",
        "vaccine": None,
        "date": None,
        "dose": None,
    },
    "S-1003": {
        "status": "offen",
        "vaccine": None,
        "date": None,
        "dose": None,
    },
}
