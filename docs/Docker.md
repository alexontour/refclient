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

## Server unter refclient.ehealth-solutions.at

Version 1.0.0 ist unter [https://refclient.ehealth-solutions.at/](https://refclient.ehealth-solutions.at/)
online. Die Schulimpfung ist unter [https://refclient.ehealth-solutions.at/schulimpfung/](https://refclient.ehealth-solutions.at/schulimpfung/)
erreichbar. Der Release wird im Repository durch den Git-Tag `v1.0.0` markiert.

Auf `v2202410208005291740.happysrv.de` ergänzt `compose.server.yaml` den
gemeinsamen Stack um die bestehende Traefik-Anbindung. Voraussetzung sind das
externe Docker-Netzwerk `matrix_matrix_network`, die EntryPoints `web` und
`websecure` und der Zertifikatsresolver `letls`. Die Domain muss auf den Server
zeigen. HTTP wird auf HTTPS umgeleitet; die Backend-Dienste bleiben intern.
Das Gateway verwendet eindeutige Backend-Aliasse, damit bereits vorhandene
Container namens `schulimpfung` im Proxy-Netzwerk keine Anfragen übernehmen.
Die Startseite wird intern auf `/index.html` aufgelöst; Gateway-Weiterleitungen
verwenden relative Ziele, damit HTTPS beim Aufruf erhalten bleibt.
Der Demo-Login ist weiterhin keine Zugriffssperre; nur synthetische Daten verwenden.

Release-Verzeichnisse liegen unter `/webapps/refclient/releases/`. Der Symlink
`/webapps/refclient/current` zeigt auf den aktiven Stand. In einem neuen
Release-Verzeichnis zuerst bauen und erst nach erfolgreicher Prüfung starten:

```bash
docker compose -p refclient -f compose.yaml -f compose.server.yaml config --quiet
docker compose -p refclient -f compose.yaml -f compose.server.yaml build
docker compose -p refclient -f compose.yaml -f compose.server.yaml up -d --wait --wait-timeout 240
docker compose -p refclient -f compose.yaml -f compose.server.yaml ps
curl --fail https://refclient.ehealth-solutions.at/health
curl --fail https://refclient.ehealth-solutions.at/schulimpfung/health/ready
```

Der feste Projektname `refclient` erhält dieselben Datenvolumes über Releases
hinweg. Für ein Rollback dieselben Compose-Befehle im vorherigen Release-Verzeichnis
ausführen und den Symlink entsprechend umstellen. Kein `down -v` verwenden, wenn
Dokumente und Arbeitsdateien erhalten bleiben sollen. Temporäre SSH-Schlüssel nach
dem Deployment aus `authorized_keys` entfernen.

## Persistente Daten

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
