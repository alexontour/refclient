# Funktionen und Bedienung

Die Anwendung demonstriert Impfdokumentation und eImpfpass mit synthetischen Daten.
**Referenzclient**, **Schulimpfung** und **Hilfe & Bedienung** sind über die Navigation
in beiden Oberflächen erreichbar. Die Anleitung beschreibt den gemeinsamen Betrieb.

## 1. Patient finden und auswählen

Im Referenzclient nach SVNR/Testkennung, Name oder Geburtsdatum suchen.
`1001210995`, `1002210995` und `6122031523` sind bekannte Testkennungen.
Namen werden ohne Beachtung der Groß-/Kleinschreibung als Präfix gesucht; alle
angegebenen Kriterien müssen gleichzeitig passen. Eine vollständig leere Suche
wird abgelehnt. Ohne SVNR liefert `Musterpatient` mehrere Treffer.

**Patient übernehmen** überträgt die Demografie ins Formular. Der Herkunftshinweis
zeigt, ob die Angaben aus dem Index stammen oder danach manuell geändert wurden.
Eine manuelle Änderung entfernt die aktive Zuordnung zum Suchtreffer.

## 2. Impfung erfassen

Die Felder des Referenzclient-Formulars sind erforderlich:

- Patient: Vorname, Nachname, Geburtsdatum, Geschlecht und zehnstellige Test-SVNR.
- Impfung: Impfstoff, Impfdatum, Charge, Schema-Code, Dosis-Code und Ablaufdatum.
- Dokumentation: Vor- und Nachname der dokumentierenden Person, Einrichtung und OID.

Das Geburtsdatum darf nicht nach dem Impfdatum liegen. Das Impfdatum darf nicht in
der Zukunft liegen; das Ablaufdatum darf nicht vor dem Impfdatum liegen.
Der Katalog ist historisch und dient der technischen Demonstration.

Die voreingestellte Testeinrichtung ist die Landessanitätsdirektion Salzburg,
Referat 20902, Abteilung 9 Gesundheit, Land Salzburg, OID `1.2.40.0.34.3.1.1177`.
Die Personenangaben sind synthetisch und lassen sich im Formular bearbeiten.

## 3. Vorschau, Speicherung und Impfpass

**CDA-Vorschau erzeugen** erzeugt ein CDA mit HUSKY und öffnet die Dokumentansicht.
Es wird noch kein Dokument abgelegt. XML lässt sich ansehen und herunterladen.

**Impfdokument erstellen und ablegen** erzeugt ein neues Dokument und speichert
das CDA. Eine erneute Speicherung erzeugt ein weiteres Dokument. Danach zeigt die
Anwendung den Impfpass und das gespeicherte Dokument. Die angezeigten Impfdaten
werden aus dem gespeicherten CDA zurückgelesen.

**Impfpass anzeigen** sammelt die Impfungen aus allen gespeicherten Dokumenten zur
SVNR im Patientenformular. **Aktualisieren** lädt sie erneut, etwa nach einer
Dokumentation aus der Schulimpfung. **Dokument anzeigen** öffnet ein einzelnes CDA.
CDA und zurückgelesene FHIR-Daten können heruntergeladen werden.

Eine leere Ansicht bedeutet, dass zur ausgewählten Testkennung noch kein Dokument
vorliegt. Die Anwendung fügt dort keine Beispieldokumente hinzu.

## 4. eImpfdokument an ELGA übertragen (Mock)

Ein gespeichertes Dokument öffnen und **An ELGA übertragen (Mock)** wählen.
Simuliert werden Annahme und Registrierung. Die Bestätigung enthält Beleg-ID und
Zeitpunkt; sie bestätigt ausschließlich die Simulation, keine echte ELGA-Übertragung.

Der Beleg bleibt mit den Anwendungsdaten erhalten. Wiederholungen für dasselbe
Dokument liefern denselben Beleg und erzeugen keinen zweiten Übertragungsbeleg.
Nach Erfolg ist der Button deaktiviert. Vorschauen und lediglich geöffnete lokale
Dateien bieten diese Aktion nicht an.

Übertragungs- und Statusanfragen beenden das Warten im Browser nach 15 Sekunden.
Nach einem Verbindungsproblem erscheint eine Fehlermeldung; die Aktion kann sicher
wiederholt werden. Ein abgebrochener Browserrequest bedeutet nicht zwingend, dass
der Dienst keinen Beleg erstellt hat. Der nächste Aufruf verwendet den bestehenden Beleg.

## 5. Vorhandene CDA-Datei öffnen

Unter **Vorhandene CDA-Datei öffnen** eine XML-Datei bis 1 MB auswählen und öffnen.
Sie wird zur Darstellung an den lokalen Referenzclient gesendet, jedoch nicht
abgelegt oder extern übertragen. Die Dokumentansicht ist kein Nachweis vollständiger
ELGA-Konformität. Ungültiges XML und DTDs werden abgelehnt.

## 6. PVP-Demo-Login und Assertions

Die Anmeldung ist optional. **Mit PVP-Demobenutzer anmelden** simuliert eine
30-minütige Sitzung für Dr. Anna Demo mit der genannten Salzburger Einrichtung
und ELGA-Rolle **716 – Amtsärztin/Amtsarzt**. **Abmelden** widerruft die Sitzung.
Der Login sperrt die Mock-APIs nicht und ersetzt keine echte Benutzeranmeldung.

Im Online-Protokoll entstehen drei synthetische, unsignierte Beispiele:
Identity, HCP und eImpf-Kontext. **Assertion anzeigen** öffnet XML, Aussteller,
Audience, Gültigkeit und die Referenz auf die vorherige Assertion. Diese Beispiele
sind keine echten signierten PVP-/ELGA-Berechtigungsnachweise.

## 7. Schulimpfung

1. Schülerliste per CSV importieren oder Personen manuell ergänzen und prüfen.
2. Die zu bearbeitenden Personen aktiv auswählen.
3. Impfpässe für diese Personen laden. Auch ein leerer Impfpass ist ein gültiges Ergebnis.
4. Gemeinsame Impfdaten erfassen und die Zusammenfassung ausdrücklich bestätigen.
5. Die erzeugten Dokumente und Berichte prüfen und den Upload abschließen.
6. Im Referenzclient dieselbe SVNR auswählen und den Impfpass aktualisieren.

Der integrierte Upload speichert die Dokumente im Referenzclient. Der zusätzliche
ELGA-Übertragungsbeleg wird separat im Referenzclient ausgelöst. Die Schulimpfung
zeigt Ergebnisse pro Person und führt ein Impfprotokoll je dokumentierender Arzt-OID.
Das Schließen einer Sitzung entfernt deren Arbeitsdateien; bereits im Referenzclient
gespeicherte Dokumente bleiben erhalten. Einzelheiten und CSV-Spalten stehen in der
[Schulimpfungsanleitung](../schulimpfung/README.md).

## 8. Online-Protokoll und Quellen

Das Protokoll ist dauerhaft sichtbar; auf kleinen Bildschirmen steht es unter dem
Formular. Es zeigt bis zu 500 Ereignisse seit Dienststart. Gleiche Anfrage-IDs
verbinden die Schritte einer Verarbeitung.

| Quelle | Inhalt |
| --- | --- |
| Alle Quellen | Gesamter vorhandener Ereignisbestand |
| Referenzclient | Verarbeitung im Java-Referenzclient |
| ELGA-Übertragung | Simulierte Übertragung samt zugehöriger Verarbeitung |
| ELGA-Abrufe | Dokumentensuche und Dokumentabrufe; keine reinen Übertragungsstatus-Abfragen oder internen Prüfungen einer Übertragung |
| ELGA-Mock (alle) | Sämtliche Mock-Ereignisse einschließlich Patientenindex |
| Authentifizierung | PVP-Demo-Anmeldung, Assertions und Abmeldung |

Textsuche und Quelle gelten gemeinsam. **Pausieren** hält nur die Protokollanzeige
an; **Fortsetzen** setzt sie fort. **Ansicht leeren** entfernt sichtbare Einträge,
keine gespeicherten Impfdokumente. **Neue Einträge verfolgen** steuert das Scrollen.
**Request / Response** zeigt den HTTP-Verkehr dieser Browsersitzung. Für ältere
oder von anderen Clients erzeugte Anfragen sind diese Details gegebenenfalls nicht
mehr vorhanden. Das Ereignisprotokoll enthält keine CDA-/FHIR-Dokumentinhalte;
die Request-/Response-Ansicht kann hingegen Formulardaten enthalten.

## 9. Häufige Probleme

| Beobachtung | Nächster Schritt |
| --- | --- |
| Keine Patiententreffer | Zusätzliche Kriterien leeren und bekannte Testkennung suchen |
| Keine Impfungen sichtbar | SVNR prüfen, Speicherung statt Vorschau durchführen, Impfpass aktualisieren |
| Datumsfehler | Geburt, Impfdatum und Ablaufdatum anhand der Formularregeln prüfen |
| Übertragung dauert zu lange | Fehlermeldung abwarten und sicher wiederholen oder Dokument erneut öffnen |
| Dokumentansicht abgelehnt | Gültige eImpfpass-XML-Datei ohne DTD und mit höchstens 1 MB verwenden |
| Schulimpfung blockiert Dokumentation | Aktive Personen auswählen und ihre Impfpässe zuerst laden |
| Quelle zeigt nichts | Textsuche leeren, andere Quelle wählen oder Protokoll fortsetzen |

Tab und Umschalt+Tab bewegen den Fokus; Eingabe aktiviert Bedienelemente.
**Zum Hauptinhalt** überspringt den Kopfbereich. Statusmeldungen und sichtbarer Fokus
unterstützen die Bedienung; eine vollständige Barrierefreiheitszertifizierung wird
nicht beansprucht.

## Grenzen der Demonstration

Patientenindex und Transport sind Mocks, der Impfstoffkatalog ist historisch.
Die Schulimpfung besitzt einen gemeinsamen Arbeitszustand ohne Benutzerisolation.
Der vorgesehene Einsatz ist eine interne Demonstration mit synthetischen Testdaten.
Für öffentliche Nutzung mit echten Gesundheitsdaten ist dieser Stand nicht freigegeben.

Technische Informationen stehen getrennt unter [Betrieb](Docker.md) und
[Prüfungen](../tests/README.md); die Anleitung oben setzt keine Installation voraus.
