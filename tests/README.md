# Funktionsprüfungen

Der Testbestand prüft die interne Demonstration mit synthetischen Daten. Die
[Funktionsanleitung](../docs/Bedienung.md) beschreibt das erwartete Verhalten.

## Prüfumfang

| Bereich | Geprüfte Funktionen |
| --- | --- |
| PowerShell-Integration | Impfstoffkatalog, echte CDA-Erzeugung/-Rücklesen, Ablage, Suche, ZPI-/PDQ-Mock, Aktivitätsprotokoll, XML-/DTD-Ablehnung |
| Schulimpfung | Liste, CSV-Import einschließlich ungültiger Codierung/CSV, Auswahl, Dokumentation, Zusammenfassung, Upload, Protokoll, Sitzungsabschluss |
| Datumstests | Unterstützte Eingabeformate und ungültige Datumsangaben |
| Backend-Integration | Schulimpfung → Java-/HUSKY-CDA → gemeinsame Ablage → Impfpass; wiederholter Upload ohne Dublette |
| Bruno | Bereitschaft, Katalog, Patientensuche und Fehlerfall |
| Browser | Desktop/Mobil: Suche, Herkunftshinweis, CDA-Vorschau, Downloads, Mock-Übertragung, Beleg, Timeout und Wiederholung, Quellenfilter, Demo-Login/Assertions, Navigation und Hilfe |

Browser-Tests verwenden Chromium und iPhone-Abmessungen, kein echtes Safari-Gerät.
Die Tests erzeugen synthetische Dokumente und Belege im lokalen Datenvolume.
Fehlerartefakte sind unter `tests/ui/test-results` verfügbar und von Git ausgeschlossen.
Die ursprünglichen Java-Unit-Tests werden beim Docker-Build übersprungen; die externen
ELGA-/IHE-Dienste und vollständige CDA-Konformität sind nicht durch diese Suite abgedeckt.

## Reproduzierbarer Gesamtlauf

```powershell
./scripts/test-docker.ps1
# Gegen bereits gebaute Images:
./scripts/test-docker.ps1 -SkipBuild
```

Der Lauf ist sequenziell: Protokolltests benötigen einen ruhigen Ereignisbestand.
Keine weiteren Funktionstests parallel gegen dieselbe Instanz starten.
Der Server bleibt danach erreichbar. Der GitHub-Workflow verwendet denselben Einstieg.

## Einzelne Prüfungen

```powershell
docker compose --profile tests run --no-deps --rm bruno
docker compose --profile tests run --build --no-deps --rm ui-tests
docker compose exec -T -e REFCLIENT_URL= -e APPLICATION_ROOT= schulimpfung python -m unittest discover -s tests -p test_app.py -v
docker compose exec -T schulimpfung python -m unittest discover -s tests -p test_refclient_dates.py -v
docker compose exec -T schulimpfung python -m unittest discover -s tests -p test_refclient_integration.py -v
```

Die eigenständigen Schulimpfungstests benötigen absichtlich eine Umgebung ohne
Referenzclient und URL-Präfix. Die Integrationssuite prüft dagegen den gemeinsamen
Betrieb mit `/schulimpfung/`. Ein gemeinsamer unkonfigurierter Python-Testaufruf passt
nicht zu beiden Umgebungen.

Die Bruno-Sammlung lässt sich auch über `/tests.html` herunterladen. Für Bruno Desktop
die Umgebung **Local** wählen. **Docker** verwendet intern `refclient:8087`;
die UI-Tests verwenden das gemeinsame Gateway.

Optional kann die Browser-Suite mit Node.js aus `tests/ui` gestartet werden:
`npm ci`, `npx playwright install chromium`, `npm test`.
`BASE_URL` überschreibt den Einstieg, `PLAYWRIGHT_CHANNEL` wählt einen installierten
Chromium-Kanal. Playwright-Paket und Container-Version müssen zusammenpassen.
