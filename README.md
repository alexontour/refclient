# eImpfpass-Referenzclient und Schulimpfung

Eine deutschsprachige Demonstrationsanwendung für den Weg von der Patientensuche
über die Impfdokumentation bis zum angezeigten eImpfpass. Zwei Oberflächen nutzen
zusammen die FHIR-/CDA-Verarbeitung des ELGA-Referenzclients auf HUSKY-Basis.

**Version 1.0.0** ist online unter [refclient.ehealth-solutions.at](https://refclient.ehealth-solutions.at/).
Die [Schulimpfung](https://refclient.ehealth-solutions.at/schulimpfung/) ist dort ebenfalls erreichbar.
Änderungen je Version stehen in der [Versionshistorie](CHANGELOG.md).

**Für synthetische Testdaten.** Die Anwendung erzeugt und liest echte CDA-Dokumente;
Patientenindex, PVP-Anmeldung und ELGA-Übertragung sind Mocks. Ein Mock-Beleg ist
keine Bestätigung eines echten ELGA-Dienstes. Der Impfstoffkatalog ist historisch.

## Was kann die Anwendung?

| Funktion | Ergebnis |
| --- | --- |
| Patient suchen und übernehmen | Demografie und Testkennungen aus dem synthetischen ZPI-/PDQ-Index |
| Impfung erfassen | Patient, Impfstoff, Charge, Datum, Schema, Dosis und dokumentierende Einrichtung |
| CDA-Vorschau erzeugen | Dokumentansicht und XML-Download, ohne Speicherung |
| Impfdokument ablegen | Gespeichertes CDA und daraus zurückgelesene FHIR-Daten |
| Impfpass anzeigen | Impfungen aus den gespeicherten Dokumenten der ausgewählten SVNR |
| CDA-Datei öffnen | Darstellung einer vorhandenen XML-Datei bis 1 MB, ohne Ablage |
| An ELGA übertragen (Mock) | Simulierte Annahme/Registrierung mit dauerhaftem Beleg |
| Schulimpfung dokumentieren | Schülerliste, Auswahl, gemeinsame Impfdaten, Bestätigung und Dokumente je Person |
| Online-Protokoll nutzen | Anfragen, Verarbeitungsschritte, Quellenfilter und Request-/Response-Details |
| PVP-Demo-Anmeldung | Synthetische Sitzung mit drei einsehbaren, unsignierten Assertions |

## Ein Impfdokument ausprobieren

1. Im **Referenzclient** die Testkennung `1001210995` suchen und **Patient übernehmen** wählen.
2. Die vorbelegten Patientendaten und Impfdaten prüfen.
3. **CDA-Vorschau erzeugen** wählen und die Dokumentansicht ansehen.
4. **Impfdokument erstellen und ablegen** wählen. Der Eintrag erscheint im Impfpass.
5. Im gespeicherten Dokument **An ELGA übertragen (Mock)** wählen. Beleg und Zeitpunkt bestätigen die Simulation.

Weitere Testkennungen sind `1002210995` und `6122031523`. Für mehrere Treffer die
SVNR leeren und nach dem Nachnamen `Musterpatient` suchen. Alle Suchkriterien gelten
gemeinsam; Namen werden als Präfix gesucht.

[Ausführliche Funktions- und Bedienungsanleitung](docs/Bedienung.md) ·
[Integrierte Hilfe](ui/help.html) · [Schnittstellen](ui/interfaces.html)

## Schulimpfung und gemeinsamer Impfpass

Die **Schulimpfung** beginnt mit einer leeren Schülerliste. Personen können per
CSV importiert oder manuell ergänzt werden. Nur aktive Personen werden verarbeitet:
Impfpässe laden, Impfdaten erfassen, Zusammenfassung bestätigen und Dokumente an
den Referenzclient übergeben. Anschließend sind die Impfungen dort für dieselbe
SVNR sichtbar. Ein leerer Impfpass enthält keine Beispieldokumente.

Der Upload aus der Schulimpfung speichert Dokumente im Referenzclient. Die separate
Aktion **An ELGA übertragen (Mock)** im Referenzclient erzeugt den Übertragungsbeleg.
Beide Aktionen sind von einer echten externen ELGA-Übertragung zu unterscheiden.

[Schulimpfung im Detail](schulimpfung/README.md)

## Demo-Identität und Test-GDA

Der optionale Login verwendet **Dr. Anna Demo**, die Organisation
**Landessanitätsdirektion Salzburg, Referat 20902, Abteilung 9 Gesundheit, Land Salzburg**,
die OID `1.2.40.0.34.3.1.1177` und die ELGA-Rolle **716 – Amtsärztin/Amtsarzt**.
Die Person ist synthetisch. Der Login ist keine Zugriffssperre und kein echter PVP-SSO.
Die Beispiel-Assertions lassen sich im Protokoll öffnen; sie sind nicht signiert.

## Was wird tatsächlich verarbeitet?

FHIR-Eingaben werden mit der Java-/HUSKY-Logik in CDA umgewandelt. Für die Anzeige
gespeicherter Dokumente wird das tatsächliche CDA wieder eingelesen. Die CDA-Ansicht
verwendet das mitgelieferte ELGA-Referenzstylesheet. Ein erfolgreiches Rendern oder
ein Mock-Upload beweist keine vollständige fachliche oder formale ELGA-Konformität.

Die Schulimpfung verwendet im gemeinsamen Betrieb denselben Impfstoffkatalog und
dieselbe Dokumentablage. Ihr eigenständiger Modus ohne Referenzclient-Anbindung
verwendet andere lokale Fixtures; diese Unterschiede sind in ihrer Anleitung beschrieben.

## Hinweise für Verantwortliche

Die online verfügbare Anwendung ist eine **Demonstrations- und Testumgebung**.
Die Schulimpfung verwaltet einen gemeinsamen Arbeitszustand; sie ist kein isolierter
Mehrbenutzerbetrieb. Echte Patientendaten und echte ELGA-Zertifikate sind nicht
Bestandteil dieses Standes.

Die Funktionsdokumentation steht oben im Mittelpunkt. Technische Details sind getrennt:
[Betrieb und Deployment](docs/Docker.md) · [Prüfungen](tests/README.md) ·
[Ursprüngliche Installationsanleitung](docs/Installationsanleitung.md).

Kurzer technischer Einstieg: `docker compose up -d --build --wait` stellt beide
Oberflächen unter `http://localhost:8087` bereit.

## Herkunft und Lizenz

Diese Erweiterung basiert auf dem [ELGA-RefClient](https://gitlab.com/elga-gmbh/refclient)
(Basiscommit `1a1542b6`) und den österreichischen Erweiterungen von
[HUSKY](https://github.com/project-husky/husky). Die ursprünglichen Java-/IHE-Module
bleiben enthalten. Informationen zur Lizenz stehen in [LICENSE](LICENSE).
