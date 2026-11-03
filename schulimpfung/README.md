# Schulimpfung: Funktionen und Ablauf

Die Schulimpfung dokumentiert dieselbe Impfung für eine ausgewählte Gruppe
synthetischer Schülerinnen und Schüler. Sie gehört zur gemeinsamen
[eImpfpass-Demonstration](../README.md) und nutzt im integrierten Betrieb den
Referenzclient für Impfstoffkatalog, FHIR-/CDA-Erzeugung und Dokumentablage.

## Der fachliche Ablauf

1. **Schülerliste bearbeiten:** CSV importieren oder Personen manuell ergänzen.
   Namen, Geburtsdatum, SVNR, Schule und Klasse prüfen. Die Liste beginnt leer.
2. **Personen aktiv auswählen:** Nur aktive Personen nehmen an den folgenden Schritten teil.
3. **eImpfpässe laden:** Vorhandene Dokumente zur jeweiligen SVNR abrufen. Eine
   Person ohne Dokumente hat einen leeren Impfpass; es werden keine Beispiele ergänzt.
4. **Impfung dokumentieren:** Impfstoff, Datum, Charge und weitere angezeigte
   Pflichtfelder für die aktiven Personen erfassen.
5. **Zusammenfassung bestätigen:** Auswahl und gemeinsame Impfdaten prüfen und
   die Dokumentation ausdrücklich bestätigen.
6. **Dokumente prüfen:** CDA, Dokumentations-CSV sowie Mapping-/Prüfberichte je
   Person ansehen. Die Prüfung ersetzt keine vollständige ELGA-Konformitätsprüfung.
7. **Upload abschließen:** Dokumente im Referenzclient speichern. Ergebnisse werden
   pro Person angezeigt. Bereits bestätigte Uploads werden anhand des lokalen Belegs
   bei Wiederholung nicht erneut gespeichert.
8. **Impfpass prüfen:** Im Referenzclient dieselbe SVNR wählen und aktualisieren.
   Die neue Impfung ist aus dem gespeicherten CDA sichtbar.

Der Upload in Schritt 7 ist keine externe ELGA-Übertragung. Die separate Aktion
**An ELGA übertragen (Mock)** im Referenzclient simuliert Annahme und Registrierung
und erzeugt einen zusätzlichen Übertragungsbeleg.

## CSV-Schülerliste

UTF-8-CSV mit Komma als Trennzeichen; maximal 1 MB. Erforderliche Spalten:

```csv
vorname,nachname,gebdat,svnr,schule,klasse
Anna,Testperson,02.01.2010,9999010210,Testschule,1A
```

Die optionale Spalte `active` steuert die Vorauswahl. Doppelte oder nicht
zehnstellige SVNR werden abgelehnt. Eine neue Liste beginnt eine neue
Arbeitssitzung. Geburtsdaten sollten eindeutig als `TT.MM.JJJJ` oder `JJJJ-MM-TT`
angegeben werden. Ausschließlich synthetische Testdaten verwenden.

## Dokumentation und Protokoll

Die Prozessanzeige zeigt die Schritte Schülerliste, Dokumentation und Übertragung.
Ohne aktive Personen oder ohne geladene Impfpässe bleibt die Dokumentation gesperrt.
Vor der Bestätigung werden keine Impfdokumente für die Gruppe erzeugt.

Die Testorganisation ist **Landessanitätsdirektion Salzburg, Referat 20902,
Abteilung 9 Gesundheit, Land Salzburg**, OID `1.2.40.0.34.3.1.1177`.
Die dokumentierende Arztperson wird als **Dr. Irmi Impfarzt** anonymisiert;
die Arzt-OID bleibt für die technische Zuordnung erhalten.

Das Impfprotokoll enthält die dokumentierenden GDA, Impfstoff und Datum; die
Protokolldateien werden je Arzt-OID geführt. **Sitzung schließen** entfernt
Arbeitsdateien und setzt die Schülerliste zurück. Bereits im Referenzclient
abgelegte Dokumente und das dauerhafte Impfprotokoll bleiben erhalten.

## Unterschiede des eigenständigen Modus

Ohne Referenzclient-Anbindung werden lokale CDA-Fixtures für den simulierten
Impfpassabruf und die Dokumenterzeugung verwendet. Der Upload ist dann ein lokaler
Mock-Erfolg mit Ergebnisdatei, keine Speicherung im gemeinsamen Referenzclient.
Die zusätzlichen Felder Setting, Programm, Klassifikation und relevante Erkrankung
gehören zu diesem Modus. Im integrierten Betrieb sind sie ausgeblendet, weil die
Referenzclient-Schnittstelle sie nicht abbildet.

## Grenzen und weitere Hilfe

Die Anwendung verwendet einen gemeinsamen Arbeitszustand, keine isolierten
Benutzersitzungen. Sie ist für interne Demonstrationen mit synthetischen Daten
vorbereitet, nicht für öffentliche Verarbeitung echter Gesundheitsdaten.

[Gesamte Bedienungsanleitung](../docs/Bedienung.md) ·
[Technischer Betrieb](../docs/Docker.md) · [Funktionsprüfungen](../tests/README.md)
