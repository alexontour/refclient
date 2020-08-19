> Das OpenSource Projekt "ELGA RefClient" zeigt eine Möglichkeit, wie man sich IHE-nativ mit den ELGA Schnittstellen verbindet und die CDA Generierung funktionieren kann. Das schweizer Opensource-Projekt "eHealth Connector" fungiert als Basis.

# Funktionen
- ServicesELGA
  - API zum Erstellen von CDA-Dokumenten unter Verwendung der eHealthConnector API
  - Einfache REST-Inferfaces zur Kommunikation mit der Test-GUI
- Test-Oberfläche 
  - HTML5/Java-Script Oberfläche unter Verwendung des Polymer Frameworks
  - Kommuniziert mittels REST-Calls mit der in ServicesELGA gekapselten API
    - Anmeldung mit O-Card
    - Kontaktbestätigungen erzeugen
    - Dokumente up/downloaden

# Basis & Erweiterungen
- Basis: eHealth Connector Suisse (EHC)  (https://www.ehealth-connector.org/de/home) 
  - https://gitlab.com/ehealth-connector/api-java
  - Branch: 20190917-R201909
    - https://gitlab.com/ehealth-connector/api-java/-/tree/20190917-R201909)
- Österreichspezifische Erweiterungen folgender Pakete
  - ehealth_connector-cda-at
  - ehealth_connector-common-at
  - ehealth_connector-communication-at