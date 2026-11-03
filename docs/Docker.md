# Betrieb der Demonstrationsanwendung

Die [Funktionsübersicht](../README.md) und [Bedienungsanleitung](Bedienung.md)
beschreiben die Nutzung. Dieses Dokument enthält ausschließlich ergänzende
Betriebsinformationen für Verantwortliche.

## Vorgesehener Einsatz

Der gemeinsame Compose-Stack ist für eine interne Demonstration mit synthetischen
Testdaten vorbereitet. Er bindet den Zugang an `127.0.0.1:8087`.
Die Schulimpfung besitzt einen gemeinsamen Arbeitszustand ohne Benutzerisolation;
der Demo-Login ist keine Zugriffskontrolle. Ein öffentlicher Mehrbenutzerbetrieb
oder echte Gesundheitsdaten benötigen eine gesonderte Architektur und Freigabe.

## Start und Prüfung

Voraussetzung: Docker mit Linux-Containern und Compose. Der erste Build benötigt
Zugriff auf Container-, Maven- und Python-Paketquellen. Maven verwendet zuerst die mitgelieferten Bibliotheken, anschließend Maven Central und zuletzt das zusätzliche IHE-Repository.

```powershell
docker compose up -d --build --wait
./scripts/test-docker.ps1 -SkipBuild
```

Der zweite Befehl prüft APIs, Schulimpfung, Backend-Integration, Bruno und die
Desktop-/Mobiloberflächen. Tests erzeugen synthetische Dokumente und Belege.
Die Dienste bleiben zum Ausprobieren gestartet. Die ursprünglichen Java-Unit-Tests
werden im bestehenden Docker-Build übersprungen; dies ist keine vollständige
Validierung des ursprünglichen IHE-/ELGA-Clients gegen externe Dienste.

Zugänge: Referenzclient `/`, Schulimpfung `/schulimpfung/`, Hilfe `/help.html`,
Schnittstellen `/interfaces.html`, Testzugänge `/tests.html`.

## Dienste und Bereitschaft

| Dienst | Aufgabe | Bereitschaft |
| --- | --- | --- |
| gateway | Gemeinsamer Einstieg und Pfadweiterleitung | `/health` über das Gateway |
| refclient | Java-/HUSKY-Verarbeitung und externe Mocks | Java-Healthcheck auf `/health` |
| schulimpfung | Arbeitsablauf und Dokumentation für Gruppen | `/schulimpfung/health/ready` |

Java läuft als Benutzer 10001, die Schulimpfung als unprivilegierter Benutzer.
Waitress verwendet einen Thread, weil die Schulimpfung ihren Arbeitszustand
prozessweit verwaltet. Die Backend-Dienste haben keine veröffentlichten Hostports.
Gesundheitsprüfungen und Testdienste warten auf ihre Abhängigkeiten.

`docker compose ps` zeigt den Status. `docker compose logs --tail 80` hilft bei
Fehlern. `docker compose down` stoppt die Dienste und erhält die benannten Volumes.

## Daten und Wiederholung

- `eimpf-data`: gespeicherte CDA-Dokumente und idempotente ELGA-Mock-Übertragungsbelege.
- `schulimpfung-data`: Schulimpfungs-Arbeitsdateien und Impfprotokolle.
- `schulimpfung-logs`: Betriebsprotokolle der Schulimpfung.

Eine Sicherung muss alle drei Volumes berücksichtigen. Ein Container-Neustart ist
kein Benutzerwechsel und stellt keine isolierten Schulimpfungs-Sitzungen her.
Aktivitätsereignisse und Demo-Logins liegen im Arbeitsspeicher des Java-Dienstes
und beginnen nach dessen Neustart neu. Dokumente und Übertragungsbelege bleiben.

Die Oberfläche beendet Übertragungs-/Statusanfragen nach 15 Sekunden und erlaubt
eine sichere Wiederholung. Der lokale Übertragungsmock führt keine Netzwerkaufrufe
zu ELGA aus. Der Backend-Auftrag kann bei einem Browserabbruch bereits abgeschlossen
sein; die Belegwiederverwendung verhindert doppelte Mock-Registrierungen.

## Release und Weiterentwicklung

Der zentrale Funktionsprüflauf ist `scripts/test-docker.ps1`. Die GitHub-Workflow-Datei
führt denselben Ablauf aus und bewahrt Fehlerartefakte auf. Vor einer Veröffentlichung
müssen alle dortigen Prüfungen erfolgreich sein. Buildprotokolle, Laufzeitdaten,
Zertifikate und lokale Zugangsdaten gehören nicht ins Repository.

[Prüfumfang](../tests/README.md) · [Herkunft und Lizenz](../README.md#herkunft-und-lizenz)

Die drei benötigten historischen Gazelle-Artefakte liegen versionsgleich im mitgelieferten Maven-Repository. Ihre ursprünglichen SHA-1-Dateien wurden geprüft; ein zusätzlicher SHA-256-Nachweis und die Herkunftsangaben liegen unter ref-client-ihe/librariesNeeded/repo/net/ihe/gazelle. Dadurch benötigt der aktuelle Build für diese Pakete keinen Zugriff auf den ausgefallenen IHE-Server.
