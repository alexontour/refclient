> Das OpenSource Projekt "ELGA RefClient" zeigt eine Möglichkeit, wie man sich IHE-nativ mit den ELGA Schnittstellen verbindet und die CDA Generierung funktionieren kann. Das schweizer Opensource-Projekt "HUSKY" fungiert als Basis.

# Funktionen
- ELGA RefClient
  - API zum Erstellen von CDA-Dokumenten unter Verwendung der Husky API
  - Einfache REST-Inferfaces zur Kommunikation mit der Test-GUI
- Test-Oberfläche 
  - HTML5/Java-Script Oberfläche unter Verwendung des Polymer Frameworks
  - Kommuniziert mittels REST-Calls mit der in RefClient gekapselten API
    - Anmeldung mit O-Card
    - Kontaktbestätigungen erzeugen
    - Dokumente up/downloaden

# Basis & Erweiterungen
- Basis: HUSKY Health Usability Key (https://www.e-health-suisse.ch/technik-semantik/technische-interoperabilitaet/husky.html) 
  - https://github.com/project-husky/husky
  - Branch: feat/austrian_extensions
    - https://github.com/project-husky/husky/tree/feat/austrian_extensions)
- Österreichspezifische Erweiterungen folgender Pakete
  - husky-elga
  - husky-common-at
  - husky-communication-at
  
# Installationsanleitung
Ist [hier](/docs/Installationsanleitung.md) zu finden.
