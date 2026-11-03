# Abschlussprüfung · 03.11.2026

Geprüfter Umfang: gemeinsamer Referenzclient und Schulimpfung als interne
Demonstration mit synthetischen Testdaten. Der zentrale Lauf
`scripts/test-docker.ps1 -SkipBuild` wurde nach erfolgreichem Image-Build komplett
mit Exitcode 0 abgeschlossen.

## Ergebnisse

| Prüfung | Ergebnis |
| --- | --- |
| API-Skripte | 4/4 erfolgreich: Smoke, Patientensuche, Protokoll, CDA-Darstellung |
| Schulimpfungs-Funktionstests | 28/28 erfolgreich |
| Datumsverarbeitung | 3/3 erfolgreich |
| Gemeinsame Backend-Integration | 2/2 erfolgreich |
| Bruno | 4/4 erfolgreich |
| Browser Desktop/Mobil | 20/20 erfolgreich |
| Lokale Dokumentationsverweise | 41 Verweise in 8 aktuellen Dokumenten erfolgreich aufgelöst |
| JavaScript-/PowerShell-Syntax | erfolgreich |
| Containerbereitschaft | Gateway, Java-Referenzclient und Schulimpfung healthy |

## Geprüfte Abläufe

1. Einstieg, Hilfe und Oberflächenwechsel: erreichbar, sinnvoll befüllt und in
   Desktop-/Mobilgröße geprüft. Die Hilfe beschreibt Funktionen statt Installation.
2. Patientensuche und Datenerfassung: Treffer, Nulltreffer, Übernahme und manueller
   Herkunftswechsel geprüft; Test-SVNR ist in beiden Oberflächen zehnstellig.
3. CDA-Vorschau, Speicherung und Download: echte HUSKY-Verarbeitung,
   Rücklesen der gespeicherten CDA-Daten und Stylesheet-Darstellung geprüft.
4. ELGA-Übertragung (Mock): Beleg, Wiederholung ohne zweiten Beleg, Statusabruf,
   Fehlerfälle und bewusst blockierte Verbindung geprüft. Nach 15 Sekunden folgt
   eine Fehlermeldung mit sicherer Wiederholungsmöglichkeit.
5. Quellenfilter: Übertragung, Dokumentabrufe, Statusabfragen und interne
   Lesevorgänge werden im Test unterschieden. Das Protokoll bleibt sichtbar.
6. PVP-Demo: Anmeldung, Neuladen, drei unsignierte Assertions und Abmeldung mit
   Salzburger GDA, OID 1.2.40.0.34.3.1.1177 und Rolle 716 geprüft.
7. Schulimpfung: CSV-Import, aktive Auswahl, Impfpassabruf, gemeinsame Impfdaten,
   ausdrückliche Bestätigung, Upload und anschließende Anzeige im Referenzclient
   vollständig über den Browser geprüft.
8. Ungültige Dateien: falsche UTF-8-Codierung, beschädigte CSV und unvollständige
   Zeilen zeigen verständliche Fehler statt Serverfehlern. Neunstellige Kennungen
   werden vor der Dokumentation abgelehnt.

## Dokumentation und Release

README, Bedienungsanleitung, integrierte Hilfe und Schulimpfungsanleitung wurden
an den tatsächlichen Funktionsumfang angeglichen. Vorschau, lokale Ablage,
Schulimpfungs-Upload und separater ELGA-Mock-Beleg werden voneinander erklärt.
Technische Betriebsdetails und Testbefehle stehen in getrennten Dokumenten.

Die GitHub-Workflow-Datei führt dieselben Funktionsprüfungen aus. Laufzeitdaten,
lokale Protokolle, Caches und gesicherte eingebettete Git-Metadaten sind vom
Repository ausgeschlossen. Referenzstylesheet und zugehörige Lizenztexte bleiben
unverändert; deren mitgelieferte Formatierung wird nicht umgeschrieben.

## Evidenz und Grenzen

`08-school-workflow.png` zeigt die bestätigte gemeinsame Dokumentablage.
Weitere vorhandene Screenshots dokumentieren einzelne frühere Prüfschritte;
der hier dokumentierte Gesamtlauf ist der aktuelle Stand.

Kein vollständiger Barrierefreiheitsnachweis, kein echter Safari-Gerätetest und
keine Prüfung echter ELGA-/PVP-Dienste. Die ursprünglichen Maven-Unit-Tests werden
im bestehenden Docker-Build übersprungen. Gemeinsamer Schulimpfungs-Arbeitszustand
und fehlende echte Zugriffskontrolle begrenzen den vorbereiteten Einsatz auf eine
interne Testumgebung. Öffentliches Produktivdeployment mit Gesundheitsdaten ist
nicht Bestandteil dieser Freigabe.
