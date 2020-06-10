<?xml version="1.0" encoding="UTF-8"?>
<!--
"ELGA e-Medikations-Stylesheet" - Hinweise zur Nutzung

Das "ELGA e-Medikations-Stylesheet" ermöglicht eine allgemeine, einheitliche und benutzerfreundliche Darstellung von medizinischen CDA-Dokumenten (HL7 CDA Release 2.0),
die gemäß der Vorgaben des ELGA CDA Implementierungsleitfadens e-Medikation erstellt wurden. Das "ELGA e-Medikations-Stylesheet" wurde  durch die ELGA GmbH gemäß
dem Stand der Technik und unter Anwendung der größtmöglichen Sorgfalt auf seine Anwendbarkeit getestet und überprüft.

Das "ELGA e-Medikations-Stylesheet" wird von der ELGA GmbH bis auf Widerruf unentgeltlich und nicht-exklusiv sowie zeitlich und örtlich unbegrenzt, jedoch beschränkt auf
Verwendungen für die Zwecke der "Clinical Document Architecture" (CDA) zur Verfügung gestellt. Veränderungen des "ELGA e-Medikations-Stylesheet" für die lokale
Verwendung sind zulässig. Derartige Veränderungen (sogenannte bearbeitete Fassungen) dürfen ihrerseits publiziert und Dritten zur Weiterverwendung und Bearbeitung zur Verfügung
gestellt werden. Bei der Veröffentlichung von bearbeiteten Fassungen ist darauf hinzuweisen, dass diese auf Grundlage des von der ELGA GmbH publizierten
"ELGA e-Medikations-Stylesheet" erstellt wurden.

Die Anwendung sowie die allfällige Bearbeitung des "ELGA e-Medikations-Stylesheet" erfolgt in ausschließlicher Verantwortung der AnwenderInnen.
Aus der Veröffentlichung, Verwendung und/oder Bearbeitung können keinerlei Rechtsansprüche gegen die ELGA GmbH erhoben oder abgeleitet werden.
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:n1="urn:hl7-org:v3" xmlns:n2="urn:hl7-org:v3/meta/voc" xmlns:voc="urn:hl7-org:v3/voc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns2="urn:ihe:pharm:medication"
                exclude-result-prefixes="n1 n2 voc xsi ns2" id="ELGA-emed_Stylesheet_1.03.002.4">
  <xsl:output method="html" omit-xml-declaration="yes" indent="yes" encoding="utf-8" doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN" doctype-system="http://www.w3.org/TR/html4/loose.dtd" />

  <!--    
  ShowRevisionMarks:
  Wert 0: Eingefügter Text wird normal, gelöschter Text wird nicht dargestellt
  Wert 1: Eingefügter Text wird unterstrichen und kursiv, gelöschter Text wird durchgestrichen dargestellt
  -->
  <xsl:param name="param_showrevisionmarks" />
  
  <xsl:variable name="showrevisionmarks">
    <xsl:choose>
      <xsl:when test="not($param_showrevisionmarks)">
        <xsl:value-of select="0" />
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$param_showrevisionmarks" />
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <!--
  use external css 
  useexternalcss:   Wert 0: Externes CSS deaktiviert  
                    Wert 1: Externes CSS aktiviert
  externalcssname:  Name der CSS-Datei bei useexternalcss = 1 
  
  -->
  <xsl:param name="param_useexternalcss" />
  
  <xsl:variable name="useexternalcss">
    <xsl:choose>
      <xsl:when test="not($param_useexternalcss)">
        <xsl:value-of select="0" />
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$param_useexternalcss" />
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>  
  
  <xsl:param name="param_externalcssname" />
  
  <xsl:variable name="externalcssname">
    <xsl:if test="$param_externalcssname">
      <xsl:value-of select="$param_externalcssname" />
    </xsl:if>
  </xsl:variable> 
  
  
  <!--
  print icon visibility
    1: show print icon
    0: hide print icon
  -->
  <xsl:param name="param_printiconvisibility" />
  
  <xsl:variable name="printiconvisibility">
    <xsl:choose>
      <xsl:when test="not($param_printiconvisibility)">
        <xsl:value-of select="0" />
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$param_printiconvisibility" />
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  
  <!--
  document state
    1: document is deprecated
    0: document is not deprecated
  -->
  <xsl:param name="param_isdeprecated" />
  
  <xsl:variable name="isdeprecated">
    <xsl:choose>
      <xsl:when test="not($param_isdeprecated)">
        <xsl:value-of select="0" />
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$param_isdeprecated" />
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <!--
   strict mode disabled
     1: valid and invalid documents will be rendered (only allowed in debug mode!)
     0: only valid documents will be rendered (default)
   -->
  <xsl:param name="param_strictModeDisabled" />

  <xsl:variable name="isStrictModeDisabled">
    <xsl:choose>
      <xsl:when test="not($param_strictModeDisabled)">
        <xsl:value-of select="0" />
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$param_strictModeDisabled" />
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

<!--
  show medication warn container
    1: a warn container will be displayed before the medication block (the text in the warn container can be set
       with the param 'param_eMedicationWarnContainerText')
    0: no warn container will be displayed
-->
<xsl:param name="param_showEMedicationWarnContainer" />

<xsl:variable name="isShowEMedicationWarnContainer">
<xsl:choose>
    <xsl:when test="not($param_showEMedicationWarnContainer)">
        <xsl:value-of select="0" />
    </xsl:when>
    <xsl:otherwise>
        <xsl:value-of select="$param_showEMedicationWarnContainer" />
    </xsl:otherwise>
</xsl:choose>
</xsl:variable>

<!--
  medication warn container text (e.g. Wichtiger Hinweis: Die eMedikationsliste kann unvollständig sein und
  dient lediglich als unterstützende Information. Eine wie bisher durchgeführte Medikamentenanamnese wird
  jedenfalls empfohlen.)
-->
<xsl:param name="param_eMedicationWarnContainerText" />

<xsl:variable name="eMedicationWarnContainerText">
<xsl:if test="$param_eMedicationWarnContainerText">
    <xsl:value-of select="$param_eMedicationWarnContainerText" />
</xsl:if>
</xsl:variable>

  <!-- helper vars, transform to lower / uppercase -->
  <xsl:variable name="lc" select="'abcdefghijklmnopqrstuvwxyz'" />
  <xsl:variable name="uc" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />

  <!--
  global variables for the document
  (document title, language, patient sex, gendered patient title)
   -->
  <xsl:variable name="title">
    <xsl:choose>
      <xsl:when test="/n1:ClinicalDocument/n1:title">
        <xsl:value-of select="/n1:ClinicalDocument/n1:title"/>
      </xsl:when>
      <xsl:otherwise>Clinical Document</xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xsl:variable name="language"><xsl:value-of select="/n1:ClinicalDocument/n1:languageCode/@code" /></xsl:variable>
  <xsl:variable name="sex" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:administrativeGenderCode/@code"/>
  <xsl:variable name="genderedpatient">
    <xsl:choose>
      <xsl:when test="$sex='M'"><xsl:text>Patient</xsl:text></xsl:when>
      <xsl:when test="$sex='F'"><xsl:text>Patientin</xsl:text></xsl:when>
      <xsl:otherwise><xsl:text>Patient(in)</xsl:text></xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <xsl:variable name="documentValid">
    <xsl:if test="$isStrictModeDisabled='0'">
      <xsl:call-template name="checkDocumentValid" />
    </xsl:if>
  </xsl:variable>

  <xsl:template match="/">
    <xsl:choose>
      <xsl:when test="$documentValid = ''">
        <xsl:apply-templates select="n1:ClinicalDocument"/>
      </xsl:when>
      <xsl:otherwise>
        <html>
          <head>
            <meta http-equiv="X-UA-Compatible" content="IE=10; chrome=1" />
            <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
            <xsl:comment> Do NOT edit this HTML directly, it was generated via an XSL transformation from the original release 2 CDA Document. </xsl:comment>
            <title>Ungültiges Dokument</title>
          </head>
          <body style="background-color: white; color: black; font-family: Arial,sans-serif; font-size: 100%; line-height: 130%;">
            <table style="border: 0.1em solid black; width: 100%; align: center" cellspacing="0" cellpadding="0">
              <tr>
                <td style="padding: 1em; text-align: center;"><xsl:text>Das Dokument kann wegen einer ungültigen Formatanweisung nicht dargestellt werden.</xsl:text></td>
              </tr>
            </table>
          </body>
        </html>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="n1:ClinicalDocument">

    <html>
    <!--
      HTML Head
      Document title and patient name is shown in browser tab
    -->
      <head>
        <meta http-equiv="X-UA-Compatible" content="IE=10; chrome=1" />
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <xsl:comment> Do NOT edit this HTML directly, it was generated via an XSL transformation from the original release 2 CDA Document. </xsl:comment>
        <title>
          <xsl:value-of select="$title"/> | <xsl:value-of select="$genderedpatient" />:
          <xsl:call-template name="getName">
            <xsl:with-param name="name" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:name"/>
          </xsl:call-template>
        </title>
        <style type="text/css" media="screen,print">
body {
  font-family: Arial, sans-serif;
  font-size: 14px;
  line-height: 130%;
  <xsl:choose>
    <xsl:when test="$isdeprecated=0">
      <xsl:text>color: black;</xsl:text>
    </xsl:when>
    <xsl:otherwise>
      <xsl:text>color: #666666;</xsl:text>
    </xsl:otherwise>
  </xsl:choose>
  background-color: white;
}

.outerContainer {

}

.bodyContentContainer {
  width: 900px;
  margin: 0 auto 0 auto;
}

hr {
  border: 0.5px solid black;
  padding: 0;
  margin-top: 0.2em;
  margin-bottom: 0.2em;
}

.boxLeft {
  margin-left: 12px;
  margin-right: 1em;
  width: 57%;
  float: left;
  font-size: 1.015em;
}

.boxRight {
  width: 37%;
  float: left;
  font-size: 1.015em;
}

.sectionTitle {
  background-color: #c9c9c9;
  padding-left: 12px;
  padding-top: 0.5em;
  padding-bottom: 0.5em;
  margin-bottom: 0.5em;
  margin-top: 1.3em;
  font-weight: bold;
  font-size: 1.204em;
}

.sectionSubTitle {
  font-weight: bold;
}

img {
  border: none;
}

h2 img {
  vertical-align: text-top;
}

a {
  color: #004A8D;
}

a:hover {
  text-decoration: none;
}

a:focus, .multimediaSubmit:focus {
  background-color: #004A8D;
  color: #ffffff;
}

div.tableofcontentsMinimize a.show_tableofcontents, div.tableofcontentsMinimize a.hide_tableofcontents {
  font-weight: bold;
}

a.collapseShow {
  display: block;
  width: 20px;
  height: 20px;
  background: no-repeat left center url(<xsl:value-of select="translate(normalize-space($expandIcon),'&#32;','')" />);
}

a.collapseShow:hover {
  display: block;
  width: 20px;
  height: 20px;
  background: no-repeat left center url(<xsl:value-of select="translate(normalize-space($expandIconHover),'&#32;','')" />);
}

a.collapseHide {
    display: block;
    width: 20px;
    height: 20px;
    background: no-repeat left center url(<xsl:value-of select="translate(normalize-space($collapseIcon),'&#32;','')" />);
}

a.collapseHide:hover {
  display: block;
  width: 20px;
  height: 20px;
  background: no-repeat left center url(<xsl:value-of select="translate(normalize-space($collapseIconHover),'&#32;','')" />);
}

p {
  margin: 0;
}

.clearer {
  clear: both;
}

.header {
  padding: 1em 0 0.5em 0;
}

.header h1 {
  margin: 0;
  font-size: 1.652em;
}

.header p {
  padding-top: 0.7em;
}

.header .logo {
  float: right;
  overflow: hidden;
  text-align: right;
  width: 327px;
  height: 60px;
}
.header .logo img {
  max-width: 327px;
  max-height: 60px;
}

.print {
  margin-left: 2em;
  vertical-align: top;
}

.tableofcontents {
  margin-bottom: 1em;
}
.tableofcontents .left {
  float: left;
  width: 50%;
  background-color: #DDDDDD;
}
.tableofcontents .right {
  float: left;
  width: 50%;
}
.tableofcontents .right .container,
.tableofcontents .left .container {
  padding: 1em;
}

.tableofcontents .information {
  padding-bottom: 1em;
  font-weight: bold;
}
.subtitle_create {
  font-size: 0.889em;
}

h1 {
  font-size: 1em;
  font-weight: normal;
}

h2 {
  font-size: 1em;
  font-weight: normal;
}

h3 {
  font-size: 1em;
  font-weight: normal;
}

.section_indent h2, h3 {
  margin-bottom: 0.2em;
  margin-top: 0.75em;
}

.risk h2, h3 {
  padding: 0.4em 0.4em 0.4em 0em;
}

.risk h2 {
  font-size: 1.204em;
}

.section_indent .risk {
  margin-left: -12px;
}

h4 .backlink {
  display: none;
}

.title {
}

.subTitle {
  font-size: 1.015em;
  margin-bottom: 0.2em;
}

.backlink {
  display: inline-block;
  float: right;
  width: 47px;
  height: 43px;
  text-decoration: none;
  background: no-repeat left center url(<xsl:value-of select="translate(normalize-space($toTopIcon),'&#32;','')" />);
}
.backlink:hover {
  background: no-repeat left center url(<xsl:value-of select="translate(normalize-space($toTopIconHover),'&#32;','')" />);
}

.caption {
  font-size: 120%;
  padding: 0.5em 0 0.5em 0;
  display: block;
}
.paragraph {
  padding: 0.5em 0 0.5em 0;
}

h4 {
  font-size: 110%;
}

.error {
  color: red;
}

.risk {
  padding-left: 12px;
  background-color: #FFE17F;
}

.risk .section_text {
  padding-left: 0;
}
.risk .backlink {
  display: none;
}

.xred {
  color: #B10F3D;
  font-weight: bold;
}

.xblue {
  color: #0060f0;
  font-weight: bold;
}

.xMonoSpaced {
  font-family: monospace;
}

.lighter {
  font-weight: normal;
}

.hideCreatedByTo,
.createdbyto,
.collapseTrigger,
.bottomline .element {
  cursor: pointer;
}
.hideCreatedByTo:hover,
.createdbyto:hover,
.collapseTrigger:hover,
.bottomline .element:hover {
  background-color: #ffffd1 !important;
}

.hideCreatedByTo,.createdbyto {
  background-color: #dddddd;
  padding: 0.5em;
  margin-bottom: 1em;
}

.hideCreatedByTo .created,.hideCreatedByTo .to,.createdbyto .to,.createdbyto .created {
  font-weight: bold;
  padding-right: 1em;
}

.collapseLinks {

}

.leftsmall {
  float: left;
  width: 12%;
}

.leftwide {
  float: left;
  width: 33%;
  word-wrap: break-word;
  font-size: 1.015em;
}

.hideCreatedByTo .leftsmall,.createdbyto .leftsmall {
  text-align: right;
  padding-left: 0.5em;
}

.body_section {

}

.body_section h1 {
  background-color: #C7D9FF;
  padding: 0.3em 0 0.3em 0.5em;
}

h1.body_section_header {
  margin-bottom: 0;
}

.salutation {
  font-weight: normal;
  padding-top: 1em;
}

.salutation .section_text {
  padding: 0;
}

.leavetaking {
  padding-top: 2em;
  padding-bottom: 1em;
  font-weight: normal;
}

.leavetaking .section_text {
  padding: 0;
}

.section_indent {
  padding-left: 12px;
  font-size: 1.015em;
}

.section_text {
  padding-left: 12px;
  font-size: 1.015em;
}

.section_table {
  width: 900px;
  font-size: 0.9em;
  margin-left: -12px;
}

.section_table td ul {
  margin-top: 0;
  margin-bottom: 0;
}

.section_table th {
  text-align: left;
  background-color: #DDDDDD;
  border-bottom: 0.5px solid black;
  border-left: 2px solid white;
}

.section_table tr.even {
  background-color: #E8E8E8;
}

.section_table th, .section_table td {
  padding: 0.3em 0.3em 0.3em 0.5em;
  vertical-align: top;
}

.section_table tfoot tr td{
  font-size: 90%;
}

.table_cell {
 border-bottom: 0.5px solid black;
}

.tableFormatExceptionInformation {
  text-align: center;
  color: #FF00FF;
}

/* Addresses */
.address {
  margin-bottom: 1em;
}

.recipient {
  margin-top: 1em;
}

div.collapseTrigger, div.collapseTriggerWithoutHover {
  background-color: #f0f4fb;
  padding: 0.7em 0.5em 0.7em 12px;
}

div.collapseTrigger h1, div.collapseTriggerWithoutHover h1 {
  float: left;
  margin: 0;
  padding-right: 0.5em;
}

div.collapseTriggerWithoutHover .authenticatorShortInfo,
div.collapseTrigger .clientShortInfo,
div.collapseTrigger .stayShortInfo,
div.collapseTrigger .patientShortInfo,
{
  float: left;
}

.authenticatorShortInfo {
  float: left;
  width: 550px;
}

.authenticatorTitle {
  float: left;
  width: 300px;
  font-size: 1.204em;
}

.documentMetaTitle {
  font-size: 1.204em;
  float: left;
}

div.collapseTrigger .stayShortInfo {
  width: 100%;
}

.patientTitle {
  float: left;
  width: 17%;
  font-size: 1.204em
}

.patientTitle h1 {
  padding: 0;
}
.patientShortInfo {
  float: left;
  width: 79%;
}

div.collapseTrigger .authenticatorShortInfo .name, div.collapseTriggerWithoutHover .authenticatorShortInfo .name, div.collapseTrigger .clientShortInfo .name,div.collapseTrigger .stayShortInfo .name,div.collapseTrigger .patientShortInfo .name {
  font-size: 1.204em;
}

.authenticatorShortInfo .name:not(:last-child) {
  margin-bottom: 0.2em;
}

div.collapseTrigger .collapseLinks, div.hideCreatedByTo .collapseLinks, div.createdbyto .collapseLinks, div.bottomline_data .collapseLinks {
  padding-right: 0.5em;
  width: 20px;
}

.collapseLinks {
  float: left;
  display: block;
  font-weight: bold;
}

/* patient container */
.patientContainer {
  margin-bottom: 0.5em;
}

.patientContainer .date, .patientContainer .addresses,.patientContainer .guardian,
.patientContainer .data, .patientContainer .collapsableStay
  {
  padding: 1em 0 1em 0;
}

.patientContainer h2 {
  margin: 0;
  padding-right: 1em;
  padding-bottom: 1em;
  padding-left: 0.5em;
}

.patientContainer .leftsmall {
  width: 30%;
}

.patientContainer .leftwide {
  width: 70%;
}

.patientContainer td {
  vertical-align: top;
}

.patientContainer .firstrow {
  padding-right: 1em;
  font-weight: bold;
}

tr.spacer td {
  padding-bottom: 1em;
}

.contactAddress .address {
  float: left;
  padding-right: 1em;
  width: 12em;
}

.addressRegion {
  font-weight: bold;
}

.guardianContact {
  padding-bottom: 1em;
}

.guardianContact .address {
  margin: 0;
}

.guardianContact .organisationName {
  padding-top: 0.5em;
  font-weight: bold;
}

.guardianName {
  font-weight: bold;
}

/* stay container */
.stayShortInfo {
  margin-top: 0.7em;
}

.stayShortInfo h1 {
  font-weight: normal;
}

.collapsableStay .leftsmall {
  float: left;
  width: 35%;
  padding-left: 4em;
}

.collapsableStay .leftwide {
  float: left;
  width: 42%;
  padding-left: 8%;
}

.collapsableStay .medic {

}

.collapsableStay .medicName {
  font-weight: bold;
}
.collapsableStay .organisationName {
  font-weight: bold;
}

.collapsableStay .az {
  margin-bottom: 1em;
  padding-left: 4em;
}

/* client container */
.clientContainer {
  margin-bottom: 1em;
}

.clientContainer .leftsmall {
  float: left;
  width: 35%;
  padding-left: 4em;
}

.clientContainer .leftwide {
  float: left;
  width: 42%;
  padding-left: 8%;
}

.clientContainer .collapsable {
  padding-top: 1em;
  padding-bottom: 1em;
}

.clientContainer .clientdata,
.clientContainer .collapseable .name {
  font-weight: bold;
}

/* authenticatorContainer */
.authenticatorContainer {
  padding-bottom: 0.5em;
}

.authenticatorContainer .collapsed .name,
.authenticatorContainer .organisationName {
  font-weight: bold;
}

.authenticatorContainer .leftsmall {
  float: left;
  width: 45%;
  padding-left: 12px;
}

.authenticatorContainer .leftwide {
  float: left;
  width: 50%;
}

.authenticatorContainer .collapsable {

}

.authenticatorContainerDivider {
  border-bottom: 0.5px solid black;
  padding-top: 0.5em;
  margin-bottom: 0.5em;
}

.authenticatorContainer .address {
}

.bottomline_data .leftsmall {
  width: 30%;
}

.bottomline_data .leftwide {
  width: 60%;
}

.bottomline .collapseLinks {
}

.bottomline h2 {
  font-size: 1.015em;
  margin: 0;
}

h2 .collapseLinks, h3 .collapseLinks {
  float: right;
}

.bottomline .organisationName {
}

.bottomline .relationship {
  font-weight: normal;
}

.bottomline_data .element {
  clear: both;
  padding: 0.7em 0.5em 0.7em 12px;
  border-bottom: 0.5px solid black;
}

.bottomline_data .address {
}

.bottomline .element:nth-child(2n+1) {
  background-color: #eeeeee;
}
.bottomline .leftsmall .date {
  color: black;
}

.bottomline {
  padding-bottom: 1em;
}

.margin_bottom {
  margin-bottom: 0.5em;
}

.menu {
  margin-top: 0.7em;
  font-size: 1.015em;
}

/* tooltip */
.tooltipTrigger {
  position: relative;
  cursor: help;
}

.tooltip {
  display: none;
  font-weight: bold;
}

.tooltipTrigger:hover .tooltip,.showTooltip .tooltip {
  display: block;
  position: absolute;
  top: 2em;
  left: 2em;
  background-color: white;
  border: 0.1em solid black;
  z-index: 100;
  font-size: 11px;
  padding: 0.5em;
  color: black;
}

.tooltipentry {
  display: block;
}

.backlinktooltip {
  width: 80px;
}

.warning_icon .collapseLinks, .law_icon .collapseLinks {
  font-weight: normal;
  float: none;
}

.infotooltip {
  width: 470px;
}

.tableofcontenttooltip {
  width: 170px;
}

.risktooltip {
  width: 100px;
}


/* end tooltip */

.footer {
  margin-bottom: 100px;
  font-size: 1.015em;
  margin-top: 3px;
}

.footer_logo {
  float: right;
  height: 40px;
  width: 40px;
  padding-bottom: 1em;
}

/*
*	hide/show collapse triggers and collapseable
* by default (no javascript) triggers are hidden and content is shown
*/
.hide_all,.show_all, .print, .show_tableofcontents, .hide_tableofcontents {
  display: none;
}
.hide_all,.show_all, .show_tableofcontents, .hide_tableofcontents {
  padding-right: 1em;
}

.collapseLinks {
  display: none;
  float: right;
}

.hideCreatedByTo .leftwide p,.hideCreatedByTo .leftwide div {
  display: none;
}

html .hideCreatedByTo .leftwide p.organisationName {
  display: block;
}

.hideBottomlineCollapseable .leftwide div,.hideBottomlineCollapseable .leftwide p.telecom,.hideBottomlineCollapseable .leftsmall p
  {
  display: none;
}

.responsibleContact {
  border: 0.1em solid black;
  width: 40%;
  background-color: #ffff99;
  padding: 1em 1em 1em 20px;
  margin-bottom: 1em;
}

.responsibleContact .organisationName {
  font-weight: bold;
  word-wrap: break-word;
}

.responsibleContactAddress {
  padding-left: 1em;
}

/* warncontainer */
.warncontainer {
  background-color: #FFE17F;
  margin-bottom: 1em;
  padding: 0.7em 0.7em 0.2em 12px;
  font-size: 1.015em;
}

.warncontainer a {
  padding-left: 0.5em;
  color: black;
  text-decoration: none;
}

.warncontainer a:hover {
  text-decoration: underline;
}


.warncontainer img {
  vertical-align: top;
}

.warningIcon {
  background: no-repeat left center url(<xsl:value-of select="translate(normalize-space($warningIcon),'&#32;','')" />);
  background-size: 14px 14px;
}

.warningIcon:hover {
  background: no-repeat left center url(<xsl:value-of select="translate(normalize-space($warningIconHover),'&#32;','')" />);
  background-size: 14px 14px;
}

.attachmentIcon {
  width: 12px;
  height: 12px;
  margin-right: 0.3em;
}

.country,
.uppercase {
  text-transform: uppercase;
}

.smallcaps {
  font-variant: small-caps;
}

.nonbreaking {
  white-space: nowrap;
}

#IDPatientContainer {
  background-color: #BFD5EE;
}

#IDEncounterContainer {
  background-color: #E4ECF7;
}

.patientinformation_even{
  background-color: #FFFFFF;
}

.patientinformation_odd{
  background-color: #E8E8E8;
}

.inlineimg{
  max-width: 100%;
}

.multimediaicon {
  position: relative;
  top: 3px;
}

.serviceeventlist {
  padding: 0 0 0 0px;
  margin: 0 0 0 0px;
  list-style: none;
}

.deprecated {
  height: 100px;
  font-size: 88px;
  font-weight: bold;
  color: red;
  letter-spacing: 42px;
  margin: 15px;
  line-height: 100%;
}

.warning_icon, .law_icon {
  float: left;
  width: 100%;
  margin-bottom: 0.5em;
}

p.warning_icon img, p.law_icon img {
  float: left;
}

.tableofcontentsMinimize {
  float: left; 
  padding: 0 0.5em; 
  width: 20px;
}

.expandIcon {
  width: 20px;
  height: 20px;
  float: right;
  background: no-repeat left center url(<xsl:value-of select="translate(normalize-space($expandIcon),'&#32;','')" />);
  margin-left: 0.2em;
}

.expandIcon:hover {
  width: 20px;
  height: 20px;
  float: right;
  background: no-repeat left center url(<xsl:value-of select="translate(normalize-space($expandIconHover),'&#32;','')" />);
  margin-left: 0.2em;
}

.collapseIcon {
  width: 20px;
  height: 20px;
  float: right;
  background: no-repeat left center url(<xsl:value-of select="translate(normalize-space($collapseIcon),'&#32;','')" />);
  margin-left: 0.2em;
}

.collapseIcon:hover {
  width: 20px;
  height: 20px;
  float: right;
  background: no-repeat left center url(<xsl:value-of select="translate(normalize-space($collapseIconHover),'&#32;','')" />);
  margin-left: 0.2em;
}

.collapsable {
  margin-top: 0.5em;
  padding-bottom: 0.5em;
}

.metaInformationLine {
  padding-bottom: 0.15em;
}

.authenticatorContainerNoPadding {
  padding-bottom: 0em;
}

.show_tableofcontents, .hide_tableofcontents, .hide_all, .show_all {
  float: left;
}

#backToTopContainer {
    width: 953px;
    position: fixed;
    bottom: 0%;
    margin-bottom: 30px;
}

.modal {
  display: none;
  position: fixed;
  z-index: 100;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgb(200,200,200);
  background-color: rgba(0,0,0,0.4);
}

.modal-content {
  background-color: #EEEEEE;
  margin: 15% auto;
  border: 1px solid #004a8d;
  width: 900px;
}

.modal-header {
  padding: 20px;
}

.modal-footer {
  padding: 20px;
  padding-bottom: 23px;
  text-align: right;
}

.modal-body {
  padding-left: 20px;
  padding-right: 20px;
}

.modal-close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.modal-close:hover, .modal-close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}

.modal-ok, .modal-ok:visited {
  color: #FFF;
  background-color: #004a8d;
  text-decoration: none;
  padding-left: 20px;
  padding-right: 20px;
  padding-top: 7px;
  padding-bottom: 7px;
  font-weight: bold;
}

.modal-ok:hover, .modal-ok:focus {
  color: #aaa;
  text-decoration: none;
  cursor: pointer;
}

.infoButton {
  cursor: pointer;
  height: 13px;
  width: 13px;
  vertical-align: middle;
}
        </style>
        <style type="text/css" media="print">
html body {
  font-size: 12pt;
}

html .bodyContentContainer {
  width: 100%;
  margin: 0;
}

html .hide_all,.show_all, .print, .collapseShow, .collapseHide,
.show_tableofcontents, .hide_tableofcontents, .backlink {
  display: none !important;
}

html .section_text, html .section_indent {
  padding: 0;
}

html .hideCreatedByTo .leftsmall, html .hideCreatedByTo .leftwide,
html .createdbyto .leftsmall, html .createdbyto .leftwide {
  float: none;
  text-align: left;
}
html .hideCreatedByTo .leftwide,
html .createdbyto .leftwide {
  padding-left: 5em;
}

html .patientContainer .leftwide, html .patientContainer .leftsmall,
html .stayContainer .leftwide, html .stayContainer .leftsmall {
  float: none;
  padding-left: 10%;
  width: 100%;
}

a {
  text-decoration: none;
}

.footer_logo {
  height: 1cm;
  width: 1cm;
}

        </style>
<style  type="text/css">

  <!-- eMED -->
  th {
    text-align: left;
  }
  
  .header_row{
    background-color: #DDDDDD;
  }

  .header_padding {
    padding: 5px;
 }

  td{
    padding: 5px;
  }

  body{
    margin: 0px;
    padding: 0px;
  }

  .borderBottom {
    border-bottom: 0.5px solid black;
  }

  .hidden{
    display: none;
  }
  
  .table_row{

  } 
  
  .table {
    width: 900px;
    border: 0px;
    border-spacing: 0px;
    border-collapse: collapse;
    font-size: 0.9em;
    text-align: left;
  }
  
  .table_inner{
    width: 890px;
    border: 0px;
    border-spacing: 0px;
    border-collapse: collapse;
    text-align: left;
  }
  
  .table_inner td{
    border: 0px none;
    vertical-align: top;
    padding-top: 10px;
  }

    .no_margin {
      margin: 0px;
    }
  
  .table_dosage {
    border: 0px;
    padding: 0 0 0 0px;
    border-spacing: 0px;
    border-collapse: collapse;
    text-align: center;
  }

  .table_dosage td {
     border: 1px solid black;
     border-left-style: none;
     padding: 0 0 0 0px;
     border-top-style: none;
     border-bottom-style: none;
     background-color: transparent;
  }
    
  .dosage_cell {
    padding: 0 0 0 0px;
  }
  
  .selected {
    background-color: #c9c9c9;
    color: #000000;
    padding-top: 0px;
  }
  
  .sortbox_name_container {
    width: 150px;
  }
  
  .sortbox_date_container {
    width: 120px;
  }
  
  .sortbox_name_left {
    float: left;
    width: 135px;
    height: 38px;
  }
  
  .sortbox_date_left {
    float: left;
    width: 90px;
    height: 38px;
  }
  
  .sortbox_name_right, .sortbox_date_right {
    float: right;
    width: 25px;
  }
  
  .clear {
    clear: both;
  }
  
  .bg_white{
  background-color: #FFFFFF;
}

  .bg_grey{
  background-color: #EEEEEE;
}

.show_more_detail_arrow {
  text-align: right;
}

  .show_more_detail_arrow {
    text-align: right;
  }

 a.expandArrow {
    display: block;
    width: 20px;
    height: 20px;
    background: no-repeat center url(<xsl:value-of select="translate(normalize-space($expandIcon),'&#32;','')" />);
    margin: 10px;
  }

  a.expandArrow:hover {
    display: block;
    width: 20px;
    height: 20px;
    background: no-repeat center url(<xsl:value-of select="translate(normalize-space($expandIconHover),'&#32;','')" />);
    margin: 10px;
  }

  a.collapseArrow {
    display: block;
    width: 20px;
    height: 20px;
    background: no-repeat center url(<xsl:value-of select="translate(normalize-space($collapseIcon),'&#32;','')" />);
    margin: 10px;
  }

  a.collapseArrow:hover {
    display: block;
    width: 20px;
    height: 20px;
    background: no-repeat center url(<xsl:value-of select="translate(normalize-space($collapseIconHover),'&#32;','')" />);
    margin: 10px;
  }

 a.sortUpArrow {
    display: block;
    width: 20px;
    height: 20px;
    background: no-repeat center url(<xsl:value-of select="translate(normalize-space($sortArrowUp),'&#32;','')" />);
  }

  a.sortUpArrow:hover {
    display: block;
    width: 20px;
    height: 20px;
    background: no-repeat center url(<xsl:value-of select="translate(normalize-space($sortArrowUpHover),'&#32;','')" />);
  }

  a.sortUpArrowActive {
    display: block;
    width: 20px;
    height: 20px;
    background: no-repeat center url(<xsl:value-of select="translate(normalize-space($sortArrowUpActive),'&#32;','')" />);
  }

  a.sortUpArrowActive:hover {
    display: block;
    width: 20px;
    height: 20px;
    background: no-repeat center url(<xsl:value-of select="translate(normalize-space($sortArrowUpActiveHover),'&#32;','')" />);
  }

  a.sortDownArrow {
    display: block;
    width: 20px;
    height: 20px;
    background: no-repeat center url(<xsl:value-of select="translate(normalize-space($sortArrowDown),'&#32;','')" />);
  }

  a.sortDownArrow:hover {
    display: block;
    width: 20px;
    height: 20px;
    background: no-repeat center url(<xsl:value-of select="translate(normalize-space($sortArrowDownHover),'&#32;','')" />);
  }

  a.sortDownArrowActive {
    display: block;
    width: 20px;
    height: 20px;
    background: no-repeat center url(<xsl:value-of select="translate(normalize-space($sortArrowDownActive),'&#32;','')" />);
  }

  a.sortDownArrowActive:hover {
    display: block;
    width: 20px;
    height: 20px;
    background: no-repeat center url(<xsl:value-of select="translate(normalize-space($sortArrowDownActiveHover),'&#32;','')" />);
  }

  .lvl2HeaderTable td {
    padding: 0 0 0 0px;
    vertical-align: middle;
  }

 a.packagesCollapseShow {
    display: block;
    background: no-repeat left center url(<xsl:value-of select="translate(normalize-space($expandIcon),'&#32;','')" />);
    background-size: 20px 20px;
  }

  a.packagesCollapseShow:hover {
    display: block;
    background: no-repeat left center url(<xsl:value-of select="translate(normalize-space($expandIconHover),'&#32;','')" />);
    background-size: 20px 20px;
  }

  a.packagesCollapseShow:focus {
    color: #004a8d;
  }

  a.packagesCollapseHide:hover {
    display: block;
    background: no-repeat left center url(<xsl:value-of select="translate(normalize-space($collapseIconHover),'&#32;','')" />);
    background-size: 20px 20px;
  }

  a.packagesCollapseHide {
    display: block;
    background: no-repeat left center url(<xsl:value-of select="translate(normalize-space($collapseIcon),'&#32;','')" />);
    background-size: 20px 20px;
  }
  a.packagesCollapseHide:focus {
    color: #004a8d;
  }

  h2 {
      font-size: 1.204em;
      font-weight: bold;
      margin-top: 1.3em;
      margin-bottom: 0.5em;
  }

  .boxLeft table td {
    padding: 0;
  }

  .tableToolTip {
    padding-left: 3px;
    display: block;
  }

</style>
        <script type="text/javascript">
<xsl:variable name="javascript">
<![CDATA[

var HIDE_SPECIAL_CONTAINER_CLASS = "hideCreatedByTo";
var SPECIAL_CONTAINER_CLASS = "createdbyto";
var COLLAPSEABLE_CONTAINER_CLASS = "collapsable";
var COLLAPSE_TRIGGER_CONTAINER_CLASS = "collapseTrigger";
var TABLE_OF_CONTENTS_CLASS = "tableofcontents";
var COLLAPSE_LINKS_CONTAINER_CLASS = "collapseLinks";
var HIDE_TRIGGER_CLASS = "collapseHide";
var SHOW_TRIGGER_CLASS = "collapseShow";
var HIDE_ALL_TRIGGER_CLASS = "hide_all";
var SHOW_ALL_TRIGGER_CLASS = "show_all";
var HIDE_TABLE_OF_CONTENTS_CLASS = "hide_tableofcontents";
var SHOW_TABLE_OF_CONTENTS_CLASS = "show_tableofcontents";
var PRINT_BUTTON_CLASS = "print";
var SHOW_BOTTOMLINE_CLASS = "bottomlineCollapseable";
var HIDE_BOTTOMLINE_CLASS = "hideBottomlineCollapseable";



function getElementsByClassFromNode(searchClass, node) {
    "use strict";
    var classElements = [],
        els,
        elsLen,
        pattern,
        i = 0,
        j = 0,
        tag = '*';

    els = node.getElementsByTagName(tag);
    elsLen = els.length;
    pattern = new RegExp("(^|\\s)" + searchClass + "(\\s|$)");
    for (i = 0; i < elsLen; i++) {
        if (pattern.test(els[i].className)) {
            classElements[j] = els[i];
            j++;
        }
    }
    return classElements;
}

function getElementsByClass(searchClass) {
    "use strict";
    return getElementsByClassFromNode(searchClass, window.document);
}

function updateStyleDisplay(node, value) {
    "use strict";
    var i = 0;
    for (i = 0; i < node.length; i++) {
        node[i].style.display = value;
    }
}

function setCollapseContainer(node, hide) {
    "use strict";
    if (node.tagName === "BODY") {
        return false;//error
    }
    if (node.className === SPECIAL_CONTAINER_CLASS || node.className === HIDE_SPECIAL_CONTAINER_CLASS) {
        if (hide === true) {
            node.className = HIDE_SPECIAL_CONTAINER_CLASS;
        } else {
            node.className = SPECIAL_CONTAINER_CLASS;
        }
        return true;
    }
    if (node.className === COLLAPSE_TRIGGER_CONTAINER_CLASS) {
        if (hide === true) {
            if (node.nextSibling.nodeType === 3) {
                node.nextSibling.nextSibling.style.display = "none";
            } else {
                node.nextSibling.style.display = "none"; //IE
            }
        } else {
            if (node.nextSibling.nodeType === 3) {
                node.nextSibling.nextSibling.style.display = "";
            } else {
                node.nextSibling.style.display = ""; //IE
            }
        }
        return true;
    }
    if (node.className === SHOW_BOTTOMLINE_CLASS || node.className === HIDE_BOTTOMLINE_CLASS) {
        if (hide === true) {
            node.className = HIDE_BOTTOMLINE_CLASS;
        } else {
            node.className = SHOW_BOTTOMLINE_CLASS;
        }
        return true;
    }
    setCollapseContainer(node.parentNode, hide);
}

/* all dynamic hideables in arrays */
var hideTriggerElements = null;
var showTriggerElements = null;
var collapseLinkContainerElements = null;
var showAllElements = null;
var hideAllElements = null;
var printElement = null;
var collapseAllElements = null;
var createdByToElements = null;
var bottomlineElements = null;
var tableofcontentsElement = null;
var hideTableofcontens = null;
var showTableofcontens = null;

function showCollapsed(node) {
    "use strict";
    setCollapseContainer(node, false); //false = show
    node.previousSibling.style.display = "block";
    node.style.display = "none";
    return false;
}

function hideCollapseable(node) {
    "use strict";
    setCollapseContainer(node, true); //true = hide
    node.nextSibling.style.display = "block";
    node.style.display = "none";
    return false;
}


function showAll() {
    "use strict";
    var i = 0;
    updateStyleDisplay(collapseAllElements, "");
    updateStyleDisplay(hideAllElements, "inline");
    updateStyleDisplay(showAllElements, "");
    updateStyleDisplay(hideTriggerElements, "block");
    updateStyleDisplay(showTriggerElements, "none");
    for (i = 0; i < createdByToElements.length; i++) {
        createdByToElements[i].className = SPECIAL_CONTAINER_CLASS;
    }
    for (i = 0; i < bottomlineElements.length; i++) {
        bottomlineElements[i].className = SHOW_BOTTOMLINE_CLASS;
    }
    showTableOfContents();
    return false;
}

function hideAll() {
    "use strict";
    var i = 0;
    updateStyleDisplay(collapseAllElements, "none");
    updateStyleDisplay(hideAllElements, "");
    updateStyleDisplay(showAllElements, "inline");
    updateStyleDisplay(hideTriggerElements, "none");
    updateStyleDisplay(showTriggerElements, "block");
    for (i = 0; i < createdByToElements.length; i++) {
        createdByToElements[i].className = HIDE_SPECIAL_CONTAINER_CLASS;
    }
    for (i = 0; i < bottomlineElements.length; i++) {
        bottomlineElements[i].className = HIDE_BOTTOMLINE_CLASS;
    }
    hideTableOfContents();
    return false;
}

function showTableOfContents() {
    "use strict";
    updateStyleDisplay(hideTableofcontens, "inline");
    updateStyleDisplay(showTableofcontens, "");
    updateStyleDisplay(tableofcontentsElement, "");
    return false;
}

function hideTableOfContents() {
    "use strict";
    updateStyleDisplay(hideTableofcontens, "");
    updateStyleDisplay(showTableofcontens, "inline");
    updateStyleDisplay(tableofcontentsElement, "none");
    return false;
}

function toggleCollapseable(node) {
    "use strict";
    var collapseLinksContainer,
        collapseLinks,
        i;
    collapseLinksContainer = getElementsByClassFromNode("collapseLinks", node);
    if(collapseLinksContainer && collapseLinksContainer.length > 0) {
        collapseLinks = collapseLinksContainer[0].getElementsByTagName("A");
        for (i = 0; i < collapseLinks.length; i++) {
            if(collapseLinks[i].style.display === "block" || collapseLinks[i].style.display === "") {
                if(collapseLinks[i].className === SHOW_TRIGGER_CLASS) {
                    showCollapsed(collapseLinks[i]);
                } else {
                    hideCollapseable(collapseLinks[i]);
                }
                break;
            }
        }
    }
}

function jump(elementID) {
    "use strict";
    var collapseLinksContainer,
        collapseLinks,
        i,
        node;
    node = window.document.getElementById(elementID);
    collapseLinksContainer = getElementsByClassFromNode("collapseLinks", node);
    if(collapseLinksContainer && collapseLinksContainer.length > 0) {
        collapseLinks = collapseLinksContainer[0].getElementsByTagName("A");
        for (i = 0; i < collapseLinks.length; i++) {
            if(collapseLinks[i].style.display === "block" || collapseLinks[i].style.display === "") {
                if(collapseLinks[i].className === SHOW_TRIGGER_CLASS) {
                    showCollapsed(collapseLinks[i]);
                }
                break;
            }
        }
    }
}

/* init document */
window.onload = startWrapper;

function startWrapper() {
  start();
  printiconcontrol();
};

function start() {
    "use strict";
    var i = 0;
    //(javascript works) setup triggers, hide content

    // hide [-]
    hideTriggerElements = getElementsByClass(HIDE_TRIGGER_CLASS);
    updateStyleDisplay(hideTriggerElements, "none");

    showTriggerElements = getElementsByClass(SHOW_TRIGGER_CLASS);
    // show collapse triggers
    collapseLinkContainerElements = getElementsByClass(COLLAPSE_LINKS_CONTAINER_CLASS);
    updateStyleDisplay(collapseLinkContainerElements, "block");

    showAllElements = getElementsByClass(SHOW_ALL_TRIGGER_CLASS);
    updateStyleDisplay(showAllElements, "inline");

    // show table of contents button
    showTableofcontens = getElementsByClass(SHOW_TABLE_OF_CONTENTS_CLASS);
    updateStyleDisplay(showTableofcontens, "inline");

    hideAllElements = getElementsByClass(HIDE_ALL_TRIGGER_CLASS);
    hideTableofcontens = getElementsByClass(HIDE_TABLE_OF_CONTENTS_CLASS);

    /* hide all collapseable elements */
    collapseAllElements = getElementsByClass(COLLAPSEABLE_CONTAINER_CLASS);
    updateStyleDisplay(collapseAllElements, "none");

    createdByToElements = getElementsByClass(SPECIAL_CONTAINER_CLASS);
    for (i = 0; i < createdByToElements.length; i++) {
        createdByToElements[i].className = HIDE_SPECIAL_CONTAINER_CLASS;
    }

    bottomlineElements = getElementsByClass(SHOW_BOTTOMLINE_CLASS);
    for (i = 0; i < bottomlineElements.length; i++) {
        bottomlineElements[i].className = HIDE_BOTTOMLINE_CLASS;
    }

    tableofcontentsElement = getElementsByClass(TABLE_OF_CONTENTS_CLASS);
    updateStyleDisplay(tableofcontentsElement, "none");
};
]]>
</xsl:variable>

<xsl:variable name="javascript_eMed">
<![CDATA[

/************************
 **** SORT FUNCTIONS ****
 ***********************/
function sortTable(tableId, sortby, direction) {
  var dataMap = [];
  var rows = document.getElementById(tableId).getElementsByTagName("tr");
  for(var i=0; i<rows.length; i++) {

    var rowId = rows[i].id;
    if(rowId && rowId.indexOf('parent_') > -1) {

      var itemName = document.getElementById(rowId + '_name');
      var itemDate = document.getElementById(rowId + '_date').innerText;
      itemDate=toDate(itemDate);     
            
      var rowAttrsMap = getAttributeMap(rows[i]);
      var rowCellsMap = getCellMap(rows[i]);      
      
      var moreRow = document.getElementById('more_' + rowId.substring('parent_'.length, rowId.length));
      var moreAttrsMap = getAttributeMap(moreRow);
      var moreRowCellsMap = getCellMap(moreRow);
          
      var item = {"id":rowId, "itemName":itemName.innerText, "itemDate":itemDate, "rowCells":rowCellsMap, "rowAttrs":rowAttrsMap, "moreRowCells":moreRowCellsMap, "moreRowAttrs":moreAttrsMap};
      
      dataMap.push(item);
    }
  }
  
  if(sortby=="name") {
    //sort by name
    dataMap.sort(function(item1,item2) {
      return sortByName(item1, item2);
    });
  } else {
    //sort by date
    dataMap.sort(function(item1,item2) {
      if(item1.itemDate.getTime() === item2.itemDate.getTime()) {
        return sortByName(item1, item2);
      }else{
        return item1.itemDate - item2.itemDate;
      }
    });
  }
  
  if(direction=="up") {
    dataMap.reverse();
  }

  var tableToSort = document.getElementById(tableId);
  var allRows = tableToSort.getElementsByTagName("tr");
  for(var i=allRows.length-1; i > 0; i--) {
    var rowId = allRows[i].id;
    if(rowId && (rowId.indexOf('parent_') > -1  || rowId.indexOf('more_') > -1)){
      allRows[i].parentNode.removeChild(allRows[i]);
    }
    
  }
  
  for(var i=0; i<dataMap.length; i++) {
 
    var entry = dataMap[i];
 
    //create parent row
    var newRow = tableToSort.insertRow(tableToSort.rows.length);
    applyAttributeMap(newRow, entry.rowAttrs);
    
    for(var u=0; u<entry.rowCells.length; u++) {
      var newCell = newRow.insertCell(u);
      applyAttributeMap(newCell, entry.rowCells[u].cellAttr);
      newCell.innerHTML = entry.rowCells[u].cellValue;
    }
    
    //create more row
    newRow = tableToSort.insertRow(tableToSort.rows.length);
    applyAttributeMap(newRow, entry.moreRowAttrs);
    
    for(var u=0; u<entry.moreRowCells.length; u++) {
      var newCell = newRow.insertCell(u);
      applyAttributeMap(newCell, entry.moreRowCells[u].cellAttr);
      newCell.innerHTML = entry.moreRowCells[u].cellValue;
    }

  }
  
  setIcons(tableId, sortby, direction);
  adjustBackground(tableId);
}

function getCellMap(row) {
  var cellMap = [];
  
  for(var i=0; i<row.cells.length; i++) {
    var attrMap = getAttributeMap(row.cells[i]);
    var entry = { "cellValue" : row.cells[i].innerHTML, "cellAttr" : attrMap };
    cellMap.push(entry);
  }
  
  return cellMap;
}

function getAttributeMap(item) {
  var attrsMap = [];
  for(var i=0; i<item.attributes.length; i++) {
    var entrySet = item.attributes[i];
    var entry = { "attrName" : entrySet.nodeName, "attrValue" : entrySet.nodeValue};
    attrsMap.push(entry);
  }
  return attrsMap;
}

function applyAttributeMap(item, map) {
  for(var i=0; i<map.length; i++) {
    item.setAttribute(map[i].attrName, map[i].attrValue);
  }
}

function toDate(dateAsString) {

  var parts = dateAsString.split(" ");
  if(parts.length != 3) {
    return null;
  }
  
  var day = parts[0].replace(".","");
  var year = parts[2];
  var month;
  if(parts[1] == "Januar") {
    month = 0;
  } else if(parts[1] == "Februar") {
    month = 1;
  } else if(parts[1] == "März") {
    month = 2;
  } else if(parts[1] == "April") {
    month = 3;
  } else if(parts[1] == "Mai") {
    month = 4;
  } else if(parts[1] == "Juni") {
    month = 5;
  } else if(parts[1] == "Juli") {
    month = 6;
  } else if(parts[1] == "August") {
    month = 7;
  } else if(parts[1] == "September") {
    month = 8;
  } else if(parts[1] == "Oktober") {
    month = 9;
  } else if(parts[1] == "November") {
    month = 10;
  } else {
    month = 11;
  }
  
  return new Date(year, month, day, 0, 0, 0, 0);
}

function sortByName(item1, item2) {
  if (item1.itemName < item2.itemName) {
    return -1;
  } else if (item1.itemName > item2.itemName) {
    return 1;
  } else {
   return 0;
  }
}

function setIcons(tableId, sortby, direction) {
  var nameUp = document.getElementById(tableId+'_sort_name_up');
  var nameUpActive = document.getElementById(tableId+'_sort_name_up_active');
  var nameDown = document.getElementById(tableId+'_sort_name_down');
  var nameDownActive = document.getElementById(tableId+'_sort_name_down_active');
  var dateUp = document.getElementById(tableId+'_sort_date_up');
  var dateUpActive = document.getElementById(tableId+'_sort_date_up_active');
  var dateDown = document.getElementById(tableId+'_sort_date_down');
  var dateDownActive = document.getElementById(tableId+'_sort_date_down_active');

  if(sortby == "name") {
    if(direction=="up") {
      nameUp.style.display = "none";
      nameUpActive.style.display = "block";
      nameDownActive.style.display = "none";
      nameDown.style.display = "block";
    }else{
      nameUpActive.style.display = "none";
      nameUp.style.display = "block";
      nameDown.style.display = "none";
      nameDownActive.style.display = "block";
    }
    dateDownActive.style.display = "none";
    dateDown.style.display = "block";
    dateUpActive.style.display = "none";
    dateUp.style.display = "block";
  }else{
    if(direction=="up") {
      dateUp.style.display = "none";
      dateUpActive.style.display = "block";
      dateDownActive.style.display = "none";
      dateDown.style.display = "block";
    }else{
      dateUpActive.style.display = "none";
      dateUp.style.display = "block";
      dateDown.style.display = "none";
      dateDownActive.style.display = "block";
    }
    nameDownActive.style.display = "none";
    nameDown.style.display = "block";
    nameUpActive.style.display = "none";
    nameUp.style.display = "block";
  }
}

/************************
 *** TOGGLE FUNCTIONS ***
 ***********************/
function toggleDetail(tableId, childId) {
    var child = document.getElementById(childId);
    var parentRow = document.getElementById('parent_' + childId);
    var expand = document.getElementById('expandLvl1_' + childId);
    var collapse = document.getElementById('collapseLvl1_' + childId);

    if(child.className.match(/(?:^|\s)hidden(?!\S)/)) {
      showDetail(child);
      parentRow.className = 'selected borderBottom';
      expand.style.display = 'none';
      collapse.style.display = 'block';
    }else{
      hideDetail(child);
      parentRow.className = '';
      collapse.style.display = 'none';
      expand.style.display = 'block';
      hideMore(childId);

      adjustBackground(tableId);

      parentRow.className = parentRow.className + ' borderBottom'
    }

}

function showDetail(child) {
   child.className = child.className.replace( /(?:^|\s)hidden(?!\S)/g , ' table_row' );
}

function hideDetail(child) {
   child.className = child.className.replace( /(?:^|\s)table_row(?!\S)/g , ' hidden' );
}

function toggleMore(childId) {
  var show = document.getElementById('toggle_more_' + childId + "_show");
  var hide = document.getElementById('toggle_more_' + childId + "_hide");

  if(show.style.display=="block") {
    showMore(childId);
  } else{
    hideMore(childId);
  }
}

function showMore(childId) {
  var rows = document.querySelectorAll('.more_entry_' + childId);
  var show = document.getElementById('toggle_more_' + childId + "_show");
  var hide = document.getElementById('toggle_more_' + childId + "_hide");

  if(show) {
    show.style.display = "none";
  }

  if(hide) {
    hide.style.display = "block";
  }

  for (var i = 0; i < rows.length; i++) {
    if(i % 2 != 0) {
      rows[i].className = rows[i].className.replace( /(?:^|\s)hidden(?!\S)/g , ' bg_white' );
    }else{
      rows[i].className = rows[i].className.replace( /(?:^|\s)hidden(?!\S)/g , ' bg_grey' );
    }
  }
}

function hideMore(childId) {
  var rows = document.querySelectorAll('.more_entry_' + childId);
  var show = document.getElementById('toggle_more_' + childId + "_show");
  var hide = document.getElementById('toggle_more_' + childId + "_hide");

  if(hide) {
    hide.style.display = "none";
  }
  if(show) {
    show.style.display = "block";
  }

  for (var i = 0; i < rows.length; i++) {
    if(i % 2 != 0) {
      rows[i].className = rows[i].className.replace( /(?:^|\s)bg_white(?!\S)/g , ' hidden' );
    }else{
      rows[i].className = rows[i].className.replace( /(?:^|\s)bg_grey(?!\S)/g , ' hidden' );
    }
  }

  hideAllMoreChildsFromParent(childId);
}

function toggleMoreChilds(parentId, index) {
  var child_trs = document.getElementById('parent_inner_'+parentId).getElementsByTagName("tr");
  var expandArrow = document.getElementById('expandLvl2_'+parentId+'_'+index);
  var collapseArrow = document.getElementById('collapseLvl2_'+parentId+'_'+index);

  for(var i=0; i<child_trs.length; i++) {
    var child_id = child_trs[i].id;
    if(child_id && child_id.indexOf('more_detail_'+parentId+'_'+index) > -1) {
      toggleMoreChild(child_id, expandArrow, collapseArrow);
    }
  }
}

function toggleMoreChild(moreChildId, expandArrow, collapseArrow) {
  var item = document.getElementById(moreChildId);

  if(item.className.match(/(?:^|\s)table_row(?!\S)/)) {
    hideMoreChilds(moreChildId);
    collapseArrow.style.display = "none";
    expandArrow.style.display = "block";
  }else{
    showMoreChilds(moreChildId);
    expandArrow.style.display = "none";
    collapseArrow.style.display = "block";
  }
}

function showMoreChilds(moreChildId) {
  var row = document.getElementById(moreChildId);

  row.className = row.className.replace( /(?:^|\s)hidden(?!\S)/g , ' table_row' );
}

function hideMoreChilds(moreChildId) {
   var row = document.getElementById(moreChildId);

   var index = row.id.split('_');

    if(index.length == 4) {
      var collapseArrow = document.getElementById('collapseLvl2_'+index[2]+'_'+index[3]);
      var expandArrow = document.getElementById('expandLvl2_'+index[2]+'_'+index[3]);
      collapseArrow.style.display = "none";
      expandArrow.style.display = "block";
    }

  row.className = row.className.replace( /(?:^|\s)table_row(?!\S)/g , ' hidden' );
}

function hideAllMoreChildsFromParent(parentId) {
  var child_trs = document.getElementById('parent_inner_'+parentId).getElementsByTagName("tr");

  for(var i=0; i<child_trs.length; i++) {
    var child_id = child_trs[i].id;
    if(child_id && child_id.indexOf('more_detail_'+parentId) > -1) {
      hideMoreChilds(child_id);
    }
  }
}

function adjustBackground(tableId) {
  var parentRows = document.getElementById(tableId).getElementsByTagName("tr");
  var parentIndex = 0;
  for(var i=0; i<parentRows.length; i++) {
    var row = parentRows[i];
    if(row.id && row.id.indexOf("parent_") > -1) {
      if(parentIndex % 2 == 0) {
        setOrReplaceClass(row, "bg_white");
      }else{
        setOrReplaceClass(row, "bg_grey");
      }
      parentIndex++;
    }
  }
}

function setOrReplaceClass(item, toBG) {

  if(item.className.match(/(?:^|\s)selected(?!\S)/)) {
    return;
  }

  if(item.className.match(/(?:^|\s)bg_white(?!\S)/)) {
    item.className = item.className.replace( /(?:^|\s)bg_white(?!\S)/g , toBG);
  } else if (item.className.match(/(?:^|\s)bg_grey(?!\S)/)) {
    item.className = item.className.replace( /(?:^|\s)bg_grey(?!\S)/g , toBG);
  } else {
    item.className = toBG;
  }
}


var generalOnLoad = window.onload;
window.onload = function () {
    if (generalOnLoad) {
        generalOnLoad();
    }

    sortTable('abgegeben', 'date', 'up');
    sortTable('verordnet', 'date', 'up');
};

]]>
</xsl:variable>

<xsl:variable name="jsprinticoncontrol">
  <xsl:choose>
    <xsl:when test="$printiconvisibility='1'">
      <![CDATA[
        function printiconcontrol() {
          "use strict";
          // show print button
          printElement = getElementsByClass(PRINT_BUTTON_CLASS);
          updateStyleDisplay(printElement, "inline");
        };
      ]]>
    </xsl:when>
    <xsl:otherwise>
       <![CDATA[
        function printiconcontrol() {
          "use strict";
          // hide print button
          printElement = getElementsByClass(PRINT_BUTTON_CLASS);
          updateStyleDisplay(printElement, "none");
        };
      ]]>
    </xsl:otherwise>
  </xsl:choose>
</xsl:variable>


      <!-- Beginning of CDATA section -->
      <xsl:text disable-output-escaping="yes"><![CDATA[//<]]></xsl:text><xsl:text disable-output-escaping="yes">![CDATA[</xsl:text>

      <!-- original javascript -->
      <xsl:value-of  select="$javascript" disable-output-escaping="yes"/>

<xsl:value-of  select="$javascript_eMed" disable-output-escaping="yes"/>
      
      <xsl:value-of select="$jsprinticoncontrol" disable-output-escaping="yes" />

      <!-- End of CDATA section -->
      <xsl:text>//]]</xsl:text><xsl:text disable-output-escaping="yes"><![CDATA[>]]></xsl:text>

        </script>
        
        <xsl:if test="$useexternalcss=1">
          <style type="text/css" media="screen">
            <xsl:value-of select="document($externalcssname)" />
          </style>
        </xsl:if>
        
      </head>

      <!--
        HTML Body
      -->
      <body>
      <div class="outerContainer" id="elgadocument">
        <div class="bodyContentContainer">
        
        <xsl:call-template name="documentstate" />
        
        <!-- document header -->
        
        <div class="header">
          <xsl:if test="/n1:ClinicalDocument/n1:component/n1:structuredBody/n1:component/n1:section[n1:code/@code = 'BRIEFT']/n1:entry/n1:observationMedia">
            <div class="logo">
              <xsl:call-template name="renderLogo">
                <xsl:with-param name="logo" select="/n1:ClinicalDocument/n1:component/n1:structuredBody/n1:component/n1:section/n1:entry/n1:observationMedia" />
              </xsl:call-template>
            </div>
          </xsl:if>
          <div style="float: left; width: 573px;">
            <h1 class="tooltipTrigger margin_bottom">
              <b>
                <span class="title">
                  <xsl:value-of select="$title"/>
                </span>
              </b>
              <span class="tooltip">
                <xsl:call-template name="getHL7ATXDSDokumentenklassen">
                  <xsl:with-param name="code" select="/n1:ClinicalDocument/n1:code/@code" />
                </xsl:call-template>
              </span>
            </h1>
            <p class="subtitle_create">
              <xsl:text>Erzeugt am </xsl:text>
              <xsl:call-template name="formatDate">
                <xsl:with-param name="date" select="/n1:ClinicalDocument/n1:effectiveTime" />
                <xsl:with-param name="date_shortmode">false</xsl:with-param>
              </xsl:call-template>
              <xsl:text> | Version: </xsl:text><xsl:value-of select="/n1:ClinicalDocument/n1:versionNumber/@value" />
            </p>
          </div>
          <div class="clearer" />
            <hr />
            <div class="menu">
              <a class="show_tableofcontents" href="#" onclick="showTableOfContents(); return false;">
                Inhaltsverzeichnis ausklappen
                <span class="tooltipTrigger">
                  <div class="expandIcon" />
                  <span class="tooltip">
                    <span>ausklappen</span>
                  </span>
                </span>
              </a>
              <a class="hide_tableofcontents" href="#" onclick="hideTableOfContents(); return false;">
                Inhaltsverzeichnis einklappen
                <span class="tooltipTrigger">
                  <div class="collapseIcon" />
                  <span class="tooltip">
                    <span>einklappen</span>
                  </span>
                </span>
              </a>
              <a class="show_all" href="#" onclick="showAll(); return false;">
                Alle Inhalte ausklappen
                <span class="tooltipTrigger">
                  <div class="expandIcon" />
                  <span class="tooltip">
                    <span>ausklappen</span>
                  </span>
                </span>
              </a>
              <a class="hide_all" href="#" onclick="hideAll(); return false;">
                Alle Inhalte einklappen
                <span class="tooltipTrigger">
                  <div class="collapseIcon" />
                  <span class="tooltip">
                    <span>einklappen</span>
                  </span>
                </span>
              </a>
              <a class="print" href="#" onclick="javascript:window.print()">
                <img alt="Dokument drucken" src="data:image/gif;base64,R0lGODlhFAAUAKIEAENFRcHCwoKDgwQHB////wAAAAAAAAAAACH5BAEAAAQALAAAAAAUABQAAANbSDrcrjCSAYK9TcYh9CDAp02dJIYj5zmBFJbjJEIMnM5ByAB87+8dh3DoEBCPRUosxlEuPUaADMloNaWUixZjNQ4CqiUHLNCFmRmazdMyrU3tDbWqEdjv+Hs8AQA7" />
              </a>
            </div>
            <div style="clear: both;" />
        </div>
        <!-- END document header -->

        <!--
          table of contents
          if there is no javascript enabled it is shown as default
          else it is hidden and can be shown
          on click jump to the element (if needed opens the elemnt before)
        -->
        <div class="tableofcontents">
          <div class="left">
            <div class="container">
              <p>
                <a href="#IDPatientContainer" onclick="jump('IDPatientContainer');"><xsl:value-of select="$genderedpatient" /></a>
              </p>
              <xsl:if test="//n1:ClinicalDocument/n1:componentOf">
                <p>
                  <a href="#IDEncounterContainer" onclick="jump('IDEncounterContainer');">
                    <xsl:call-template name="getEncounter" />
                  </a>
                </p>
              </xsl:if>
              <xsl:text>-----</xsl:text>
              <xsl:if test="count(//n1:section/n1:entry/n1:supply) &gt; 0">
                <p><a href="#jumpToAbgegeben"><xsl:text>Abgegebene Medikamente</xsl:text></a></p>
              </xsl:if>
              <xsl:if test="count(//n1:section/n1:entry/n1:substanceAdministration) &gt; 0">
                <p><a href="#jumpToVerordnet"><xsl:text>Verordnete Medikamente</xsl:text></a></p>
              </xsl:if>
              <xsl:text>-----</xsl:text>
              <p><a href="#IDBottomline" onclick="jump('IDBottomline');">Zusätzliche Informationen über das Dokument</a></p>
            </div>
          </div>
          <div class="right" />
          <div class="clearer" />
        </div><!-- END table of contents -->


        <!--
          Patient element collapseable includes information about the stay
        -->
        <xsl:variable name="sex" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:administrativeGenderCode/@code"/>

        <xsl:variable name="sexName">
          <xsl:choose>
            <xsl:when test="$sex='M'">M&#xE4;nnlich</xsl:when>
            <xsl:when test="$sex='F'">Weiblich</xsl:when>
            <xsl:when test="$sex='UN'">Nicht zugewiesen</xsl:when>
            <xsl:otherwise>Unbekannt</xsl:otherwise>
          </xsl:choose>
        </xsl:variable>

        <xsl:variable name="localizedSex">
          <xsl:choose>
            <xsl:when test="$sex='M'">M</xsl:when>
            <xsl:when test="$sex='F'">W</xsl:when>
            <xsl:otherwise>unbekannt</xsl:otherwise>
          </xsl:choose>
        </xsl:variable>

        <xsl:variable name="birthdate_short">
          <xsl:call-template name="formatDate">
            <xsl:with-param name="date" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:birthTime"/>
           <xsl:with-param name="date_shortmode">true</xsl:with-param>
          </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="birthdate_long">
          <xsl:call-template name="formatDate">
            <xsl:with-param name="date" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:birthTime"/>
            <xsl:with-param name="date_shortmode">false</xsl:with-param>
          </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="svnnumber">
          <xsl:choose>
            <xsl:when test="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:id[@root='1.2.40.0.10.1.4.3.1']/@extension">
              <xsl:value-of select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:id[@root='1.2.40.0.10.1.4.3.1']/@extension"/>
            </xsl:when>
            <xsl:otherwise>nicht angegeben</xsl:otherwise>
          </xsl:choose>
        </xsl:variable>

        <div class="patientContainer">
          <div class="collapseTrigger" onclick="toggleCollapseable(this);" id="IDPatientContainer">
            <div class="patientTitle">
              <h1>
                <b>
                  <xsl:value-of select="$genderedpatient"/>
                  <xsl:text>:</xsl:text>
                </b>
              </h1>
            </div>
            <div class="patientShortInfo">
              <h1 class="name">
                <xsl:call-template name="getName">
                  <xsl:with-param name="name" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:name"/>
                  <xsl:with-param name="printNameBold" select="string(true())" />
                </xsl:call-template>
                <xsl:text> (</xsl:text>
                <span>
                  <xsl:value-of select="$localizedSex" />
                </span>
                <xsl:text>) SVN: </xsl:text>
                <xsl:value-of select="$svnnumber"/>
                
                <xsl:if test="//n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:guardian">
                  <xsl:text> </xsl:text>
                  <span class="tooltipTrigger">
                    <xsl:call-template name="getPatientGuardianIconTitle" />
                    <span class="tooltip" style="width: 120px;">
                      <span>gesetzlicher Vertreter</span>
                    </span>
                  </span>
                </xsl:if>
                
              </h1>
            </div>
            <xsl:call-template name="collapseTrigger"/>
            <div class="clearer"/>
          </div>
          <div class="collapsable">

            <div class="boxLeft">
              <!-- allgemeine Daten -->
              <xsl:call-template name="getPatientInformationData">
                <xsl:with-param name="sexName" select="$sexName"/>
                <xsl:with-param name="birthdate_long" select="$birthdate_long"/>
                <xsl:with-param name="svnnumber" select="$svnnumber"/>
              </xsl:call-template>
            </div>
            <div class="boxRight">
              <!-- bekannte Adressen -->
              <xsl:call-template name="getPatientAdress"/>

              <!-- Sachwalter / Vormund -->
              <xsl:call-template name="getPatientGuardian"/>
            </div>

            <div class="clearer"/>

          </div>
        </div>
        <!-- END patient element -->

        <!-- Encounter / Aufenthalt -->
        <xsl:if test="//n1:ClinicalDocument/n1:componentOf">
          <div class="patientContainer">
            <div class="collapseTrigger" onclick="toggleCollapseable(this);" id="IDEncounterContainer">
              <div class="patientTitle">
                <h1>
                  <b>
                    <xsl:call-template name="getEncounter"/>
                    <xsl:text>:</xsl:text>
                  </b>
                </h1>
              </div>
              <div class="patientShortInfo">
                <h1>
                  <p class="subTitle">
                    <xsl:call-template name="getName">
                      <xsl:with-param name="name" select="/n1:ClinicalDocument/n1:componentOf/n1:encompassingEncounter/n1:location/n1:healthCareFacility/n1:serviceProviderOrganization/n1:name"/>
                    </xsl:call-template>
                  </p>
                  <p class="name">
                    <b>
                      <xsl:call-template name="getAmbulatory">
                        <xsl:with-param name="code" select="/n1:ClinicalDocument/n1:componentOf/n1:encompassingEncounter/n1:code"/>
                        <xsl:with-param name="effectiveTime" select="/n1:ClinicalDocument/n1:componentOf/n1:encompassingEncounter/n1:effectiveTime"/>
                        <xsl:with-param name="date_shortmode">true</xsl:with-param>
                      </xsl:call-template>
                    </b>
                  </p>
                </h1>
              </div>
              <xsl:call-template name="collapseTrigger"/>
              <div class="clearer"/>
            </div>
            <div class="collapsable">
              <xsl:call-template name="getPatientStay"/>
            </div>
          </div>
        </xsl:if>
        <!-- END encounter element -->

        <!-- START fullfillment element -->
        <xsl:if test="//n1:ClinicalDocument/n1:inFulfillmentOf">
          <div class="patientContainer">
            <div class="collapseTrigger" onclick="toggleCollapseable(this);" id="IDEncounterContainer">
              <div class="patientTitle">
                <h1>
                  <b>
                    <xsl:text>Auftraggeber(in):</xsl:text>
                  </b>
                </h1>
              </div>
              <div class="patientShortInfo">
                <h1>
                  <p class="name">
                    <b>
                      <xsl:choose>
                        <xsl:when test="//n1:ClinicalDocument/n1:participant[@typeCode='REF']/n1:associatedEntity/n1:scopingOrganization/n1:name">
                          <xsl:call-template name="getName">
                            <xsl:with-param name="name" select="//n1:ClinicalDocument/n1:participant[@typeCode='REF']/n1:associatedEntity/n1:scopingOrganization/n1:name"/>
                          </xsl:call-template>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:text>nicht angegeben</xsl:text>
                        </xsl:otherwise>
                      </xsl:choose>
                    </b>
                  </p>
                </h1>
              </div>
              <xsl:call-template name="collapseTrigger"/>
              <div class="clearer"/>
            </div>
            <div class="collapsable">
              <xsl:call-template name="getReferrer"/>
            </div>
          </div>
        </xsl:if>
        <!-- END fullfillment element -->

    <!--
      Warn container
      displays urgent information like risk or alternative denial if the document is well structured with [!]
      if the document is not well structured, there may be such information [?]
    -->
        
    <xsl:variable name="isStructuredDoc">
      <xsl:choose>
        <xsl:when test="/n1:ClinicalDocument/n1:templateId/@root ='1.2.40.0.34.11.2.0.2' or /n1:ClinicalDocument/n1:templateId/@root ='1.2.40.0.34.11.2.0.3' or
                        /n1:ClinicalDocument/n1:templateId/@root ='1.2.40.0.34.11.3.0.2' or /n1:ClinicalDocument/n1:templateId/@root ='1.2.40.0.34.11.3.0.3' or
                        /n1:ClinicalDocument/n1:templateId/@root ='1.2.40.0.34.11.12.0.2' or /n1:ClinicalDocument/n1:templateId/@root ='1.2.40.0.34.11.12.0.3'">
          <xsl:value-of select="string(true())" />
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="string(false())" />
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

	<xsl:variable name="hasWarnings">
      <xsl:choose>
        <xsl:when test="(//*/n1:code/@code = '51898-5' and //*/n1:code/@codeSystem ='2.16.840.1.113883.6.1') or (//*/n1:code/@code = '48765-2' and //*/n1:code/@codeSystem ='2.16.840.1.113883.6.1')">
          <xsl:value-of select="string(true())" />
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="string(false())" />
        </xsl:otherwise>
      </xsl:choose>
	</xsl:variable>

	<xsl:variable name="isDischarge">
      <xsl:choose>
        <xsl:when test="/n1:ClinicalDocument/n1:templateId/@root ='1.2.40.0.34.11.2' or /n1:ClinicalDocument/n1:templateId/@root ='1.2.40.0.34.11.3'">
          <xsl:value-of select="string(true())" />
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="string(false())" />
        </xsl:otherwise>
      </xsl:choose>
	</xsl:variable>

    <xsl:choose>
      <xsl:when test="$hasWarnings='true'">
        <div class="warncontainer" id="IDWarnContainer">
          <div class="warncontainer_content">
            <xsl:for-each select="//*/n1:code[(@code='51898-5' or @code='48765-2') and @codeSystem ='2.16.840.1.113883.6.1']">
              <xsl:variable name="riskId">
                <xsl:value-of select="concat('#', @code, '-', ../../../n1:code/@code)"/>
              </xsl:variable>
              <p class="warning_icon">
                <span class="collapseLinks tooltipTrigger">

                  <a href="{$riskId}" class="warningIcon" style="padding-left: 20px">

                    <b>
                      <xsl:call-template name="getRiskTitle">
                        <xsl:with-param name="code" select="@code"/>
                      </xsl:call-template>
                    </b>
                    <xsl:text>: </xsl:text>
                    <xsl:value-of select="./../n1:text"/>
                    <span class="tooltip risktooltip">
                      <xsl:text>Gehe zum: Risiko</xsl:text>
                    </span>
                  </a>
                </span>
              </p>
            </xsl:for-each>
            <div style="clear: both;"></div>
          </div>
        </div>
      </xsl:when>
      <xsl:when test="$hasWarnings='false' and $isStructuredDoc='false' and $isDischarge='true'">
        <div class="warncontainer" id="IDWarnContainer">
          <div class="warncontainer_content">
            <p class="warning_icon">
              <span class="warningIcon" style="padding-left: 20px;">
                <xsl:text>Für dieses Dokument wurden keine automatischen Hinweistexte erzeugt. Wichtige Informationen über Allergien, Risiken, Patientenverfügungen etc. sind möglicherweise im Befundtext enthalten.</xsl:text>
              </span>
            </p>
            <div style="clear: both;"></div>
          </div>
        </div>
      </xsl:when>
    </xsl:choose>

    <!--
      BODY
    -->
    <div class="body_section" id="IDBody">
      <!-- javascript is disabled -->
      <noscript>
        <div style="padding: 1em 0 1em 0">
          <b>Aktive Inhalte (in lokalen Dateien) werden in Ihrem Browser nicht zugelassen. Bitte treffen Sie die entsprechenden Einstellungen für eine optimale Darstellung.</b>
        </div>
      </noscript>
      <xsl:apply-templates select="n1:component/n1:structuredBody|n1:component/n1:nonXMLBody"/>
      <br/>
      <br/>
    </div>
    <!-- END body section -->

          <!--
              FOOTER
          -->
        <xsl:call-template name="bottomline"/>
        <div class="clearer"></div>

        <hr />
        <div class="footer">
          <a href="http://www.elga.gv.at" target="_blank">
            <img class="footer_logo" alt="" src="data:image/png;base64,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" />
          </a>
          <p>ELGA - Meine elektronische Gesundheitsakte <a href="http://www.gesundheit.gv.at" target="_blank">www.gesundheit.gv.at</a></p>

          <xsl:call-template name="documentstate" />
        </div>
        <div id="backToTopContainer">
          <span class="collapseLinks tooltipTrigger" style="display: block; float: right;">
            <a class="backlink" href="#elgadocument">

              <span class="tooltip backlinktooltip">
                <span>nach oben</span>
              </span>
            </a>
          </span>
        </div>
        <div style="clear: both;"></div>


        <div id="infoButtonPopUp" class="modal">
          <div class="modal-content">
            <div class="modal-header">
              <b>Information</b>
              <span id="modalClose" class="modal-close">&#215;</span>
            </div>
            <div class="modal-body">
              <p>Sie werden nun zu einer Informationsseite am öffentlichen Gesundheitsportal Österreichs weitergeleitet. Dieser Link ist nicht Teil des unterzeichneten Befundes. Er wurde nachträglich automatisch zur Anzeige hinzugefügt.</p>
            </div>
            <div class="modal-footer">
              <a id="eHealthPortalLink" target="_blank" style="text-decoration: none;"><span class="modal-ok">OK</span></a>
            </div>
          </div>
        </div>

        </div>
      </div>
        <script type="text/javascript">
          <xsl:variable name="javascriptpopup">
            <![CDATA[

              var modal = document.getElementById("infoButtonPopUp");
              var link = document.getElementById("eHealthPortalLink");

              var infoButtons = getElementsByClass("infoButton");
              for(var i=0; i<infoButtons.length; i++) {
                infoButtons[i].onclick = function() {
                  modal.style.display = "block";
                  link.href = "https://www.gesundheit.gv.at/linkaufloesung/applikation-flow?quelle=GHP&flow=LO&leistung=LA-GP-LO-" + this.getAttribute("data-observationCode")
                }
              }
              var span = document.getElementById("modalClose");
              span.onclick = function() {
                  modal.style.display = "none";
              }

              window.onclick = function(event) {
                  if (event.target == modal) {
                      modal.style.display = "none";
                  }
              }

            ]]>
          </xsl:variable>

          <!-- Beginning of CDATA section -->
          <xsl:text disable-output-escaping="yes"><![CDATA[//<]]></xsl:text><xsl:text disable-output-escaping="yes">![CDATA[</xsl:text>

          <!-- original javascript -->
          <xsl:value-of select="$javascriptpopup" disable-output-escaping="yes" />

          <!-- End of CDATA section -->
          <xsl:text>//]]</xsl:text><xsl:text disable-output-escaping="yes"><![CDATA[>]]></xsl:text>


        </script>
      </body>

    </html>
  </xsl:template>

<!-- EMED START -->

<xsl:template name="emed">

  <xsl:call-template name="renderMedicationWarnContainer" />

  <xsl:if test="count(n1:entry/n1:supply) &gt;= 1">

    <h2 id="jumpToAbgegeben">Abgegebene Medikamente</h2>

    <xsl:variable name="tableId">abgegeben</xsl:variable>
    <xsl:variable name="rootId">1.2.40.0.34.11.8.2.3.1</xsl:variable>

    <table class="table" id="{$tableId}" cellpadding="0" cellspacing="0">

      <xsl:call-template name="renderEMedTableHeader">
        <xsl:with-param name="rootId" select="$rootId" />
        <xsl:with-param name="tableId" select="$tableId" />
      </xsl:call-template>

      <xsl:for-each select="n1:entry/n1:supply/n1:product/n1:manufacturedProduct/n1:manufacturedMaterial[generate-id() = generate-id(key('productNameSupply', n1:name/text()))]">
        <xsl:call-template name="renderMedTableSorted">
          <xsl:with-param name="uniqueMedicationName" select="n1:name/text()" />
          <xsl:with-param name="tableId" select="$tableId" />
          <xsl:with-param name="rootId" select="$rootId" />
          <xsl:with-param name="groupedPosition" select="position()" />
        </xsl:call-template>
      </xsl:for-each>
    </table>

  </xsl:if>

  <xsl:if test="count(n1:entry/n1:substanceAdministration) &gt;= 1">

    <h2 id="jumpToVerordnet">Verordnete Medikamente</h2>

    <xsl:variable name="tableId">verordnet</xsl:variable>
    <xsl:variable name="rootId">1.2.40.0.34.11.8.1.3.1</xsl:variable>

    <table class="table" id="{$tableId}" cellpadding="0" cellspacing="0">

      <xsl:call-template name="renderEMedTableHeader">
        <xsl:with-param name="rootId" select="$rootId" />
        <xsl:with-param name="tableId" select="$tableId" />
      </xsl:call-template>

      <xsl:for-each select="n1:entry/n1:substanceAdministration/n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial[generate-id() = generate-id(key('productNameSubstanceAdministration', n1:name/text()))]">
        <xsl:call-template name="renderMedTableSorted">
          <xsl:with-param name="uniqueMedicationName" select="n1:name/text()" />
          <xsl:with-param name="tableId" select="$tableId" />
          <xsl:with-param name="rootId" select="$rootId" />
          <xsl:with-param name="groupedPosition" select="position()" />
        </xsl:call-template>
      </xsl:for-each>
    </table>

  </xsl:if>

</xsl:template>

<xsl:template name="renderMedTableSorted">
  <xsl:param name="tableId" />
  <xsl:param name="rootId" />
  <xsl:param name="uniqueMedicationName" />
  <xsl:param name="groupedPosition" />

  <xsl:choose>
    <xsl:when test="$rootId='1.2.40.0.34.11.8.1.3.1'">
      <xsl:for-each select="//n1:entry/n1:substanceAdministration/n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial/n1:name[text()=$uniqueMedicationName]">
        <xsl:sort order="descending" select="./../../../../n1:author[1]/n1:time/@value" />
        <xsl:if test="position()=1">
          <xsl:call-template name="renderHeaderInner">
            <xsl:with-param name="rootId" select="$rootId" />
            <xsl:with-param name="tableId" select="$tableId" />
            <xsl:with-param name="currentNode" select="./../../../../../n1:substanceAdministration" />
            <xsl:with-param name="groupedPosition" select="$groupedPosition" />
          </xsl:call-template>
        </xsl:if>
      </xsl:for-each>
    </xsl:when>
    <xsl:otherwise>
      <xsl:for-each select="//n1:entry/n1:supply/n1:product/n1:manufacturedProduct/n1:manufacturedMaterial/n1:name[text()=$uniqueMedicationName]">
        <xsl:sort order="descending" select="./../../../../n1:author[2]/n1:time/@value" />
        <xsl:if test="position()=1">
          <xsl:call-template name="renderHeaderInner">
            <xsl:with-param name="rootId" select="$rootId" />
            <xsl:with-param name="tableId" select="$tableId" />
            <xsl:with-param name="currentNode" select="./../../../../../n1:supply" />
            <xsl:with-param name="groupedPosition" select="$groupedPosition" />
          </xsl:call-template>
        </xsl:if>
      </xsl:for-each>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:key name="productNameSupply" match="n1:entry/n1:supply/n1:product/n1:manufacturedProduct/n1:manufacturedMaterial" use="n1:name/text()" />
<xsl:key name="productNameSubstanceAdministration" match="n1:entry/n1:substanceAdministration/n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial" use="n1:name/text()" />

<xsl:template name="renderHeaderInner">
  <xsl:param name="rootId" />
  <xsl:param name="tableId" />
  <xsl:param name="currentNode" />
  <xsl:param name="groupedPosition" />

  <xsl:if test="$currentNode/n1:templateId/@root=$rootId">

    <xsl:variable name="uuidOriginal">
      <xsl:choose>
        <xsl:when test="$rootId='1.2.40.0.34.11.8.1.3.1'">
          <xsl:value-of select="$currentNode/n1:id[@root='1.2.40.0.10.1.4.3.4.2.2.1']/@extension"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$currentNode/n1:id[@root='1.2.40.0.10.1.4.3.4.2.3.1']/@extension"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <xsl:variable name="uuid">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$uuidOriginal" />
        <xsl:with-param name="replace" select="'_'" />
        <xsl:with-param name="by" select="''" />
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="bgClass">
      <xsl:choose>
        <xsl:when test="$groupedPosition mod 2 = 0">
          <xsl:text>bg_grey</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>bg_white</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <tr id="parent_{$uuid}" class="{$bgClass} borderBottom">
      <td id="parent_{$uuid}_name" colspan="2">
        <xsl:call-template name="getHeaderCellMedName">
          <xsl:with-param name="node" select="$currentNode" />
          <xsl:with-param name="rootId" select="$rootId" />
          <xsl:with-param name="uuidOriginal" select="$uuidOriginal" />
          <xsl:with-param name="showRepeatingMedicationIcon" select="string(true())" />
        </xsl:call-template>
      </td>
      <td class="dosage_cell">
        <xsl:call-template name="getHeaderCellDosage">
          <xsl:with-param name="node" select="$currentNode" />
        </xsl:call-template>
      </td>
      <td id="parent_{$uuid}_date" colspan="2">
        <xsl:call-template name="getHeaderCellDate">
          <xsl:with-param name="node" select="$currentNode" />
          <xsl:with-param name="rootId" select="$rootId" />
        </xsl:call-template>
      </td>
      <td style="text-align: right;">
        <xsl:if test="//n1:templateId[@root='1.2.40.0.34.11.8.3']">
          <span class="tooltipTrigger" style="display: block;">
            <a id="expandLvl1_{$uuid}" onclick="toggleDetail('{$tableId}','{$uuid}');return false;" class="expandArrow" style="display: block;" href="#" />
            <span class="tooltip">
              <span>ausklappen</span>
            </span>
          </span>
          <span class="tooltipTrigger" style="display: block;">
            <a id="collapseLvl1_{$uuid}" onclick="toggleDetail('{$tableId}','{$uuid}');return false;" class="collapseArrow" style="display: none;" href="#" />
            <span class="tooltip">
              <span>einklappen</span>
            </span>
          </span>
        </xsl:if>
      </td>
    </tr>
    <xsl:if test="//n1:templateId[@root='1.2.40.0.34.11.8.3']">
      <tr id="more_{$uuid}">
        <td colspan="6" id="{$uuid}" class="selected hidden">
          <xsl:call-template name="renderMedInner">
            <xsl:with-param name="node" select="$currentNode" />
            <xsl:with-param name="uuid" select="$uuid" />
            <xsl:with-param name="rootNode" select="$currentNode" />
            <xsl:with-param name="showMore" select="'true'" />
            <xsl:with-param name="rootId" select="$rootId" />
            <xsl:with-param name="tableClass"><xsl:text>table_inner bg_white</xsl:text></xsl:with-param>
            <xsl:with-param name="tableId" select="concat('parent_inner_', $uuid)" />
            <xsl:with-param name="uuidOriginal" select="$uuidOriginal" />
          </xsl:call-template>
        </td>
      </tr>
    </xsl:if>
  </xsl:if>

</xsl:template>

<xsl:template name="renderEMedTableHeader">
  <xsl:param name="rootId" />
  <xsl:param name="tableId" />

  <tr class="header_row borderBottom">
    <th width="25px">
      <span class="tooltipTrigger tableToolTip">
        <a id="{$tableId}_sort_name_up" onclick="sortTable('{$tableId}', 'name', 'up'); return false;" class="sortUpArrow" style="display: block" href="#" />
        <span class="tooltip" style="width: 120px;">
          <span>nach oben sortieren</span>
        </span>
      </span>

      <span class="tooltipTrigger tableToolTip">
        <a id="{$tableId}_sort_name_up_active" onclick="sortTable('{$tableId}', 'name', 'up'); return false;" class="sortUpArrowActive" style="display: none" href="#" />
        <span class="tooltip" style="width: 120px;">
          <span>nach oben sortieren</span>
        </span>
      </span>

      <span class="tooltipTrigger tableToolTip">
        <a id="{$tableId}_sort_name_down" onclick="sortTable('{$tableId}', 'name', 'down'); return false;" class="sortDownArrow" style="display: block" href="#" />
        <span class="tooltip" style="width: 120px;">
          <span>nach unten sortieren</span>
        </span>
      </span>

      <span class="tooltipTrigger tableToolTip">
        <a id="{$tableId}_sort_name_down_active" onclick="sortTable('{$tableId}', 'name', 'down'); return false;" class="sortDownArrowActive" style="display: none" href="#" />
        <span class="tooltip" style="width: 120px;">
          <span>nach unten sortieren</span>
        </span>
      </span>

    </th>
    <th width="250px" class="header_padding">
      Arzneimittel
    </th>
    <th width="415px" class="header_padding">Dosierung</th>

    <xsl:variable name="dateTitle">
      <xsl:choose>
        <xsl:when test="$rootId='1.2.40.0.34.11.8.1.3.1'">
          <xsl:text>verordnet am</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>abgeholt am</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <th width="25px">
      <span class="tooltipTrigger tableToolTip">
        <a id="{$tableId}_sort_date_up" onclick="sortTable('{$tableId}', 'date', 'up'); return false;" class="sortUpArrow" style="display: block" href="#" />
        <span class="tooltip" style="width: 120px;">
          <span>nach oben sortieren</span>
        </span>
      </span>

      <span class="tooltipTrigger tableToolTip">
        <a id="{$tableId}_sort_date_up_active" onclick="sortTable('{$tableId}', 'date', 'up'); return false;" class="sortUpArrowActive" style="display: none" href="#" />
        <span class="tooltip" style="width: 120px;">
          <span>nach oben sortieren</span>
        </span>
      </span>

      <span class="tooltipTrigger tableToolTip">
        <a id="{$tableId}_sort_date_down" onclick="sortTable('{$tableId}', 'date', 'down'); return false;" class="sortDownArrow" style="display: block" href="#" />
        <span class="tooltip" style="width: 120px;">
          <span>nach unten sortieren</span>
        </span>
      </span>

      <span class="tooltipTrigger tableToolTip">
        <a id="{$tableId}_sort_date_down_active" onclick="sortTable('{$tableId}', 'date', 'down'); return false;" class="sortDownArrowActive" style="display: none" href="#" />
        <span class="tooltip" style="width: 120px;">
          <span>nach unten sortieren</span>
        </span>
      </span>

    </th>
    <th width="100px" class="header_padding" style="border-right: none 0px;"><xsl:value-of select="$dateTitle" /></th>
    <th width="55px" />
  </tr>
</xsl:template>


<xsl:template name="renderMore">
  <xsl:param name="uuid" />
  <xsl:param name="node" />
  <xsl:param name="rootId" />
  <xsl:param name="uuidOriginal" />

  <xsl:choose>
    <xsl:when test="$rootId='1.2.40.0.34.11.8.2.3.1'">
      <xsl:call-template name="renderMoreInnerWrapper">
        <xsl:with-param name="uuid" select="$uuid" />
        <xsl:with-param name="rootId" select="$rootId" />
        <xsl:with-param name="uuidOriginal" select="$uuidOriginal" />
        <xsl:with-param name="lookupId" select="'1.2.40.0.10.1.4.3.4.2.3.1'" />
        <xsl:with-param name="rootNode" select="//n1:supply" />
        <xsl:with-param name="medName" select="$node/n1:product/n1:manufacturedProduct/n1:manufacturedMaterial/n1:name" />
      </xsl:call-template>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="renderMoreInnerWrapper">
        <xsl:with-param name="uuid" select="$uuid" />
        <xsl:with-param name="rootId" select="$rootId" />
        <xsl:with-param name="uuidOriginal" select="$uuidOriginal" />
        <xsl:with-param name="lookupId" select="'1.2.40.0.10.1.4.3.4.2.2.1'" />
        <xsl:with-param name="rootNode" select="//n1:substanceAdministration" />
        <xsl:with-param name="medName" select="$node/n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial/n1:name" />
      </xsl:call-template>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="renderMoreInnerWrapper">
  <xsl:param name="uuid" />
  <xsl:param name="rootId" />
  <xsl:param name="uuidOriginal" />
  <xsl:param name="lookupId" />
  <xsl:param name="rootNode" />
  <xsl:param name="medName" />

  <tr>
    <td colspan="5">
      <xsl:variable name="showMore">
        <xsl:for-each select="$rootNode">
          <xsl:if test="(n1:product/n1:manufacturedProduct/n1:manufacturedMaterial/n1:name=$medName or n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial/n1:name=$medName) and not(n1:id[@root=$lookupId]/@extension=$uuidOriginal)">true</xsl:if>
        </xsl:for-each>
      </xsl:variable>

      <xsl:if test="$showMore != ''">
        <span class="tooltipTrigger" style="display: block;">
          <a onclick="toggleMore('{$uuid}'); return false;" class="packagesCollapseShow" href="#" id="toggle_more_{$uuid}_show" style="display: block;"><span style="margin-left: 30px;">weitere Packungen</span></a>
          <span class="tooltip">
            <span>ausklappen</span>
          </span>
        </span>

        <span class="tooltipTrigger" style="display: block;">
          <a onclick="toggleMore('{$uuid}'); return false;" class="packagesCollapseHide" href="#" id="toggle_more_{$uuid}_hide" style="display: none;"><span style="margin-left: 30px;">weniger Packungen</span></a>
          <span class="tooltip">
            <span>einklappen</span>
          </span>
        </span>
      </xsl:if>
    </td>
  </tr>

  <xsl:choose>
    <xsl:when test="$rootId='1.2.40.0.34.11.8.2.3.1'">
      <xsl:for-each select="$rootNode">
        <xsl:sort order="descending" select="./n1:author[2]/n1:time/@value" />

        <xsl:if test="n1:product/n1:manufacturedProduct/n1:manufacturedMaterial/n1:name=$medName and not(n1:id[@root=$lookupId]/@extension=$uuidOriginal)">

          <xsl:variable name="node1" select="." />

          <xsl:call-template name="renderMoreInner">
            <xsl:with-param name="rootId" select="$rootId" />
            <xsl:with-param name="node1" select="$node1" />
            <xsl:with-param name="uuid" select="$uuid" />
            <xsl:with-param name="position" select="position()" />
            <xsl:with-param name="uuidOriginal" select="$uuidOriginal" />
          </xsl:call-template>

        </xsl:if>
      </xsl:for-each>
    </xsl:when>
    <xsl:otherwise>
      <xsl:for-each select="$rootNode">
        <xsl:sort order="descending" select="./n1:author[1]/n1:time/@value" />

        <xsl:if test="n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial/n1:name=$medName and not(n1:id[@root=$lookupId]/@extension=$uuidOriginal)">

          <xsl:variable name="node1" select="." />

          <xsl:call-template name="renderMoreInner">
            <xsl:with-param name="rootId" select="$rootId" />
            <xsl:with-param name="node1" select="$node1" />
            <xsl:with-param name="uuid" select="$uuid" />
            <xsl:with-param name="position" select="position()" />
            <xsl:with-param name="uuidOriginal" select="$uuidOriginal" />
          </xsl:call-template>

        </xsl:if>
      </xsl:for-each>
    </xsl:otherwise>
  </xsl:choose>

</xsl:template>

<xsl:template name="getPackageInfo">
<xsl:param name="node" />

<xsl:variable name="quantity" select="n1:quantity/@value" />
<xsl:variable name="value" select="$node/n1:manufacturedProduct/n1:manufacturedMaterial/ns2:asContent/ns2:containerPackagedMedicine/ns2:capacityQuantity/@value" />
<xsl:variable name="unit" select="$node/n1:manufacturedProduct/n1:manufacturedMaterial/ns2:asContent/ns2:containerPackagedMedicine/ns2:capacityQuantity/@unit" />

<xsl:if test="$quantity">
  <xsl:value-of select="$quantity" />
  <xsl:choose>
    <xsl:when test="$quantity=1">
      <xsl:text> Packung a </xsl:text>
    </xsl:when>
    <xsl:otherwise>
      <xsl:text> Packungen a </xsl:text>
    </xsl:otherwise>
  </xsl:choose>
</xsl:if>
<xsl:value-of select="$value" />
<xsl:text> </xsl:text>
<xsl:choose>
  <xsl:when test="not($unit)">
    <xsl:text>Einheiten</xsl:text>
  </xsl:when>
  <xsl:otherwise>
    <xsl:call-template name="getELGAMedikationMengenart">
      <xsl:with-param name="code" select="$unit" />
    </xsl:call-template>
  </xsl:otherwise>
</xsl:choose>
</xsl:template>

<xsl:template name="getMedName">
<xsl:param name="node" />
<xsl:param name="rootId" />

<xsl:variable name="isMagZubereitung">
  <xsl:call-template name="isMagZubereitung">
    <xsl:with-param name="node" select="$node" />
  </xsl:call-template>
</xsl:variable>

<xsl:if test="$isMagZubereitung='true'">
  <xsl:text>Magistrale Zubereitung: </xsl:text>
</xsl:if>

<xsl:choose>
  <xsl:when test="$rootId='1.2.40.0.34.11.8.1.3.1'">
    <xsl:value-of select="$node/n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial/n1:name" />
  </xsl:when>
  <xsl:otherwise>
    <xsl:value-of select="$node/n1:product/n1:manufacturedProduct/n1:manufacturedMaterial/n1:name" />
  </xsl:otherwise>
</xsl:choose>
</xsl:template>

<xsl:template name="getDosage">
  <xsl:param name="node" />

  <xsl:choose>
    <xsl:when test="$node/n1:templateId/@root='1.3.6.1.4.1.19376.1.5.3.1.4.7.1'">
      <xsl:call-template name="getNormalDosing">
        <xsl:with-param name="node" select="$node" />
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:templateId/@root='1.3.6.1.4.1.19376.1.5.3.1.4.7.1'">
      <xsl:call-template name="getNormalDosing">
        <xsl:with-param name="node" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']" />
        <xsl:with-param name="rootNode" select="$node" />
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="$node/n1:templateId/@root='1.3.6.1.4.1.19376.1.5.3.1.4.9'">
      <xsl:call-template name="getSplitDosing">
        <xsl:with-param name="node" select="$node" />
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:templateId/@root='1.3.6.1.4.1.19376.1.5.3.1.4.9'">
      <xsl:call-template name="getSplitDosing">
        <xsl:with-param name="node" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']" />
      </xsl:call-template>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="renderALTEINForHeader">
        <xsl:with-param name="node" select="$node" />
        <xsl:with-param name="rootNode" select="$node" />
      </xsl:call-template>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="getNormalDosing">
<xsl:param name="node" />
<xsl:param name="rootNode" select="''" />

<xsl:choose>
  <!-- check if "dosierungsvariante 1" or "dosierungsvariante 3" -->
  <xsl:when test="not($node/n1:effectiveTime/*/n1:period[@unit='wk'])">

    <xsl:choose>
      <xsl:when test="$node/n1:doseQuantity and $node/n1:effectiveTime[@xsi:type='PIVL_TS']">

        <!-- Dosierungsvariante 1 -->
        <xsl:call-template name="getDosageQuantity">
          <xsl:with-param name="dosage" select="$node/n1:doseQuantity" />
        </xsl:call-template>

        <xsl:call-template name="getELGAFrequency">
          <xsl:with-param name="code" select="$node/n1:effectiveTime[@xsi:type='PIVL_TS']/n1:period/@unit" />
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:choose>
          <xsl:when test="$node/n1:entryRelationship[@typeCode='SUBJ']/n1:act/n1:entryRelationship[@typeCode='SUBJ']/n1:act/n1:code/@code='ALTEIN'">
            <xsl:call-template name="getMedHint">
              <xsl:with-param name="node" select="$node" />
              <xsl:with-param name="filter">ALTEIN</xsl:with-param>
            </xsl:call-template>
          </xsl:when>
          <xsl:when test="$rootNode and $rootNode/n1:entryRelationship[@typeCode='SUBJ']/n1:act/n1:entryRelationship[@typeCode='SUBJ']/n1:act/n1:code/@code='ALTEIN'">
            <xsl:call-template name="getMedHint">
              <xsl:with-param name="node" select="$rootNode" />
              <xsl:with-param name="filter">ALTEIN</xsl:with-param>
            </xsl:call-template>
          </xsl:when>
          <xsl:otherwise>
            <xsl:call-template name="renderALTEINForHeader">
              <xsl:with-param name="node" select="$node" />
              <xsl:with-param name="rootNode" select="$rootNode" />
            </xsl:call-template>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:when>
  <xsl:otherwise>

    <!-- Dosierungsvariante 3 -->
    <xsl:for-each select="$node/n1:effectiveTime[@xsi:type='PIVL_TS' or @xsi:type='SXPR_TS']">

      <!-- direct call of position() in template doesn't work in ff -->
      <xsl:variable name="pos" select="position()" />

      <xsl:call-template name="getDosageQuantity">
        <xsl:with-param name="dosage" select="$node/n1:doseQuantity[$pos]" />
      </xsl:call-template>
      <xsl:text> </xsl:text>

      <xsl:choose>
        <xsl:when test="n1:comp">
          <xsl:call-template name="getELGAFrequency">
            <xsl:with-param name="code" select="n1:comp[1]/n1:period/@unit" />
          </xsl:call-template>

          <xsl:text> </xsl:text>

          <xsl:variable name="entryCount" select="count(n1:comp)" />
          <xsl:for-each select="n1:comp">
            <xsl:call-template name="getELGADay">
              <xsl:with-param name="code" select="n1:phase" />
            </xsl:call-template>

            <xsl:if test="position() &lt; $entryCount">
              <xsl:text>, </xsl:text>
            </xsl:if>

          </xsl:for-each>
        </xsl:when>
        <xsl:otherwise>
          <xsl:call-template name="getELGAFrequency">
            <xsl:with-param name="code" select="n1:period[1]/@unit" />
          </xsl:call-template>
          <xsl:text> </xsl:text>
          <xsl:call-template name="getELGADay">
            <xsl:with-param name="code" select="n1:phase" />
          </xsl:call-template>

        </xsl:otherwise>
      </xsl:choose>

      <br />

    </xsl:for-each>

  </xsl:otherwise>
</xsl:choose>


</xsl:template>

<xsl:template name="getSplitDosing">
  <xsl:param name="node" />

  <xsl:choose>
    <xsl:when test="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='EIVL_TS']">

      <!-- Dosierungsvariante 2 -->

      <xsl:variable name="showGroupDose">
        <xsl:call-template name="groupDoseUnitForTimeVariant2">
          <xsl:with-param name="node" select="$node" />
        </xsl:call-template>
      </xsl:variable>

      <table class="table_dosage" width="425px" cellpadding="0" cellspacing="0">
        <tbody>
          <tr>
            <td width="50px">
              <xsl:call-template name="getDoseQuantityForTimeVariant2">
                <xsl:with-param name="node" select="$node" />
                <xsl:with-param name="time">ACM</xsl:with-param>
              </xsl:call-template>
              <xsl:if test="$showGroupDose='0'">
                <xsl:text> </xsl:text>
                <xsl:call-template name="getDoseUnitForTimeVariant2">
                  <xsl:with-param name="node" select="$node" />
                  <xsl:with-param name="time">ACM</xsl:with-param>
                </xsl:call-template>
              </xsl:if>
            </td>
            <td width="50px">
              <xsl:call-template name="getDoseQuantityForTimeVariant2">
                <xsl:with-param name="node" select="$node" />
                <xsl:with-param name="time">ACD</xsl:with-param>
              </xsl:call-template>
              <xsl:if test="$showGroupDose='0'">
                <xsl:text> </xsl:text>
                <xsl:call-template name="getDoseUnitForTimeVariant2">
                  <xsl:with-param name="node" select="$node" />
                  <xsl:with-param name="time">ACD</xsl:with-param>
                </xsl:call-template>
              </xsl:if>
            </td>
            <td width="50px">
              <xsl:call-template name="getDoseQuantityForTimeVariant2">
                <xsl:with-param name="node" select="$node" />
                <xsl:with-param name="time">ACV</xsl:with-param>
              </xsl:call-template>
              <xsl:if test="$showGroupDose='0'">
                <xsl:text> </xsl:text>
                <xsl:call-template name="getDoseUnitForTimeVariant2">
                  <xsl:with-param name="node" select="$node" />
                  <xsl:with-param name="time">ACV</xsl:with-param>
                </xsl:call-template>
              </xsl:if>
            </td>
            <td width="50px">
              <xsl:call-template name="getDoseQuantityForTimeVariant2">
                <xsl:with-param name="node" select="$node" />
                <xsl:with-param name="time">HS</xsl:with-param>
              </xsl:call-template>
              <xsl:if test="$showGroupDose='0'">
                <xsl:text> </xsl:text>
                <xsl:call-template name="getDoseUnitForTimeVariant2">
                  <xsl:with-param name="node" select="$node" />
                  <xsl:with-param name="time">HS</xsl:with-param>
                </xsl:call-template>
              </xsl:if>
            </td>
            <td width="215px" style="padding-left: 10px; text-align: left; border: 0 none;">

              <xsl:if test="$showGroupDose='1'">

                <xsl:variable name="doseUnitACM" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='EIVL_TS']/n1:event[@code='ACM']/../../n1:doseQuantity/@unit"/>
                <xsl:variable name="doseUnitACD" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='EIVL_TS']/n1:event[@code='ACD']/../../n1:doseQuantity/@unit"/>
                <xsl:variable name="doseUnitACV" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='EIVL_TS']/n1:event[@code='ACV']/../../n1:doseQuantity/@unit"/>
                <xsl:variable name="doseUnitHS" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='EIVL_TS']/n1:event[@code='HS']/../../n1:doseQuantity/@unit"/>

                <xsl:choose>
                  <xsl:when test="$doseUnitACM">
                    <xsl:call-template name="getELGAMedikationMengenart">
                      <xsl:with-param name="code" select="$doseUnitACM" />
                    </xsl:call-template>
                    <xsl:text>, </xsl:text>
                  </xsl:when>
                  <xsl:when test="$doseUnitACD">
                    <xsl:call-template name="getELGAMedikationMengenart">
                      <xsl:with-param name="code" select="$doseUnitACD" />
                    </xsl:call-template>
                    <xsl:text>, </xsl:text>
                  </xsl:when>
                  <xsl:when test="$doseUnitACV">
                    <xsl:call-template name="getELGAMedikationMengenart">
                      <xsl:with-param name="code" select="$doseUnitACV" />
                    </xsl:call-template>
                    <xsl:text>, </xsl:text>
                  </xsl:when>
                  <xsl:when test="$doseUnitHS">
                    <xsl:call-template name="getELGAMedikationMengenart">
                      <xsl:with-param name="code" select="$doseUnitHS" />
                    </xsl:call-template>
                    <xsl:text>, </xsl:text>
                  </xsl:when>
                </xsl:choose>
              </xsl:if>

              <xsl:text>täglich</xsl:text>
            </td>
          </tr>
        </tbody>
      </table>
    </xsl:when>
    <xsl:otherwise>


      <xsl:variable name="showGroupDose">
        <xsl:call-template name="groupDoseUnitForTimeVariant4">
          <xsl:with-param name="node" select="$node" />
        </xsl:call-template>
      </xsl:variable>

      <!-- Dosierungsvariante 4 -->
      <table class="table_dosage" cellpadding="0" cellspacing="0">
        <tbody>
          <tr>
            <td width="50px">
              <xsl:call-template name="getDoseQuantityForTimeVariant4">
                <xsl:with-param name="node" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']" />
                <xsl:with-param name="time">ACM</xsl:with-param>
              </xsl:call-template>
              <xsl:if test="$showGroupDose='0'">
                <xsl:text> </xsl:text>
                <xsl:call-template name="getDoseUnitForTimeVariant4">
                  <xsl:with-param name="node" select="$node" />
                  <xsl:with-param name="time">ACM</xsl:with-param>
                </xsl:call-template>
              </xsl:if>
            </td>
            <td width="50px">
              <xsl:call-template name="getDoseQuantityForTimeVariant4">
                <xsl:with-param name="node" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']" />
                <xsl:with-param name="time">ACD</xsl:with-param>
              </xsl:call-template>
              <xsl:if test="$showGroupDose='0'">
                <xsl:text> </xsl:text>
                <xsl:call-template name="getDoseUnitForTimeVariant4">
                  <xsl:with-param name="node" select="$node" />
                  <xsl:with-param name="time">ACD</xsl:with-param>
                </xsl:call-template>
              </xsl:if>
            </td>
            <td width="50px">
              <xsl:call-template name="getDoseQuantityForTimeVariant4">
                <xsl:with-param name="node" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']" />
                <xsl:with-param name="time">ACV</xsl:with-param>
              </xsl:call-template>
              <xsl:if test="$showGroupDose='0'">
                <xsl:text> </xsl:text>
                <xsl:call-template name="getDoseUnitForTimeVariant4">
                  <xsl:with-param name="node" select="$node" />
                  <xsl:with-param name="time">ACV</xsl:with-param>
                </xsl:call-template>
              </xsl:if>
            </td>
            <td width="50px">
              <xsl:call-template name="getDoseQuantityForTimeVariant4">
                <xsl:with-param name="node" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']" />
                <xsl:with-param name="time">HS</xsl:with-param>
              </xsl:call-template>
              <xsl:if test="$showGroupDose='0'">
                <xsl:text> </xsl:text>
                <xsl:call-template name="getDoseUnitForTimeVariant4">
                  <xsl:with-param name="node" select="$node" />
                  <xsl:with-param name="time">HS</xsl:with-param>
                </xsl:call-template>
              </xsl:if>
            </td>
            <td width="215px" style="padding-left: 10px; text-align: left; border: 0 none;">

              <xsl:if test="$showGroupDose='1'">

                <xsl:variable name="doseUnitACM" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='SXPR_TS']/n1:comp/n1:event[@code='ACM']/../../../n1:doseQuantity/@unit"/>
                <xsl:variable name="doseUnitACD" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='SXPR_TS']/n1:comp/n1:event[@code='ACD']/../../../n1:doseQuantity/@unit"/>
                <xsl:variable name="doseUnitACV" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='SXPR_TS']/n1:comp/n1:event[@code='ACV']/../../../n1:doseQuantity/@unit"/>
                <xsl:variable name="doseUnitHS" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='SXPR_TS']/n1:comp/n1:event[@code='HS']/../../../n1:doseQuantity/@unit"/>

                <xsl:choose>
                  <xsl:when test="$doseUnitACM">
                    <xsl:call-template name="getELGAMedikationMengenart">
                      <xsl:with-param name="code" select="$doseUnitACM" />
                    </xsl:call-template>
                    <xsl:text>, </xsl:text>
                  </xsl:when>
                  <xsl:when test="$doseUnitACD">
                    <xsl:call-template name="getELGAMedikationMengenart">
                      <xsl:with-param name="code" select="$doseUnitACD" />
                    </xsl:call-template>
                    <xsl:text>, </xsl:text>
                  </xsl:when>
                  <xsl:when test="$doseUnitACV">
                    <xsl:call-template name="getELGAMedikationMengenart">
                      <xsl:with-param name="code" select="$doseUnitACV" />
                    </xsl:call-template>
                    <xsl:text>, </xsl:text>
                  </xsl:when>
                  <xsl:when test="$doseUnitHS">
                    <xsl:call-template name="getELGAMedikationMengenart">
                      <xsl:with-param name="code" select="$doseUnitHS" />
                    </xsl:call-template>
                    <xsl:text>, </xsl:text>
                  </xsl:when>
                </xsl:choose>
              </xsl:if>

              <xsl:call-template name="getELGAFrequency">
                <xsl:with-param name="code" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='SXPR_TS']/n1:comp[@xsi:type='PIVL_TS']/n1:period/@unit" />
              </xsl:call-template>
              <xsl:text>, </xsl:text>

              <xsl:for-each select="$node/n1:entryRelationship[@typeCode='COMP'][1]/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='SXPR_TS']/n1:comp[@xsi:type='PIVL_TS']">

                <xsl:if test="count($node/n1:entryRelationship[@typeCode='COMP'][1]/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='SXPR_TS']/n1:comp[@xsi:type='PIVL_TS']/n1:phase) &gt; 1 and position() &gt; 1">
                  <xsl:text>, </xsl:text>
                </xsl:if>

                <xsl:call-template name="getELGADay">
                  <xsl:with-param name="code" select="n1:phase" />
                </xsl:call-template>

              </xsl:for-each>

            </td>
          </tr>
        </tbody>
      </table>

    </xsl:otherwise>
  </xsl:choose>
</xsl:template>


<xsl:template name="getDoseQuantityForTimeVariant4">
  <xsl:param name="node" />
  <xsl:param name="time" />

  <xsl:variable name="quantity" select="$node/n1:effectiveTime[@xsi:type='SXPR_TS']/n1:comp/n1:event[@code=$time]/../../../n1:doseQuantity/@value" />

  <xsl:choose>
    <xsl:when test="$quantity">
      <xsl:value-of select="$quantity" />
    </xsl:when>
    <xsl:otherwise>
      <xsl:text>-</xsl:text>
    </xsl:otherwise>
  </xsl:choose>

</xsl:template>

<xsl:template name="getDoseQuantityForTimeVariant2">
  <xsl:param name="node" />
  <xsl:param name="time" />

  <xsl:variable name="quantity" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='EIVL_TS']/n1:event[@code=$time]/../../n1:doseQuantity" />

  <xsl:choose>
    <xsl:when test="$quantity/@value">
      <xsl:value-of select="$quantity/@value" />
    </xsl:when>
    <xsl:otherwise>
      <xsl:text>-</xsl:text>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="getDoseUnitForTimeVariant2">
  <xsl:param name="node" />
  <xsl:param name="time" />

  <xsl:if test="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='EIVL_TS']/n1:event[@code=$time]/../../n1:doseQuantity/@unit">
    <xsl:call-template name="getELGAMedikationMengenart">
      <xsl:with-param name="code" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='EIVL_TS']/n1:event[@code=$time]/../../n1:doseQuantity/@unit" />
    </xsl:call-template>
  </xsl:if>

</xsl:template>

<xsl:template name="getDoseUnitForTimeVariant4">
  <xsl:param name="node" />
  <xsl:param name="time" />

  <xsl:if test="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='SXPR_TS']/n1:comp/n1:event[@code=$time]/../../../n1:doseQuantity/@unit">
    <xsl:call-template name="getELGAMedikationMengenart">
      <xsl:with-param name="code" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='SXPR_TS']/n1:comp/n1:event[@code=$time]/../../../n1:doseQuantity/@unit" />
    </xsl:call-template>
  </xsl:if>

</xsl:template>

<xsl:template name="groupDoseUnitForTimeVariant2">
  <xsl:param name="node" />

  <xsl:variable name="doseUnitACM" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='EIVL_TS']/n1:event[@code='ACM']/../../n1:doseQuantity/@unit"/>
  <xsl:variable name="doseUnitACD" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='EIVL_TS']/n1:event[@code='ACD']/../../n1:doseQuantity/@unit"/>
  <xsl:variable name="doseUnitACV" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='EIVL_TS']/n1:event[@code='ACV']/../../n1:doseQuantity/@unit"/>
  <xsl:variable name="doseUnitHS" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='EIVL_TS']/n1:event[@code='HS']/../../n1:doseQuantity/@unit"/>

  <xsl:choose>
    <xsl:when test="($doseUnitACM and $doseUnitACD and $doseUnitACV and $doseUnitHS) and ((string($doseUnitACM) = string($doseUnitACD)) and (string($doseUnitACV) = string($doseUnitHS)) and (string($doseUnitACM) = string($doseUnitHS)))">1</xsl:when>
    <xsl:when test="($doseUnitACM and $doseUnitACD and $doseUnitACV and not($doseUnitHS)) and ((string($doseUnitACM) = string($doseUnitACD)) and (string($doseUnitACV) = string($doseUnitACM)))">1</xsl:when>
    <xsl:when test="($doseUnitACM and $doseUnitACD and not($doseUnitACV) and $doseUnitHS) and ((string($doseUnitACM) = string($doseUnitACD)) and (string($doseUnitHS) = string($doseUnitACM)))">1</xsl:when>
    <xsl:when test="($doseUnitACM and $doseUnitACD and not($doseUnitACV) and not($doseUnitHS)) and (string($doseUnitACM) = string($doseUnitACD))">1</xsl:when>

    <xsl:when test="($doseUnitACM and not($doseUnitACD) and $doseUnitACV and $doseUnitHS) and ((string($doseUnitACM) = string($doseUnitACV)) and (string($doseUnitACM) = string($doseUnitHS)))">1</xsl:when>
    <xsl:when test="($doseUnitACM and not($doseUnitACD) and $doseUnitACV and not($doseUnitHS)) and (string($doseUnitACM) = string($doseUnitACV))">1</xsl:when>
    <xsl:when test="($doseUnitACM and not($doseUnitACD) and not($doseUnitACV) and $doseUnitHS) and (string($doseUnitACM) = string($doseUnitHS))">1</xsl:when>
    <xsl:when test="($doseUnitACM and not($doseUnitACD) and not($doseUnitACV) and not($doseUnitHS))">1</xsl:when>

    <xsl:when test="(not($doseUnitACM) and $doseUnitACD and $doseUnitACV and $doseUnitHS) and ((string($doseUnitACD) = string($doseUnitACV)) and (string($doseUnitACD) = string($doseUnitHS)))">1</xsl:when>
    <xsl:when test="(not($doseUnitACM) and $doseUnitACD and $doseUnitACV and not($doseUnitHS)) and (string($doseUnitACD) = string($doseUnitACV))">1</xsl:when>
    <xsl:when test="(not($doseUnitACM) and $doseUnitACD and not($doseUnitACV) and $doseUnitHS) and (string($doseUnitACD) = string($doseUnitHS))">1</xsl:when>
    <xsl:when test="(not($doseUnitACM) and $doseUnitACD and not($doseUnitACV) and not($doseUnitHS))">1</xsl:when>

    <xsl:when test="(not($doseUnitACM) and not($doseUnitACD) and $doseUnitACV and $doseUnitHS) and (string($doseUnitACV) = string($doseUnitHS))">1</xsl:when>
    <xsl:when test="(not($doseUnitACM) and not($doseUnitACD) and $doseUnitACV and not($doseUnitHS))">1</xsl:when>
    <xsl:when test="(not($doseUnitACM) and not($doseUnitACD) and not($doseUnitACV) and $doseUnitHS)">1</xsl:when>
    <!-- makes no sense... -->
    <!--<xsl:when test="(not($doseUnitACM) and not($doseUnitACD) and not($doseUnitACV) and not($doseUnitHS)) and (...)">1</xsl:when>-->
    <xsl:otherwise>0</xsl:otherwise>
  </xsl:choose>

</xsl:template>

<xsl:template name="groupDoseUnitForTimeVariant4">
  <xsl:param name="node" />

  <xsl:variable name="firstDoseUnit" select="$node/n1:entryRelationship[@typeCode='COMP'][1]/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='SXPR_TS']/n1:comp/n1:event/../../../n1:doseQuantity/@unit" />
  <xsl:variable name="cntAllDoseUnitEntries" select="count($node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='SXPR_TS']/n1:comp/n1:event/../../../n1:doseQuantity/@unit)" />
  <xsl:variable name="cntAllDoseUnitEntriesEqualsFirstDoseUnit" select="count($node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']/n1:effectiveTime[@xsi:type='SXPR_TS']/n1:comp/n1:event/../../../n1:doseQuantity[@unit=$firstDoseUnit])" />

  <xsl:choose>
    <xsl:when test="$cntAllDoseUnitEntries=$cntAllDoseUnitEntriesEqualsFirstDoseUnit">1</xsl:when>
    <xsl:otherwise>0</xsl:otherwise>
  </xsl:choose>

</xsl:template>


<xsl:template name="getDosageQuantity">
  <xsl:param name="dosage" />

  <xsl:value-of select="$dosage/@value" />

  <xsl:text> </xsl:text>

  <xsl:choose>
    <xsl:when test="$dosage/@unit and $dosage/@unit != '1'">
      <xsl:call-template name="getUnit">
        <xsl:with-param name="unit" select="$dosage/@unit" />
      </xsl:call-template>
      <xsl:text> </xsl:text>
    </xsl:when>
    <xsl:otherwise>
      <xsl:choose>
        <xsl:when test="$dosage/@value=1">
          <xsl:text> Einheit </xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text> Einheiten </xsl:text>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:otherwise>
</xsl:choose>

</xsl:template>

<xsl:template name="getUnit">
  <xsl:param name="unit" />

  <xsl:variable name="cleanCurlyBracketBefore">
    <xsl:call-template name="string-replace-all">
      <xsl:with-param name="text" select="$unit" />
      <xsl:with-param name="replace">{</xsl:with-param>
      <xsl:with-param name="by"></xsl:with-param>
    </xsl:call-template>
  </xsl:variable>

  <xsl:call-template name="string-replace-all">
    <xsl:with-param name="text" select="$cleanCurlyBracketBefore" />
    <xsl:with-param name="replace">}</xsl:with-param>
    <xsl:with-param name="by"></xsl:with-param>
  </xsl:call-template>

</xsl:template>

<xsl:template name="getPrescribedDate">
  <xsl:param name="node" />

  <xsl:choose>
    <xsl:when test="$node/n1:author[1]/n1:time and not($node/n1:author[1]/n1:time/@nullFlavor)">
      <xsl:call-template name="formatDate">
        <xsl:with-param name="date" select="$node/n1:author[1]/n1:time"/>
        <xsl:with-param name="date_shortmode">true</xsl:with-param>
      </xsl:call-template>
    </xsl:when>
    <xsl:otherwise>
      <xsl:text>-</xsl:text>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="getPerson">
  <xsl:param name="node" />
  <xsl:param name="overrideEmptyAuthorSpeciality" />

  <xsl:choose>
    <xsl:when test="$node/n1:assignedAuthor">
      <p class="address">
        <xsl:call-template name="getName">
          <xsl:with-param name="name" select="$node/n1:assignedAuthor/n1:assignedPerson/n1:name"/>
        </xsl:call-template>
      </p>
      <p class="address">
        <xsl:value-of select="$node/n1:assignedAuthor/n1:representedOrganization/n1:name" />
        <br />
        <xsl:choose>
          <xsl:when test="$overrideEmptyAuthorSpeciality = true()">
            <xsl:choose>
              <xsl:when test="$node/n1:assignedAuthor/n1:code/@code">
                <xsl:call-template name="getELGAAuthorSpeciality">
                  <xsl:with-param name="code" select="$node/n1:assignedAuthor/n1:code/@code"/>
                </xsl:call-template>
              </xsl:when>
              <xsl:otherwise>-</xsl:otherwise>
            </xsl:choose>
          </xsl:when>
          <xsl:otherwise>
            <xsl:call-template name="getELGAAuthorSpeciality">
              <xsl:with-param name="code" select="$node/n1:assignedAuthor/n1:code/@code"/>
            </xsl:call-template>
          </xsl:otherwise>
        </xsl:choose>
      </p>
      <p class="address">
        <xsl:apply-templates select="$node/n1:assignedAuthor/n1:representedOrganization/n1:addr" />
      </p>
    </xsl:when>
    <xsl:otherwise>
      <p class="address">
        <xsl:text>-</xsl:text>
      </p>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="getGDAID">
<xsl:param name="node" />

GDA-ID:
<xsl:choose>
  <xsl:when test="$node/n1:assignedAuthor/n1:representedOrganization/n1:id[@assigningAuthorityName='GDA-Index']/@root">
    <xsl:value-of select="$node/n1:assignedAuthor/n1:representedOrganization/n1:id[@assigningAuthorityName='GDA-Index']/@root" />
  </xsl:when>
  <xsl:when test="$node/n1:assignedAuthor/n1:representedOrganization/n1:id[@assigningAuthorityName='GDA Index']/@root">
    <xsl:value-of select="$node/n1:assignedAuthor/n1:representedOrganization/n1:id[@assigningAuthorityName='GDA Index']/@root" />
  </xsl:when>
  <xsl:otherwise>
    <xsl:text>-</xsl:text>
  </xsl:otherwise>
</xsl:choose>
</xsl:template>

<xsl:template name="getSuppliedDate">
<xsl:param name="node" />

<xsl:call-template name="formatDate">
  <xsl:with-param name="date" select="$node/n1:author[2]/n1:time"/>
  <xsl:with-param name="date_shortmode">true</xsl:with-param>
</xsl:call-template>

</xsl:template>

<xsl:template name="getMedDetails">
<xsl:param name="node" />

<xsl:variable name="ingredientLine">
  <xsl:variable name="ingredientCount">
    <xsl:value-of select="count($node/n1:manufacturedProduct/n1:manufacturedMaterial/ns2:ingredient/ns2:ingredient/ns2:code[@codeSystem='1.2.40.0.34.5.156'])" />
  </xsl:variable>

  <xsl:if test="$ingredientCount &gt; 0">

    <xsl:choose>
      <xsl:when test="$ingredientCount &gt; 1">
        Wirkstoffe:
      </xsl:when>
      <xsl:otherwise>
        Wirkstoff:
      </xsl:otherwise>
    </xsl:choose>

    <xsl:for-each select="$node/n1:manufacturedProduct/n1:manufacturedMaterial/ns2:ingredient/ns2:ingredient/ns2:code[@codeSystem='1.2.40.0.34.5.156']">

      <xsl:value-of select="../ns2:name" />

      <xsl:if test="position() &lt; $ingredientCount">
        <xsl:text>, </xsl:text>
      </xsl:if>

    </xsl:for-each>
  </xsl:if>
</xsl:variable>

<xsl:variable name="atcLine">
  <xsl:variable name="atcCount">
    <xsl:value-of select="count($node/n1:manufacturedProduct/n1:manufacturedMaterial/ns2:ingredient/ns2:ingredient/ns2:code[@codeSystem='2.16.840.1.113883.6.73'])" />
  </xsl:variable>

  <xsl:if test="$atcCount &gt; 0">
    <xsl:choose>
      <xsl:when test="$atcCount &gt; 1">
        ATC-Klassifikation:
      </xsl:when>
      <xsl:otherwise>
        ATC-Klassifikationen:
      </xsl:otherwise>
    </xsl:choose>

    <xsl:for-each select="$node/n1:manufacturedProduct/n1:manufacturedMaterial/ns2:ingredient/ns2:ingredient/ns2:code[@codeSystem='2.16.840.1.113883.6.73']">
      <xsl:value-of select="../ns2:name" />
      <xsl:text> (</xsl:text>
      <xsl:value-of select="../ns2:code/@code" />
      <xsl:text>)</xsl:text>

      <xsl:if test="position() &lt; $atcCount">
        <xsl:text>, </xsl:text>
      </xsl:if>

    </xsl:for-each>
  </xsl:if>
</xsl:variable>

<xsl:variable name="pznLine">
  <xsl:value-of select="$node/n1:manufacturedProduct/n1:manufacturedMaterial/n1:code/@code" />
</xsl:variable>

<xsl:variable name="idLine">
  <xsl:choose>
    <xsl:when test="$node/../n1:id[@root='1.2.40.0.10.1.4.3.4.2.3']">
      <xsl:text>Abgabe-ID: </xsl:text>
      <xsl:value-of select="$node/../n1:id[@root='1.2.40.0.10.1.4.3.4.2.3']/@extension" />
    </xsl:when>
    <xsl:otherwise>
      <xsl:text>Verordnungs-ID: </xsl:text>
      <xsl:value-of select="$node/../n1:id[@root='1.2.40.0.10.1.4.3.4.2.2']/@extension" />
    </xsl:otherwise>
  </xsl:choose>
  <br />
</xsl:variable>

<xsl:variable name="magZuLine">
  <xsl:variable name="isMagZu">
    <xsl:call-template name="isMagZubereitung">
      <xsl:with-param name="node" select="$node/.." />
    </xsl:call-template>
  </xsl:variable>

  <xsl:if test="$isMagZu='true'">
    <xsl:call-template name="getMedHint">
      <xsl:with-param name="node" select="$node/.." />
      <xsl:with-param name="filter">MAGZUB</xsl:with-param>
    </xsl:call-template>
  </xsl:if>
</xsl:variable>

<xsl:variable name="therapieLine">
  <xsl:call-template name="getELGAMedikationTherapieArt">
    <xsl:with-param name="code" select="$node/../n1:entryRelationship[@typeCode='COMP']/n1:act/n1:code/@code" />
  </xsl:call-template>
</xsl:variable>

<xsl:variable name="typeLine">
  <xsl:if test="$node/n1:manufacturedProduct/n1:manufacturedMaterial/ns2:formCode/@displayName">
    <xsl:value-of select="$node/n1:manufacturedProduct/n1:manufacturedMaterial/ns2:formCode/@displayName" />
  </xsl:if>
</xsl:variable>

<p>
  <xsl:if test="$ingredientLine != ''">
    <xsl:copy-of select="$ingredientLine" />
    <br />
  </xsl:if>

  <xsl:if test="$atcLine != ''">
    <xsl:copy-of select="$atcLine" />
    <br />
  </xsl:if>

  <xsl:if test="$pznLine != ''">
    Pharmazentralnummer: <xsl:copy-of select="$pznLine" />
    <br />
  </xsl:if>

  <xsl:copy-of select="$idLine" />

  <xsl:if test="$magZuLine != ''">
    <xsl:copy-of select="$magZuLine" />
    <br />
  </xsl:if>

  <xsl:if test="$therapieLine != 'unbekannt'">
    Therapieart: <xsl:copy-of select="$therapieLine" />
    <br />
  </xsl:if>

  <xsl:if test="$typeLine != ''">
    Darreichungsform: <xsl:copy-of select="$typeLine" />
    <br />
  </xsl:if>

</p>

</xsl:template>

<xsl:template name="renderALTEINForHeader">
<xsl:param name="node" />
<xsl:param name="rootNode" />

<xsl:choose>
  <xsl:when test="$node/n1:entryRelationship[@typeCode='SUBJ']/n1:act/n1:entryRelationship[@typeCode='SUBJ']/n1:act/n1:code/@code='ALTEIN'">
    <xsl:call-template name="getMedHint">
      <xsl:with-param name="node" select="$node" />
      <xsl:with-param name="filter">ALTEIN</xsl:with-param>
    </xsl:call-template>
  </xsl:when>
  <xsl:when test="$rootNode and $rootNode/n1:entryRelationship[@typeCode='SUBJ']/n1:act/n1:entryRelationship[@typeCode='SUBJ']/n1:act/n1:code/@code='ALTEIN'">
    <xsl:call-template name="getMedHint">
      <xsl:with-param name="node" select="$rootNode" />
      <xsl:with-param name="filter">ALTEIN</xsl:with-param>
    </xsl:call-template>
  </xsl:when>
  <xsl:otherwise>
    nicht angegeben
  </xsl:otherwise>
</xsl:choose>
</xsl:template>

<xsl:template name="getMedHint">
<xsl:param name="node" />
<xsl:param name="filter" />

<!-- title -->
<xsl:if test="$node/n1:entryRelationship[@typeCode='SUBJ']/n1:act/n1:entryRelationship[@typeCode='SUBJ']/n1:act/n1:code/@code=$filter">
  <xsl:choose>
    <xsl:when test="$filter='MAGZUB'"><xsl:text>Ergänzende Informationen zur magistralen Zubereitung: </xsl:text></xsl:when>
    <xsl:when test="$filter='ERGINFO'"><xsl:text>Ergänzende Information: </xsl:text></xsl:when>
    <xsl:when test="$filter='ZINFO'"><xsl:text>Zusatzinformation Patient: </xsl:text></xsl:when>
    <xsl:when test="$filter='ARZNEIINFO'"></xsl:when>
    <xsl:when test="$filter='ALTEIN'"><xsl:text>Alternative Einnahme: </xsl:text></xsl:when>
    <xsl:otherwise><xsl:text>Unbekannter Filter (</xsl:text><xsl:value-of select='$filter' /><xsl:text>): </xsl:text></xsl:otherwise>
  </xsl:choose>
</xsl:if>

<xsl:for-each select="$node/n1:entryRelationship[@typeCode='SUBJ']/n1:act/n1:entryRelationship[@typeCode='SUBJ']/n1:act">

  <xsl:if test="n1:code/@code=$filter">

    <xsl:variable name="refId">
      <xsl:value-of select="n1:text/n1:reference/@value" />
    </xsl:variable>

    <xsl:value-of select="//n1:content[@ID=substring($refId, 2)]" />
    <br />
  </xsl:if>
</xsl:for-each>
</xsl:template>

<xsl:template name="getMedTaking">
<xsl:param name="node" />
<xsl:param name="rootNode" />

<xsl:variable name="startLine">
  <xsl:call-template name="formatMedTime">
    <xsl:with-param name="timeNode" select="$node/n1:effectiveTime/n1:low" />
  </xsl:call-template>
</xsl:variable>

<xsl:variable name="endLine">
  <xsl:call-template name="formatMedTime">
    <xsl:with-param name="timeNode" select="$node/n1:effectiveTime/n1:high" />
  </xsl:call-template>
</xsl:variable>

<xsl:variable name="durationLine">
  <xsl:call-template name="formatMedDuration">
    <xsl:with-param name="durationNode" select="$node/n1:effectiveTime/n1:width" />
  </xsl:call-template>
</xsl:variable>

<xsl:variable name="typeLine">
  <xsl:choose>
    <xsl:when test="$node/n1:routeCode/@displayName">
      <xsl:value-of select="$node/n1:routeCode/@displayName" />
    </xsl:when>
    <xsl:when test="$rootNode/n1:entryRelationship[@typeCode='SUBJ']/n1:act/n1:entryRelationship[@typeCode='SUBJ']/n1:act/n1:code/@code='ARZNEIINFO'">
      <xsl:call-template name="getMedHint">
        <xsl:with-param name="node" select="." />
        <xsl:with-param name="filter">ARZNEIINFO</xsl:with-param>
      </xsl:call-template>
    </xsl:when>
    <xsl:otherwise>Siehe Hinweise</xsl:otherwise>
  </xsl:choose>
</xsl:variable>

<xsl:if test="$startLine != '' or $endLine != '' or $durationLine != '' or $typeLine != ''">
  <p>
    <xsl:if test="$startLine != ''">
      Einnahmestart: <xsl:value-of select="$startLine" />
      <br />
    </xsl:if>

    <xsl:if test="$endLine != ''">
      Einnahmeende: <xsl:value-of select="$endLine" />
      <br />
    </xsl:if>

    <xsl:if test="$durationLine != ''">
      Einnahmedauer: <xsl:value-of select="$durationLine" />
      <br />
    </xsl:if>

    <xsl:if test="$typeLine != ''">
      Art der Anwendung: <xsl:value-of select="$typeLine" />
      <br />
    </xsl:if>
  </p>
</xsl:if>



</xsl:template>

<xsl:template name="formatMedTime">
<xsl:param name="timeNode" />

<xsl:if test="$timeNode/@value">
  <xsl:call-template name="formatDate">
    <xsl:with-param name="date" select="$timeNode"/>
    <xsl:with-param name="date_shortmode">false</xsl:with-param>
  </xsl:call-template>
</xsl:if>

</xsl:template>

<xsl:template name="formatMedDuration">
<xsl:param name="durationNode" />

<xsl:if test="$durationNode/@value and $durationNode/@unit">
  <xsl:value-of select="$durationNode/@value" />
  <xsl:text> </xsl:text>
  <xsl:call-template name="getELGAFrequencyNoun">
    <xsl:with-param name="code" select="$durationNode/@unit" />
  </xsl:call-template>
</xsl:if>

</xsl:template>

<xsl:template name="getELGADay">
<xsl:param name="code" />

<xsl:variable name="dayAsCode">
  <xsl:call-template name="getDayFromDate">
    <xsl:with-param name="date" select="$code/@value" />
  </xsl:call-template>
</xsl:variable>

<xsl:choose>
  <xsl:when test="$dayAsCode=0">So</xsl:when>
  <xsl:when test="$dayAsCode=1">Mo</xsl:when>
  <xsl:when test="$dayAsCode=2">Di</xsl:when>
  <xsl:when test="$dayAsCode=3">Mi</xsl:when>
  <xsl:when test="$dayAsCode=4">Do</xsl:when>
  <xsl:when test="$dayAsCode=5">Fr</xsl:when>
  <xsl:when test="$dayAsCode=6">Sa</xsl:when>
  <xsl:otherwise>kein Wochentag angegeben</xsl:otherwise>
</xsl:choose>

</xsl:template>

        <!-- Source https://www.data2type.de/xml-xslt-xslfo/xslt/xslt-kochbuch/datums-und-zeitangaben/wochentag-berechnen/ -->
<xsl:template name="getDayFromDate">
<xsl:param name="date"/>
<xsl:param name="year" select="substring($date, 1, 4)"/>
<xsl:param name="month" select="substring($date, 5, 2)"/>
<xsl:param name="day" select="substring($date, 7, 2)"/>
<xsl:variable name="a" select="floor((14 - $month) div 12)"/>
<xsl:variable name="y" select="$year - $a"/>
<xsl:variable name="m" select="$month + 12 * $a - 2"/>
<xsl:value-of select="($day + $y + floor($y div 4) - floor($y div 100) + floor($y div 400) + floor((31 * $m) div 12)) mod 7"/>
</xsl:template>

<xsl:template name="getELGAFrequency">
<xsl:param name="code" />

<xsl:choose>
  <xsl:when test="$code='d'">
    <xsl:text>täglich</xsl:text>
  </xsl:when>
  <xsl:when test="$code='wk'">
    <xsl:text>wöchentlich</xsl:text>
  </xsl:when>
  <xsl:when test="$code='mo'">
    <xsl:text>monatlich</xsl:text>
  </xsl:when>
  <xsl:otherwise>
    <xsl:text>unbekannte ELGA Medikation Frequenz (</xsl:text>
    <xsl:value-of select="$code" />
    <xsl:text>)</xsl:text>
  </xsl:otherwise>
</xsl:choose>

</xsl:template>

<xsl:template name="getELGAFrequencyNoun">
<xsl:param name="code" />

<xsl:choose>
  <xsl:when test="$code='d'">
    <xsl:text>Tage</xsl:text>
  </xsl:when>
  <xsl:when test="$code='wk'">
    <xsl:text>Wochen</xsl:text>
  </xsl:when>
  <xsl:when test="$code='mo'">
    <xsl:text>Monate</xsl:text>
  </xsl:when>
  <xsl:otherwise>
    <xsl:text>unbekannte ELGA Medikation Frequenz (</xsl:text>
    <xsl:value-of select="$code" />
    <xsl:text>)</xsl:text>
  </xsl:otherwise>
</xsl:choose>

</xsl:template>



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getELGAMedikationMengenart">
        <xsl:param name="code" />
        
        <xsl:choose>
            <xsl:when test="$code='%'">%</xsl:when>
            <xsl:when test="$code='/d'">/d</xsl:when>
            <xsl:when test="$code='/g'">/g</xsl:when>
            <xsl:when test="$code='/h'">/h</xsl:when>
            <xsl:when test="$code='/kg'">/kg</xsl:when>
            <xsl:when test="$code='/kg{body`wt}'">/kg Körpergewicht</xsl:when>
            <xsl:when test="$code='/min'">/min</xsl:when>
            <xsl:when test="$code='/s'">/s</xsl:when>
            <xsl:when test="$code='1'">Einheit(en)</xsl:when>
            <xsl:when test="$code='a'">Jahr</xsl:when>
            <xsl:when test="$code='bar'">Bar</xsl:when>
            <xsl:when test="$code='cal'">cal</xsl:when>
            <xsl:when test="$code='cal/d'">cal/d</xsl:when>
            <xsl:when test="$code='cal/g'">cal/g</xsl:when>
            <xsl:when test="$code='cal/h'">cal/h</xsl:when>
            <xsl:when test="$code='cal/mL'">cal/ml</xsl:when>
            <xsl:when test="$code='Cel'">°C</xsl:when>
            <xsl:when test="$code='cm'">cm</xsl:when>
            <xsl:when test="$code='cm2'">cm2</xsl:when>
            <xsl:when test="$code='cm3'">cm3</xsl:when>
            <xsl:when test="$code='d'">d</xsl:when>
            <xsl:when test="$code='g'">g</xsl:when>
            <xsl:when test="$code='g/kg'">g/kg</xsl:when>
            <xsl:when test="$code='g/L'">g/l</xsl:when>
            <xsl:when test="$code='g/mL'">g/ml</xsl:when>
            <xsl:when test="$code='GBq'">GBq</xsl:when>
            <xsl:when test="$code='h'">h</xsl:when>
            <xsl:when test="$code='J'">J</xsl:when>
            <xsl:when test="$code='kat'">kat</xsl:when>
            <xsl:when test="$code='kcal'">kcal</xsl:when>
            <xsl:when test="$code='kcal/d'">kcal/d</xsl:when>
            <xsl:when test="$code='kcal/g'">kcal/g</xsl:when>
            <xsl:when test="$code='kcal/h'">kcal/h</xsl:when>
            <xsl:when test="$code='kcal/mL'">kcal/ml</xsl:when>
            <xsl:when test="$code='kg'">kg</xsl:when>
            <xsl:when test="$code='kg/m2'">kg/m2</xsl:when>
            <xsl:when test="$code='kg/m3'">kg/m3</xsl:when>
            <xsl:when test="$code='kJ'">kJ</xsl:when>
            <xsl:when test="$code='kPa'">kPa</xsl:when>
            <xsl:when test="$code='k[iU]'">kIE</xsl:when>
            <xsl:when test="$code='k[iU]/L'">kIE/l</xsl:when>
            <xsl:when test="$code='L'">l</xsl:when>
            <xsl:when test="$code='L/s'">l/s</xsl:when>
            <xsl:when test="$code='m'">m</xsl:when>
            <xsl:when test="$code='m2'">m2</xsl:when>
            <xsl:when test="$code='mbar'">mbar</xsl:when>
            <xsl:when test="$code='mg'">mg</xsl:when>
            <xsl:when test="$code='mg/L'">mg/l</xsl:when>
            <xsl:when test="$code='min'">min</xsl:when>
            <xsl:when test="$code='mL'">ml</xsl:when>
            <xsl:when test="$code='mL/s'">ml/s</xsl:when>
            <xsl:when test="$code='mm'">mm</xsl:when>
            <xsl:when test="$code='mm2'">mm2</xsl:when>
            <xsl:when test="$code='mmol'">mmol</xsl:when>
            <xsl:when test="$code='mmol/L'">mmol/l</xsl:when>
            <xsl:when test="$code='mm[Hg]'">mm Hg</xsl:when>
            <xsl:when test="$code='mo'">Monat(e)</xsl:when>
            <xsl:when test="$code='mol/L'">mol/l</xsl:when>
            <xsl:when test="$code='m[iU]'">mIE</xsl:when>
            <xsl:when test="$code='m[iU]/L'">mIE/l</xsl:when>
            <xsl:when test="$code='ng'">ng</xsl:when>
            <xsl:when test="$code='ng/L'">ng/l</xsl:when>
            <xsl:when test="$code='nmol/L'">nmol/l</xsl:when>
            <xsl:when test="$code='s'">s</xsl:when>
            <xsl:when test="$code='ug'">µg</xsl:when>
            <xsl:when test="$code='ug/(kg.min)'">µg/(kg*min)</xsl:when>
            <xsl:when test="$code='ug/L'">µg/l</xsl:when>
            <xsl:when test="$code='ukat'">µkat</xsl:when>
            <xsl:when test="$code='ukat/L'">µkat/l</xsl:when>
            <xsl:when test="$code='ukat/mL'">µg</xsl:when>
            <xsl:when test="$code='uL'">µl</xsl:when>
            <xsl:when test="$code='umol'">µmol</xsl:when>
            <xsl:when test="$code='umol/L'">µmol/l</xsl:when>
            <xsl:when test="$code='wk'">Woche(n)</xsl:when>
            <xsl:when test="$code='[iU]'">IE</xsl:when>
            <xsl:when test="$code='[iU]/g'">IE/g</xsl:when>
            <xsl:when test="$code='[iU]/mL'">IE/ml</xsl:when>
            <xsl:when test="$code='[iU]/{Broteinheiten}'">IE/BE</xsl:when>
            <xsl:when test="$code='[pH]'">pH</xsl:when>
            <xsl:when test="$code='{Beutel/Aufgussbeutel}'">Beutel/Aufgussbeutel</xsl:when>
            <xsl:when test="$code='{Broteinheiten}'">Broteinheit(en)</xsl:when>
            <xsl:when test="$code='{Essloeffel}'">Esslöffel</xsl:when>
            <xsl:when test="$code='{Flaschen}'">Flasche(n)</xsl:when>
            <xsl:when test="$code='{Globuli}'">Globuli</xsl:when>
            <xsl:when test="$code='{Hub}'">Hub/Hübe</xsl:when>
            <xsl:when test="$code='{Messloeffel}'">Messlöffel</xsl:when>
            <xsl:when test="$code='{Packungsbeutel}'">Packungsbeutel</xsl:when>
            <xsl:when test="$code='{Packung}'">Packung(en)</xsl:when>
            <xsl:when test="$code='{Stueck}'">Stück</xsl:when>
            <xsl:when test="$code='{Teeloeffel}'">Teelöffel</xsl:when>
            <xsl:when test="$code='{Tropfen}'">Tropfen</xsl:when>
            <xsl:otherwise><xsl:text>unbekannter Code (</xsl:text><xsl:value-of select="$code" /><xsl:text>)</xsl:text></xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getELGAMedikationTherapieArt">
        <xsl:param name="code" />
        
        <xsl:choose>
            <xsl:when test="$code='EINZEL'">Einzelverordnung</xsl:when>
            <xsl:when test="$code='NICHTEINZEL'">Nicht-Einzelverordnung</xsl:when>
            <xsl:otherwise>unbekannt</xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



<xsl:template name="isMagZubereitung">
<xsl:param name="node" />

<xsl:choose>
  <xsl:when test="$node/n1:entryRelationship[@typeCode='SUBJ']/n1:act/n1:entryRelationship[@typeCode='SUBJ']/n1:act/n1:code[@code='MAGZUB']">
    <xsl:text>true</xsl:text>
  </xsl:when>
  <xsl:otherwise>
    <xsl:text>false</xsl:text>
  </xsl:otherwise>
</xsl:choose>

</xsl:template>

<xsl:template name="getHeaderCellMedName">
  <xsl:param name="node" />
  <xsl:param name="rootId" />
  <xsl:param name="uuidOriginal" />
  <xsl:param name="showRepeatingMedicationIcon" select="string(false())" />

  <xsl:variable name="medicationName">
    <xsl:call-template name="getMedName">
      <xsl:with-param name="node" select="$node" />
      <xsl:with-param name="rootId" select="$rootId" />
    </xsl:call-template>
  </xsl:variable>

  <xsl:variable name="isRepeatingMedication">
    <xsl:choose>
      <xsl:when test="$rootId='1.2.40.0.34.11.8.2.3.1'">
        <xsl:for-each select="//n1:supply">
          <xsl:if test="(n1:product/n1:manufacturedProduct/n1:manufacturedMaterial/n1:name=$medicationName or n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial/n1:name=$medicationName) and not(n1:id[@root='1.2.40.0.10.1.4.3.4.2.3.1']/@extension=$uuidOriginal)">true</xsl:if>
        </xsl:for-each>
      </xsl:when>
      <xsl:otherwise>
        <xsl:for-each select="//n1:substanceAdministration">
          <xsl:if test="(n1:product/n1:manufacturedProduct/n1:manufacturedMaterial/n1:name=$medicationName or n1:consumable/n1:manufacturedProduct/n1:manufacturedMaterial/n1:name=$medicationName) and not(n1:id[@root='1.2.40.0.10.1.4.3.4.2.2.1']/@extension=$uuidOriginal)">true</xsl:if>
        </xsl:for-each>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <xsl:if test="$isRepeatingMedication!='' and $showRepeatingMedicationIcon='true'">
    <span class="tooltipTrigger">
      <img style="vertical-align: middle;" alt="Symbol Dauermedikation" height="18" width="18" src="{$repeatingMedicationIcon}" />
      <span class="tooltip">
        <xsl:text>Dauermedikation</xsl:text>
      </span>
    </span>
    <xsl:text> </xsl:text>
  </xsl:if>

  <xsl:value-of select="$medicationName" />

</xsl:template>

<xsl:template name="getHeaderCellDosage">
<xsl:param name="node" />
<xsl:call-template name="getDosage">
  <xsl:with-param name="node" select="$node" />
</xsl:call-template>
</xsl:template>

<xsl:template name="getHeaderCellDate">
<xsl:param name="node" />
<xsl:param name="rootId" />
<xsl:choose>
  <xsl:when test="$rootId='1.2.40.0.34.11.8.1.3.1'">
    <xsl:call-template name="getPrescribedDate">
      <xsl:with-param name="node" select="$node" />
    </xsl:call-template>
  </xsl:when>
  <xsl:otherwise>
    <xsl:call-template name="getSuppliedDate">
      <xsl:with-param name="node" select="$node" />
    </xsl:call-template>
  </xsl:otherwise>
</xsl:choose>
</xsl:template>

<xsl:template name="renderMoreInner">
<xsl:param name="rootId" />
<xsl:param name="node1" />
<xsl:param name="uuid" />
<xsl:param name="position" />
<xsl:param name="uuidOriginal" />

<tr class="more_entry_{$uuid} hidden borderBottom">
  <td colspan="6">
    <table class="lvl2HeaderTable" cellpadding="0" width="874px" cellspacing="0">
      <tr>
        <td width="275px">
          <xsl:call-template name="getHeaderCellMedName">
            <xsl:with-param name="rootId" select="$rootId" />
            <xsl:with-param name="node" select="$node1" />
            <xsl:with-param name="uuidOriginal" select="$uuidOriginal" />
            <xsl:with-param name="showRepeatingMedicationIcon" select="string(false())" />
          </xsl:call-template>
        </td>
        <td width="428px">
          <xsl:call-template name="getHeaderCellDosage">
            <xsl:with-param name="node" select="$node1" />
          </xsl:call-template>
        </td>
        <td width="125px">
          <xsl:call-template name="getHeaderCellDate">
            <xsl:with-param name="node" select="$node1" />
            <xsl:with-param name="rootId" select="$rootId" />
          </xsl:call-template>
        </td>
        <td class="show_more_detail_arrow">
          <span class="tooltipTrigger" style="display: block;">
            <a id="expandLvl2_{$uuid}_{$position}" onclick="toggleMoreChilds('{$uuid}', {$position});return false;" class="expandArrow" style="display: block;" href="#" />
            <span class="tooltip">
              <span>ausklappen</span>
            </span>
          </span>
          <span class="tooltipTrigger" style="display: block;">
            <a id="collapseLvl2_{$uuid}_{$position}" onclick="toggleMoreChilds('{$uuid}', {$position});return false;" class="collapseArrow" style="display: none;" href="#" />
            <span class="tooltip">
              <span>einklappen</span>
            </span>
          </span>
        </td>
      </tr>
    </table>
  </td>
</tr>
<tr id="more_detail_{$uuid}_{$position}" class="hidden">
  <td colspan="6"  style="padding: 0px;">
    <xsl:call-template name="renderMedInner">
      <xsl:with-param name="node" select="$node1" />
      <xsl:with-param name="uuid" select="$uuid" />
      <xsl:with-param name="rootNode" select="." />
      <xsl:with-param name="showMore" select="'false'" />
      <xsl:with-param name="rootId" select="$rootId" />
      <xsl:with-param name="tableClass"><xsl:text>table_inner no_margin</xsl:text></xsl:with-param>
      <xsl:with-param name="tableId" select="''" />
      <xsl:with-param name="uuidOriginal" select="$uuidOriginal" />
    </xsl:call-template>
  </td>
</tr>

</xsl:template>


<xsl:template name="renderMedInner">
<xsl:param name="node" />
<xsl:param name="uuid" />
<xsl:param name="rootNode" />
<xsl:param name="showMore" />
<xsl:param name="rootId" />
<xsl:param name="tableClass" />
<xsl:param name="tableId" />
<xsl:param name="uuidOriginal" />

<xsl:variable name="hintLines">
  <xsl:call-template name="getMedHint">
    <xsl:with-param name="node" select="$node" />
    <xsl:with-param name="filter">ZINFO</xsl:with-param>
  </xsl:call-template>
  <xsl:call-template name="getMedHint">
    <xsl:with-param name="node" select="$node" />
    <xsl:with-param name="filter">ALTEIN</xsl:with-param>
  </xsl:call-template>
  <xsl:call-template name="getMedHint">
    <xsl:with-param name="node" select="$node" />
    <xsl:with-param name="filter">ERGINFO</xsl:with-param>
  </xsl:call-template>
</xsl:variable>

<xsl:variable name="completedLine">
  <xsl:if test="$node/n1:code[@code='FFP' or @code='RFP']">
    <xsl:text>Packungen wurden (noch) nicht vollständig abgegeben</xsl:text>
  </xsl:if>
</xsl:variable>

<xsl:variable name="rowspan">
  <xsl:choose>
    <xsl:when test="$hintLines != '' or $completedLine != ''">
      <xsl:text>5</xsl:text>
    </xsl:when>
    <xsl:otherwise>
      <xsl:text>4</xsl:text>
    </xsl:otherwise>
  </xsl:choose>
</xsl:variable>

<table class="{$tableClass}" id="{$tableId}" cellpadding="0" cellspacing="0">
  <tr>
    <td rowspan="{$rowspan}" width="135px">
      <xsl:choose>
        <xsl:when test="$rootId='1.2.40.0.34.11.8.1.3.1'">
          <xsl:call-template name="getPackageInfo">
            <xsl:with-param name="node" select="$node/n1:consumable" />
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
          <xsl:call-template name="getPackageInfo">
            <xsl:with-param name="node" select="$node/n1:product" />
          </xsl:call-template>
        </xsl:otherwise>
      </xsl:choose>
    </td>
    <td width="120px">Verordnet am:</td>
    <td width="229px">
      <xsl:call-template name="getPrescribedDate">
        <xsl:with-param name="node" select="$node" />
      </xsl:call-template>
    </td>
    <td width="120px">
      <xsl:if test="$rootId='1.2.40.0.34.11.8.2.3.1'">
        <xsl:text>Abgegeben am:</xsl:text>
      </xsl:if>
    </td>
    <td width="230px">
      <xsl:if test="$rootId='1.2.40.0.34.11.8.2.3.1'">
        <xsl:call-template name="getSuppliedDate">
          <xsl:with-param name="node" select="$node" />
        </xsl:call-template>
      </xsl:if>
    </td>
  </tr>
  <tr>
    <td>Verordnet von:</td>
    <td>
      <xsl:call-template name="getPerson">
        <xsl:with-param name="node" select="$node/n1:author[1]" />
        <xsl:with-param name="overrideEmptyAuthorSpeciality" select="true()" />
      </xsl:call-template>
      <xsl:call-template name="getGDAID">
        <xsl:with-param name="node" select="$node/n1:author[1]" />
      </xsl:call-template>
    </td>
    <td>
      <xsl:if test="$rootId='1.2.40.0.34.11.8.2.3.1'">
        <xsl:text>Abgegeben von:</xsl:text>
      </xsl:if>
    </td>
    <td>
      <xsl:if test="$rootId='1.2.40.0.34.11.8.2.3.1'">
        <xsl:call-template name="getPerson">
          <xsl:with-param name="node" select="$node/n1:author[2]" />
          <xsl:with-param name="overrideEmptyAuthorSpeciality" select="false()" />
        </xsl:call-template>
        <xsl:call-template name="getGDAID">
          <xsl:with-param name="node" select="$node/n1:author[2]" />
        </xsl:call-template>
      </xsl:if>
    </td>
  </tr>
  <tr>
    <td>Details:</td>
    <td colspan="3">
      <xsl:choose>
        <xsl:when test="$rootId='1.2.40.0.34.11.8.1.3.1'">
          <xsl:call-template name="getMedDetails">
            <xsl:with-param name="node" select="$node/n1:consumable" />
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
          <xsl:call-template name="getMedDetails">
            <xsl:with-param name="node" select="$node/n1:product" />
          </xsl:call-template>
        </xsl:otherwise>
      </xsl:choose>
    </td>
  </tr>

  <xsl:variable name="medTakingLine">
    <xsl:choose>
      <xsl:when test="$rootId='1.2.40.0.34.11.8.1.3.1'">
        <xsl:call-template name="getMedTaking">
          <xsl:with-param name="node" select="$node" />
          <xsl:with-param name="rootNode" select="$node" />
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:call-template name="getMedTaking">
          <xsl:with-param name="node" select="$node/n1:entryRelationship[@typeCode='COMP']/n1:substanceAdministration[@classCode='SBADM' and @moodCode='INT']" />
          <xsl:with-param name="rootNode" select="$rootNode" />
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <xsl:if test="$medTakingLine!=''">
    <tr>
      <td>Einnahme:</td>
      <td colspan="3">
        <xsl:copy-of select="$medTakingLine" />
      </td>
    </tr>
  </xsl:if>

  <xsl:if test="$hintLines != '' or $completedLine != ''">
    <tr>
      <td>Hinweis:</td>
      <td colspan="3">
        <xsl:if test="$hintLines != ''">
          <xsl:copy-of select="$hintLines" />
        </xsl:if>
        <xsl:if test="$completedLine != ''">
          <xsl:copy-of select="$completedLine" />
        </xsl:if>
      </td>
    </tr>
  </xsl:if>

  <xsl:if test="$showMore='true'">
    <xsl:call-template name="renderMore">
      <xsl:with-param name="uuid" select="$uuid" />
      <xsl:with-param name="node" select="$node" />
      <xsl:with-param name="rootId" select="$rootId" />
      <xsl:with-param name="uuidOriginal" select="$uuidOriginal" />
    </xsl:call-template>
  </xsl:if>
</table>
</xsl:template>

<xsl:template name="renderMedicationWarnContainer">
  <xsl:if test="$isShowEMedicationWarnContainer='1'">
    <div class="warncontainer">
      <div class="warncontainer_content"><xsl:value-of select="$eMedicationWarnContainerText" /></div>
    </div>
  </xsl:if>
</xsl:template>

<xsl:variable name="sortArrowUp">data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIzLjAuMywgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IgoJIHZpZXdCb3g9IjAgMCA0MCAyMCIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDAgMjA7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbC1ydWxlOmV2ZW5vZGQ7Y2xpcC1ydWxlOmV2ZW5vZGQ7ZmlsbDojMDU1MzgyO30KPC9zdHlsZT4KPHBhdGggY2xhc3M9InN0MCIgZD0iTTYuNywyMEwyMCw2LjdMMzMuMywyMEg0MEwyMCwwTDAsMjBMNi43LDIweiIvPgo8L3N2Zz4K</xsl:variable>

<xsl:variable name="sortArrowUpHover">data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIzLjAuMywgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IgoJIHZpZXdCb3g9IjAgMCA0MCAyMCIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDAgMjA7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbC1ydWxlOmV2ZW5vZGQ7Y2xpcC1ydWxlOmV2ZW5vZGQ7fQo8L3N0eWxlPgo8cGF0aCBjbGFzcz0ic3QwIiBkPSJNNi43LDIwTDIwLDYuN0wzMy4zLDIwSDQwTDIwLDBMMCwyMEg2Ljd6Ii8+Cjwvc3ZnPgo=</xsl:variable>

<xsl:variable name="sortArrowUpActive">data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4NCjwhLS0gR2VuZXJhdG9yOiBBZG9iZSBJbGx1c3RyYXRvciAyMy4wLjMsIFNWRyBFeHBvcnQgUGx1Zy1JbiAuIFNWRyBWZXJzaW9uOiA2LjAwIEJ1aWxkIDApICAtLT4NCjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCIgWw0KCTwhRU5USVRZIG5zX2V4dGVuZCAiaHR0cDovL25zLmFkb2JlLmNvbS9FeHRlbnNpYmlsaXR5LzEuMC8iPg0KCTwhRU5USVRZIG5zX2FpICJodHRwOi8vbnMuYWRvYmUuY29tL0Fkb2JlSWxsdXN0cmF0b3IvMTAuMC8iPg0KCTwhRU5USVRZIG5zX2dyYXBocyAiaHR0cDovL25zLmFkb2JlLmNvbS9HcmFwaHMvMS4wLyI+DQoJPCFFTlRJVFkgbnNfdmFycyAiaHR0cDovL25zLmFkb2JlLmNvbS9WYXJpYWJsZXMvMS4wLyI+DQoJPCFFTlRJVFkgbnNfaW1yZXAgImh0dHA6Ly9ucy5hZG9iZS5jb20vSW1hZ2VSZXBsYWNlbWVudC8xLjAvIj4NCgk8IUVOVElUWSBuc19zZncgImh0dHA6Ly9ucy5hZG9iZS5jb20vU2F2ZUZvcldlYi8xLjAvIj4NCgk8IUVOVElUWSBuc19jdXN0b20gImh0dHA6Ly9ucy5hZG9iZS5jb20vR2VuZXJpY0N1c3RvbU5hbWVzcGFjZS8xLjAvIj4NCgk8IUVOVElUWSBuc19hZG9iZV94cGF0aCAiaHR0cDovL25zLmFkb2JlLmNvbS9YUGF0aC8xLjAvIj4NCl0+DQo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzEiIHhtbG5zOng9IiZuc19leHRlbmQ7IiB4bWxuczppPSImbnNfYWk7IiB4bWxuczpncmFwaD0iJm5zX2dyYXBoczsiDQoJIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB2aWV3Qm94PSIwIDAgNDAgMjAiDQoJIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQwIDIwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+DQo8c3R5bGUgdHlwZT0idGV4dC9jc3MiPg0KCS5zdDB7ZmlsbC1ydWxlOmV2ZW5vZGQ7Y2xpcC1ydWxlOmV2ZW5vZGQ7ZmlsbDojRkY5ODAwO30NCjwvc3R5bGU+DQo8c3dpdGNoPg0KCTxmb3JlaWduT2JqZWN0IHJlcXVpcmVkRXh0ZW5zaW9ucz0iJm5zX2FpOyIgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSI+DQoJCTxpOnBnZlJlZiAgeGxpbms6aHJlZj0iI2Fkb2JlX2lsbHVzdHJhdG9yX3BnZiI+DQoJCTwvaTpwZ2ZSZWY+DQoJPC9mb3JlaWduT2JqZWN0Pg0KCTxnIGk6ZXh0cmFuZW91cz0ic2VsZiI+DQoJCTxwYXRoIGNsYXNzPSJzdDAiIGQ9Ik02LjcsMjBMMjAsNi43TDMzLjMsMjBINDBMMjAsMEwwLDIwTDYuNywyMHoiLz4NCgk8L2c+DQo8L3N3aXRjaD4NCjxpOnBnZiAgaWQ9ImFkb2JlX2lsbHVzdHJhdG9yX3BnZiI+DQoJPCFbQ0RBVEFbDQoJZUp6dGZXbDM0cnF5NlB1ODErSS9RQ1lnVExhWlNVTENUQktTRUVqSUhNTGdKRFFFaUEyN3U4K0g5OXVmSkUveUlGc0crdTU5ejNxNwo3K1VRTEZkSnBWSk5xcEoyZmMxMnBEQ2M5ZmxJUE1wNFBYL3Q3cFlFdnJlWUNUa3YrdGw3T3Brc3hZVUFmd3EwZ2w0MkhXVmdxOEpwCnBpdTM3UENDT0pwTmMxNE9nSWpHNGRNcWZEOGdMc1pCYnlBSWY3Z1pMU1k4K0drb3pPYkQyYzlwZHpudk1seDNKdlNtSDN4VS9Qc2oKcUtJR29NcTlCV2ljakhFeGptR3oza1NPVFhtYkY2aEZiL3AzVHhSSC93SFAyVlE4ZzdBVlo4dnBjRFQ5S001KzVid1IxaHZoR0crQwo5YUorMWtjdFh0UTNZS0lNK2kvTEpGSk1KcE5OU1Mvb2Y4NUtyNWRuZytVWFAxMDBoZG1BRjhYU2JESVR4Snozb3ZjQmZ1eDVIL2pKClpQWVROQ3ljSnJ2VjBZUUhBLy9xTGJ4c0hGR3BjTXB5M2VKeU5CbGVMci82UEtCSk1wTkV2OGU3Q05TdENBRGx2T2c3K2ozZFBmMEMKUDdYNXhRTDBGMkJDdldqVmluZ0h3Sy9vWCtDcHhYK00wT1FBb3IwRUZjaUF4bDg5WVF6ZmxvZm1aZVJuTi96WGZBS29peWpCcGFKSgpMOHRGTStray9sMXBDb1lqRVN5ZVNvQVBKZ0VBSmJ4Y0ppRTMwR2pEL3ozaWYrYThsN01wTDlPaUlDemEwaVFsRWd3amZjcVBXc3NKCkw5eE9Sd3ZRdnhUNkxTc1I0MkkyNUNmZ0RRMUVkZEpETkVEL1dPMVRibkhURXo3NEJaamYyV1M1UUJ5WVViRUFnamQ2djNrNFdheU0KNUdyT1QyOW1IZFRWQ0pmeGNvbG9ISXc4em5tNWJDcmpaYlBaaERjcjRVcURQemxXUmN4cW56SjRDQXRDVW5DazRUUTF3Y3hkQ2FPUAowVFFYeWNiajNraVNTMGRUWEZLZTJab3dHbW9UQzZqTlNCOElUelFqY1IvTFpqa215MlZwZjhtaS85SXBOcGxoRXh6Tkx6STFBRzBYCkMzNnFrQWN3YXVrQ1l6c21ldEdHWTZwTWg2WFpGNXhtRVMwMXdIQlR3SXVUMllmOFZQc0RQUU1nbG5PWlNPaUhMdUNLcGpDYVFzQ2UKdnk2bFo1bHVjN0lFRDJ2Q2JEay9uYjdQUEg4RkpISFQ0UWRBcEFEV0dYcXYrai9BSDBDQ29DWGh2UkY2QXdBRC9LMjJpZlpHODZBRAp3REwvRHRha1Yzb01YcForclV6LzVpZXpPYS85THJXamdkaWM5S1k5d1lzZXFBQWJvNy9Ca3g0WXB3WVNOdVFYOXpRd3dXd0lXR2ZRCm44ci9VdlVKY09FY2tBWDFBclV4OU0rbUFmYUlCbFZqTkRXQlFMLzFoTVhQbVFCRlBxWXpvdnd2M2dsaWU4d3ZCcDlHbVBLdkswTnQKOWhhZjN1S0VudzVGbFFyU254cWQ0YXhKdjlHTXZOU2JURVlmUW0vK09ScDRpOEpTL1BUZXpHWVRGYnJGY3hVVC9ndzlnbS9TSUczLwovdXJQSmlQeFMwV0QvOUlFNUJrTkpuejd0N2pnNmJnWExudGhlaldWNkdNZWhkekFPQUFnanFWM1hQWCtmeGFiK3BZVkp2RHdmeE9XCjlnQlJ4Z3FIL3BHS1IvNzVYNGhGbWVUS2NBUVdMMEZBMmJacC8rd0JZZEFZOVIwV0tpVHorMmc2QlAxdUwwY0xYbHViczY4NXRBSzkKN2MvZW5FY3JSMm5aMWtBbXUwQ2o0Um9yRW5IVVpTd2pQV3gzYXNBQ0JHUHcvQlZUdjN0ejRLLzdpOFlsc0czUTkvSm9BRTJWbnZEYgo0ZEdCTi9EcmF6SUZEeU9BTXNLb3YxendRSkNGUWNPQ0lQU01iUWFmd01vVStDbHF3WGxqcDBBUnFRL2h4K0kzSERaNEdGaUtZTXp6CjNvQy9tdDZLNExjWU1NWUdvRVViWUpsKzZOLzZ1emRaeXErOW93RWh3ODMrbldudlMzb0ZkRS8zVXZnZkduQ1NpNll5R2VxQi9od04KRjUvMFE1U2IvMU9Ea3loTVBialJFRFIxR2hKczlJOU5WalNWVEZFUDV4ZjlQUDM2NThZRW5DdmdhVkFQNnBNZmZYd3U2RWVtdFAvSApoc2U0bXJQZjlDUDdyVTZlVTgvL2JVTDJmVEtiRGFsSkl2RGljdUppeHBYMi85U01ielBKWkR6RDBlc09TSTNJQUhyNUxuUUgvaElsCkc1Q0d3OW9OeDFvZzR0M25xODdUaVhYZGZscitrUm1EdGh2bFpBRzNHRGxaOURPbHZmRlBNZVFBbW5jaU12aitTNWRjZTdZVUJueE4KOGlEcDFmM1VZWkhxMUQ1cy9BOHZ0QkxkUlA2N0Y5c1VSb0VuMUpQMEJmNmtueVdwOVQvRmhuMFlMZm4vaSt4Lzl5SXJPaytpZm9IOQpvWTVRdUM1WVAySmwvdDE3b1BqY3dGSEhQTzRWZmZlTTlFeUtJMGp4WmpWb0ljVTlMbnJUM2dmdzQ2K0VJZWlxMDBPdmJhQXdCajZYCmcwK0x4N0dnTnlwM0NJYlVkZDM1QTBNakJUSkJBMUlQNFRQV3kzTG8vK0NPRHNONHNYK2I3MzlXZWdZM2toYS9KN3dJMXNYNWRQWnoKaXY2Q2l5UHdCUGloQjhURkMrQ2dTOEFtYU8yMFIxL3pDYTgyWXJ4WDhFUGJ5R0c5OXozNFN3dDhSTE1zbTJaWkxwMU1wdFBKUk5MTApSTk9aVkNiRlpwTXBGbnpFMCtBWCtGZWNUYkljbDJJUzZKZHNPcEVBelRMcFJES1J6YVJsNFBjRkNGYlpNN3IvRGY4NkE5OStnTjkrCndtMmVDKy9UQytNZGVzRERGbHc1b0NkRDBHRnB6K0FBTGhlTnY3T1FZTmpRblduWTdFMzR4WUtYQnR2c2IzcDB4cTFHUk0zNy84QloKTU81Qk5nZmcvNHRhbjlXZXVadndCZ0NxbTJRellhUW02NGJ0VURRZGd2by91R2d4L0VyQ0lIZGEyUW90OXhhQXUzYTdNZVVIeUlQdwpUNTMrMnUweXN0eUVXN1VGZ2U4VjBPNExrbk9ndFNyL0xkN01zS21rTjhNeDB0NWxyTVgzSnMwWjZCSjg1ZzJndlZWcEMxSUdwbUFxCmo4VDVwUGY3b2dlM1V0QVRHSmZ1ejNyQzBNdWFSZkNsSW5aM3U2eUV4UnRvRmxvcVVBWkQzZUluTjdPV2hGWHFSaE5hY0tEWDZERXIKdjVTUU5xT3AzK00wL0VVZ25MeUJVMUhwY1p1ZkFOSENEOGt0Wks3QmhuR2cvSTg2YmtSbWhlYVl0V0ZCZGJLeU5relgvd2lZRFdFaApLZlhkcnEyUkJEa0hhWkg3aTZhM05CTjRiekthaWd6WWVNYWJ6a2JaWkRiREpjSmVqbUZUTVNZYll4TVJoczB4MlJ6RGV1WC9hTzBxCmdPaFg3dGZYSEdhUlVKa0kwcENVVnpZNXI2dVRxZ2RKbFp1S3VTOSswWXU1R1RwNElPWm80NXRxRjlFcjRmOG1adnRjTE9hNVdPem4KejUvUm4vSG9UUGlJc2Rsc05zWndNWTZMQ01QM2lQaDd1dWo5aWt6RmJkZmtCYSs3SnpCNjZiK0t4QzdvQmdhZjYvVm5TMXFuRG5VTAplOGtWM2NnanNuVThnQ3B4Y0Qza2daUjVjU0NNNXBEYUxvWmpITUlmNlZxclhQMDNkUWxKVlNqQzNIYnEzODc2ZTFPeCszZFBFQThJCjIySm1vZUcwZjZaSml2OHlLZEVmb1NSS2xvWlNnS1J0WGphL0tNaUZOLzkzNk8zcGJFcnF1bTZnazlsZ3pEdnVxYUtlS0UwM3lSVC8KQmtrS0ptL1U2MDk0cXBYeHYwWW9ESmJpWXZiMUI4WEN2MktVN2tSZjdtLzZVY0syL3hwbC8zZE83TUc0RVBUUGdhQ2g1OVQvaVhVRApPdlJ2Njg5LzExSVczMy8rKzlYN3YyR1ppSlBSNEw5SGpLdGhJZUo0KzdNRmtQRU4vbjJoeE13bzV0NzgwcjlDbkN2MUsyeUd5WEpzCk9xTkU3WWlEVjlMY25FZXNaYmo5ODhPMHFONXhHdWd2dWlYOUx4bWdFaUsxR1pDYUgrWThLaXcxN0o4ZldvUmliTCtwaHZVYm03ZC8KaGRDVU5vNVJuZG0vdzdnQU91OWYwUThZTXhqMjNNY055SDNLcnQybjdhRzhPMFBGYTFocmlTWkpkVU5FSzV5QnRWM2RFaitabEFBTApLQzBUeEpZdHVDcXJ2UUZmbUg1TVZBbWV6S1FUOHVDTUw4RDhNNkVtOEx4eFg4Y1NjbEViYkpLeDdjUFZ2RGNZTFpUbGxFb200MGs3CndDM1ZmNDF6NlZUYXJyTllIOGgwZ0ZyVVNJWTRzY2VRdnJDcVVCbGFKcHRoQ1YyQWdMRWVNSW9wQVBmM3ZPOVM2UnN2ZUdmTHhRU1cKTGkzNFh3dktwdUpDbUkxVklXTkhCa1F4Zk02U0dVVjVNUnlidEdlT3lxK0Z4bko0bjFKWW4zclR4Y2pibTR4NlNuZmtUR09BQUdQdApkcWVHYWtLTHMxOTFYQjF3aEg3ZmFJdUpPQlZvaXEvZTMwVis0Y2hveUZUUzhWbUd6YkxSZUNLZXpXWXpLUTRRTUpOSXNGRTJZN0dqCmFRVFdYdlRVSFVKVlNMSE9ydzE2S29OeDVLN1dZVm5oYktvakUybWx3YUlHZHhNTENhR2JWN2plYkJoWVcyMWNpbU5Kb2dHMjFIR1oKdzZUcFpzSnhHV3Q5U0dTSWdHRWxMR0MxOGtoYzlLWUQza0E0d0xTc1Y5MFFSd1dpM2tadityR0VWWjNOMlJ3VytFamNLeFZxRUxuMwpEck5EQTFLeE9kWndYRGl0TGljVEJaRmNsUTZlR25SWjRUUUxpd3Fsclc4dHUxaGJEN0RCUXVoTnhYa1BhSjNCYis4SEdLTlgxQVFQCnRoeXozbmx2RGxhaU9QcGFUbnJTUm9KcHliSmVSWVY0UitJTWxsOTdVUm9kcW1hMWF6MmV6Z1pqSUhoQUQyWXFsYXlTQ2FTWGdTUVEKdGNGS3Y0bnptYXFPNVBHQk1TdERUaXRqSHM1SFVZVWxWSXQ2M2hzT2pSMzg2b25LM2lyY1NqLzFGcGFMbWJmVkV4ZThnSWxtTHNGbAppUFQyY21CQUdNTTZOZTVyZ2h6WFVCWnRXYnl0STF4QjVXMUhzSGgvSFJzTDVzd0VOSzlOZ1JkNTRXL2Vld1BVRFNwMDYvVkhFMjB4Cm9nTU5WTUFLSTB0SEhtQjZENlplcVNzTFYxRUNtb1hJMzZnODJ0dnZUYkRGR0hpNjRJZWo1WmRYSzVkL01kdGtWa3UxcXNKSC9WOTQKOGR3UVRkaEFTbHp3NHFmS0MyZzFZT2hVOWE1NzVXcTVtQU1HZDNncG9NaFhyL0xGSUNHZ0JBSVM0djVCNWRkSWttRWMxVUtMaDR2MgpiNVRlTDNSNjA1SDRDVURpeXNYV3prSUYzcDJST0pLbUVlb21oVEltRlpmTzBxbzREZlROYkk3M1pRMjFxY0Vzb3ZDRkRtd3FyWUxOCkpEak9pL0RRZzdXa1d6cWJWSUVtMmF3M0UyZFRkRENoUGtNOWhlYWUwUXl5bmdzdDYrbDBPdVIvdGZuQmJLb3N3VXdpcm5Za0hRZW0KS0gxUE5LS3QzSlhxU0JDZDNrSE1aOE5LcFBkVVFtMmNBMVhJbTJOQUZhU1ovOUpwVm9XYVlGazMvQWVoV3JJZlM3RGk1NG9JbnYzTgpDM09ZeTJmU21JWTNCcFBSM0F2TFN5YjhMeURaUDRCUVVpTU1GaEVVTlJNUVBJcFZmczFud2dMRzFBc2lrSnppT2E4RkxzRFFCak5oCnlBOHRZSGxqbDdPRi9ybmF2ZmEwTjc4REhqRVBUVnJOZ2xDc213WVFwRXFDMjJuWk9EYVRXUXlBR1RXOHFjM243R2Q5TkxRd2ZqaEcKMHhYTjBTOStBbDU5UjBkMkdDbWE5VTVuR3NtOW82a1hLOWpSZ3dYU0hLV1hRUzBqd2lwbHd3QmgwdmRzdW1ndis2SjBXb21scXEwMAoyMUMxSUkrdHJmUFlHR0s3RzgwSkpHaExuWnFFcjlycVJ0ejhSWGpzV0k3ekFsdXFCSG10SlBOYVM4ZHI1dUhaTk5iN2k5QklnNDVpCkFUcUtHc0djeDRqNlpEZEVDcVpGSklocHdiblk0Q3VxTE1MQjErOXhrTnhTWEV5aVF5bVBFNUdOVjZ4V2kzd2w0M3Z5QzFna2grSWwKYWN0M1BoL2FkR28rRjVST0djU3pzWlVFVGJFWkFURmxxOGZZRG8rdWsxdU40Qms0MFFtUWQ2cUNKYmJWQlgyZFFDNW1pZ1JJYXc2ZQpkVk5wNTBNWkVlUFFXc0E3NFRDOUtzbHBwblkraENWUUUzeHU4VklBbTllQmdRNFRod0hIV3F4VEE1T3FaVlo0U0JGdkl3d0ZVVC9KCm5EVWt5SWxtZzVLd0ptYUxUNDNQeFZhdDZEMnRsRkpzTnBXS2NGR0xSRzBUbU5uN2FFTEo4MmdFdmVsMGh2WE5QS01ESTVPU1czMWEKaFpmd1ZyL21VWEU1aDJNVmYzNEM0YS95SHAxN1lnQ0ZjWUFWVlVHTDJYeTRkR294bURtMUVCMnd3REJjVHk5Y3JaZ0t0QVIyS1ZBQwpDeW1HNk5BVWlIZDd0REl3TEhhSjNER3Jwc0I5dFhMRHJKb0twcWJwcEhWTHZZUEpXa29ETVFvdHFTbVliN1A3WjJnb2Z2YUd2SURyCmFiTllCYTM0aFFFaW9lR0VoU1pHejVtMVAyZDRHTk55ZWNKbUtDTGt2RTRjZ2YyWTlZSFlFMGNmVTBPNHlOUVNMVTkrQ3MzSG9jMmEKZ2dDUnV1dkx1MCsycUZGTFhFYllOdXlKL2RIaVM3VVJIZVFKZk0xaFRRNG1ncm9JNXJPRlhXOWhVOVZrN0U5NkE4VldTSE9XellWaApkQ2FNNExHTURuU0ZMZC9CNnZxY0NmOXh3SThwQWF0RkFDSE41Wm9WVzlaQWZmdUkvazNUU0xVRnJGY0tiQ2JDYURZT3piSm40bUErCkdmeW1oZlpwSTQ2a1ZvT3BhTCthNEFEQWhFMTZjOGUrTFVZVFhmVFRIdG9uSGYvTlA3N0dza1oyWUhEVVVyKzBpQT09DQoJXV0+DQoJPCFbQ0RBVEFbDQoJelVSWWF1YlVDQURpS1cwWTFCNHNsUVU4RWxXQkcrV1NsbUlSdGdWR0V2UlBEQ3JZdWg4RFlXYW5OVkFiQVN2WWM0UUhRNXI5bm1BcgpiR0hET1RENVJ0UDNtZDJVYXBRQ1VoSXpQQ2thWTRadml0Z2FIWHBxYUUwQkd6ZFVLWUJyL2FabzdHUUV2MDhYMGVFRUV6TldCSllhCnpZWDMyZFJXWXNKMkl2Q0xGWVJ4Z21iay8rWW5kaTZPR08yUG9FOW5yMkNuL0VjUHExb2t0QUxDZm9GU3FlMGJmU0diVUdOSVMyc0MKS1VRbE1xUHFmM2h5SjFnZVEyLy90N2NzZ0E1WlZKUWJQUlFITFNVaFdrNEhEanBTVW80bWc0bUM1L1N1bERNZjZkcGJUcG9PL0ZMawp5N05CRWY2SnBTbktteEF3QWxOUTN2UkNGNTdTbmJmMmc1Q3hBTXZnNFZITzlJYUNzbXVDdjBhaXN6Z2V6WUVGTUIwN3RCTUFad3NpClAwUGwrUFpOb1N1b3hVcXRLS29aUVJPNzFZSTNVOFprVGZPeldSK2VVb2hUUEszdEk4bFJIV2tqSkNZZGNlc3Q2a3hzdkRXS3pkZzEKWm96QkpZc3dGMnVBWjRwUTZRTkpzSDlXa1NSVEhNczY4cWJiTEpJYTFvVGVFSnBzM3Q1MEtPOGUyZTRYU1craDAyYmhRWnZ3TGJTWApabnBMajBzaXJXdGswbXMwMkxEZ1pmTkRxUTVVakhYd1kyVUtsb0lGd1dDd2M3bVluZk9DMmdQdEpWVGpmcVBMWjhVam9JM1pvS2Z2CkEvNzB4aUlQRmp5Qy9aY09JelhPTUhvb0hRNXVodGdVK01GSXROamRCcy91ZTBhTEEveFl2aWxiVU9Hcnp3OGxubFVYaUZuS1lDY2cKR01ycTRaUkk5Zlp3R01wRGVHQUtlSUQvQktWWG9WMDZQYzBreXp3VVFnaHlLSjk4UzRlT08vMFlFd3RkUkVMSG40czQvTVlsRHE5egpjZlhCdGZvTlBUaUlIOThzaXVYM2JHMWMzMjRkOWNydnpFTmVmY3FGamxxcFQxOHdYai95UldMK0ZrRGpDK1hIaDc3ZzVXUFdGLzRjCmdXZHY3MUZmYUpscis4SVg5MlZmaExuZ21OalJRd0RoVC9wS3dldUV5SWtYb0hmbGNlTDQ2aTBmTDJiaW1kUmo2dXZ4TVBKV25hWHYKNHN4UWU4clV1M3dKb0JHRS9GRy9FSjVmbnAyY1o4VjhwbjU0RjYzT0hoT2RpdkQ4eUpRZnF3ODMxYVBDMFlEZEw2U25UT3lLdnczbApIMTQ0NXF6WktqSDF0MlNNZS9QVnI5aXcvN05EN0FsQVE5RVpRVGoyTFl0dkY4dUxRajAxdU1ydFRVZjd0ZVRpNGdSMG90TStpUzJZCmF1N2xxanpMdnJVakJmRHUyUmN6M0hzb3Exam4wdHpVSnZsc2ZlY0hBZzQ2M2Erbzg3Q0htdWJud2NNNWVsMUczV3NWNVc5dlo4Zm8KdFdoTVRINkRiKzI1cVlsRU5ERlRuZDV3Z2V6RER1Z0NPNFhZcjdScEZKN0ZqMHcwM3Nnc1EvbWFiMDhqQm9DYnFjWHZEcmJmVVQvbAo3a3U5YTRpQ2NDQStDaThIelNzbWxtZ0g0R2hnZnpYRTRHWDJPWEgvMlFoYlluMzVLTmFKV0ZQY2o1alBDaXRpZ1FPeEw3ekdRbmNJCnNRbnJaVEc0ZlR1Zk5LeXdpdHV2cVNJSmF6MS9uWjUyRUZhQXhqVGNSUEErZERDNHVyREV1bFY5VFJDeE10WGkrWWtWVm9BR0lFNXQKNzB5RjRKRTFrUk1QcjB6MS9iSnRqYlhtTzl4ano3bzNsbGhyZGU0R1lVV2NaaVl5OTVpL2VVTllkWXduVGUyZDhMek1OeURXb0hsZQpBdy94cHdrYkJGZ1RNdzByUkNOTmJZTlJpTnowK3cxWWs4bXY3cHlFdFN1OGZFNXZDRmhQZXFsMGRZZVY1Z1pITEdGOVBYNXJrYkRXCmQrS0JnMmRyckllK0YzSDdrMjhac0VJMEV1THJVakQvdmZQVnNNSWFPcGprOGdTc3FlM3Q3K1ZqMmhwcjR1R0pxWjRmTmlFYXErRnUKVmIreXU0bkw4clVWVnFZNkc1MFJzZTVkWFBFMUExYUVSa2JNTTdYcjdVZHJJbC9lTWJ2aldLY05zS2JueHNYanIzWGpNdGFIU01DQQpOZms5YnJjVW1jWlduc2RWM1hBZjgwempOQnVIV1BkTlk2MlB2OU9KNG5IQ0NpdlQrSHJuRFZnbE5ETGl6RVhsdFUvQytzcGNUYTdhCjFsalAvWS9uMGVoTXNNVGF2b2pEMnkySXcyM1VFdWNKQXRhbkJITnoyZzRTc0M0WDdVYnRLYTFoQldnd3hCMW1NU0ppdmVFdlk1OGsKcktkTTU5V2Z0OGJheVBvQm1rN0FkM2xzT2R5N1NHZVBpUFd1RURqWUptRWRNWS9obzFjTkt4d05odmp5bFAvaEcrd0hMTEcrOUxjdQppRmpIdVluL2pJRDErUmd5OU90cklXRTkzS3ZRMW53ZkxFNUxyRy94K3dBUjY5YkQ2MzVNdzRyVUdpNHJmSUpRYlk0aDFwQnA4Vnh4Cko2R3R6T0VBWU0xOUc4WFRrcDEyWkt6ajdMNEJLMER6M1UxL0NRZ3g1ODhINm5yTjB3emxab3NLeEJvMkw5bWIyTzdWNktJRnNKNkkKeHJGV0x1ZU1qSFZ4SElKem81ZUx1OHhPVjFvODNNc2lkNmFYVU5kTXBYSmJoVmlqQnF6QzhtM1g1K2NENlFlQXRibzBZRVdLSUJhNQpreEFmcytjUkE5YXRtN09iRnNJYVA3NXROSENzM0dMcTQwcUxBY1RLbU1iYWlULy91QzhmN2dPc1p6NkF4a2hrUWFpRUZFWGIvREk4CjlYSFowM2Z5MC9qZ05HTDFWRkZyb2Z6UmJFSjhIUWppUFlINGxLa2NEc1BLMDdaSlV6ZE82aythc0tsMVRQSyswYnJwMmp3ZHZnM0kKVHk5OGt3L3RxWmxvekVWaUowcCsvV281L2tGKzJ1NWtzMVpQRmFJeDdjOUtrZno2VFd0MlJYd3FMTUtjb3VWcUQ2WmwzTGxOZjJORQplemF1T0tielVWcVNuOTd0Tkhkc25xYWVBOXBUQzZMZDFUL0w1TmNmazA4aDh0T1hjZURLNnFsS3ROZEE0cDc4K3V2SEswOThDbFIrClBrOSttdWhFZW5aRVk0K2k3N2ZrcDhWc0lrRitlcG1Qeit5SXhsNTk1dzZJcitmMjVyTXU4YWx2TDFSS0trKzdncGxvdnAyTC9GaHAKMERjS1FoL0hsTCtJVDBPSFhLTnM4L1NnVmNXSUpqV1k0LzVqSW96TXh4YkJlYnVZMmpwdjlhTWI0UHlWaXJHek80Q212TTJmdGN2SApvZlpOSnVMYlc0SnZ0U1p3Si8ybDZ2MXpkUWlVdzFZWnZRbGdiUHN0L1BmdDJPaW9Id1I4c0ZVQnl1RzRwUk9pd2hiblAycEdGS0tKCjI1MkhKamJjL0hiY2o1eE55Ui9LbFo0ZU5ORWR1OGhNL2NDSnYxOGlad2lRNC8zUUNpdFFEam5XYUF2SWlHWHpsZG0vSUdBRnpsQzYKRlh3aFlIMTR0c0lLMEVqRDNhck80MWJEbGYyaDdjZGJJbGIvYVQvNm9XQ3RUWENzaDc0Z3dxclpBb24yRGs3a1pwTERzQTczOXJZMQpyS0kvdmFkeGExeUhOZmtaREJ3L1RReFlrYWt1RS9rRkg2NGU2MWExRnlWaVJhNEZBV3RxRy9vVmI1Z3RvQjl1NHFGcmc3VzJreUpqCmhYNkZBYXRrcXNzTUJlMlVIZ2xyaTR3MWMzbmVJV09GUm9wZTJBREVPN0JCV1AwV2tZMncvYU1ZVmJ0NGliRnFoMGFqYThxODdlY0sKRkNDUkFhZkpEUmdMUzBodm1GZXczeHdheW1kcjl5WE9mOHljUXRyRWpiRzdmTGdTeGo1S2tmMlNHaElBNGltK2N3MS9hMm1yQ3RBMQpDZGROcURnVEw2VitnRzlsR0Nhb0lOUUdNUVh3M3piQm4zdlFLVjd1S3hnazQxckdnSFdudVRkWG1yUlBGRzlOazRITVdYSjNWL3ZJCnp3UERHOWtZUjRDMEZRd2FnNjZlZkV0TmRDRksxT05pN0pNdjc4SVBhRU9yQk5xM0N1NkJNVHlWMmQ2T3Y2N1NFS2QrUGwvWmxUL0MKRnpOaW4xQmNRT3BXVmJUdDFqWWJ2bVhEOE9NSmorM0lIYnZDcUg0Y3FKd2JxSzRRRFNjOCt1amRselhYM1dxRThaMkQ4NGJUQ09FSApuQ0FwbUVLY1J2K1dObzNFT1lRTDlRNTMxTXdqbENKUXpTK0thYVNZUTRiL3dYZXN1QlNnSWRITERwbzR2blBGODdLd3NXTDdHVnQ1CkVXdnI4SmZDWEFmd2FPbk5VQjlaVEVUU0F6VHVxUDllaWo2NWx4RkkzMWdJb3NwemZsOHZoU3BHS2FTT24wSUtZUTQ3cFBsRFdORFIKVU8yMFhncnh6ZWllWkt5WnlWZUJEdnVwb1R1RzVkbGQrb0dvdndpcjVMUGM1d0NOWHl2Y3k3SjRiaTNFU2N0VGl2K1oyZTBoc3JYKwo0STV6MXhlS3ZyRWg5MXR3RDYwbFFrL0NjM1dsa2NjbFNZSHpQWmtGTE5pKzhseU9yRDBrQ2MzREhPZDRkVDNxaE0wZS9HZ1JwNHA1Clo3Y2VpSVJCaW9DT05uYUt1eGlRT2Vmb0lxWU1YWW9lRVJoNnpoVWZzMmNyUWpPdXZ0NVdMWVJXbnhxRUJIOVUxMW1BZUhmNjNOSXcKbTVwSG9FeG9iTFNkQzZNUFdTU2lqUW9MM3VodGRiZWNweFI5YUhGb0tRQnU0cEdxU1NUaTBFNFlmbkViTTNXc0h3K1NiSUhlMWdWSAo1TnZZNXl4MFpMYk9iS1pGTWlCVm9TamJhVFVuNjR4YUNnMXI3SDd4UjlXZ3BxUTlBanByRXB2a2NXWmhyNllNaE5SMm84eVRETHIvCnV0eUlVVlZEYVBTQzIweXZmVndYay92RWI1SDZCQldCMmlPYWJsblpla3FmcmxycTRqWE9vV1p5NktiUnlkYWpuc01zcm0rb3B0R08KWHAySVBVZEFrOE1GdEtnci90SkFHZmFrWldpeEZhRlpnR0kyU2pSMm8wVGpOa3EwK0RwRWt6VzF6RzVoUlJIb3ZOdVBPalAwOXlwcgpXODVjOFg2SVNSQlpwcEU5RGV2MXNEajJVWnZleE9YNVVkZnIvZFdYNStKNHg1SFRUTzQwMmhpMkpOQmkxOTRQa3owQ2V3THR1U0tRCkZYWGdhUGhlOTViU2w3QzBHTUZvdWc0TEdxSng3b3diTDlDeUp6RDhBRHJqc0locGVtS3dPdlU5MGF4T0o3STRMRm1qODlqYld0UTAKaFlXYmczVVU4M2JqdW9jTXNYRk1CeDRIeWdKWTZVOGxuUUhGdllnZkN6Y1lTT0dQSDZkV0RyaG0yVmhKRXRKQ2VSRy9pWHJmc2srSwo2TFRxMW9aRUFiQWVkdW5pQWpTaTRHVVIySE1aRnlBVFBuN2N1Ym1nbDk5S255ejB6WXY0NmJDbWpjeExNUE5QMGJhaWFuV3V5MXJNCnUvLzczbDVHU0ZsRG1tZEVjTjNCS2xpNGpFVHE1bERuUmtGNkpUWkdMM3lsTzJwUEU3ME1pNTA5RTdYRmpyb1QzOG5PbHdiSEN4YzIKYmlLQlgyZjZ4VTRJcGlnUkJ6VUNwV2UzK0U0dXNHUHJXTkw2SEdmSXVLY0pwbEFFY3IvTzlNYTljWEFJalc1OGhNRWxBdXNFUXFTUQo2dGVaVVZPN0R4SUJabGpxM1U1c1NOcG9LSWFVL1k0VG5XMzdJQkhPYVdkb20zbk5JQkVnekhzdThHZ2ZIVFNHUzNTZXY1NUFOckVkCnMxQkFhSFJSQ2IybEhUTnZJczNQOVdhMkF3WmtacFBXemZGdGFIdE44czNQTmIwb3o0MjVSN1NxTVhmdHAyQUx4UnkwVjQxZ2NMa04Kckp2NXVWNHJPa2dvUWs5MldlSzRsTkU0aDBYUE5WM29ma2dZUXdNT01xakJGVVJCN3RxblYzOXhvcDNtUkpzVXhad2J6RnpjVHRNVApTRy9tV2hPSXlzeUZtMTF5YW04TG4zUHdzL3NGYURWMEtJOURScWR3aFdnNXJJcEkyRXRCU2YzSmdTNTdEUWloNVNob0tFVnByV3dSClhFSkRhRWVMTlVYTWZSdHRjVkJJYVBzd1BwdzUxenBRRTUwR1FIcG5jNFVkRndoRlhZZXFPYmdxSUx0OURnMks1SzNaQWpMclF2ZUsKVU5rc05tNDB1b0ttRDZqREhlT0F3UkpGNFljZmZOUmVmdENHM0NBb3hncVU0dUs2OHN3Z3RIMmJYU1BTVGlIQnNvQTVwMVRVeEExVApTK21tTGsrb1RNelNEZnkyRWVtRzVrWWNyNzBYV0RKbGFlZ2tpQkxvb3JUdkliU0cwWG1oa0c3VytnWkNhL3JXbFc2M21uUmJTd3FBCm1hT1ViZzVTQUFKYVg3cWhST1gxRFEzVW5ZM3M0aUpBZXVtbTI3cTUxbmFCck93RFhlYTlORzkyUVRYZERxUjFpRzZPTDVtM1lNZ3kKcW43ZjJkUldidTFocmpuYlJGUGQwV0tEVTJvcEpxMGtMaHlOdmRBRjBNajdyclFTVjVYUUFOcXFqaVcycWl2UHo1WnVrYnlMUzd1dwpPNmFFS1RyeFlPSzB6anFHdnc0S25sSWhHN2VyQWFKM3U4a2hWUVRJSnEzSnlWN1hnWkpNam8wRnVlRUl6Y29ScGNSdnlQb0hNaTIyCkFhZXdCR1RLdmIxR0l5dEhmYzZ0REkwK1I4TTJFZ2xCOWJjTmtkdFYyTzNPeXZwZlFhMkJDVjA3QXFhd3dBYjBJK2lPclhLa1Ztc1EKRUozMWJ3VkZjOWdSb05YMW8zSFNIT0xRN3ZWanhCd0x1NzgzS0VmZDlxcGIvZGdWYklMUmVGNVdHRTlVSnBMZ0hrYjI2b1Jwd2FtcApyVXliTGJ3U1FOeTN0eldwaldBQTZuT2JTaEhRckhNQWJXd2ZmVGRuZDlzUWpXYXgyem1nR0VOM0Jhb1ZiN2NOQzFkRTFDcm1qYVZhCk9XYnM2Wm5NYnJXYUZwazhON2FhcWkrYU5WVmZkS1dta1BZa2FxcFNsQnkrcEVtTk04UUYrcUpWNU5CcW5Ubnp5dz09DQoJXV0+DQoJPCFbQ0RBVEFbDQoJd3laVGV3RTBRMjZYcll2dHdRdi9yYUd4NTQwTkJWUDZJbFVjV3JNN3pMbU82bXpHckRKOWlUdnNCTHNESmlpUS9RQWRXK0I5SW14RgpvRzVSc29WZFdxeThObVFidXBHMmRqeDBwWHZwOTZmM3RITGtTN0ZSRVY2UHVsbzVuMzB0SDVKcG15am5zNi9sODZCVFJqWlF6bWVGClZhdmwwMEpEYTViejJkZnllWlFpMlhYTCtWUjlZMW5MaHdWVDFpdm5zNi9sODJpbGkrdVY4OW5YOHVFMjlGcmxmQ0hiV2o2UFZycTQKWGptZmZsNk5CWFVLQzZ4ZHptZGZ5K2ZCaXYzV0t1ZXpNRDFMOXZ1ZUs1WHoyZGZ5U1I2QmJRSTB1UmpwYU83c0dSc3k3OG5GU0ErUgpHc0ZMb08rVHRHNUs5dTcvdGs3ZWsyc1ZSV0x5akpZN1NGbWtZQXdRMjVIS0tVQmNObG9BSzA5ZmU4c3BCNHFXVkRPOThyZklZN3VZCm9VUmxtcUswOXRRZHFmU2djUCttYklweHJUNUNRd0tob2Y1R0dTVGRDSi90QzFleFBubnNDekgzWm80SmhGUjlvZ3AwMlpDS3NualAKUGdlS2ttOHJ6NmZFRWgxZG9ySkRHWmZUUHBwamZvbG0zRDVFZkd1SG01WEJQUmdqWmRacGNBNkRjNTlmWWs2NGhHVjNvUTJVU2VxVwo0S29CWWxoMjUyTGJ4ME9xeFgwSXoyMDhBcnJkQ2tnWVU0MEhsYU5DZ3ViZ0NxTjFZd2RObitDMWI3WXNlbFVuMTUxV1FsZXRuR05YCm5qSG1TZmVxcnVwZWJZcGUrOXkzWVVFYkpMUzdHQUNnbDgzR09CNVIwU1hBMk1VYUUrYlkvemdqRUcwTXQ1dGVZRnozNUkxRDJtSTAKajFwVDZHU08wZGNVV2lRMEcrSUM5UFZvRHZVM2tIMERXcC9JMjBURG1qNmxVcWM0M2RVNVpyZnRNdSsxR2FRcjBOSkhQYTB5NzZsTApIWTFSVDhvNTlGalhGRHJWNUxqZ0NIUlFnOTRXV0F1YVhZbU9uSGxQRDgwaG1kOGwwV3lMZGx4MkxCZDQzQnpSYkU5cm9DQ2FJVjY4CnlIOGI4cWk0NHYycmd6MkpBbDBVMXZjaXY2UmQ5c1JZcDJQcG5qME1DTURoMEJPa1BadjNMUHB3V09mRisyL3lPcmZmS0RGdHI5YnAKL1VGckU2MXVKU2hNNFc0bkdJN251R2p1QTJaVTZTdFduS3YySEdjcEw5clhzT3VkSXV2bEFZdnRuS1NBSlRrOGh2STRhai9QWGJXZQpMbmRRci9KSTlnd2NrdjM1TEFidnl4aFYxMXVZRnR1bVAwNmRLblgxcmlpWm9VOWR4b0xvQ3ZWTW04VVdQaTJ4TEt1eXZUazc3V1d4CjYxQm9TN0ZKS3R0cHB5NWpRZVNLdjVEZnFrOTRjaElscWNvTGlsaVFnUStzQTEybmJxTTNkbFYxTUhxajl6MHAyZFBjSjZkVmJWUnIKTnQxeUY3MGhwOFFiSy9UY2tVb2Z2WW52Wk1jeDB5a2paMDRaZzNUUm0vaE9ic3N5RmNoZEd0elgyWXJSRzR2TWU3Q0M5allUdlFHRApZLzNySnlkOW5kRkdiMlRIZzFnUDU1QlM2Unk5T1ZOeWJqZFFEK2NZdlpHMkloeHJCZGVOM2dBMGtEWko5d1ZDQkFKWlZ3ZVpHSnF1CkRqN1hYQmhMWTQ5dmQ4azVPaDcxVUFablF4cVllZHNyY2dRdWJNN1hqZ0FwamVmbmh2Q1BWVlNkTWdJRUJoZWdIUnhpYUZJOUhHVmkKb0gwWkc1N0xzVTZKSDAzaU1jb2RkQ2p4Vy92WXMvazV5cnhmUFNkUW80Mjk2UGFvSmIrT2tWTklvUFNLeTFpMk9nM3BnQUdMUGRuMgpPcHBQNTk5b3hYbWJyc3d6N1JGUXArMjVxc3hUZDNGSmFYdWJxY3hEVW1EZFZlaGNtVWVkREx0ZVpSNldPNGdYNTYwMUxvdDFhSERZCmFRRzVyY3dqYnF4c3RqTFBJMVhoR1l2ek5sMlpaNHpjcm16NjJWZm1hVExOcU13MldwbG5DSGNiVXpwWHE4d3pieUJiZTJzbDA0SE0KcTlXdHFiYUZoMVMzUnA5NmVVdVJlcWxKQVllVE55QTBpdFJMWnluUW1hMWQvUS9sVVlnMjRkSVJFUEg0RFJlYnhSSWdOK2V1a0x1agpXdmhXT1ZBdUFObDQxN3JVVDB3S0VOY2pyUE1qQjlDYzZ4akFZdFFIdXFCTlpsNlA0RGZYNjlFNk5GU2lTSlNnS3NzaTJQb2U5VkJ0Cit2WFljWlVLalJZamVRc1BRbHQ5UFdvRVI0dHhUVk1kcXZXdzFYbzBRUEU0SFhXTUFMbGZqMllYVndLMDlucEVVRWdldDBHdE9RS2kKcWx3M1cvMFd3Z1pCSTIvZ09xYXU2NlBaZm5UZXNjZDQ3UUVzTm1zNG5JRkJ0WDlWZS83ZVRKRXN1MFZPRkhGZkpNdHVVWlcxVWhiSgpzbHVKdFYwYlFIRGVzdXJIWFhRUUZZcHRwRWoyYmlORnNuZWJLcEs5MjFTUjdCMzlRZGRPRVRDWUEyVSs2RnFYQXVHY0RXVllqNGFECnJoVTA0T2RiZTQxR3VSNXRpdktrVkN0MzlVSXJGT1ZKUkxNbTZBYUw4aVNpZlZLY3g3VldVUjV0ckhQTm9qeXk3N25Sb2p5aUxiRFoKb2p3UGZrUTRYZm40S2tWNUVrUFRaQUdYREljazJ3Z0Y4K24zVmtxNkZGM3Y5SHY5TVBIU3hWVlRkakZvdG5tSGVzdkdJZlVRbHRIWgpuc25veXJJcFJWY05hWnBuc3h1bE93ck1MaGtDVmtQYTZFQ01MZlRwbzNiZG9tUUxhMTJoQnUrMWxReXYwclBrYW5rZTBBMmk0b2N2Ck1yM3Urc0tkMTRvdlVvaS8raUpuMlFxOG9MNEV2ejM0d3A4L2J1REhpUzgwaUo0Qk5MNXd1VldDSC9ESzB1eU9PcXQ3aGs3TDMzUUYKY0lMSTdncjQ0dFZWU1NXMnVGeFdsd3lySzBYYjJyTXJ1NHRHY0tiUllRMGRjaC9YVmxnOThwWGk4REx5SjFMWjNhTmQyZDBQdTJLLwo5OHUyZnB0SVg0b0dMeU1ma0xBTzdTckNpbTBNcTFvUjVsSHZLZnprTlFscExFV0R0M09yWXpXVzNUMFFzUUlLSDlrVyt6SFZMSE5KCndKcmEzbWw5Y2Era3NqdW5Zajh4WVRWY3Vld3UvTlloWW9XWDduNlNDaHVqOXNWKzFZYWZpRlVRYi9NK0lsYmZ5VXZrUmpldmZGYloKSTBCL2FKTVJMRDBPdnd4TkxkdTlMcittanUya3E1RmZLL2RYamsyVG56TDN5Y29VRmo0OUZ3d21xaExSQ1h3WkZDd2FUWFZKdmkySwpJcjlYYjl4YWJERTlvWjFDVjlsVDVPS2lwcjlLQ0ZMcGRqeW83a0J6dXJXTTBDZFRSbGZaYUNDdlhMSldkVHlHZXEzcjlheGlVWjYvCk5uRzlIbTNZcnV5Y3RVMUpxb045SzQvTUpuZHdoWnYxU0dHN2ZiTHY2WHl6SHYwSUkzYVo5KzVHNkh5N0FuMjNxSE5ZRFgweWhoK2MKTDlXajd4TVdPRkpNRHByVVdzckNQcWNBOFlZSysyaGlOaHNvN0xPcTZqTmszbStpc005cWNISTZ6eVlMKzh3OUtZY285ejNkRlBhdApYb2k1OXA0NG1wdk5GdlpaRVFhTlpyT0ZmWTZIbVd5bXNJOUtTYTlmMktmMVNmT3U3Y1BkS3hYMldZVms1SnpiVFJiMldWWDFXV1lOCnJWZllaMlV4NnFzaU5sTFlaMVhWNTdFOCsyR3R3ajRyT1lzSm0wMFY5bG4xU2RJM0d5M3Nzek9nTmxqWVoyVzJTakdialJiMldjMmgKeC9teUxiZUZmVmFnVnRnc2RpcnNzd0pGdGpwWEx1d2pFVzNEaFgyYkk1cWp4ZWhBdEUwVTlsbnR3bGhrM3E5YjJHZFYxYWRQdU54SQpZWjlWVlovSCtzU3hkUXI3OUl0Y3F1b3pXSjJiS095ekFtQ1RENzFxWVorT0p0MllNUTY5cWNJK0swT0hMQVZXTHV6VGtVUGVnY1Z6CjFUZFUyR2RGRG8vRllZMXJGdllSVWtaZ3Q1SXJyRWU5ajhpOWlQMm8za2M4MVh4RWJYbXVXdE0zOVZFd0kyWnlrR3Y2SEpjOWJuSlkKUm40a0NiM1JXL3djWXphYnVjWFBxaUtNdEwwS3V1VmZtMVJTaFNnME5XaGxtZ01mZk5MY2kwdlpMV3FoWU82VDNsUUgzYUplMkU1OQowbGtGMXFZNkxhbW9WN1hIL3ZSUjJLMUc0dG0xL05UN1MwY0xqL2tLSkZqYTVaVGJSQlBLd3kvL1d6M1Z5dFhsZndwRGsrejFNL2RaCmoyUmg0M1QvMzlxWC8zbXcrejJkYXZyV09QcGNUVlMydmY5djdjdi9MRVNuVTczaktwZi9HWU9RMXZmL21Xamo5dkkvZTRhbXlxMmkKdWZ3UHQyeGNiVCtkR3l2M1Z6cWpDeGl0RHRGSldyYzdmbnliOW50b3FsY3BMUEp6KzNSakQxMDFFUmhjY0ozUXE3eE5kTDVpaHFPaApwbzlZMTZUNW5wVFg5cTJXYWF6VG5yQ2NqNllxMTdIWTBaVFo2TEU4UXM4NVNRMWVhdWlpcE1sanZteExieHREZ2VrM2xUVDF1ZzRjCllkQjhObm1kYlZjTGtGakl0Y2xVS3dCdGc2bFd6YThWMVovSFdJanBrRWxOVjRnWk5KWWNtOE1QbElEMlhYVUhad0VEb0kwVW1BYkQKZElsanpvQm83bXFqU3h5RDBCeHEvMnhUNDFTaUtYWm9NR2pXaGZjM216emVFRURiaU9rbmQwd24yR3lTeUhGbFJxVG1jSThqWHhWRQp2QmZYdG9yQ2ZObzBMQXJNMlc4U21oeDJZdFoyWjdaMlBZdEh1bWJIWWVEMEphVGkyRktNck9Td1EyaFV0NVk1U1FIdFpPYzFhaFp1Ck5RTURUeHhiRFJCVkNZWEQxamNDdFBZeEJ2ZFMrR0g5Rzc1UmQ4ajNqSjBnVG5OUlJRRnpOQmlpbTc3S1pySGZJbHNERmdXVzdHbEkKSGJ6WFhmMjNSbjBaTm1wQ2tnWDFlcVM4OTg4ZzAwanJjZDE3L3p4YUlhYjExWDh1Q3pFSkJyK3ArTUlaMENvbFRVWVgxM1QxMytyagp3aGVqalZwekJrUi83NTlEVkIxQjI4QzlmMW8rTk9IcXY3V3JmYkVTckJiRk9SNk85V1YyeG8vSDFWbXE4STY5bFl3Zmo5VlpxaERhCit0Vyt6OTlhL3RUcTBVRzQrUnVocVBaMVBLTUxBVm83K0lXZ1FCWllYeHJEN3RnbVVXbmVtaU1nMnVwN3F3aVlJUUtGYmhGY3Mvb2UKMzlTR3RWbHdNUnJSZ0o4M3NoN0J1SjRXTmpMTm9aYktSTTFjZ0NhUHpLT2NFdTljbWJaT2lxU1phSnM2d3gyQTByejdsV0tkZXFLbApOdVo3Z2dudDBIaXl4RUlxS1o2R3JwYWtxcVdpN0pPUkxYVGhoeFhxYm92M0R4R0R4V2hLOTdBOGJvcXU3cll2MGw2R1NhV2tIOWErCkRGTm5wNEdSanUzOUp2ckxNSTE1SU1RZ0pGWGRiZkYrUVJIRHByTnNIdGErREZQTHVZWEZwK3ZYM2NKTCtrZzYwR01zeDNhdXV3VjkKY25NWkppS1dkUTZVWnRERFhONkdhSUZRdGdsaHFaUnYvL3lBUmRXQ3NNU3c3UXQzaHplKy9adENDbjVyb2pwRGdNWVhPZThtbWRqOQpPQzNyb3FQWkdPK2dFb3ZTVjNBRnlKVjVtV2FNd1VuYUZiYWtaRmoxYXJxZDJSeFhmcnFyNlFMOW5kYVlkUG1mN1RWOHJ4RkRQTTFRCkVsaE1YUkd3cHJaM3B2R0RMcWtlOE5XQVZaYlE2dFYwdmlRWmE2MG1QS2hZamZXQTI5K3A1VE9wUnU0Rm9MRXBSTHcrd1c5WTFOZkkKaFE0bXQ2UjZ3T1RuL3NuZC9sekRDa2VqR3k2NUVCRVErWU1oWW1XcUwzVlM3U01xajlzZHh6cDlVaUZpendacmpja1JzUXJpeDltMgpodFVqM1lXSGx3UStiNmR1U1VRTzI0MzFkTTh3cjNDTlJoQitqMVFxSDFHcVFwZERZbE84M2RVMlQ5TnU2K3JJWjlnaklEUVZsdDN4CkxxWTQ0YWhONXFpeWdzRzc0WUJCbVNML1NoL2wwQW1ubHNXeEUzYlhMalQzdmd6YlNWckFsU28vemY3U3M3bDkzb2hWTUlWY2duUkMKZmVtWlZaL1VmQUhRTGNmY2VycWFMeXNIUlVQamFwZXJ1ZWVReUdvSUFpTVdJSlVLN1JlYU5EbHVqdFBuMzhLaTZtdVd4OW5taUh2YwpsY2VGWEpGS0EyWFFOekswOElaR3FPYUEwYVlvMm93d1N0RW5EM1p6dVYyM0NNbmh0SDFTdGlMczQ4c3VTV1hPQWNNMnZhNXVyUy9ZCk1JaXVoL0RVS0xxY1k5TWV5aHRqSHNMa2ltMzZ5RzFsWXhWUnJ4VXJIOWtnYkdqZDVJZklscXZCV1c4VFZUWnd4TzVEZUs2RndWYVAKcDhGQ09ScnYydW5zN3NvbUl0S3dIaEc0RDJRbFRVOGIrcm8xUjY4R1F0UFZOYms3bUVnTFFxcWx2UERJTzcxMVVsMzdpZ2RWMlBTMgo3b2tIQ2JueXBLdFdNV1JNMkxqYVE0ZTFmK1NzUEZQQVFHRUJVZ1NtU2p6N256YkdweTFQZVM1RDVveUVZYzN4WkFncUl3V05acHdoClgycnN0cUR0YVdGbHBPQzdVZlEzMVRrZUQrR20wc3ZWcFNvMmZWb2NuNUZ6MVoxTmRYMmZkT0xmV0pTb1JtN3A2aEozVnF3dE5SdFEKb1B0VCs4dUlYTXloT1Y5Z0xXZ08xMEFyVGlFbE5LZUxoSWlnUE1ZNjZacEp5NncxVElwcUloZlFISFpBWFJMTjZVb2hkMFRqTFFXRwpaUlV6Mld6VTFTTXErbWJGa2tUYWVrUmRPby83a2tTaW1VMTBjVmNxU2FTdFIxdzVEdTN1b2tGcnE1TzZKSkcySHRIamNLMmJRMGtpCjdTeFpKY0M0S0VrazZBVlRQYUxIdHN6SHNTVFJtZnRKeDdlN0trbWtyVWVrOWFRSlczajI5WWh5ZDdUY3daYkJyZz09DQoJXV0+DQoJPCFbQ0RBVEFbDQoJVW9teG9jc0tyUmw2NDVjVlVvZnQxcnVzRUVYVm5jMjhkUzhyeElYTkg3eXMwR0ZEY2xPWEZYclFTWDNFaXdFM2RWbWhLWmZqejF4Vwo2TEc2T216emx4V2FiSUgxTGlzMDlNbDQwSXpldEpaNjVGQ3hiTGp3VUtrRDI4eXBWc1FMRDkwV2xHM29WQ3Y5YlllRWhFdjNGeDZ1CmxkcExmK0doYlFFZzdXMCt6aGNlcm4rcUZkV0ZoODZuV20za3drUDcydzZWL1p1MUx6eTBUNHpVa3ZyV3ZQRFEzcHJYSnlldGNlR2gKaXREeXRrTkRCR3IxQ3cvdGM2V2srcHNOWEhob2Y5dmh1ckZPOWNKRCszRjVuQzQvb2IzdzBINUlFcG9OWEhob2Y5dWhoN3JlMCtIQwpRL3VNTm8reFFuS2QwOEhKdHgxaURMM2VoWWQ0UFl2NXRrUFBpdVZ4cGdzUDdRTVJIdkxoV2U0dVBMUTFyMG9TQzJ6Z3drUDdyUmhLClRuTys4TkROUFlXa3dtQlhkYVJXT3RBeWVML0toWWYyVUN3clZsYTU4TkNtVDhEUHBSQ2RkQmNlMnQ5MjZMRXB4S1N2VnZ2Qk8xd0kKcmJNRm5LclY3QzQ4dEwvdDBISnVWcm53MEM3RkcxMWJiUzY1V09YQ1E2dTFyeVcwYUNiSGltVmtkSHZNZUw3QVdoY2UydStWNFlwZwpyUXNQTllKYkdmZFdXOThyWFhob0Q4VWM2RnJ4d2tOTEtKdTQwNHZYWFhob0Q4VzJsSVIzY2VFaFRXcnZCaTQ4MUsxSDAyMkhpcDIyCm9mVklPajBhMzVCYzY4SkRlMXZmWTFtMHRNS0ZoK1NPbVE4RVhHVTl5aGNlcm1tcTAxNTQ2RnlPdlpFTEQrMXZPL1M0dktkd1JZOWIKYjl5YUx6eDBkMFdoRVpUeEVLRDFMencwbGdicmJ6djBXQlppcm5EaDRSb3l6YzJGaC9iR2owYzZzblg5Q3cvVmpsbmVkcWpiS1Z6bgp3a09YdGJpclhuaG9mOXVoTlF1c2NPR2hQUlJ5TG9mTEN3L3RvSFFGejEvRW5ReDNoVmYydHgxNnFFNkpwN2p3MFA2MlE4dmcvU29YCkh0cmZkbWl0MWxhNDhORCt0a09Qd3hsZDlJVlh0cmNkZXJDejdkYTY4SkEyMXJubWhZZkUyYlE0U0hPRndpdmx3c1BOcENnNlhuaG8KYnpFaW1iYUpDdy90TFVaOHAzQ3RDdzlOMU5UZGRtamVXRm54d2tQN0hSODFjY3pwRkM2bkN3L3RzNC8xVWZVMUxqeTBJRnJham1ncgpYbmhvcitBOWY1SHJkUE51TGp5MDc1TkhLeXRkNzhKRG82N1FIN0Nzb25rUlA0aVJ5Qk5wQlR1ZHpCcGt6S2tTOTA4b0hFd1dOZzc1Ci92b2l5cW9oQWxiQ1ExNXZ1eFA5WnJGa3pha3B5NUtZbHVrUXhHaVRUelpuR2trTjNpcXN3cXRuSXI2OVplV3VlT2NEdjdYbm1xbmUKNVV1Q2NNUVY4N2N2RHdIZjdqU2Q4UGx6VE5XM1AydGYrN2hjK3lKME1Na1ZRL2tqNFNSMGUvN3BaeXFYOHpoVHpWWk9tR3J4dk1MVQp3c3NXMDBnWG41akcwK09BdWRnWG8wejd3SjlrMnQxalpIWGUvdWdQbVk1LytzbDBHdXczMDVtZjdUQjN4LzB5ODNJMVBtZGVGdEY3CnBuc2FtVEp2KzYxZDV1M3dOU2dJbHhHL0lCWmVVb0k0MnpzVmxybkZrN2c5TDc1SDQ0M01VaTQxL1pnMTh5bS83K0sydU11bEFacEEKejg4M3R6dVBOL21kcVJDcjduR0o3cVgvclozTGJOMmNEU0tobTJyVG43OCs1Rk1odFM3UlgrZWZLNUYwWSs4SG1KWlFGUmJnUlh6Qwo2Q1cyZXpXNmFDRm53RHBBakplOEJrZVRyQzgwU1Z6ckxzaUUxMjBtZ2craHc4Tkl6cEplaUJ4Z3dIdk0yMFhnMmpCV2dNWXczTkRCCklBRmVaNDd6VFBYbXJzclV0bWROUWN6Y0RWRnRxMXF1ZWhNNmlrWFFWWjFiVW9Wa3BmSWpKb2pQc3dQNDI3YjU0R1pwdFdoV1YvNW8KanRuVmtvMGhSMmtiV1h4UFIyOUFTalB5VWwzQ3kwUHZwZnRGd3hkMzk3NUFwQWRMc0dEcDd4bjhPSURYampaOWtkamVLNlJjSHQ1SAorZ3d2RzgzQ0Rtb2lkayt5Y2ZqRlNRYk5WK0ZyMWhBTDUzZDNyNkZ5ZUhkWkRkUlBUNEdQK3ZWYzdRYWZ6c0hTZmtqS2xzME9GRGJBCkwzL2Jqa2dlYWo3NUxNSS9ZN0pJVHRiOTZyY0F2Tmx3QWdOSDhGNmgrcjVVaXd4VWVCaitHWmIvTEVXajhNK29GaGRJMW1PaFN1ZSsKRG52MEhEL3V6SXVsVVMvR01yRjhJcUIyOVlVWkJnSTU1VUZ1WDN2QVZsNXpoOHFEazdEMkFPaTdSaDQ5UUp5V3IwYXhaeS9MMXhQbApwUWFqUGNEeDEzSkJPTllnanJwMkV0TEloNk91VldFQnMvWU1tZHZnNTBaTTBoU3gyaFVEVDdRTHhYZHl1MGt3Nmt1cFdKdnR2KzcyClRnNGFQZ0g4ZGgxQ05aaHNmODdDTExQcmlEcUhPNXcvSDRBbThuVVVFUTIyR3FSS0hQeUZnYWtyQWp1b1g2RS9aYmlEeHljV2VZdE0KN0tFYWlsMjB4M0h3OUVhYUJ5Nll5ZzBWckRkUkNRMFQzTWt3M0tTOVd3bG5nNjhBemNrQjA5bkIvUkgxUWt1SkdVeUtYcjAvOXlabQpCZElLbmhwVmR3VEpZQ0RaMkxaNEdMbzlFRkw1MjhSbElmMHlEQ0NWd0FVZjI3N0tZUHlkQmFOKzR0VHBlQU5vNGp1SGgyOFNpd2VYCnc3RXkrcnV3dGdxNGN2MElzdWRkVktKUytmR1VsZFpCZVhDVmxMOU5iam41Mi9McEZTa2RyaExzZFpXTkZhN0NmY0Q1dlV0S01McVAKSnhEa1l4VGVQVFhqdWhOZzU2RFh1OHVXRFB3dGVQK3BkT2VSdzdyemRqRDhvVDVJcUt1a3J4L04yNTJ2QkVYSFFmejRadEVxVHFJZgorNFhtNEwxUlBqLzF0VFhGcFJZUWwxUVhkdy96WEZTMUd0OWRudklJcTdROFgySm9JUEU5N2phQitodmZPM2hLeXQvS3ZaSFN3WmU0CjNLN3pWVEIyNTZwMDgxSXRUN1lHaGRiTnM3L1NqNXpjUVNsNENFK1RqNm5iUkxIRlBGV3RjQmNaZzk3WEcrMTdPazNkK2JiWDFQblUKYm1sWmZxenk5d0JOZVh1NHJKUmVhcTM3M012VkxBQVUrTVZaTVRnUm1pZXhSYXBlckREUm00UEh4alJmbTNUdW53djFsSytQMUx0bQpUOENlK05IUXdWck8rSkY0VUFSZ2M2WnVlc1h1eHlGRmZyNENuMk84RlkyTnRwcDc4WjNzMTRKaEFsRlI1dEZrVkRva0JSbkk0TTlFCkVKMTZDVlRvQ2Z3ekYyS0I2WlNYNUtjcUk4RWJIVVlXbmNoeU80RXBPVkVVcW1WcnI5RkhTYVphN3ovWEdRc1dnQS9PQXlnYm5nMHoKMHpkbFNzL1I0Y0JJbklSTHUzTzUwMERLd29GRGQ2NzFEZjQ4alRISi9qbWsrWGtVMHlqaGVZa3BueDNPR05Ea2l0VWtvelJCY0E2QgpVRHphUnlPVVJuTVpRcE1zR1hkZ0lGQUdYa1lrNlZhYjUrQlo0NWZnSTkycGw5N0dCUjR3enhBUXQ5YkNnTWVQYjMxTEp0WTgyZGQ3CjRmT1F2SkdQRmRUWDM1b2xWU0VmT1Nqa2NMbkZBVlhydi9TRkhnTW4wRWlwd29NNHp1Q2ZRZW5DYjZCNUwzMWhyb3JPNVFqdUY4TysKU0NaaVVNME1WTnpIa25tRFd3cm8xQTdPTDUyTUlCK0JjREdGekJEQnhCNGpkdmlUenZuUmFiVzd1SUZSanNwYjZ1cXoyZzNYdHd0WApINGVOd2swNXNWTit2eFpieUJJVmZTLytNalBjblphQlRmcTRiWFJ5S0xGQ2htYkU4clI0MVR3Qml6aVpmQ3ZjSFB3SWxFK2ZVbWVGCjlqS3dkWEo0WEkycUsrNGJVUnF0dmRqbjdsUUF2TnhPVUtDV1dNQThabTdRM1Q4NWVQN3NscU90TjZIMGZqVHRVdzhZd29PaSs5aGsKZFNvMlVmTW9CQXkrQi9sSUVPaFFxSWVwSVBrRmpJVHFubkRTOGQ5L244enF3Z010YW1VMDhZTGdLK3Y5WjFyVTErWDN2ZmwyTGw0cQo5eXU5dDBIWGl1cks5aXFCOE0vWkZlZDhIVTQ3emwzTDUzSmdycUFrT2dQS0NSMnhIWWcvaXV3WVlObHNsVUVuM2pKb05LbHRzUklhClBYNFdianAzd2dHZkZjWmd1TDdQOUhlOTFhajBldjVvNVhHNDlZa1dwYzZERVhldHB0dUs0SjYvMXFLNUZjSHp0OTM5Q2hPcmRtTzYKeXgxZGpYN0ZvVU5obzQ3K3o3RWJOQWNkUjg5eHhRZjJWTmJQZ2VFRHZuOUNKMVBoYUJTeHl2akMzL003U2F5R3JyY09vRGk5OHZubgp0enZ3d1JXVXBEdFEzcmFoSDVTSEgwUGdLTjNYZmNEbkRmdkN2amMvSEdISGloSklDdnlCWlc5Z1FUelFSUzF4QVBVcjQ1UHBkK3dOCjRHODlVTEFnUUtNcysxbDR0ZG1uR1REYWpTS01lUTNHTXc0WXVsRjJZd2JzMXRtQis4U3RoU0J3QzM4MFVTLzYzYU9HTnJTYm1ZYUMKcldrbGNleUg3c1JwcTBvY2c0ZzNCTHFvcGJ4THRZNXhHcjFtcDFBd0J1MkNXT0FQbURLR0FUdHgyb1kwS2pLZ0hNZE13MjYycUQzYQo0VmxyemJURitpcDhyY3RwcnEwNGxLSklFakhJNlM3ZTl4YUdjRHNlaEQzK1NPZGVtaGRaNE1hbFRzREhZYkg0ZHJsOWlmN01WakpMCnJwWmNzbTFvMmR3VjJ3M2dBQjZmRitwSm4xQjZPU3UzaXhXdURsc053aFhoTmZlS080WEpKK1lrSnM0L2tXZW84eWEyL1RDSUVVSXgKTnZtZ3NtbzNwQXNReDR1WmVDYTFuV3UwVG5JVmZsUWNCd0xYbFhwenhKNThGMktGOHVuWFNBUnVNbHRVb3A3bGtUSVA0cVVVaVR3Kwp5TzhaUnEyaGxzeEJFM1ljOWJ4VUtvNzkwK2R5Tk8wWHFjMnIzZGxMeVp6VVp6OW1EZXZCK1U3NXVWeXJIWTNCVE1lLzNWZzJFTEhCCnN0aTBVUVZad05hazNJeHVnd1lVcFQ3WGpDcmlUQk1KRHRYYUdqVGZsRnJia0ZvMXBmYitFU3VxRHVNQ0d6RXE3RFU2MURldTVlMGYKZDlqcitWenA2VXh4M281YXREeHY0MGE1bzc0UnYzbmY4MDlvR1lBcjNkU1dHMlNCNzUydmhwN3dVb1JSMi9PM2lqQ1dpbEdHQTByawo0YklRbmpNbmhjSDFaYlY4SEVxZUZjS3pXNmE4N0gzZUFhWHpkbm55ZmpPSFZtZEZlT2xmSFJ5em5Rd0tSNWFQOXl2eDZzMXgrdUZQCjZadFZSWUVpZXpHZjFpQjdQZHBacWh2MWFRMm9EV25YMUpKL1p3ZG8yZTludUJUQktpeTlQdHVyV21rclF0TzJxNFF3MXRBM0cxQjEKK0lDUmNXcy9aaUJzSXROSVpySk80RWF5QlZ6T05KRHk4eDM3K01FS25IYkhsYVBSd3p0Z1hMK3dKd2RuNDVaN3k4cWNhdlZIYkJ3UApPaHlZZnAydHlITUF6ZHBMbklMbm9HWGpacDJ0dU1oUTR0aW1CTXQ2bk9aR3NCQVcyYW95emVVaVUvSnNhTmZaaW9zTXNzQUtIZ3phCjIrdDlNMFpEQjB2ODRCWXBYL0R5TVF2RGdDY28rMkVRTGNLbzN5WDZCZTZ6Y0w3SWM2VU5BNGtOR0JNOGh3K2lNSG1pRGYrcytvS0gKbHptWVJzSFFCZ3RkN2hHc0dzSkJTUmJyQitxZERMMC90a2VndDdZQUd2ck5HV2tWT0xtemY4YVRwckt3UGNxWjk1dXlOYTJkSE9pdApyZUZkMGpwWkFNMks0VXRYak84aW5tWmhhNjhTVDF0bFY1SVd0VzA4YlExUHc0RC9qMGR1SmY5S2k2ZFp1SGh5UEcyOHRXSThMUlVQClJxS2xsN01NekljR3Y3dzNOK2pMWU12OXVMWC9YTGk1L1FHVGs2Z1dPL3BXN2ZwZ1BsOWZzamFRUTZkTC9TU3p1NXpMb1hGOG9kb2QKVC9hcmhVbnZCNFdjUTkra2RFamYwZU5zRFdIRCt2bEY2VFA5d2xNeStUZUNBcjk5L1JDN2xkekt1MUVyRE5nRGo1dVN4dnhpcWxLaQo1Vy9uQWN0YkVWWmovZ3d0RW5mTDFXU2FjY0NRb1RjeXljNHhtNDFNc3YyQXBiblp3Q1RienpBU05wdVlaUHNaWGprNjZHN0FNSU40Ckk1TnNQMkJyTzIyRlNiWWZNRUN6eGlSTEFUSDlOcjlsenJPNlJ5Q1ZWc245RGVoOGp1Z01weUVxVWxBMGo1VHVpdWQvbXNyR3NSTXUKbGJSVTNHOFFUekJyWnk4NXEySzQwRzlicGNLVzZwdDBkTGNFU1FDQytxMkl2ZkNvWW9BUkt1MGNWelROemdXeUQzRnRET2kzcmEzOApjVTNaeVpydDQrT0hCTitxVmpFSERZNkczMHJHREREdTc1c0ZGY1lvb010L0JMTVBjL0drSkwzSzgwRUVabWV5d0owdmgyRUtuVlNnCmozNkRhWU5SOUJ2VU55OWlGK1lEUDR0U3dtVSsyVjBZRlRJYTRTSDNjYTJteEw5bzJmQ2hnOEhWQlJPNzRyZFFjcjcra2lWL0NOc3MKUmxjVzllUUxiOTZPT0cwUkJ3UEhUeStncTRrYWVNQkdkYndSbWlwenMvUkJyRDVwMGhMaTA1NnEwZTlSSWo3a05QTzlTY3FWRUlobwp4ZUI1U0tsVXFMOUV0MzdjSXRZR1dGR09ZWE9tZG1kaVBOSmVJa0paYkVzN0h0cE5WaW9kbGs5WEtoM3U5WFFJcVZQN3VmOGt4UHNLCkVYSXNSb1RTNC9CVklVTFVlQXZXVzFwd3BNUCtqbFNRZ0xwelhQckdWeFhNblpTSUlHT1Z5elVBR21sYW5Pa2duUT09DQoJXV0+DQoJPCFbQ0RBVEFbDQoJWjRpd3h0TlhZNWtJM0pLbFlBYlprNDVwTEg3dm04VXFFaDJFNHNPVFJnZDRkZGd6Z1Jua282VWtRdTRlK3Q0TTNLUndtaTJNb0QwTQpad0Q3ZURCbFJSZzRSNUNXQlVCanR6S0M0WFU3RWRFdno1VmdSQ2tHZ2tiaFFaY0pXOEtJclRzUVJpYzZWMk10MWhWdlFrL2FCQ01jCmRML085UUQyRFFBODZHUllkekEySUd6Q1lRSU0yaGtKUjZ3QVNFVFRjUWJlRHlPTUtNV014RSt1QXdFWlFPLzR5cGh3R1Y2WHRjSU0KRVlDUzJ1c01nNldnSm5HbFM1Wk5tRk5ncExhMWRTWnUxYzVMT2x5eGZhMGR2QTZ4cVZ5RDk4WHAyeG01aE1CcGR1T0tyU0NBakp3VwpzMlFVRit3ZXMrUVNGT2lpWHZ1eFZia0U0N1FZcys1QXlBS0ltdE5pM0RxZGtEZ3RGbmRlZHZYRTBVVXBKTUVROHNtNHJoT2Nnd0JTCjlJMGRNYmp3dXAySTZKWDBLalBDUlNuWUFxQ3hteEdPeHVTeEVtSXFBR1oxSlkyY011QjRuWWhNTEhrVXhxTjQrZGFvZW5PY2U2d0kKcjlISFFqMTFXUy8xUHM1K0lFK2FheVM1NHVQdHNWelJtQ3hGcFJJWi9GcEtlWnVJRFkzVDhCN09oMWVsVk9oaXFoYmhkTlZTcGJkUQp2am1CVUxiRDZ1azgrZVNESU5jbExnSlI1SGpJMVYvSnFGLzV4Z1pRdFJvWWNCcjRBY24wUHZKSXdEQlA1MmhJNkUvZzBEd0pVai9sCjE2b3g1TTFJYU9vTVhvemsvK3lxVlUxQi9FRjJvWlpmbm9md0I0M1FRSDBRd1IrOHB2SHl1UE9ZdnVicFEzMkp4UjdVaXQ5UVFsL3UKNDcvZEJ2cEs0OHN3L3VBam9SWm5Ya3B4Z2VweXd0WjNUcVRTUWJZZXFjTFZlZ2tZdXY4SnEweHZPVWdSUUtYZUlpdFBINWc0R0g0SQp5elJzbmtZVVBsanV5OVZYelVZVU5RRSs0cjJJVFBWbWk0SG5BYkJ5YVZYelhvSWJQNzRCM0lZSzJvSTcwYUJTVm5xSzVnR2dLYkVICk10YUhxeWkySjg2L0J0OUxuNm5xVlhHUzJjN29qOVpIeGNLd1dsK0Naand2U1RsVkFJQnN4ZXhCV3NIejRFZFBta0hlTWxoVStmWW8KVnlyYzdoMjhsVDdUNS9QQ1RXR0tpaE96WFBGcC8xVXVHQjNjcTNXT04zR052MUVTdVZZeDNHOW85Y2M5d01IUkwvQmJTMW9BOEZhNgpvUFN0dDlXSm9HK0E4TzE5NlZ2eE1WNUhOUlBjeS9Md0ZIMlRxZ1ZqL1kra0pLRzNJL0lDSE45R29YUEtxaldJRVFDOEVKQys5WFpLClIzSjN4ajJ0QXJhUEwrM3hSMEp4K3grVCtyTFM0OXNxTEROR2U3MlBrWEtzZDdpWCs1ajZiNnVIbGNRUGc0TVBqM080bGsrSWt6N2sKaytlVWJZVEdJYzZSaTZjWTdHSlVNamtLYU9CUjBQT3prUFFONi9uaUk0NSs0NG9Qb1lxaE82bkhyL3FrL0w0cjNwd2NIdDhuQ3VmMwpERXdRZmtrQ0VYTWRrT3RTUjd1UUJWREJvbkpXQkYvRVlodHl6ZWJabHl3NndEUkxTNnUzZFlabUthUTA2WHhEVVJTRjhpc1EwdXJmCjFXcE1hVzZnbXc2a2xsUzl1Vjg0bXV1a1Zsc3FuSVZINUh3cmxaOG5FUlNzZzdkZlBvYnk0WTRzRlBsbStsQTZ5ZUw5TnZka09FSlAKUFUvbC9mWGtXYTZZVmovZ0F5am5ZaFlpTGlSSk42WFRMN0lrelpjaVVpVW5XUFBqNG1SckN1dHZOQUVIWDJMVWVzdWhvVFllcnFBTApPTWxwUUtDTVZNb01aVm9Hck1lUEswbW1vYWdVRUdlbzRGMHFxb1ppRE1ZRjVOTFEyaFdEcW1qak93Y2ZCUVc0S3M3ZVF2SUpOTFAvCkM4eVVESnRLZWpNY2s0akcwMGx2ckxXYzhNS1ZNUG9ZVGIxaHoxOEhucjlpaFZPV3ZaME9aMVdCNTIvNFg0dnliTEQ4NHFjTGI4NGIKSzdSTHA2ZVpaSmtmeklhOE55d25McVZWbm83SXdrR1dLUGdoTkxyaUpSUlFMWmJmczdWeGZidDExQ3UvTXc5NTAwa1c4Zm9SekVobwplYVFER3c2bEpJYnc1d2c4ZTN1UCtrTExYQnNtSUpSOUVlYUNnNnJVOGhSV1RFdzlwcjRlRHlOdjFWbjZMczRNUS9yOU9XVDQ1by82CmhmRDg4dXprUEN2bU0vWER1MmgxOXBqb1ZJVG5SNmI4V0gyNHFSNFZqZ2F5UXJqaWIwUDVoeGVPT1d1MjRDbld5UmozNXF0ZlFRN3EKRU91djFjd0lQQVNwRmtnN2xtQnI5ZGVweTlKdzZ5UzJPRHc3aVluRGcycDJlOXlzM0ozRXBlMUNnRVpYZ3EwV2VhOXBmeGlNRDRrRgpObTkvR0l3UHRLYitnUDFoTUQ0UW1qOWdmeGlNRDRnR3N6L0dtVGxiUDI3QlA2OXg0UDJQRURUdXJtVVpNTmhKNTJROUhiNllTU0o1CkVEbUNGdmwxVEQ3TzR2Z1VVdTZhVmJhUTJNSDFMWUlMYjZNLzNFWlNHZDZsTGg5TkVvd2tvQk41ZzlHR0N4NmZITGc2Q3NGalBNTE4KZUJvQ0Y2eFhEMTJmcm1DRXA3aS9Nc2pyeHBFbVNaS0w1ZzVmZTNuTWZCVGF5NTFSNVhIWWhMYi9EYXV4TVg1Y3ljTnJYR0d5bXdSKwpkTVZ4ZWdEVHNKUmpMU0x5RVJiWEphZ1E3bUxLQXJnRHdQc3ZNR0oxeHlvNjdnNmQ2alNEMytMcXQ0UUVvSEx3QlkvNWVaVGhkUWZWCnVMUnVIdFZEWUI0WjlSdUxuMTdCdmFwRzAyTWNmMUFlNzhocWNQd2pxVm9pS2NPWklWQ0JrNDROd2M4TTBUNk1aNGE4WU9jUnhQZUMKVjVDdUwrRGo0UTZxOGhjV2ZaTkc4OExoVFM4K0V2QzNoTVVwSnRmVnQ4NURxUnpLQkt2VnlrVW5JMnVOeFZlUzRmdTVGREpiMU1NNQpIaWtPQ0pJUHRpb3F0ZzQ4QlV2WmlORWxZS1Q5dWIwWmw2amNGYjg3UUhUdWwwUFpaT0pRRWFMelkzU2NCZFNzeTE3ekNqdzdPcTVtCmQxckQwc3ZadHBSMG9pVHliY0FJa2kxU3pBNzZJMFlRUktPM2cvNklFU1NQQnJPRC9vZ1JKSEVhYmdlNU00SklwNXdaemtYemFLZjcKYTB2R0tLWXVNV05scC9LYVZIZENyeTEyUWlQNFZ1b2djNjQvK2hEOTdGc0VSQlZHMHdRanNWOURXWGZFblZCQk9JeGNhREVUYlNzVgoyeFpQYmZ0Mml6dHFHZWhnendTakdNTmdzTlg3R3F1dEw5a2ZnNFlXTkJkaW8vd3RYRzdOV1d3VXpza25rTFRueXMrZGIvUXpzaGhpCm82dHBTRHR3QjdEQTVibk9JRUdwUnRLdW9FL2VNVHo0YWhuMktaV05aTk0rSlhKY3BTMDZGTm1SdCtoMCszTnNORVRjcDRUTHpiQS8KaDh4QnVpMDY2ZkM3MWZibnNEZ29PMWZwOElyVEFXMGZ5M1I0eFBZcFlYZHdJZ0E3UWlIQ1NSd2pBb3g3S1JsRjRGa2lwdEVCOW1pTQpwUXpBZzNRYzlpbVBjK09wUW9UOVhUMFJESkhEVlhZTmpoWVVtOVpTOHI5S0J6MHpTUGRYcmI1cERVOXk5U3RaSzRZOVg5b05YL251CkVQT21zUlVBTmFwcmhDR09nN1F3TEFHOCs3LzN0V1hoa1N0YlhhME1lUGhjeUZVbjVLMVhIWXhjSUx6ZVFFclJpR0Y5NnpNamFBYlMKU0VUZGQ4S0RuK3NOOVdoc0xkWUMrcGF4QWdEUVVPZFVBTlVjSUs1eiswV3VLQUo0UWxWd1JSZ3lnT3hpZjAxaEE4L0RDbG5Db0dRTAo1SzAxUW1GSEdIZ25UTlM4WlNQMlU0cWtRTy93VW9NUmY1cXdHUnpHYTNvRjFzSUJmQnpGMU96aVZXSE1TNHdqSlZqWllTZkFpT3ljCnNsTHUybGF0WGxSZ3BMYmhIdEEzMWc2NHdrRzVYZlVIcTdYYlRWeVczL1NjVm10c2tSbUZabHpBRWlRTElJelRiR0c4UnEyNWhKTGQKSVJwZ2ZUb3dpbE1uNWprSExwSDBqUjBNYVBDdXRXN3JrU3FqNWJHdk5wQjZxc0ZTZEVMSGFhWitITGM0aDA0SWViU3ZLd0dvSnhiUgoyME1NUVA5MWR4OVQwaXNSby84UkN0RjJRdFkzNW43TTJiVllDNFoxSWhwYmtKVzAzWXdNSWtkUnB5blZTVEM0VFdFUVlvTlVLYmFLCkFFTEJUZUN5SXR0UmM0OFZ0WmFKK0FhSjhuR29ldzk4NmxvRGVOTFpiZG5mQjY2ckduQjhSdHRsVWxCcnYvQmNDT0ZGRFhjQktVRlQKYzBXeFUyT3YrS215VFFFVGRpTmN0ejRNdzVLNGlCVGplaEUvVVlSZWNobmp4N2RiS0pycGw3ZGE0RGQ0U2pzNk9WTHlzOVdUSTZVUQpwWFJFSStpczdPTEM0NzU1S1h5cE9UUlFzMnRoUTd5citzTWc4UWVsWFRWMmVCNDJCQ0Z2V1RWOHFEOFI4dVBvSGZPcHRRZEFkS3NICm9GNEdaWWU1c2FVR1JpL3h3Q2lRaDNpZzZ4S1BqUUl4QldNOGwycG82cEtSZ290ZzJhZERyZy9kUllVWnlybTdmKzdRWFRnM3RvZmsKYnViUVhjeGJvd2E1d3FHN0h1d1k1TGMvZCtndW5CdjEzTjAvZCtndWxHbnFCdW1mTzNRWHlqVDEzTjNRSHp0MFY4N3prTTdkdFRwMApGN3FwU1YxUlEyeFBUakNYRnRURlZIN3RpdCtYQ0tudVlhTklCaEpaMGc1dmtwR2wxbDJsSjhrWjRKeWkwNzhEYUMxQkh4R2REYTRkCkZSN2p5cEduRU5waVVYZFNJbWpMQU8yendPc0I3dFZvbjFUTmd1NmhTVlpqMWplZ0pVOFoweTQxZXBCUElLRWZOWndyanNZS0pQVHcKQ2ZVWW11aHlYT0E4SWgrRUM4eGQ1VmhiL0VoeG1DWTlrV0tIQm5HR25XbmIySXJLSTZ5ZGhMVFlJWkxhYUcrdFZvM0FJQ1FqQzI1NApmTGg4dHU0bEk0Y05VdzBOdUNiT0lqSXZGZUJHS1R4bUJHNkZkaXZUSWI0TkNuN2VCVCsxK2NWeWpwb2t1MFgrWXpSdDlIN3pndWN2CjFpdjlZOEEvK0puT2Vsa3U0K1dTU2ZCSEV2N2E2SHYrQ3FEV1hqYm9iUURseFhnTE1PdXVHeXNJaS9Kb3NCak5wajNodHplSGZydS8KYU55ZWxyMDVyL1JPRjd4ejRBMkFuakZkMEJ3OENxSjkyQzdzYnhmQmdoLzNQMkZYeXZEckZmeGdvb2tNeTJSU2lUaVhqY2N6VEJyOApBcjV3WENxUlNySHBUQ2Fia0RvY1RXWlRURHFUaUxQeE5KZE1aTUd2OXowSUFRNkdnMy85aG4rZGdXOC93RzgvdlN6anZmQSt2VERlCm9ZZjEzcmM4ZjZXaTZVUW1ua3B6NlVRcWtVeHozZ2lialdhejZUU1hTSE9aYkNyakJiNDcrZ244bDhteWlVU2F5WGdqOExVVWs0MXoKYkR5UlRDUTViOFB6Vnp3ZTVaSnNLczV5NlhRMnc2WE1vRUNqQkJObDBIOVpCZ0RJWkMwYm1mQXg4TmVJL2xYUTJCdmgwQlBuUVlCRwo3NlJKUzN0anA5T0ZOOUR1MUxydHo5NmN2L2s5NS9YejFDakt6QU40Q1Uxc0JLNlIzV2J2Zzc4UmVxTUo1S1VQc2ZjMzcrMU5wN05GCmI4SFB3U1B2aDhDTGk1bkFlOFhQMlUvNEMzeEpmUUZ3NWhWd0l2NGYremsrS2c9PQ0KCV1dPg0KPC9pOnBnZj4NCjwvc3ZnPg0K</xsl:variable>

<xsl:variable name="sortArrowUpActiveHover" select="$sortArrowUpHover" />

<xsl:variable name="sortArrowDown">data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIzLjAuMywgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IgoJIHZpZXdCb3g9IjAgMCA0MCAyMCIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDAgMjA7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbC1ydWxlOmV2ZW5vZGQ7Y2xpcC1ydWxlOmV2ZW5vZGQ7ZmlsbDojMDU1MzgyO30KPC9zdHlsZT4KPHBhdGggY2xhc3M9InN0MCIgZD0iTTYuNywwTDIwLDEzLjNMMzMuMywwSDQwTDIwLDIwTDAsMEw2LjcsMHoiLz4KPC9zdmc+Cg==</xsl:variable>

<xsl:variable name="sortArrowDownHover">data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIzLjAuMywgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IgoJIHZpZXdCb3g9IjAgMCA0MCAyMCIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDAgMjA7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbC1ydWxlOmV2ZW5vZGQ7Y2xpcC1ydWxlOmV2ZW5vZGQ7fQo8L3N0eWxlPgo8cGF0aCBjbGFzcz0ic3QwIiBkPSJNNi43LDBMMjAsMTMuM0wzMy4zLDBINDBMMjAsMjBMMCwwSDYuN3oiLz4KPC9zdmc+Cg==</xsl:variable>

<xsl:variable name="sortArrowDownActive">data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4NCjwhLS0gR2VuZXJhdG9yOiBBZG9iZSBJbGx1c3RyYXRvciAyMy4wLjMsIFNWRyBFeHBvcnQgUGx1Zy1JbiAuIFNWRyBWZXJzaW9uOiA2LjAwIEJ1aWxkIDApICAtLT4NCjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCIgWw0KCTwhRU5USVRZIG5zX2V4dGVuZCAiaHR0cDovL25zLmFkb2JlLmNvbS9FeHRlbnNpYmlsaXR5LzEuMC8iPg0KCTwhRU5USVRZIG5zX2FpICJodHRwOi8vbnMuYWRvYmUuY29tL0Fkb2JlSWxsdXN0cmF0b3IvMTAuMC8iPg0KCTwhRU5USVRZIG5zX2dyYXBocyAiaHR0cDovL25zLmFkb2JlLmNvbS9HcmFwaHMvMS4wLyI+DQoJPCFFTlRJVFkgbnNfdmFycyAiaHR0cDovL25zLmFkb2JlLmNvbS9WYXJpYWJsZXMvMS4wLyI+DQoJPCFFTlRJVFkgbnNfaW1yZXAgImh0dHA6Ly9ucy5hZG9iZS5jb20vSW1hZ2VSZXBsYWNlbWVudC8xLjAvIj4NCgk8IUVOVElUWSBuc19zZncgImh0dHA6Ly9ucy5hZG9iZS5jb20vU2F2ZUZvcldlYi8xLjAvIj4NCgk8IUVOVElUWSBuc19jdXN0b20gImh0dHA6Ly9ucy5hZG9iZS5jb20vR2VuZXJpY0N1c3RvbU5hbWVzcGFjZS8xLjAvIj4NCgk8IUVOVElUWSBuc19hZG9iZV94cGF0aCAiaHR0cDovL25zLmFkb2JlLmNvbS9YUGF0aC8xLjAvIj4NCl0+DQo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzEiIHhtbG5zOng9IiZuc19leHRlbmQ7IiB4bWxuczppPSImbnNfYWk7IiB4bWxuczpncmFwaD0iJm5zX2dyYXBoczsiDQoJIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB2aWV3Qm94PSIwIDAgNDAgMjAiDQoJIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQwIDIwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+DQo8c3R5bGUgdHlwZT0idGV4dC9jc3MiPg0KCS5zdDB7ZmlsbC1ydWxlOmV2ZW5vZGQ7Y2xpcC1ydWxlOmV2ZW5vZGQ7ZmlsbDojRkY5ODAwO30NCjwvc3R5bGU+DQo8c3dpdGNoPg0KCTxmb3JlaWduT2JqZWN0IHJlcXVpcmVkRXh0ZW5zaW9ucz0iJm5zX2FpOyIgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSI+DQoJCTxpOnBnZlJlZiAgeGxpbms6aHJlZj0iI2Fkb2JlX2lsbHVzdHJhdG9yX3BnZiI+DQoJCTwvaTpwZ2ZSZWY+DQoJPC9mb3JlaWduT2JqZWN0Pg0KCTxnIGk6ZXh0cmFuZW91cz0ic2VsZiI+DQoJCTxwYXRoIGNsYXNzPSJzdDAiIGQ9Ik02LjcsMEwyMCwxMy4zTDMzLjMsMEg0MEwyMCwyMEwwLDBMNi43LDB6Ii8+DQoJPC9nPg0KPC9zd2l0Y2g+DQo8aTpwZ2YgIGlkPSJhZG9iZV9pbGx1c3RyYXRvcl9wZ2YiPg0KCTwhW0NEQVRBWw0KCWVKenRmV2wzNHJxeTZQdTgxK0kvUUNZZ1RMYVpTVUxDVEJLU0VFaklITUxnSkRRRWlBMjd1OCtIOTl1ZkpFL3lJRnNHK3U1OXozcTcKNytVUUxGZEpwVkpOcXBKMmZjMTJwRENjOWZsSVBNcDRQWC90N3BZRXZyZVlDVGt2K3RsN09wa3N4WVVBZndxMGdsNDJIV1ZncThKcApwaXUzN1BDQ09KcE5jMTRPZ0lqRzRkTXFmRDhnTHNaQmJ5QUlmN2daTFNZOCtHa296T2JEMmM5cEYzMHdYSGNtOUtZZmZGVDgreU9vCklnZkF5cjBGYUo2TWNUR09ZYlBlUkk1TmVac1hxRVZ2K25kUEZFZi9BYy9aVkR5RDhCVm55K2x3TlAwb3puN2x2QkhXRytFWWI0TDEKb3A3V1J5MWUxRGRnb2d6Nkw4c2tVa3dtazAxSkwraC96a3F2bDJlRDVSYy9YVFNGMllBWHhkSnNNaFBFblBlaTl3Ris3SGtmK01sawo5aE0wTEp3bXU5WFJoQWRELytvdHZHd2MwYWx3eW5MZDRuSTBHVjR1di9vOG9Fb3lrMFMveDdzSTFLMElBT1c4NkR2NlBkMDkvUUkvCnRmbkZBdlFYWUVLOWFOV0tlQWZBcitoZjRLbkZmNHpROUFDaXZRUVZ5SURLWHoxaEROK1doK1psNUdjMy9OZDhBcWlMS01HbG9ra3YKeTBVejZTVCtYV2tLaGlNUkxKNUtnQThtQVFBbHZGd21JVGZRYU1QL1BlSi81cnlYc3lrdjA2SWdMTnJTSkNVU0RDTjl5bzlheXdrdgozRTVIQzlDL0ZQb3RLeEhqWWpia0orQU5EVVIxMGtNMFFQOVk3Vk51Y2RNVFB2Z0ZtTi9aWkxsQVBKaFJzUUNDTjNxL2VUaFpySXprCmFzNVBiMllkMU5VSWwvRnlpV2djakR6T2VibHNLdU5sczltRU55dmhTb00vT1ZaRnpHcWZNbmdJQzBKU2NLVGhORFhCekYwSm80L1IKTkJmSnh1UGVTSkpMUjFOY1VwN1ptakFhYWhNTHFNMUlId2hQTkNOeEg4dG1PU2JMWldsL3lhTC8waWsybVdFVEhNMHZNalVBYlJjTApmcXFRQnpCcTZRSmpPeVo2MFlaanFreUhwZGtYbkdZUkxUWEFjRlBBaTVQWmgveFUrd005QXlDV2M1bEk2SWN1NElxbU1KcEN3SjYvCkxxVm5tVzV6c2dRUGE4SnNPVCtkdnM4OGZ3VWtnZFBoQjBDb0FOWVplcS82UDhBZlFJYWdKZUc5RVhvREFBUDhyYmFKOWtiem9BUEEKTXY4TzFxUlhlZ3hlbG42dFRQL21KN001ci8wdXRhT0IySnowcGozQml4Nm9BQnVqdjhHVEhoaW5CaEkyNUJmM05EREJiQWhZWjlDZgp5djlTOVFsdzRSeVFCZlVDdFRIMHo2WUI5b2dHVldNME5ZRkF2L1dFeGMrWkFJVStwaldpL0MvZUNXSjd6QzhHbjBhWThxOHJRMjMyCkZwL2U0b1NmRGtXVkN0S2ZHcDNockVtLzBZeTgxSnRNUmg5Q2IvNDVHbmlMd2xMODlON01aaE1WdXNWekZSUCtERDJDYjlJZ2JmLysKNnM4bUkvRkxSWVAvMGdUa0dRMG1mUHUzdU9EcHVCY3VlMkY2TlpYb1l4NkYzTUE0QUNDT3BYZGM5ZjUvRnB2NmxoVW04UEIvRTViMgpBRkhHQ29mK2tZcEgvdmxmaUVXWjVNcHdCQll2UVVEWnRtbi83QUZoMEJqMUhSWXFKUFA3YURvRS9XNHZSd3RlVzV1enJ6bTBBcjN0Cno5NmNSeXRIYWRuV1FDYTdRS1BoR2lzU2NkUmxMQ005YkhkcXdBSUVZL0Q4RlZPL2UzUGdyL3VMeGlXd2JkRDM4bWdBVFpXZThOdmgKMFlFMzhPdHJNZ1VQSTRBeXdxaS9YUEJBa0lWQnc0SWc5SXh0QnAvQXloVDRLV3JCZVdPblFCR3BEK0hINGpjY05uZ1lXSXBnelBQZQpnTCthM29yZ3R4Z3d4Z2FnUlJ0Z21YN28zL3E3TjFuS3I3MmpBU0hEemY2ZGFlOUxlZ1YwVC9kUytCOGFjSktMcGpJWjZvSCtIQTBYCm4vUkRsSnYvVTRPVEtFdzl1TkVRTkhVYUVtejBqMDFXTkpWTVVRL25GLzA4L2ZybnhnU2NLK0JwVUEvcWt4OTlmQzdvUjZhMC84ZUcKeDdpYXM5LzBJL3V0VHA1VHovOXRRdlo5TXBzTnFVa2k4T0p5NG1MR2xmYi8xSXh2TThsa1BNUFI2dzVJamNnQWV2a3VkQWYrRWlVYgprSWJEMmczSFdpRGkzZWVyenRPSmRkMStXdjZSR1lPMkcrVmtBYmNZT1ZuME02Vzk4VTh4NUFDYWR5SXkrUDVMbDF4N3RoUUdmRTN5CklPblYvZFJoa2VyVVBtejhEeSswRXQxRS9yc1gyeFJHZ1NmVWsvUUYvcVNmSmFuMVA4V0dmUmd0K2YrTDdILzNJaXM2VDZKK2dmMmgKamxDNExsZy9ZbVgrM1h1ZytOekFVY2M4N2hWOTk0ejBUSW9qU1BGbU5XZ2h4VDB1ZXRQZUIvRGpyNFFoNktyVFE2OXRvREFHUHBlRApUNHZIc2FBM0tuY0lodFIxM2ZrRFF5TUZNa0VEVWcvaE05YkxjdWovNEk0T3czaXhmNXZ2ZjFaNkJqZVNGcjhudkFqV3hmbDA5bk9LCi9vS0xJL0FFK0tFSHhNVUw0S0JMd0NabzdiUkhYL01KcnpaaXZGZndROXZJWWIzM1BmaExDM3hFc3l5Ylpsa3VuVXltMDhsRTBzdEUKMDVsVUpzVm1reWtXZk1UVDRCZjRWNXhOc2h5WFloTG9sMnc2a1FETk11bEVNcEhOcEdYZzl3VUlWdGt6dXY4Ti96b0QzMzZBMzM3QwpiWjRMNzlNTDR4MTZ3TU1XWERtZ0owUFFZV25QNEFBdUY0Mi9zNUJnMk5DZGFkanNUZmpGZ3BjRzIreHZlblRHclVaRXpmdi93Rmt3CjdrRTJCK0QvaTFxZjFaNjVtL0FHQUtxYlpETmhwQ2JyaHUxUU5CMkMrais0YURIOFNzSWdkMXJaQ2kzM0ZvQzdkcnN4NVFmSWcvQlAKbmY3YTdUS3kzSVJidFFXQjd4WFE3Z3VTYzZDMUt2OHQzc3l3cWFRM3d6SFMzbVdzeGZjbXpSbm9FbnptRGFDOVZXa0xVZ2FtWUNxUAp4UG1rOS91aUI3ZFMwQk1ZbCs3UGVzTFF5NXBGOEtVaWRuZTdySVRGRzJnV1dpcFFCa1BkNGljM3M1YUVWZXBHRTFwd29OZm9NU3UvCmxKQTJvNm5mNHpUOFJTQ2N2SUZUVWVseG01OEEwY0lQeVMxa3JzR0djYUQ4anpwdVJHYUY1cGkxWVVGMXNySTJUTmYvQ0pnTllTRXAKOWQydXJaRUVPUWRwa2Z1THByYzBFM2h2TXBxS0ROaDR4cHZPUnRsa05zTWx3bDZPWVZNeEpodGpFeEdHelRIWkhNTjY1ZjlvN1NxQQo2RmZ1MTljYzVwRlFtUWpTa0pSWE5qbXZxNU9xQjBtVm00cTVMMzdSaTdrWk9uZ2c1bWpqbTJvWDBTdmgveVptKzF3czVybFk3T2ZQCm45R2Y4ZWhNK0lpeDJXdzJ4bkF4am9zSXcvZUkrSHU2NlAyS1RNVnQxK1FGcjdzbk1IcnB2NHJFTHVnR0JwL3I5V2RMV3FjT2RRdDcKeVJYZHlDT3lkVHlBS25Gd1BlU0JsSGx4SUl6bWtOb3VobU1jd2gvcFdxdGMvVGQxQ1VsVktNTGNkdXJmenZwN1U3SDdkMDhRRHdqYgpZbWFoNGJSL3BrbUsveklwMFIraEpFcVdobEtBcEcxZU5yOG95SVUzLzNmbzdlbHNTdXE2YnFDVDJXRE1PKzZwb3A0b1RUZkpGUDhHClNRb21iOVRyVDNpcWxmRy9SaWdNbHVKaTl2VUh4Y0svWXBUdVJGL3ViL3BSd3JiL0dtWC9kMDdzd2JnUTlNK0JvS0huMVArSmRRTTYKOUcvcnozL1hVaGJmZi83NzFmdS9ZWm1JazlIZ3YwZU1xMkVoNG5qN3N3V1E4UTMrZmFIRXpDam0zdnpTdjBLY0o3bG9tdVVZaGtzbgpFeHpMSnBTb0hYSHdTcHFiODRpMURMZC9mcGl3ZWdjT2syRXk4U3dYanp1UDh4ZmRpdjZYakErbWlpV1QyV3dtbStXeWJEYnJPRHcxCldjeDVqRmllMkQ4LzBBZ2NhWW9CSTJXVDhWUW1sWFFjNlcrcVFmN0c1dlJmSVUrbFBXVlVndmJ2c0R1QU92eFg5QU9HRTRZOTl5RUYKY3AreWEvZHBleWh2M0ZEeEd0WmFvb25LeEZoTkRTejc2cGI0eWFRRVdFQnBtU0MyYk1FMVd1ME4rTUwwWThLcnpUUHBoRHc0NHdzdwpOVTJvQ1R4djNQS3hoRnpVQnB0a2JQdHdOZThOUmd0bE9hV1N5WGpTRG5CTGRXM2pYRHFWdHVzczFnY3lIYUNDTlpJaFR1d3hwQzhzCk9GU0dsZ0ZpaGRBRkNCanJBYU5ZQ1hEcnovc3VWY1h4Z25lMlhFeGdWZE9DLzdXZ2JDb3VoTmxZRlRKMlpFQVV3K2NzbVZIS1R4bU8KVGRvelIrWFhRbU01dkU4cHJFKzk2V0xrN1UxR1BhVTdjaEl5UUlDeGRydFRRK1dpeGRtdk9xNGNPRUsvYjdURlJKd0tOTVZYNys4aQp2M0JrTkdSRjZmZ3N3MmJaYUR3Unp3TEZrT0lBQVRPSkJCdGxNeGFiblVaZzdVVlAzVHhVaFJUci9OcWdweklZUis1cUhWWWN6cVk2Ck1wRldHcXgzY0RleGtCQzZlWVhyellhQnRkWEdwVGlXSkJwZ1N4MlhPVXlhYmlZY2w3SFdoMFNHQ0JnV3lRSldLNC9FUlc4NjRBMkUKQTB6TGV0VzljbFE3Nm0zMHBoOUxXUERabk0xaDdZL0V2VklOQjVGNzd6QVROU0JWb21NTng0WFQ2bkl5VVJESkpldmdxVUdYRlU2egpzTjVRMmhYWEVvKzE5UUFiTElUZVZKejNnTllaL1BaK2dERjZSVTN3WU1zeDY1MzM1bUFsaXFPdjVhUW43VEdZbGl6clZWU0lkeVRPCllHVzJGMlhZb1VKWHU5Ymo2V3d3Qm9JSDlHQ21Vc2txejBCNkdVZ0NVUnVzOUpzNG42bnFTQjRmR0xNeTVMUXk1dUY4RkZWWUlxVk0KODd3M0hCbzcrTlVUbFcxWHVNdCs2aTBzRnpOdnF5Y3VlQUVUelZ5Q3l4RHA3ZVhBZ0RDR2RXcmMxd1E1cnFFczJySjRXMGU0Z3NyYgpqbUR4L2pvMkZzeEpDMmhlbXdJdjhzTGZ2UGNHcUJ0VUE5ZnJqeWJhWWtSbkhhaUFGVWFXVGtQQTlCN015bEpYRnE2aUJEUUxrYjlSCjViUzMzNXRnaXpId2RNRVBSOHN2cjFaSi8ySzJ5YXlXYWxXRmovcS84T0pwSTVxd2daUzQ0TVZQbFJmUWFzRFFxZXBkOThyVmNqRUgKRE83d1VrQ1JyMTdsaTBGQ1FBa0VKTVQ5ZzhxdmtTVERPS3FGRmc4WDdkOG84MS9vOUtZajhST0F4SldMcloyRmFyODdJM0VrVFNQVQpUUXBsVENvdW5hVlZjUnJvbTlrYzc4c2FhbE9EV1VTUkRSM1lWRm9GbTBsd25CZmhvUWRyU2JkME5xa0NUYkpaYnliT3B1aGdRbjJHCmVnck5QYU1aWkQwWFdrTFU2WFRJLzJyemc5bFVXWUtaUkZ6dFNEb09URkg2bm1oRVc3a3IxWkVnT3IyRG1NK0dsVWp2cVlUYU9BZXEKa0RmSGdDcElNLytsMDZ3S05jR3lidmdQUXJWa1A1Wmd4YzhWRVR6N214Zm1NTTNQcERFTmJ3d21vN2tYVnA1TStGOUFzbjhBb2FSRwpHQ3ppS1dxU0lIZ1VxL3lhejRRRkRMY1hSQ0E1eFhOZUMxeUFvUTFtd3BBZldzRHl4aTVuQy8xenRYdnRhVzkrQnp4aUhwcTBtZ1doCldEY05JRWlWM0xmVHNuRnNKck1ZQUROcWVGT2J6OW5QK21ob1lmeHdqS1lybXFOZi9BUzgrbzVPOHpCU05PdWR6alNTZTBkVEwxYkwKb3djTHBEbktQSU5hUm9RRnpJWUJ3bnp3MlhUUlh2WkY2U0FUUzFWYmFiYWhha0VlVzF2bnNUSEVkamVhRTBqUWxqbzFDVisxMVkyNAorWXZ3MkxFYzV3VzJWQW55V2tubXRaYU8xOHpEczJtczl4ZWhrUVlkeFFKMEZEV0NPWThSOWNsdWlCUk1pMGdRMDRKenNjRlhWRm1FCmc2L2Y0eUM1cGJpWVJJZFNpaWNpRzY5WXJSYXBUTWIzNUJld1NBN0ZTOUp1OEh3K3RPblVmQzRvblRLSVoyTXJDWnBpTXdKaXlsYVAKc1IwZWVDZTNHc0hqY2FJVElPOVVCVXRzcXdzQk80RmN6QlFKa05ZY1BPdW0wcWFJTWlMR29iV0FkOEpoZWxXUzAwenRmQWlyb3liNAozT0pWQWphdkF3TWQ1aFFEanJWWXB3WW1WU3V3OEpBaTNrWVlDcUora2psclNKQVR6UVlsWVUzTUZwOGFuNHV0V3RGN1dpbWwyR3dxCkZlR2lGam5jSmpDejk5R0VrdWZSQ0hyVDZRenJtM2xHQjBZbUpiZjZ0QW92NGExK3phUGljZzdIS3Y3OEJNSmY1VDA2OThRQUN1TUEKSzZxQ0ZyUDVjT25VWWpCemFpRTZZSUZodUo1ZXVGb3hGV2dKN0ZLZ0JCWlNETkdoS1JEdjltaGxZRmpzRXJsalZrMkIrMnJsaGxrMQpGVXhOMDBucmxub0hrN1dVQm1JVVdsSlRNTjltOTgvUVVQenNEWGtCMTlObXNRcGE4UXNEUkVMRENRdE5qSjR6YTMvTzhEQ201ZktFCnpWQkV5SG1kT0FMN01lc0RzU2VPUHFhR2NKR3BKVnFlL0JTYWowT2JOUVVCSW5YWGwzZWZiRkdqbHJpTXNHM1lFL3VqeFpkcUl6ckkKRS9pYXc1b2NUQVIxRWN4bkM3dmV3cWFxeWRpZjlBYUtyWkRtTEpzTHcraE1HTUVUR3gzb0NsdStnOVgxT1JQKzQ0QWZVd0pXaXdCQwptc3ZsTExhc2dmcjJFZjJicHBGcUMxaXZGTmhNaE5Gc0hKcGx6OFRCZkRMNFRRdnQwMFljU2EwR1U5RitOY0VCZ0E9PQ0KCV1dPg0KCTwhW0NEQVRBWw0KCUNadjA1bzU5VzR3bXV1aW5QYlJQT3Y2YmYzeU5aWTNzd09Db3BYNXBFWnVKc0FyTnFSRUF4RlBhTUtnOVdDb0xlRjZxQWpmS0pTM0YKSW13TGpDVG9ueGhVc0hVL0JzTE1UbXVnTmdKV3krY0lENFkwK3ozQlZ0akNobk5nOG8ybTd6TzdLZFVvQmFRa1puaFNOTVlNM3hTeApOVG9QMWRDYUFqWnVxRklBMS9wTjBkakpDSDZmTHFMRENTWm1yQWdzTlpvTDc3T3ByY1NFN1VUZ0Z5c0k0d1ROeVAvTlQreGNIREhhCkgwR2Z6bDdCVHZtUEhsYlFTR2dGaFAwQ1pWbmJOL3BDTnFIR2tKYldCRktJU21SRzFmL3dVRSt3UEliZS9tOXZXUUFkc2lnMk4zb28KRGxwS1FyU2NEaHgwcEtRY1RRWVRCYy9wWFNsblB0SzF0NXcwSGZpbHlKZG5neUw4RTh0Z2xEY2hZQVNtb0x6cGhTNDhwVHR2N1FjaApZd0ZXeU1OVG51a05CV1hYQkgrTlJHZHhQSm9EQzJBNmRtZ25BTTRXUkg2R0t2WHRtMEpYVUl1VldsRlVNNEltZHFzRmI2YU15WnJtClo3TStQTUFRcDNoYTIwZVNvenJTUmtoTU92M1dXOVNaMkhockZKdXhhOHdZZzBzV1lTN1dBTThVb2RJSGttRC9yQ0pKcGppV2RlUk4KdDFra05hd0p2U0UwMmJ5OTZWRGVQYkxkTDVMZVFnZlJ3ak00NFZ0b0w4MzBsaDZYUkZyWHlLVFhhTEJod2N2bWgxSTRxQmpyNE1mSwpGQ3dGQzRMQllPZHlNVHZuQmJVSDJrdW8vUDFHbCtxS1IwQWJzMEZQM3dmODZZMUZpaXg0QlBzdm5WTnFuR0gwVURvMzNBeXhLZkNECmtXaXh1dzJlM2ZlTUZnZjRzWHhUdHFEQ1Y1OGZTanlyTGhDemxNRU9SekJVM01NcGtVcng0VENVaC9Bc0ZmQUEvd2xLcjBLN2RIcWEKU1paNUtJUVE1RkErK1pZT0hYZjZNU1lXdW9pRWpqOFhjZmlOU3h4ZTUrTHFnMnYxRzNwd0VEKytXUlRMNzluYXVMN2RPdXFWMzVtSAp2UHFVQ3gyMVVwKytZTHgrNUl2RS9DMkF4aGZLanc5OXdjdkhyQy84T1FMUDN0Nmp2dEF5MS9hRkwrN0x2Z2h6d1RHeG80Y0F3cC8wCmxZTFhDWkVUTDBEdnl1UEU4ZFZiUGw3TXhET3B4OVRYNDJIa3JUcEwzOFdab2ZhVXFYZjVFa0FqQ1BtamZpRTh2enc3T2MrSytVejkKOEM1YW5UMG1PaFhoK1pFcFAxWWZicXBIaGFNQnUxOUlUNW5ZRlg4YnlqKzhjTXhaczFWaTZtL0pHUGZtcTEreFlmOW5oOWdUZ0lhaQpNNEp3N0ZzVzN5NldGNFY2YW5DVjI1dU85bXZKeGNVSjZFU25mUkpiTU5YY3kxVjVsbjFyUndyZzNiTXZacmozVUZheHpxVzVxVTN5CjJmck9Ed1FjZExwZlVlZGhEelhOejRPSGMvUzZqTHJYS3NyZjNzNk8wV3ZSbUpqOEJ0L2FjMU1UaVdoaXBqcTk0UUxaaHgzUUJYWUsKc1Y5cDB5ZzhpeCtaYUx5UldZYnlOZCtlUmd3QU4xT0wzeDFzdjZOK3l0MlhldGNRQmVGQWZCUmVEcHBYVEN6UkRzRFJ3UDVxaU1ITAo3SFBpL3JNUnRzVDY4bEdzRTdHbXVCOHhueFZXeEFJSFlsOTRqWVh1RUdJVDFzdGljUHQyUG1sWVlSVzNYMU5GRXRaNi9qbzk3U0NzCkFJMXB1SW5nZmVoZ2NIVmhpWFdyK3BvZ1ltV3F4Zk1USzZ3QURVQ2MydDZaQ3NFamF5SW5IbDZaNnZ0bDJ4cHJ6WGU0eDU1MWJ5eXgKMXVyY0RjS0tPTTFNWk80eGYvT0dzT29ZVDVyYU8rRjVtVzlBckVIenZBWWU0azhUTmdpd0ptWWFWb2hHbXRvR294QzU2ZmNic0NhVApYOTA1Q1d0WGVQbWMzaEN3bnZSUzZlb09LODBOamxqQytucjgxaUpocmUvRUF3ZlAxbGdQZlMvaTlpZmZNbUNGYUNURTE2VmcvbnZuCnEyR0ZOWFF3eWVVSldGUGIyOS9MeDdRMTFzVERFMU05UDJ4Q05GYkQzYXArWlhjVGwrVnJLNnhNZFRZNkkyTGR1N2ppYXdhc0NJMk0KbUdkcTE5dVAxa1MrdkdOMng3Rk9HMkJOejQyTHgxL3J4bVdzRDVHQUFXdnllOXh1S1RLTnJUeVBxN3JoUHVhWnhtazJEckh1bThaYQpIMytuRThYamhCVldwdkgxemh1d1NtaGt4Sm1MeW11ZmhQV1Z1WnBjdGEyeG52c2Z6NlBSbVdDSnRYMFJoeGRmRUlmYnFDWE9Fd1NzClR3bm01clFkSkdCZEx0cU4ybE5hd3dyUVlJZzd6R0pFeEhyRFg4WStTVmhQbWM2clAyK050WkgxQXpTZGdPL3kySEs0ZDVIT0hoSHIKWFNGd3NFM0NPbUlldzBldkdsWTRHZ3p4NVNuL3d6ZllEMWhpZmVsdlhSQ3hqbk1UL3hrQjYvTXhaT2pYMTBMQ2VyaFhvYTM1UGxpYwpsbGpmNHZjQkl0YXRoOWY5bUlZVnFUVmNWdmdFb2RvY1E2d2gwK0s1NGs1Q1c1bkRBY0NhK3phS3B5VTc3Y2hZeDlsOUExYUE1cnViCi9oSVFZczZmRDlUMW1xY1p5czBXRllnMWJGNnlON0hkcTlGRkMyQTlFWTFqclZ6T0dSbnI0amdFNTBZdkYzZVpuYTYwZUxpWFJlNU0KTDZHdW1Vcmx0Z3F4UmcxWWhlWGJycy9QQjlJUEFHdDFhY0NLRkVFc2NpY2hQbWJQSXdhc1d6ZG5OeTJFTlg1ODIyamdXTG5GMU1lVgpGZ09JbFRHTnRSTi8vbkZmUHR3SFdNOThBSTJSeUlKUUNTbUt0dmxsZU9yanNxZnY1S2Z4d1duRTZxbWkxa0w1bzltRStEb1F4SHNDCjhTbFRPUnlHbGFkdGs2WnVuTlNmTkdGVDY1amtmYU4xMDdWNU9ud2JrSjllK0NZZjJsTXowWmlMeEU2VS9QclZjdnlEL0xUZHlXYXQKbmlwRVk5cWZsU0w1OVp2VzdJcjRWRmlFT1VYTDFSNU15N2h6bS83R2lQWnNYSEZNNTZPMEpEKzkyMm51MkR4TlBRZTBweFpFdTZ0Lwpsc212UHlhZlF1U25MK1BBbGRWVGxXaXZnY1E5K2ZYWGoxZWUrQlNvL0h5ZS9EVFJpZlRzaU1ZZVJkOXZ5VStMMlVTQy9QUXlINS9aCkVZMjkrczRkRUYvUDdjMW5YZUpUMzE2b2xGU2VkZ1V6MFh3N0YvbXgwcUJ2RklRK2ppbC9FWitHRHJsRzJlYnBRYXVLRVUxcU1NZjkKeDBRWW1ZOHRndk4yTWJWMTN1cEhOOEQ1S3hWalozY0FUWG1iUDJ1WGowUHRtMHpFdDdjRTMycE40RTc2UzlYNzUrb1FLSWV0TW5vVAp3TmoyVy9qdjI3SFJVVDhJK0dDckFwVERjVXNuUklVdHpuL1VqQ2hFRTdjN0QwMXN1UG50dUI4NW01SS9sQ3M5UFdpaU8zYVJtZnFCCkUzKy9STTRRSU1mN29SVldvQnh5ck5FV2tCSEw1aXV6ZjBIQUNweWhkQ3Y0UXNENjhHeUZGYUNSaHJ0Vm5jZXRoaXY3UTl1UHQwU3MKL3ROKzlFUEJXcHZnV0E5OVFZUlZzd1VTN1IyY3lNMGtoMkVkN3UxdGExaEZmM3BQNDlhNERtdnlNeGc0ZnBvWXNDSlRYU2J5Q3o1YwpQZGF0YWk5S3hJcGNDd0xXMURiMEs5NHdXMEEvM01SRDF3WnJiU2RGeGdyOUNnTld5VlNYR1FyYUtUMFMxaFlaYStieXZFUEdDbzBVCnZiQUJpSGRnZzdENkxTSWJZZnRITWFwMjhSSmoxUTZOUnRlVWVkdlBGU2hBSWdOT2t4c3dGcGFRM2pDdllMODVOSlRQMXU1TG5QK1kKT1lXMGlSdGpkL2x3Sll4OWxDTDdKVFVrQU1SVGZPY2EvdGJTVmhXZ2F4S3VtMUJ4Smw1Sy9RRGZ5akJNVUVHb0RXSUs0TDl0Z2ovMwpvRk84M0Zjd1NNYTFqQUhyVG5OdnJqUnBueWplbWlZRG1iUGs3cTcya1o4SGhqZXlNWTRBYVNzWU5BWmRQZm1XbXVoQ2xLakh4ZGduClg5NkZIOUNHVmdtMGJ4WGNBMk40S3JPOUhYOWRwU0ZPL1h5K3NpdC9oQzlteEQ2aHVJRFVyYXBvMjYxdE5uekxodUhIRXg3YmtUdDIKaFZIOU9GQTVOMUJkSVJwT2VQVFJ1eTlycnJ2VkNPTTdCK2NOcHhIQ0R6aEJVakNGT0kzK0xXMGFpWE1JRitvZDdxaVpSeWhGb0pwZgpGTk5JTVljTS80UHZXSEVwUUVPaWx4MDBjWHpuaXVkbFlXUEY5ak8yOGlMVzF1RXZoYmtPNEtuVG02RStzcGlJcEFkbzNGSC92UlI5CmNpOGprTDZ4RUVTVjUveStYZ3BWakZKSUhUK0ZGTUljZGtqemg3Q2dvNkhhYWIwVTRwdlJQY2xZTTVPdkFoMzJVME4zRE11enUvUUQKVVg4UlZzbG51YzhCR3I5V3VKZGw4ZHhhaUpPV3B4VC9NN1BiUTJSci9jRWQ1NjR2RkgxalErNjM0QjVhUzRTZWhPZnFTaU9QUzVJQwo1M3N5QzFpd2ZlVzVIRmw3U0JLYWh6bk84ZXA2MUFtYlBmalJJazRWODg1dVBSQUpneFFCSFczc0ZIY3hJSFBPMFVWTUdib1VQU0l3CjlKd3JQbWJQVm9SbVhIMjlyVm9JclQ0MUNBbitxSzZ6QVBIdTlMbWxZVFkxajBDWjBOaG9PeGRHSDdKSVJCc1ZGcnpSMitwdU9VOHAKK3REaTBGSUEzTVFqVlpOSXhLR2RNUHppTm1icVdEOGVKTmtDdmEwTGpzaTNzYzlaNk1oc25kbE1pMlJBcWtKUnR0TnFUdFladFJRYQoxdGo5NG8rcVFVMUpld1IwMWlRMnllUE13bDVOR1FpcDdVYVpKeGwwLzNXNUVhT3FodERvQmJlWlh2dTRMaWIzaWQ4aTlRa3FBclZICk5OMnlzdldVUGwyMTFNVnJuRVBONU5CTm81T3RSejJIV1Z6ZlVFMmpIYjA2RVh1T2dDYUhDMmhSVi95bGdUTHNTY3ZRWWl0Q3N3REYKYkpSbzdFYUp4bTJVYVBGMWlDWnJhcG5kd29vaTBIbTNIM1ZtNk85VjFyYWN1ZUw5RUpNZ3Nrd2pleHJXNjJGeDdLTTJ2WW5MODZPdQoxL3VyTDgvRjhZNGpwNW5jYWJReGJFbWd4YTY5SHlaN0JQWUUybk5GSUN2cXdOSHd2ZTR0cFM5aGFUR0MwWFFkRmpSRTQ5d1pOMTZnClpVOWcrQUYweG1FUjAvVEVZSFhxZTZKWm5VNWtjVml5UnVleHQ3V29hUW9MTndmcktPYnR4blVQR1dMam1BNDhEcFFGc05LZlNqb0QKaW5zUlB4WnVNSkRDSHo5T3JSeHd6Ykt4a2lTa2hmSWlmaFAxdm1XZkZORnAxYTBOaVFKZ1BlelN4UVZvUk1ITElyRG5NaTVBSm56OAp1SE56UVMrL2xUNVo2SnNYOGROaFRSdVpsMkRtbjZKdFJkWHFYSmUxbUhmLzk3MjlqSkN5aGpUUGlPQzZnMVd3Y0JtSjFNMmh6bzJDCjlFcHNqRjc0U25mVW5pWjZHUlk3ZXlacWl4MTFKNzZUblM4TmpoY3ViTnhFQXIvTzlJdWRFRXhSSWc1cUJFclBidkdkWEdESDFyR2sKOVRuT2tIRlBFMHloQ09SK25lbU5lK1BnRUJyZCtBaURTd1RXQ1lSSUlkV3ZNNk9tZGg4a0FzeXcxTHVkMkpDMDBWQU1LZnNkSnpyYgo5a0Vpbk5QTzBEYnpta0VpUUpqM1hPRFJQanBvREpmb1BIODlnV3hpTzJhaGdORG9vaEo2U3p0bTNrU2FuK3ZOYkFjTXlNd21yWnZqCjI5RDJtdVNibjJ0NlVaNGJjNDlvVldQdTJrL0JGb281YUs4YXdlQnlHMWczODNPOVZuU1FVSVNlN0xMRWNTbWpjUTZMbm11NjBQMlEKTUlZR0hHUlFneXVJZ3R5MVQ2Lys0a1E3ellrMktZbzVONWk1dUoybUo1RGV6TFVtRUpXWkN6ZTc1TlRlRmo3bjRHZjNDOUJxNkZBZQpoNHhPNFFyUmNsZ1ZrYkNYZ3BMNmt3TmQ5aG9RUXN0UjBGQ0swbHJaSXJpRWh0Q09GbXVLbVBzMjJ1S2drTkQyWVh3NGM2NTFvQ1k2CkRZRDB6dVlLT3k0UWlyb09WWE53VlVCMit4d2FGTWxic3dWazFvWHVGYUd5V1d6Y2FIUUZUUjlRaHp2R0FZTWxpc0lQUC9pb3ZmeWcKRGJsQlVJd1ZLTVhGZGVXWlFXajdOcnRHcEoxQ2dtVUJjMDZwcUlrYnBwYlNUVjJlVUptWXBSdjRiU1BTRGMyTk9GNTdMN0JreXRMUQpTUkFsMEVWcDMwTm9EYVB6UWlIZHJQVU5oTmIwclN2ZGJqWHB0cFlVQUROSEtkMGNwQUFFdEw1MFE0bks2eHNhcURzYjJjVkZnUFRTClRiZDFjNjN0QWxuWkI3ck1lMm5lN0lKcXVoMUk2eERkSEY4eWI4R1FaVlQ5dnJPcHJkemF3MXh6dG9tbXVxUEZCcWZVVWt4YVNWdzQKR251aEM2Q1I5MTFwSmE0cW9RRzBWUjFMYkZWWG5wOHQzU0o1RjVkMllYZE1DVk4wNHNIRWFaMTFESDhkRkR5bFFqWnVWd05FNzNhVApRNm9Ja0UxYWs1TzlyZ01sbVJ3YkMzTERFWnFWSTBxSjM1RDFEMlJhYkFOT1lRbklsSHQ3alVaV2p2cWNXeGthZlk2R2JTUVNndXB2Ckd5SzNxN0RiblpYMXY0SmFBeE82ZGdSTVlZRU42RWZRSFZ2bFNLM1dJQ0E2Njk4S2l1YXdJMENyNjBmanBEbkVvZDNyeDRnNUZuWi8KYjFDT3V1MVZ0L3F4SzlnRW8vRzhyRENlcUV3a3dUMk03TlVKMDRKVFUxdVpObHQ0SllDNGIyOXJVaHZCQU5Ubk5wVWlvRm5uQU5yWQpQdnB1enU2MklSck5ZcmR6UURHRzdncFVLOTV1R3hhdWlLaFZ6QnRMdFhMTTJOTXptZDFxTlMweWVXNXNOVlZmTkE9PQ0KCV1dPg0KCTwhW0NEQVRBWw0KCWE2cSs2RXBOSWUxSjFGU2xLRGw4U1pNYVo0Z0w5RVdyeUtIVk9uUG1sNGROcHZZQ2FJYmNMbHNYMjRNWC9sdERZODhiR3dxbTlFV3EKT0xSbWQ1aHpIZFhaakZsbCtoSjMyQWwyQjB4UUlQc0JPcmJBKzBUWWlrRGRvbVFMdTdSWWVXM0lOblFqYmUxNDZFcjMwdTlQNzJubAp5SmRpb3lLOEhuVzFjajc3V2o0azB6WlJ6bWRmeStkQnA0eHNvSnpQQ3F0V3k2ZUZodFlzNTdPdjVmTW9SYkxybHZPcCtzYXlsZzhMCnBxeFh6bWRmeStmUlNoZlhLK2V6citYRGJlaTF5dmxDdHJWOEhxMTBjYjF5UHYyOEdndnFGQlpZdTV6UHZwYlBneFg3clZYT1oyRjYKbHV6M1BWY3E1N092NVpNOEF0c0VhSEl4MHRIYzJUTTJaTjZUaTVFZUlqV0NsMERmSjJuZGxPemQvMjJkdkNmWEtvckU1Qmt0ZDVDeQpTTUVZSUxZamxWT0F1R3kwQUZhZXZ2YVdVdzRVTGFsbWV1VnZrY2QyTVVPSnlqUkZhZTJwTzFMcFFlSCtUZGtVNDFwOWhJWUVRa1A5CmpUSkl1aEUrMnhldVluM3kyQmRpN3MwY0V3aXAra1FWNkxJaEZXWHhubjBPRkNYZlZwNVBpU1U2dWtSbGh6SXVwMzAweC93U3piaDkKaVBqV0RqY3JnM3N3UnNxczArQWNCdWMrdjhTY2NBbkw3a0liS0pQVUxjRlZBOFN3N003RnRvK0hWSXY3RUo3YmVBUjB1eFdRTUtZYQpEeXBIaFFUTndSVkc2OFlPbWo3QmE5OXNXZlNxVHE0N3JZU3VXam5Icmp4anpKUHVWVjNWdmRvVXZmYTViOE9DTmtob2R6RUFRQytiCmpYRThvcUpMZ0xHTE5TYk1zZjl4UmlEYUdHNDN2Y0M0N3NrYmg3VEZhQjYxcHRESkhLT3ZLYlJJYURiRUJlanIwUnpxYnlEN0JyUSsKa2JlSmhqVjlTcVZPY2JxcmM4eHUyMlhlYXpOSVY2Q2xqM3BhWmQ1VGx6b2FvNTZVYytpeHJpbDBxc2x4d1JIb29BYTlMYkFXTkxzUwpIVG56bmg2YVF6Sy9TNkxaRnUyNDdGZ3U4TGc1b3RtZTFrQkJORU84ZUpIL051UlJjY1g3VndkN0VnVzZLS3p2Ulg1SnUreUpzVTdICjBqMTdHQkNBdzZFblNIczI3MW4wNGJET2kvZmY1SFZ1djFGaTJsNnQwL3VEMWlaYTNVcFFtTUxkVGpBY3ozSFIzQWZNcU5KWHJEaFgKN1RuT1VsNjByMkhYTzBYV3l3TVcyemxKQVV0eWVBemxjZFIrbnJ0cVBWM3VvRjdsa2V3Wk9DVDc4MWtNM3BjeHFxNjNNQzIyVFgrYwpPbFhxNmwxUk1rT2Z1b3dGMFJYcW1UYUxMWHhhWWxsV1pYdHpkdHJMWXRlaDBKWmlrMVMyMDA1ZHhvTElGWDhodjFXZjhPUWtTbEtWCkZ4U3hJQU1mV0FlNlR0MUdiK3lxNm1EMFJ1OTdVcktudVU5T3E5cW8xbXk2NVM1NlEwNkpOMWJvdVNPVlBub1QzOG1PWTZaVFJzNmMKTWdicG9qZnhuZHlXWlNxUXV6UzRyN01Wb3pjV21mZGdCZTF0Sm5vREJzZjYxMDlPK2pxampkN0lqZ2V4SHM0aHBkSTVlbk9tNU54dQpvQjdPTVhvamJVVTQxZ3F1RzcwQmFDQnRrdTRMaEFnRXNxNE9NakUwWFIxOHJya3dsc1llMys2U2MzUTg2cUVNem9ZME1QTzJWK1FJClhOaWNyeDBCVWhyUHp3M2hINnVvT21VRUNBd3VRRHM0eE5Da2Vqakt4RUQ3TWpZOGwyT2RFaitheEdPVU8raFE0cmYyc1dmemM1UjUKdjNwT29FWWJlOUh0VVV0K0hTT25rRURwRlpleGJIVWEwZ0VERm51eTdYVTBuODYvMFlyek5sMlpaOW9qb0U3YmMxV1pwKzdpa3RMMgpObE9aaDZUQXVxdlF1VEtQT2hsMnZjbzhMSGNRTDg1YmExd1c2OURnc05NQ2NsdVpSOXhZMld4bG5rZXF3ak1XNTIyNk1zOFl1VjNaCjlMT3Z6Tk5rbWxHWmJiUXl6eER1TnFaMHJsYVpaOTVBdHZiV1NxWURtVmVyVzFOdEN3K3BibzArOWZLV0l2VlNrd0lPSjI5QWFCU3AKbDg1U29ETmJ1L29meXFNUWJjS2xJeURpOFJzdU5vc2xRRzdPWFNGM1I3WHdyWEtnWEFDeThhNTFxWitZRkNDdVIxam5SdzZnT2RjeApnTVdvRDNSQm04eThIc0Z2cnRlamRXaW9SSkVvUVZXV1JiRDFQZXFoMnZUcnNlTXFGUm90UnZJV0hvUzIrbnJVQ0k0VzQ1cW1PbFRyCllhdjFhSURpY1RycUdBRnl2eDdOTHE0RWFPMzFpS0NRUEc2RFduTUVSRlc1YnJiNkxZUU5na2Jld0hWTVhkZEhzLzNvdkdPUDhkb0QKV0d6V2NEZ0RnMnIvcXZiOHZaa2lXWGFMbkNqaXZraVczYUlxYTZVc2ttVzNFbXU3Tm9EZ3ZHWFZqN3ZvSUNvVTIwaVI3TjFHaW1UdgpObFVrZTdlcEl0azcrb091blNKZ01BZktmTkMxTGdYQ09SdktzQjROQjEwcmFNRFB0L1lhalhJOTJoVGxTYWxXN3VxRlZpaktrNGhtClRkQU5GdVZKUlB1a09JOXJyYUk4Mmxqbm1rVjVaTjl6bzBWNVJGdGdzMFY1SHZ5SWNMcnk4VldLOGlTR3Bza0NMaGtPU2JZUkN1YlQKNzYyVWRDbTYzdW4zK21IaXBZdXJwdXhpMEd6ekR2V1dqVVBxSVN5anN6MlQwWlZsVTRxdUd0STB6MlkzU25jVW1GMHlCS3lHdE5HQgpHRnZvMDBmdHVrWEpGdGE2UWczZWF5c1pYcVZueWRYeVBLQWJSTVVQWDJSNjNmV0ZPNjhWWDZRUWYvVkZ6cklWZUVGOUNYNTc4SVUvCmY5ekFqeE5mYUJBOUEyaDg0WEtyQkQvZ2xhWFpIWFZXOXd5ZGxyL3BDdUFFa2QwVjhNV3JxNUpLYkhHNXJDNFpWbGVLdHJWblYzWVgKamVCTW84TWFPdVErcnEyd2V1UXJ4ZUZsNUUra3NydEh1N0s3SDNiRmZ1K1hiZjAya2I0VURWNUdQaUJoSGRwVmhCWGJHRmExSXN5agozbFA0eVdzUzBsaUtCbS9uVnNkcUxMdDdJR0lGRkQ2eUxmWmpxbG5ta29BMXRiM1QrdUplU1dWM1RzVitZc0pxdUhMWlhmaXRROFFLCkw5MzlKQlUyUnUyTC9hb05QeEdySU43bWZVU3N2cE9YeUkxdVh2bXNza2VBL3RBbUkxaDZISDRabWxxMmUxMStUUjNiU1ZjanYxYnUKcnh5YkpqOWw3cE9WS1N4OGVpNFlURlFsb2hQNE1paFlOSnJxa254YkZFVityOTY0dGRoaWVrSTdoYTZ5cDhqRlJVMS9sUkNrMHUxNApVTjJCNW5SckdhRlBwb3l1c3RGQVhybGtyZXA0RFBWYTErdFp4YUk4ZjIzaWVqM2FzRjNaT1d1YmtsUUgrMVllbVUzdTRBbzM2NUhDCmR2dGszOVA1WmozNkVVYnNNdS9kamRENWRnWDZibEhuc0JyNlpBdy9PRitxUjk4bkxIQ2ttQncwcWJXVWhYMU9BZUlORmZiUnhHdzIKVU5oblZkVm55THpmUkdHZjFlRGtkSjVORnZhWmUxSU9VZTU3dWluc1c3MFFjKzA5Y1RRM215M3NzeUlNR3MxbUMvc2NEelBaVEdFZgpsWkpldjdCUDY1UG1YZHVIdTFjcTdMTUt5Y2c1dDVzczdMT3E2clBNR2xxdnNNL0tZdFJYUld5a3NNK3FxczlqZWZiRFdvVjlWbklXCkV6YWJLdXl6NnBPa2J6WmEyR2RuUUcyd3NNL0tiSlZpTmhzdDdMT2FRNC96WlZ0dUMvdXNRSzJ3V2V4VTJHY0ZpbXgxcmx6WVJ5TGEKaGd2N05rYzBSNHZSZ1dpYktPeXoyb1d4eUx4ZnQ3RFBxcXBQbjNDNWtjSStxNm8rai9XSlkrc1U5dWtYdVZUVlo3QTZOMUhZWndYQQpKaDk2MWNJK0hVMjZNV01jZWxPRmZWYUdEbGtLckZ6WXB5T0h2QU9MNTZwdnFMRFBpaHdlaThNYTF5enNJNlNNd0c0bFYxaVBlaCtSCmV4SDdVYjJQZUtyNWlOcnlYTFdtYitxallFYk01Q0RYOURrdWU5emtzSXo4U0JKNm83ZjRPY1pzTm5PTG4xVkZHR2w3RlhUTHZ6YXAKcEFwUmFHclF5alFIUHZpa3VSZVhzbHZVUXNIY0o3MnBEcnBGdmJDZCtxU3pDcXhOZFZwU1VhOXFqLzNwbzdCYmpjU3phL21wOTVlTwpGaDd6RlVpd3RNc3B0NGttbElkZi9yZDZxcFdyeS84VWhpYlo2MmZ1c3g3SndzYnAvcisxTC8vellQZDdPdFgwclhIMHVacW9iSHYvCjM5cVgvMW1JVHFkNngxVXUvek1HSWEzdi96UFJ4dTNsZi9ZTVRaVmJSWFA1SDI3WnVOcCtPamRXN3E5MFJoY3dXaDJpazdSdWQvejQKTnUzMzBGU3ZVbGprNS9icHhoNjZhaUl3dU9BNm9WZDVtK2g4eFF4SFEwMGZzYTVKOHowcHIrMWJMZE5ZcHoxaE9SOU5WYTVqc2FNcApzOUZqZVlTZWM1SWF2TlRRUlVtVHgzelpsdDQyaGdMVGJ5cHA2blVkT01LZytXenlPdHV1RmlDeGtHdVRxVllBMmdaVHJacGZLNm8vCmo3RVEweUdUbXE0UU0yZ3NPVGFISHlnQjdidnFEczRDQmtBYktUQU5odWtTeDV3QjBkelZScGM0QnFFNTFQN1pwc2FwUkZQczBHRFEKckF2dmJ6WjV2Q0dBdGhIVFQrNllUckRaSkpIanlveEl6ZUVlUjc0cWlIZ3ZybTBWaGZtMGFWZ1VtTFBmSkRRNTdNU3M3YzVzN1hvVwpqM1ROanNQQTZVdEl4YkdsR0ZuSllZZlFxRzR0YzVJQzJzbk9hOVFzM0dvR0JwNDR0aG9ncWhJS2g2MXZCR2p0WXd6dXBmREQramQ4Cm8rNlE3eGs3UVp6bW9vb0M1bWd3UkRkOWxjMWl2MFcyQml3S0xOblRrRHA0cjd2NmI0MzZNbXpVaENRTDZ2VkllZStmUWFhUjF1TzYKOS81NXRFSk02NnYvWEJaaUVneCtVL0dGTTZCVlNwcU1McTdwNnIvVng0VXZSaHUxNWd5SS90NC9oNmc2Z3JhQmUvKzBmR2pDMVg5cgpWL3RpSlZndGluTThIT3ZMN0l3Zmo2dXpWT0VkZXlzWlB4NnJzMVFodFBXcmZaKy90ZnlwMWFPRGNQTTNRbEh0NjNoR0Z3SzBkdkFMClFZRXNzTDQwaHQyeFRhTFN2RFZIUUxUVjkxWVJNRU1FQ3QwaXVHYjFQYjZwRFd1ejRHSTBvZ0UvYjJROWduRTlMV3hrbWtNdGxZbWEKdVFCTkhwbEhPU1hldVRKdG5SUkpNOUUyZFlZN0FLVjU5eXZGT3ZWRVMyM005d1FUMnFIeFpJbUZWRkk4RFYwdFNWVkxSZGtuSTF2bwp3ZzhyMU4wVzd4OGlCb3ZSbE81aGVkd1VYZDF0WDZTOURKTktTVCtzZlJtbXprNERJeDNiKzAzMGwyRWE4MENJUVVpcXV0dmkvWUlpCmhrMW4yVHlzZlJtbWxuTUxpMC9Ycjd1RmwvU1JkS0RIV0k3dFhIY0wrdVRtTWt4RUxPc2NLTTJnaDdtOERkRUNvV3dUd2xJcDMvNzUKQVl1cUJXR0pZZHNYN2c1dmZQczNoUlQ4MWtSMWhnQ05MM0xlVFRLeCszRmExa1ZIc3pIZVFTVVdwYS9nQ3BBcjh6TE5HSU9UdEN0cwpTY213NnRWME83TTVydngwVjlNRitqdXRNZW55UDl0citGNGpobmlhb1NTd21Mb2lZRTF0NzB6akIxMVNQZUNyQWFzc29kV3I2WHhKCk10WmFUWGhRc1JyckFiZS9VOHRuVW8zY0MwQmpVNGg0ZllMZnNLaXZrUXNkVEc1SjlZREp6LzJUdS8yNWhoV09SamRjY2lFaUlQSUgKUThUS1ZGL3FwTnBIVkI2M080NTErcVJDeEo0TjFocVRJMklWeEkremJRMnJSN29MRHk4SmZONU8zWktJSExZYjYrbWVZVjdoR28wZwovQjZwVkQ2aVZJVXVoOFNtZUx1cmJaNm0zZGJWa2Mrd1IwQm9LaXk3NDExTWNjSlJtOHhSWlFXRGQ4TUJnekpGL3BVK3lxRVRUaTJMCll5ZnNybDFvN24wWnRwTzBnQ3RWZnByOXBXZHorN3dScTJBS3VRVHBoUHJTTTZzK3Fma0NvRnVPdWZWME5WOVdEb3FHeHRVdVYzUFAKSVpIVkVBUkdMRUFxRmRvdk5HbHkzQnluejcrRlJkWFhMSSt6elJIM3VDdVBDN2tpbFFiS29HOWthT0VOalZETkFhTk5VYlFaWVpTaQpUeDdzNW5LN2JoR1N3Mm43cEd4RjJNZVhYWkxLbkFPR2JYcGQzVnBmc0dFUVhRL2hxVkYwT2NlbVBaUTN4anlFeVJYYjlKSGJ5c1lxCm9sNHJWajZ5UWRqUXVza1BrUzFYZzdQZUpxcHM0SWpkaC9CY0M0T3RIaytEaFhJMDNyWFQyZDJWVFVTa1lUMGljQi9JU3BxZU52UjEKYTQ1ZURZU21xMnR5ZHpDUkZvUlVTM25oa1hkNjY2UzY5aFVQcXJEcGJkMFREeEp5NVVsWHJXTEltTEJ4dFljT2EvL0lXWG1tZ0lIQwpBcVFJVEpWNDlqOXRqRTlibnZKY2hzd1pDY09hNDhrUVZFWUtHczA0UTc3VTJHMUIyOVBDeWtqQmQ2UG9iNnB6UEI3Q1RhV1hxMHRWCmJQcTBPRDRqNTZvN20rcjZQdW5FdjdFb1VZM2MwdFVsN3F4WVcybzJvRUQzcC9hWEVibVlRM08rd0ZyUUhLNkJWcHhDU21oT0Z3a1IKUVhtTWRkSTFrNVpaYTVnVTFVUXVvRG5zZ0xva210T1ZRdTZJeGxzS0RNc3FackxacUt0SFZQVE5paVdKdFBXSXVuUWU5eVdKUkRPYgo2T0t1VkpKSVc0KzRjaHphM1VXRDFsWW5kVWtpYlQyaXgrRmFONGVTUk5wWnNrcUFjVkdTU05BTHBucEVqMjJaanc9PQ0KCV1dPg0KCTwhW0NEQVRBWw0KCVkwbWlNL2VUam05M1ZaSklXNDlJNjBrVHR2RHM2eEhsN21pNWd5MkRYYVVTWTBPWEZWb3o5TVl2SzZRTzI2MTNXU0dLcWp1YmVldGUKVm9nTG16OTRXYUhEaHVTbUxpdjBvSlA2aUJjRGJ1cXlRbE11eDUrNXJOQmpkWFhZNWk4ck5Oa0M2MTFXYU9pVDhhQVp2V2t0OWNpaApZdGx3NGFGU0I3YVpVNjJJRng2NkxTamIwS2xXK3RzT0NRbVg3aTg4WEN1MWwvN0NROXNDUU5yYmZKd3ZQRnovVkN1cUN3K2RUN1hhCnlJV0g5cmNkS3ZzM2ExOTRhSjhZcVNYMXJYbmhvYjAxcjA5T1d1UENReFdoNVcySGhnalU2aGNlMnVkS1NmVTNHN2p3MFA2MnczVmoKbmVxRmgvYmo4amhkZmtKNzRhSDlrQ1EwRzdqdzBQNjJRdzkxdmFmRGhZZjJHVzBlWTRYa09xZURrMjg3eEJoNnZRc1A4WG9XODIySApuaFhMNDB3WEh0b0hJanprdzdQY1hYaG9hMTZWSkJiWXdJV0g5bHN4bEp6bWZPR2htM3NLU1lYQnJ1cElyWFNnWmZCK2xRc1A3YUZZClZxeXNjdUdoVForQW4wc2hPdWt1UExTLzdkQmpVNGhKWDYzMmczZTRFRnBuQ3poVnE5bGRlR2gvMjZIbDNLeHk0YUZkaWplNnR0cGMKY3JIS2hZZFdhMTlMYU5GTWpoWEx5T2oybVBGOGdiVXVQTFRmSzhNVndWb1hIbW9FdHpMdXJiYStWN3J3MEI2S09kQzE0b1dIbGxBMgpjYWNYcjd2dzBCNktiU2tKNytMQ1E1clUzZzFjZUtoYmo2YmJEaFU3YlVQcmtYUjZOTDRodWRhRmgvYTJ2c2V5YUdtRkN3L0pIVE1mCkNMaktlcFF2UEZ6VFZLZTk4TkM1SEhzakZ4N2EzM2JvY1hsUDRZb2V0OTY0TlY5NDZPNktRaU1vNHlGQTYxOTRhQ3dOMXQ5MjZMRXMKeEZ6aHdzTTFaSnFiQ3cvdGpSK1BkR1RyK2hjZXFoMnp2TzFRdDFPNHpvV0hMbXR4VjczdzBQNjJRMnNXV09IQ1Ezc281RndPbHhjZQoya0hwQ3A2L2lEc1o3Z3F2N0c4NzlGQ2RFazl4NGFIOWJZZVd3ZnRWTGp5MHYrM1FXcTJ0Y09HaC9XMkhIb2N6dXVnTHIyeHZPL1JnClo5dXRkZUVoYmF4enpRc1BpYk5wY1pEbUNvVlh5b1dIbTBsUmRMencwTjVpUkRKdEV4Y2UybHVNK0U3aFdoY2VtcWlwdSszUXZMR3kKNG9XSDlqcythdUtZMHlsY1RoY2UybWNmNjZQcWExeDRhRUcwdEIzUlZyencwRjdCZS80aTErbm0zVng0YU44bmoxWld1dDZGaDBaZApvVDlnV1VYekluNFFJNUVuMGdwMk9wazF5SmhUSmU2ZlVEaVlMR3djOHYzMVJaUlZRd1NzaEllODNuWW4rczFpeVpwVFU1WWxNUzNUCklZalJKcDlzempTU0dyeFZXSVZYejBSOGU4dktYZkhPQjM1cnp6VlR2Y3VYQk9HSUsrWnZYeDRDdnQxcE91SHo1NWlxYjMvV3Z2WngKdWZaRjZHQ1NLNGJ5UjhKSjZQYjgwODlVTHVkeHBwcXRuRERWNG5tRnFZV1hMYWFSTGo0eGphZkhBWE94TDBhWjlvRS95YlM3eDhqcQp2UDNSSHpJZC8vU1Q2VFRZYjZZelA5dGg3bzc3WmVibGFuek92Q3lpOTB6M05ESmwzdlpidTh6YjRXdFFFQzRqZmtFc3ZLUUVjYlozCktpeHppeWR4ZTE1OGo4WWJtYVZjYXZveGErWlRmdC9GYlhHWFN3TTBnWjZmYjI1M0htL3lPMU1oVnQzakV0MUwvMXM3bDltNk9SdEUKUWpmVnBqOS9mY2luUW1wZG9yL09QMWNpNmNiZUR6QXRvU29zd0l2NGhORkxiUGRxZE5GQ3pvQjFnQmd2ZVEyT0psbGZhSks0MWwyUQpDYS9iVEFRZlFvZUhrWndsdlJBNXdJRDNtTGVMd0xWaHJBQ05ZYmloZzBFQ3ZNNGM1NW5xelYyVnFXM1Btb0tZdVJ1aTJsYTFYUFVtCmRCU0xvS3M2dDZRS3lVcmxSMHdRbjJjSDhMZHQ4OEhOMG1yUnJLNzgwUnl6cXlVYlE0N1NOckw0bm83ZWdKUm01S1c2aEplSDNrdjMKaTRZdjd1NTlnVWdQbG1EQjB0OHorSEVBcngxdCtpS3h2VmRJdVR5OGovUVpYamFhaFIzVVJPeWVaT1B3aTVNTW1xL0MxNndoRnM3dgo3bDVENWZEdXNocW9uNTRDSC9YcnVkb05QcDJEcGYyUWxDMmJIU2hzZ0YvK3RoMlJQTlI4OGxtRWY4WmtrWnlzKzlWdkFYaXo0UVFHCmp1QzlRdlY5cVJZWnFQQXcvRE1zLzFtS1J1R2ZVUzB1a0t6SFFwWE9mUjMyNkRsKzNKa1hTNk5lakdWaStVUkE3ZW9MTXd3RWNzcUQKM0w3MmdLMjg1ZzZWQnlkaDdRSFFkNDA4ZW9BNExWK05ZczllbHE4bnlrc05SbnVBNDYvbGduQ3NRUngxN1NTa2tROUhYYXZDQW1idApHVEszd2MrTm1LUXBZclVyQnA1b0Y0cnY1SGFUWU5TWFVyRTIyMy9kN1owY05Id0MrTzA2aEdvdzJmNmNoVmxtMXhGMURuYzRmejRBClRlVHJLQ0lhYkRWSWxUajRDd05UVndSMlVMOUNmOHB3QjQ5UExQSVdtZGhETlJTN2FJL2o0T21OTkE5Y01KVWJLbGh2b2hJYUpyaVQKWWJoSmU3Y1N6Z1pmQVpxVEE2YXpnL3NqNm9XV0VqT1lGTDE2Zis1TnpBcWtGVHcxcXU0SWtzRkFzckZ0OFRCMGV5Q2s4cmVKeTBMNgpaUmhBS29FTFByWjlsY0g0T3d0Ry9jU3AwL0VHME1SM0RnL2ZKQllQTG9kalpmUjNZVzBWY09YNkVXVFB1NmhFcGZMaktTdXRnL0xnCktpbC9tOXh5OHJmbDB5dFNPbHdsMk9zcUd5dGNoZnVBODN1WGxHQjBIMDhneU1jb3ZIdHF4blVud001QnIzZVhMUm40Vy9EK1Urbk8KSTRkMTUrMWcrRU45a0ZCWFNWOC9tcmM3WHdtS2pvUDQ4YzJpVlp4RVAvWUx6Y0Y3bzN4KzZtdHJpa3N0SUM2cEx1NGU1cm1vYWpXKwp1enpsRVZacGViN0UwRURpZTl4dEF2VTN2bmZ3bEpTL2xYc2pwWU12Y2JsZDU2dGc3TTVWNmVhbFdwNXNEUXF0bTJkL3BSODV1WU5TCjhCQ2VKaDlUdDRsaWkzbXFXdUV1TWdhOXJ6ZmE5M1NhdXZOdHI2bnpxZDNTc3Z4WTVlOEJtdkwyY0ZrcHZkUmE5N21YcTFrQUtQQ0wKczJKd0lqUlBZb3RVdlZoaG9qY0hqNDFwdmpicDNEOFg2aWxmSDZsM3paNkFQZkdqb1lPMW5QRWo4YUFJd09aTTNmU0szWTlEaXZ4OApCVDdIZUNzYUcyMDE5K0k3MmE4Rnd3U2lvc3lqeWFoMFNBb3lrTUdmaVNBNjlSS28wQlA0Wnk3RUF0TXBMOGxQVlVhQ056cU1MRHFSCjVYWUNVM0tpS0ZUTDFsNmpqNUpNdGQ1L3JqTVdMQUFmbkFkUU5qd2JacVp2eXBTZW84T0JrVGdKbDNibmNxZUJsSVVEaCs1YzZ4djgKZVJwamt2MXpTUFB6S0taUnd2TVNVejQ3bkRHZ3lSV3JTVVpwZ3VBY0FxRjR0STlHS0kzbU1vUW1XVEx1d0VDZ0RMeU1TTkt0TnMvQgpzOFl2d1VlNlV5KzlqUXM4WUo0aElHNnRoUUdQSDkvNmxreXNlYkt2OThMbklYa2pIeXVvcjc4MVM2cENQbkpReU9GeWl3T3Exbi9wCkN6MEdUcUNSVW9VSGNaekJQNFBTaGQ5QTgxNzZ3bHdWbmNzUjNDK0dmWkZNeEtDYUdhaTRqeVh6QnJjVTBLa2RuRjg2R1VFK0F1RmkKQ3BraGdvazlSdXp3SjUzem85TnFkM0VEb3h5VnQ5VFZaN1Vicm04WHJqNE9HNFdiY21Lbi9INHR0cEFsS3ZwZS9HVm11RHN0QTV2MApjZHZvNUZCaWhRek5pT1ZwOGFwNUFoWnhNdmxXdURuNEVTaWZQcVhPQ3UxbFlPdms4TGdhVlZmY042STBXbnV4ejkycEFIaTVuYUJBCkxiR0FlY3pjb0x0L2N2RDgyUzFIVzI5QzZmMW8ycWNlTUlRSFJmZXh5ZXBVYktMbVVRZ1lmQS95a1NEUW9WQVBVMEh5Q3hnSjFUM2gKcE9PLy96NloxWVVIV3RUS2FPSUZ3VmZXKzgrMHFLL0w3M3Z6N1Z5OFZPNVhlbStEcmhYVmxlMVZBdUdmc3l2TytUcWNkcHk3bHMvbAp3RnhCU1hRR2xCTTZZanNRZnhUWk1jQ3kyU3FEVHJ4bDBHaFMyMklsTkhyOExOeDA3b1FEUGl1TXdYQjluK252ZXF0UjZmWDgwY3JqCmNPc1RMVXFkQnlQdVdrMjNGY0U5ZjYxRmN5dUM1Mis3K3hVbVZ1M0dkSmM3dWhyOWlrT0h3a1lkL1o5ak4yZ09PbzZlNDRvUDdLbXMKbndQREIzei9oRTZtd3RFb1lwWHhoYi9uZDVKWURWMXZIVUJ4ZXVYenoyOTM0SU1yS0VsM29MeHRRejhvRHorR3dGRzZyL3VBenh2MgpoWDF2ZmpqQ2poVWxrQlQ0QTh2ZXdJSjRvSXRhNGdEcVY4WW4wKy9ZRzhEZmVxQmdRWUJHV2ZhejhHcXpUek5ndEJ0RkdQTWFqR2NjCk1IU2o3TVlNMksyekEvZUpXd3RCNEJiK2FLSmU5THRIRFcxb056TU5CVnZUU3VMWUQ5MkowMWFWT0FZUmJ3aDBVVXQ1bDJvZDR6UjYKelU2aFlBemFCYkhBSHpCbERBTjI0clFOYVZSa1FEbU9tWWJkYkZGN3RNT3oxcHBwaS9WVitGcVgwMXhiY1NoRmtTUmlrTk5kdk84dApET0YyUEFoNy9KSE92VFF2c3NDTlM1MkFqOE5pOGUxeSt4TDltYTFrbGx3dHVXVGIwTEs1SzdZYndBRThQaS9Va3o2aDlISldiaGNyClhCMjJHb1Fyd212dUZYY0trMC9NU1V5Y2Z5TFBVT2ROYlB0aEVDT0VZbXp5UVdYVmJrZ1hJSTRYTS9GTWFqdlhhSjNrS3Z5b09BNEUKcml2MTVvZzkrUzdFQ3VYVHI1RUkzR1MycUVROXl5TmxIc1JMS1JKNWZKRGZNNHhhUXkyWmd5YnNPT3A1cVZRYys2ZlA1V2phTDFLYgpWN3V6bDVJNXFjOSt6QnJXZy9PZDhuTzVWanNhZzVtT2Y3dXhiQ0JpZzJXeGFhTUtzb0N0U2JrWjNRWU5LRXA5cmhsVnhKa21FaHlxCnRUVm92aW0xdGlHMWFrcnQvU05XVkIzR0JUWmlWTmhyZEtodlhNdmJQKzZ3MS9PNTB0T1o0cndkdFdoNTNzYU5ja2Q5STM3enZ1ZWYKMERJQVY3cXBMVGZJQXQ4N1h3MDk0YVVJbzdibmJ4VmhMQldqREFlVXlNTmxJVHhuVGdxRDY4dHErVGlVUEN1RVo3ZE1lZG43dkFOSwo1KzN5NVAxbURxM09pdkRTdnpvNFpqc1pGSTRzSCs5WDR0V2I0L1REbjlJM3E0b0NSZlppUHExQjlucTBzMVEzNnRNYVVCdlNycWtsCi84NE8wTExmejNBcGdsVlllbjIyVjdYU1ZvU21iVmNKWWF5aGJ6YWc2dkFCSStQV2ZzeEEyRVNta2N4a25jQ05aQXU0bkdrZzVlYzcKOXZHREZUanRqaXRIbzRkM3dMaCtZVThPenNZdDk1YVZPZFhxajlnNEhuUTRNUDA2VzVIbkFKcTFsemdGejBITHhzMDZXM0dSb2NTeApUUW1XOVRqTmpXQWhMTEpWWlpyTFJhYmsyZEN1c3hVWEdXU0JGVHdZdExmWCsyYU1oZzZXK01FdFVyN2c1V01XaGdGUFVQYkRJRnFFClViOUw5QXZjWitGOGtlZEtHd1lTR3pBbWVBNGZSR0h5UkJ2K1dmVUZEeTl6TUkyQ29RMFd1dHdqV0RXRWc1SXMxZy9VT3hsNmYyeVAKUUc5dEFUVDBtelBTS25CeVovK01KMDFsWVh1VU0rODNaV3RhT3puUVcxdkR1NlIxc2dDYUZjT1hyaGpmUlR6Tnd0WmVKWjYyeXE0awpMV3JiZU5vYW5vWUIveCtQM0VyK2xSWlBzM0R4NUhqYWVHdkZlRm9xSG94RVN5OW5HWmdQRFg1NWIyN1FsOEdXKzNGci83bHdjL3NECkppZFJMWGIwcmRyMXdYeSt2bVJ0SUlkT2wvcEpabmM1bDBQaitFSzFPNTdzVnd1VDNnOEtPWWUrU2VtUXZxUEgyUnJDaHZYemk5Sm4KK29XblpQSnZCQVYrKy9vaGRpdTVsWGVqVmhpd0J4NDNKWTM1eFZTbFJNdmZ6Z09XdHlLc3h2d1pXaVR1bHF2Sk5PT0FJVU52WkpLZApZellibVdUN0FVdHpzNEZKdHA5aEpHdzJNY24yTTd4eWRORGRnR0VHOFVZbTJYN0ExbmJhQ3BOc1AyQ0FabzFKbGdKaSttMSt5NXhuCmRZOUFLcTJTK3h2UStSelJHVTVEVktTZ2FCNHAzUlhQL3pTVmpXTW5YQ3BwcWJqZklKNWcxczVlY2xiRmNLSGZ0a3FGTGRVMzZlaHUKQ1pJQUJQVmJFWHZoVWNVQUkxVGFPYTVvbXAwTFpCL2kyaGpRYjF0YitlT2FzcE0xMjhmSER3bStWYTFpRGhvY0RiK1ZqQmxnM044MwpDeXFNVVVDWC93aG1IK2JpU1VsNmxlZURDTXpPWklFN1h3N0RGRHFwUUIvOUJ0TUdvK2czcUc5ZXhDN01CMzRXcFlUTGZMSzdNQ3BrCk5NSkQ3dU5hVFlsLzBiTGhRd2VEcXdzbWRzVnZvZVI4L1NWTC9oQzJXWXl1TE9ySkY5NjhIWEhhSWc0R2pwOWVRRmNUTmZDQWplcDQKSXpSVjVtYnBnMWg5MHFRbHhLYzlWYVBmbzBSOHlHbm1lNU9VS3lFUTBZckI4NUJTcVZCL2lXNzl1RVdzRGJDaUhNUG1UTzNPeEhpawp2VVNFc3RpV2RqeTBtNnhVT2l5ZnJsUTYzT3ZwRUZLbjluUC9TWWozRlNMa1dJd0lwY2ZocTBLRXFQRVdyTGUwNEE9PQ0KCV1dPg0KCTwhW0NEQVRBWw0KCVNJZjlIYWtnQVhYbnVQU05yeXFZT3lrUlFjWXFsMnNBTk5LME9OTkJPczhRWVkybnI4WXlFYmdsUzhFTXNpY2QwMWo4M2plTFZTUTYKQ01XSEo0ME84T3F3WndJenlFZExTWVRjUGZTOUdiaEo0VFJiR0VGN0dNNEE5dkZneW9vd2NJNGdMUXVBeG01bEJNUHJkaUtpWDU0cgp3WWhTREFTTndvTXVFN2FFRVZ0M0lJeE9kSzdHV3F3cjNvU2V0QWxHT09oK25lc0I3QnNBZU5ESnNPNWdiRURZaE1NRUdMUXpFbzVZCkFaQ0lwdU1NdkI5R0dGR0tHWW1mWEFjQ01vRGU4WlV4NFRLOExtdUZHU0lBSmJYWEdRWkxRVTNpU3Bjc216Q253RWh0YSt0TTNLcWQKbDNTNFl2dGFPM2dkWWxPNUJ1K0wwN2N6Y2dtQjArekdGVnRCQUJrNUxXYkpLQzdZUFdiSkpTalFSYjMyWTZ0eUNjWnBNV2JkZ1pBRgpFRFdueGJoMU9pRnhXaXp1dk96cWlhT0xVa2lDSWVTVGNWMG5PQWNCcE9nYk8ySnc0WFU3RWRFcjZWVm1oSXRTc0FWQVl6Y2pISTNKCll5WEVWQURNNmtvYU9XWEE4VG9SbVZqeUtJeEg4Zkt0VWZYbU9QZFlFVjZqajRWNjZySmU2bjJjL1VDZU5OZEljc1hIMjJPNW9qRloKaWtvbE12aTFsUEkyRVJzYXArRTluQSt2U3FuUXhWUXR3dW1xcFVwdm9YeHpBcUZzaDlYVGVmTEpCMEd1UzF3RW9zanhrS3Uva2xHLwo4bzBOb0dvMU1PQTA4QU9TNlgza2tZQmhuczdSa05DZndLRjVFcVIreXE5Vlk4aWJrZERVR2J3WXlmL1pWYXVhZ3ZpRDdFSXR2endQCjRROGFvWUg2SUlJL2VFM2o1WEhuTVgzTjA0ZjZFb3M5cUJXL29ZUyszTWQvdXczMGxjYVhZZnpCUjBJdHpyeVU0Z0xWNVlTdDc1eEkKcFlOc1BWS0ZxL1VTTUhUL0UxYVozbktRSW9CS3ZVVlduajR3Y1REOEVKWnAyRHlOS0h5dzNKZXJyNXFOS0dvQ2ZNUjdFWm5xelJZRAp6d05nNWRLcTVyMEVOMzU4QTdnTkZiUUZkNkpCcGF6MEZNMERRRk5pRDJTc0QxZFJiRStjZncyK2x6NVQxYXZpSkxPZDBSK3RqNHFGClliVytCTTE0WHBKeXFnQUEyWXJaZzdTQzU4R1BualNEdkdXd3FQTHRVYTVVdU4wN2VDdDlwcy9uaFp2Q0ZCVW5acm5pMC82clhEQTYKdUZmckhHL2lHbitqSkhLdFlyamYwT3FQZTRDRG8xL2d0NWEwQU9DdGRFSHBXMityRTBIZkFPSGIrOUszNG1POGptb211SmZsNFNuNgpKbFVMeHZvZlNVbENiMGZrQlRpK2pVTG5sRlZyRUNNQWVDRWdmZXZ0bEk3azdveDdXZ1ZzSDEvYTQ0K0U0dlkvSnZWbHBjZTNWVmhtCmpQWjZIeVBsV085d0wvY3g5ZDlXRHl1Skh3WUhIeDduY0MyZkVDZDl5Q2ZQS2RzSWpVT2NJeGRQTWRqRnFHUnlGTkRBbzZEblp5SHAKRzlienhVY2MvY1lWSDBJVlEzZFNqMS8xU2ZsOVY3dzVPVHkrVHhUTzd4bVlJUHlTQkNMbU9pRFhwWTUySVF1Z2drWGxyQWkraU1VMgo1SnJOc3k5WmRJQnBscFpXYitzTXpWSklhZEw1aHFJb0N1VlhJS1RWdjZ2Vm1OTGNRRGNkU0MycGVuTy9jRFRYU2EyMlZEZ0xqOGo1ClZpby9UeUlvV0FkdnYzd001Y01kV1NqeXpmU2hkSkxGKzIzdXlYQ0VubnFleXZ2cnliTmNNYTErd0FkUXpzVXNSRnhJa201S3AxOWsKU1pvdlJhUktUckRteDhYSjFoVFczMmdDRHI3RXFQV1dRME50UEZ4QkYzQ1MwNEJBR2FtVUdjcTBERmlQSDFlU1RFTlJLU0RPVU1HNwpWRlFOeFJpTUM4aWxvYlVyQmxYUnhuY09QZ29LY0ZXY3ZZWGtFMmhtL3hlWUtSazJsZlJtT0NZUmphZVQzbGhyT2VHRksySDBNWnA2Cnc1Ni9EangveFFxbkxIczdIYzZxQXMvZjhMOFc1ZGxnK2NWUEY5NmNOMVpvbDA1UE04a3lQNWdOZVc5WVRseEtxendka1lXRExGSHcKUTJoMHhVc29vRm9zdjJkcjQvcDI2NmhYZm1jZThxYVRMT0wxSTVpUjBQSklCelljU2trTTRjOFJlUGIySHZXRmxyazJURUFvK3lMTQpCUWRWcWVVcHJKaVlla3g5UFI1RzNxcXo5RjJjR1liMCszUEk4TTBmOVF2aCtlWFp5WGxXekdmcWgzZlI2dXd4MGFrSXo0OU0rYkg2CmNGTTlLaHdOWklWd3hkK0c4Zzh2SEhQV2JNRlRySk14N3MxWHY0SWMxQ0hXWDZ1WkVYZ0lVaTJRZGl6QjF1cXZVNWVsNGRaSmJIRjQKZGhJVGh3ZlY3UGE0V2JrN2lVdmJoUUNOcmdSYkxmSmUwLzR3R0I4U0MyemUvakFZSDJoTi9RSDd3MkI4SURSL3dQNHdHQjhRRFdaLwpqRE56dG43Y2duOWU0OEQ3SHlGbzNGM0xNbUN3azg3SmVqcDhNWk5FOGlCeUJDM3k2NWg4bk1YeEthVGNOYXRzSWJHRDYxc0VGOTVHCmY3aU5wREs4UzEwK21pUVlTVUFuOGdhakRSYzhQamx3ZFJTQ3gzaUVtL0UwQkM1WXJ4NjZQbDNCQ0U5eGYyV1ExNDBqVFpJa0Y4MGQKdnZieW1Qa290SmM3bzhyanNBbHQveHRXWTJQOHVKS0gxN2pDWkRjSi9PaUs0L1FBcG1FcHgxcEU1Q01zcmt0UUlkekZsQVZ3QjREMwpYMkRFNm81VmROd2RPdFZwQnIvRjFXOEpDVURsNEFzZTgvTW93K3NPcW5GcDNUeXFoOEE4TXVvM0ZqKzlnbnRWamFiSE9QNmdQTjZSCjFlRDRSMUsxUkZLR00wT2dBaWNkRzRLZkdhSjlHTThNZWNIT0k0anZCYThnWFYvQXg4TWRWT1V2TFBvbWplYUZ3NXRlZkNUZ2J3bUwKVTB5dXEyK2RoMUk1bEFsV3E1V0xUa2JXR291dkpNUDNjeWxrdHFpSGN6eFNIQkFrSDJ4VlZHd2RlQXFXc2hHalM4QkkrM043TXk1Ugp1U3QrZDREbzNDK0hzc25Fb1NKRTU4Zm9PQXVvV1plOTVoVjRkblJjemU2MGhxV1hzMjBwNlVSSjVOdUFFU1JicEpnZDlFZU1JSWhHCmJ3ZjlFU05JSGcxbUIvMFJJMGppTk53T2NtY0VrVTQ1TTV5TDV0Rk85OWVXakZGTVhXTEd5azdsTmFudWhGNWI3SVJHOEszVVFlWmMKZi9RaCt0bTNDSWdxaktZSlJtSy9ockx1aUR1aGduQVl1ZEJpSnRwV0tyWXRudHIyN1JaMzFETFF3WjRKUmpHR3dXQ3I5elZXVzEreQpQd1lOTFdndXhFYjVXN2pjbXJQWUtKeVRUeUJwejVXZk85L29aMlF4eEVaWDA1QjI0QTVnZ2N0em5VR0NVbzJrWFVHZnZHTjQ4TlV5CjdGTXFHOG1tZlVya3VFcGJkQ2l5STIvUjZmYm4yR2lJdUU4Smw1dGhmdzZaZzNSYmROTGhkNnZ0ejJGeFVIYXUwdUVWcHdQYVBwYnAKOElqdFU4THU0RVFBZG9SQ2hKTTRSZ1FZOTFJeWlzQ3pSRXlqQSt6UkdFc1pnQWZwT094VEh1ZkdVNFVJKzd0NkloZ2loNnZzR2h3dApLRGF0cGVSL2xRNTZacER1cjFwOTB4cWU1T3BYc2xZTWU3NjBHNzd5M1NIbVRXTXJBR3BVMXdoREhBZHBZVmdDZVBkLzcydkx3aU5YCnRycGFHZkR3dVpDclRzaGJyem9ZdVVCNHZZR1VvaEhEK3RablJ0QU1wSkdJdXUrRUJ6L1hHK3JSMkZxc0JmUXRZd1VBb0tIT3FRQ3EKT1VCYzUvYUxYRkVFOElTcTRJb3daQURaeGY2YXdnYWVoeFd5aEVISkZzaGJhNFRDampEd1RwaW9lY3RHN0tjVVNZSGU0YVVHSS80MApZVE00ak5mMENxeUZBL2c0aXFuWnhhdkNtSmNZUjBxd3NzTk9nQkhaT1dXbDNMV3RXcjJvd0VodHd6MmdiNndkY0lXRGNydnFEMVpyCnQ1dTRMTC9wT2EzVzJDSXpDczI0Z0NWSUZrQVlwOW5DZUkxYWN3a2x1ME0wd1BwMFlCU25Uc3h6RGx3aTZSczdHTkRnWFd2ZDFpTlYKUnN0algyMGc5VlNEcGVpRWp0Tk0vVGh1Y1E2ZEVQSm9YMWNDVUU4c29yZUhHSUQrNis0K3BxUlhJa2IvSXhTaTdZU3NiOHo5bUxOcgpzUllNNjBRMHRpQXJhYnNaR1VTT29rNVRxcE5nY0p2Q0lNUUdxVkpzRlFHRWdwdkFaVVcybytZZUsyb3RFL0VORXVYalVQY2UrTlMxCkJ2Q2tzOXV5dnc5Y1Z6WGcrSXkyeTZTZzFuN2h1UkRDaXhydUFsS0NwdWFLWXFmR1h2RlRaWnNDSnV4R3VHNTlHSVlsY1JFcHh2VWkKZnFJSXZlUXl4bzl2dDFBMDB5OXZ0Y0J2OEpSMmRIS2s1R2VySjBkS0lVcnBpRWJRV2RuRmhjZDk4MUw0VW5Ob29HYlh3b1o0Vi9XSApRZUlQU3J0cTdQQThiQWhDM3JKcStGQi9JdVRIMFR2bVUyc1BnT2hXRDBDOURNb09jMk5MRFl4ZTRvRlJJQS94UU5jbEhoc0ZZZ3JHCmVDN1YwTlFsSXdVWHdiSlBoMXdmdW9zS001UnpkLy9jb2J0d2Jtd1B5ZDNNb2J1WXQwWU5jb1ZEZHozWU1jaHZmKzdRWFRnMzZybTcKZis3UVhTalQxQTNTUDNmb0xwUnA2cm03b1Q5MjZLNmM1eUdkdTJ0MTZDNTBVNU82b29iWW5weGdMaTJvaTZuODJoVy9MeEZTM2NORwprUXdrc3FRZDNpUWpTNjI3U2srU004QTVSYWQvQjlCYWdqNGlPaHRjT3lvOHhwVWpUeUcweGFMdXBFVFFsZ0hhWjRIWEE5eXIwVDZwCm1nWGRRNU9zeHF4dlFFdWVNcVpkYXZRZ24wQkNQMm80Vnh5TkZVam80UlBxTVRUUjViakFlVVErQ0JlWXU4cXh0dmlSNGpCTmVpTEYKRGczaUREdlR0ckVWbFVkWU93bHBzVU1rdGRIZVdxMGFnVUZJUmhiYzhQaHcrV3pkUzBZT0c2WWFHbkJObkVWa1hpckFqVko0ekFqYwpDdTFXcGtOOEd4VDh2QXQrYXZPTDVSdzFTWGFML01kbzJ1ajk1Z1hQWDZ4WCtzZUFmL0F6bmZXeVhNYkxKWlBnanlUOHRkSDMvQlZBCnJiMXMwTnNBeW92eEZtRFdYVGRXRUJibDBXQXhtazE3d205dkR2MTJmOUc0UFMxN2MxN3BuUzU0NThBYkFEMWp1cUE1ZUJSRSs3QmQKMk44dWdnVS83bi9DcnBUaDF5djR3VVFUR1piSnBCSnhMaHVQWjVnMCtBVjg0YmhVSXBWaTA1bE1OaUYxT0pyTXBwaDBKaEZuNDJrdQptY2lDWCs5N0VBSWNEQWYvK2czL09nUGZmb0RmZm5wWnhudmhmWHBodkVNUDY3MXZlZjVLUmRPSlREeVY1dEtKVkNLWjVyd1JKc293CkhKZE9jbW1XaWJQWmRNb0x2SGMyRzgzQy96SlpOcEZJTXhsdmhJMUh1V1E4eTZUU21WUXlBUWpXOFB3Vmg3K3hxVGpMcGRQWkRKZXkKQWdhYUplQ3Y4TDhzazBneG1TeWhtUmtueDhEZkkvclhNOW1VRi8xT014VFE3SjAwZVdsdjdIUzY4QWJhblZxMy9kbWI4emUvNTd4Kwp2aHBGbVlrQVQ2RUpqc0Mxc3R2c2ZmQTNRbTgwZ1R6MUlmYis1cjI5NlhTMjZDMzRPWGprL1JCNGNURVRlSy80T2ZzSmY0RXZxUzhBCkRyMEN6c1QvQTVlYVJaMD0NCgldXT4NCjwvaTpwZ2Y+DQo8L3N2Zz4NCg==</xsl:variable>

<xsl:variable name="sortArrowDownActiveHover" select="$sortArrowDownHover" />

<xsl:variable name="repeatingMedicationIcon">data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAAHdbkFIAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAACxMAAAsTAQCanBgAAATNSURBVGhD7Zs5qCxFFIbHNXIHnwqaaCAqIoqJoIGJsYlgICoqiCsGgoILgkv0XHEBAzVSNBBEn+IOCiqIImjiviDugoG4b//X1ed6pqamq3pu1zhz7Q8+urq7qvp0zZ263VU1k7480W6T3N1ui/i73SbhpLnBHu3WmMlwebtdAp3tYEwF5/EnOjN5Nzi43f4skxlgPzlz8L/Dh9I7rBvk7iE5Re+K4ii8SfzJq6Wl7XjsDH+0W9iz3fqMvvAvHEgRF/g/c4j8QtqXoBcfydtDcvK4/D4ky4lb/w7Zq5LUx9erEjqez0JyCiouruQN6SuhsFlcyZuSSnxh8x45g52E3+Shkkp8Qe8M8cn72u28Sma4pt2mTtImnYXBnyDNLfTiaPlqSE6Ol1+H5MhWYt634l1Zlb0lF3qg2ZuFnobzvfu9Ul6UXCBHtUB2kVT8Q7OXp1og1p2k+mqD87FLCSS+aMpNB0LXdn5INnR19V0W8ZL0BXzB0yX79vzVN5Asj8nPQ3KjQKpgfKwkkEdllm+k/TM07AXA7hrYT3Gm9BfFO2UvKHRVSCbh/C0hWY+9JM/R/k6WcuGRkZEurpRvy3fkxRxYFsfJuD8wD5dV2UfaxeicjIOkHSfAavwouUiKnWT1IKj8hZBM4oM4lgNDQ8W5/r9qEFRa8kBaLQjGPaiUt88cVYLwlebemW+UlnfQIOyJCA/jQIL44uZSgph3cbNqELmLmyV/Q0X4IO5y6RIXhsI75AHN3nQQfbxUZokLwVnyWck+/w1hkSA+lVnsbfjDdgu2hZ+kDUr0DYJB2Cz0el+GZFPIbw32DwzJXkHwPJGFjLuGZJP2W+N5+UxINpQGkcV6vZj42LkyPpYL4iRZBJljGBN4OSQbrpdfheQU3MDH0l/4V2kfVxEUOiEkpyCIy0Jy8qesNnt3q0y1gnG27Do/CN9KLnJys/cvT0uOH9XsVcZawsvbsh8jGBkZGRkZWTm2Sd4VeAiJ/5F5mV5mDprRly3BMdJGcszv5L3yHHmavEg+LHmq9/mYyak6xFSbm6S/oZLRw50lUxi+3Fo2BJ+s3cDvkgUwfeAZ3mY517IhmF2zwJPrSgqZ1xCDjrTV4BFpARdNB2ZYu4Y4UfpgL5FDsFYNwcCRD5T5/N7Lj+aQGvtbyYZggUu8UIuGmDecm6Nk0HMlG4Lhoc00ROlor3dLNMQiNx67sg0RLyjxDTHEjcd+IveVK0WqIWq6yENZklTlXk98jt8CbJf+NxLLbIgn5WDsL9+S8UXmQeuz/OkvST5Wnh0hjWU0ROmCwywMg1uldGw0hu0b8b7nVGkNcTMHHDUbgqWfm4b1glbhGRxosWNGvB/DrwP4XpInNa8wdEPQ4IMsJWFWjQrj1XwxduEurpPkSc3sGEM0BKsPF/o5RgzP41YpwXfxuiQf01jzpi/8X1MOOk5erix/iXxYqZmtTfGcpHLm3XLw6dnDT6ohXpGc87ObJewmT5G3yR2Sxn5NPiTPk73m//rCyihbwkmnwl9FDhriCunzPiipg3+NVQOuAZ/k+5IboHO5VpY0BDCpyu/OKPueXOvZvSOlNYT5gbxf0kfQMAyCsqrQ52F/0bfClYWvxoXyKUmvazdLmmMXSPKMjIyMrCiTyT8spSp+IgY6kQAAAABJRU5ErkJggg==</xsl:variable>

<!-- EMED END -->

  <!-- Print elements as separated list -->
  <xsl:template name="renderListItems">
    <xsl:param name="list" />

    <xsl:for-each select="$list">
      <xsl:if test="position()>1"><xsl:text>, </xsl:text></xsl:if>
      <xsl:value-of select="." />
    </xsl:for-each>
  </xsl:template>

  <!-- Get a Name -->
  <xsl:template name="getName">
    <xsl:param name="name"/>
    <xsl:param name="printNameBold" select="string(false())" />

    <xsl:variable name="nameValue" >
      <xsl:choose>
        <xsl:when test="$name/n1:family">
          <xsl:if test="$name/n1:prefix">
            <xsl:for-each select="$name/n1:prefix">
              <xsl:value-of select="."/>
              <xsl:text> </xsl:text>
            </xsl:for-each>
          </xsl:if>
          <xsl:for-each select="$name/n1:given">
            <xsl:value-of select="."/>
            <xsl:text> </xsl:text>
          </xsl:for-each>
          <xsl:for-each select="$name/n1:family[not(@qualifier)]">
            <xsl:if test="count($name/n1:family[not(@qualifier)]) &gt; 1 and position() &gt; 1">
              <xsl:text> </xsl:text>
            </xsl:if>
                <xsl:value-of select="."/>
          </xsl:for-each>
          <xsl:if test="$name/n1:suffix">
            <xsl:for-each select="$name/n1:suffix">
              <xsl:text>, </xsl:text>
              <xsl:value-of select="."/>
            </xsl:for-each>
          </xsl:if>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$name"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <xsl:choose>
      <xsl:when test="$printNameBold='true'">
        <b><xsl:value-of select="$nameValue" /></b>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$nameValue" />
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <!-- guardian -->
  <xsl:template match="n1:guardian">
    <div class="guardianContact">
      <p class="guardianName">
        <xsl:if test="n1:guardianPerson/n1:name">
          <xsl:call-template name="getName">
            <xsl:with-param name="name" select="n1:guardianPerson/n1:name"/>
          </xsl:call-template>
        </xsl:if>
        <xsl:if test="n1:guardianOrganization/n1:name">
          <xsl:apply-templates select="n1:guardianOrganization/n1:name"/>
        </xsl:if>      
      </p>
      <xsl:call-template name="getContactInfo">
        <xsl:with-param name="contact" select="."/>
      </xsl:call-template>
      <xsl:if test="n1:guardianOrganization/n1:asOrganizationPartOf/n1:wholeOrganization">
        <xsl:call-template name="getOrganization">
          <xsl:with-param name="organization" select="n1:guardianOrganization/n1:asOrganizationPartOf/n1:wholeOrganization"/>
        </xsl:call-template>
      </xsl:if>
    </div>
  </xsl:template>

  <!--  Format Date
    outputs a date in day.month.year form
    e.g., 19991207  ==>  7. Dezember 1999
  -->
  <xsl:template name="formatDate">
    <xsl:param name="date"/>
    <!-- shortmode = true, display only the date, not the time -->
    <xsl:param name="date_shortmode" />

    <xsl:choose>
      <xsl:when test="not($date/@nullFlavor) and not($date/@nullFlavor='UNK') and $date">
        <xsl:call-template name="formateDateInternal">
          <xsl:with-param name="date" select="$date" />
          <xsl:with-param name="date_shortmode" select="$date_shortmode" />
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>unbekannt</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="formateDateInternal">
    <xsl:param name="date" />
    <xsl:param name="date_shortmode" />

    <xsl:choose>
      <xsl:when test="substring ($date/@value, 7, 1)='0'">
        <xsl:value-of select="substring ($date/@value, 8, 1)"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="substring ($date/@value, 7, 2)"/>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:text>. </xsl:text>
    <xsl:variable name="month" select="substring ($date/@value, 5, 2)"/>
    <xsl:choose>
      <xsl:when test="$month='01'">
        <xsl:text>Januar </xsl:text>
      </xsl:when>
      <xsl:when test="$month='02'">
        <xsl:text>Februar </xsl:text>
      </xsl:when>
      <xsl:when test="$month='03'">
        <xsl:text>März </xsl:text>
      </xsl:when>
      <xsl:when test="$month='04'">
        <xsl:text>April </xsl:text>
      </xsl:when>
      <xsl:when test="$month='05'">
        <xsl:text>Mai </xsl:text>
      </xsl:when>
      <xsl:when test="$month='06'">
        <xsl:text>Juni </xsl:text>
      </xsl:when>
      <xsl:when test="$month='07'">
        <xsl:text>Juli </xsl:text>
      </xsl:when>
      <xsl:when test="$month='08'">
        <xsl:text>August </xsl:text>
      </xsl:when>
      <xsl:when test="$month='09'">
        <xsl:text>September </xsl:text>
      </xsl:when>
      <xsl:when test="$month='10'">
        <xsl:text>Oktober </xsl:text>
      </xsl:when>
      <xsl:when test="$month='11'">
        <xsl:text>November </xsl:text>
      </xsl:when>
      <xsl:when test="$month='12'">
        <xsl:text>Dezember </xsl:text>
      </xsl:when>
    </xsl:choose>
    <xsl:value-of select="substring ($date/@value, 1, 4)"/>
    <xsl:variable name="hour" select="substring ($date/@value, 9, 2)"/>
    <xsl:if test="$hour != '' and $date_shortmode != 'true'">
      <xsl:text> um </xsl:text>
      <xsl:choose>
        <!-- print "00:00" Uhr as "0:00" Uhr -->
        <xsl:when test="$hour='00'">
          <xsl:text>0</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="substring ($date/@value, 9, 2)"/>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:text>:</xsl:text>
      <xsl:value-of select="substring ($date/@value, 11, 2)"/>
      <xsl:text> Uhr </xsl:text>
    </xsl:if>

  </xsl:template>
  
  <!-- StructuredBody -->
  <xsl:template match="n1:component/n1:structuredBody">
    <xsl:apply-templates select="n1:component/n1:section"/>
  </xsl:template>


  <!--
    Component/Section
  -->
  <xsl:template match="n1:component/n1:section">
    <!-- zeige TITEL der Sektion -->
    <xsl:choose>
      <!-- Briefkopf: zeige keinen Titel -->
      <xsl:when test="n1:code/@code = 'BRIEFT' "/>
      <!-- Abschließende Bemerkungen -->
      <xsl:when test="n1:code/@code = 'ABBEM' " />
      <!-- do not show section risk here -->
      <xsl:when test="n1:code/@code = '51898-5' and n1:code/@codeSystem ='2.16.840.1.113883.6.1' "/>
      <!-- do not show section allergic here -->
      <xsl:when test="n1:code/@code = '48765-2' and n1:code/@codeSystem = '2.16.840.1.113883.6.1' " />
      <xsl:otherwise>
      </xsl:otherwise>
    </xsl:choose>

    <!-- text of section -->
    <xsl:choose>
      <!-- salutation (Briefkopf: eigene Formatierung / BRIEFT ABBEM) -->
      <xsl:when test="n1:code/@code = 'BRIEFT' ">
        <div class="salutation"><xsl:apply-templates select="n1:text"/></div>
      </xsl:when>
      <xsl:when test="n1:code/@code = 'ABBEM'">
        <div class="leavetaking"><xsl:apply-templates select="n1:text"/></div>
      </xsl:when>
      <!-- rendering for risk -->
      <xsl:when test="(n1:code/@code = '51898-5' or n1:code/@code = '48765-2') and n1:code/@codeSystem ='2.16.840.1.113883.6.1' ">

        <div class="risk">

          <xsl:variable name="header">
            <xsl:choose>
              <xsl:when test="count(ancestor::*/n1:section) > 1">h3</xsl:when>
              <xsl:when test="count(ancestor::*/n1:section) > 2">h4</xsl:when>
              <xsl:otherwise>h2</xsl:otherwise>
            </xsl:choose>
          </xsl:variable>

          <xsl:element name="{$header}">
            <xsl:variable name="riskId" select="concat(n1:code/@code, '-', ../../n1:code/@code)"/>
            <a id="{$riskId}" />
            <span class="tooltipTrigger">
              <span class="warningIcon" style="padding-left: 20px;"> </span>
              <span class="tooltip">
                <span>Risiko</span>
              </span>
            </span>
            <span>
              <b>
                <xsl:call-template name="getRiskTitle">
                  <xsl:with-param name="code" select="n1:code/@code" />
                </xsl:call-template>
              </b>
              <xsl:text>: </xsl:text>
              <xsl:value-of select="n1:text"/>
            </span>
          </xsl:element>

        </div>
      </xsl:when>
      <xsl:otherwise>
        <xsl:call-template name="emed" />
      </xsl:otherwise>
    </xsl:choose>

    <!-- section is intended -->
    <xsl:if test="n1:component/n1:section">
      <div class="section_indent">
        <xsl:apply-templates select="n1:component/n1:section"/>
      </div>
    </xsl:if>

    <xsl:if test="/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.2' and n1:code/@code = 'ABBEM' and 
        (//n1:templateId/@root='1.2.40.0.34.11.2.2.13' or //n1:templateId/@root='1.2.40.0.34.11.2.2.14' or 
    	//n1:templateId/@root='1.2.40.0.34.11.2.2.18' or //n1:templateId/@root='1.2.40.0.34.11.2.2.19' or 
    	//n1:templateId/@root='1.2.40.0.34.11.2.2.19' or //n1:templateId/@root='1.2.40.0.34.11.2.2.20' or 
    	//n1:templateId/@root='1.2.40.0.34.11.2.2.21' or //n1:templateId/@root='1.2.40.0.34.11.2.2.22' or
    	//n1:templateId/@root='1.2.40.0.34.11.1.2.4' or //n1:templateId/@root='1.2.40.0.34.11.1.2.3')">
        <hr/>
    </xsl:if>
  </xsl:template>

  <!--   Title within a section from h2 to h4 -->
  <xsl:template match="n1:title">
    <xsl:param name="code" select="''"/>    
    <xsl:param name="idprefix" select="''"/>
    <xsl:variable name="header">
      <xsl:choose>
        <xsl:when test="count(ancestor::*/n1:section) > 1">h3</xsl:when>
        <xsl:when test="count(ancestor::*/n1:section) > 2">h4</xsl:when>
        <xsl:otherwise>h2</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:element name="{$header}"> 
      <xsl:attribute name="id">id<xsl:value-of select="concat($code/@code, $idprefix)"/></xsl:attribute>

      <xsl:if test="$header='h2'">
        <xsl:attribute name="class"><xsl:text>sectionTitle</xsl:text></xsl:attribute>
      </xsl:if>

      <xsl:if test="$header='h3'">
        <xsl:attribute name="class"><xsl:text>sectionSubTitle</xsl:text></xsl:attribute>
      </xsl:if>

      <!-- display icon: Patientenverfuegung-->
      <xsl:if test="$code/@code='42348-3' and $code/@codeSystem ='2.16.840.1.113883.6.1'">
        <span class="tooltipTrigger">
          <xsl:call-template name="getPatientLivingWillIcon" />
          <span class="tooltip" style="width: 180px;">
            <span>Patientenverfügung vorhanden</span>
          </span>
        </span>
        <xsl:text> </xsl:text>
      </xsl:if>

      <xsl:value-of select="."/>
    </xsl:element>
  </xsl:template>

  <xsl:template name="getRiskTitle">
    <xsl:param name="code"/>

    <xsl:choose>
      <xsl:when test="$code='51898-5'">
        <xsl:text>Risiko</xsl:text>
      </xsl:when>
      <xsl:when test="$code='48765-2'">
        <xsl:text>Allergien, Unverträglichkeiten und Risiken</xsl:text>
      </xsl:when>
      <xsl:when test="$code='42348-3'">
        <xsl:text>Patientenverfügung vorhanden</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>unbekannter code (</xsl:text>
        <xsl:value-of select="$code"/>
        <xsl:text>)</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>


<xsl:template name="checkDocumentValid" />

<!-- nonXMLBody -->
<xsl:template match="n1:component/n1:nonXMLBody" />

  <!-- Superscript -->
  <xsl:template match="n1:sup">
    <sup>
      <xsl:apply-templates/>
    </sup>
  </xsl:template>

  <!-- Subscript -->
  <xsl:template match="n1:sub">
    <sub>
      <xsl:apply-templates/>
    </sub>
  </xsl:template>


  <!--   RenderLogo
    only handles PNG's and JPEG's.  It could, however,
  media type  @ID  =$imageRef  referencedObject
    -->
  <xsl:template name="renderLogo">
    <xsl:param name="logo"/>

    <xsl:if test="$logo/n1:value[@mediaType='image/png' or @mediaType='image/jpg' or @mediaType='image/jpeg']">
      <!-- image data inline B64 coded -->
      <xsl:if test="$logo/n1:value/@representation='B64'">
        <xsl:element name="img">
          <xsl:attribute name="alt" />
          <xsl:attribute name="src">data:
          <xsl:value-of select="$logo/n1:value/@mediaType"/>;base64,
          <xsl:value-of select="$logo/n1:value"/></xsl:attribute>
        </xsl:element>
      </xsl:if>
    </xsl:if>
  </xsl:template>



  <!--
    Contact Information
  different rendering for telecom and addresses
  -->
  <xsl:template name="getContactInfo">
    <xsl:param name="contact"/>
    <xsl:apply-templates select="$contact/n1:addr"/>
    <xsl:apply-templates select="$contact/n1:telecom"/>
  </xsl:template>

  <xsl:template name="getContactAddress">
    <xsl:param name="contact"/>
    <div>
      <xsl:apply-templates select="$contact/n1:addr"/>
    </div>
  </xsl:template>

  <xsl:template name="getContactTelecom">
    <xsl:param name="contact"/>
    <xsl:apply-templates select="$contact/n1:telecom">
        <xsl:with-param name="asTable" select="false()" />
    </xsl:apply-templates>
  </xsl:template>
  <xsl:template name="getContactTelecomTable">
    <xsl:param name="contact"/>
    <xsl:apply-templates select="$contact/n1:telecom">
        <xsl:with-param name="asTable" select="true()" />
    </xsl:apply-templates>
  </xsl:template>

  <!--
  get address
  -->
  <xsl:template match="n1:addr">
    <div class="address">
    <p class="addressRegion">
    <xsl:if test="@use">
      <!-- Wohnadresse etc. -->
      <xsl:call-template name="translateCode">
        <xsl:with-param name="code" select="@use"/>
      </xsl:call-template>
      <xsl:text>:</xsl:text>
    </xsl:if>
    </p>
    <xsl:for-each select="n1:streetAddressLine">
      <p class="streetAddress"><xsl:value-of select="."/></p>
    </xsl:for-each>
    <p class="street">
    <xsl:if test="n1:streetName">
      <xsl:value-of select="n1:streetName"/>
      <xsl:text> </xsl:text>
      <xsl:value-of select="n1:houseNumber"/>
    </xsl:if>
    </p>
    <p class="city">
    <xsl:value-of select="n1:postalCode"/>
    <xsl:text> </xsl:text>
    <xsl:variable name="uppercase" >
    <xsl:if test="n1:country != 'Österreich' and n1:country != 'A' and n1:country != 'Austria' and n1:country != 'Oesterreich' and n1:country != 'AUT' " >
      uppercase
    </xsl:if>
    </xsl:variable>
    <span class="{$uppercase}"><xsl:value-of select="n1:city"/></span>
    <xsl:if test="n1:state and not(n1:state/@nullFlavor)">
      <xsl:text>, </xsl:text>
      <xsl:value-of select="n1:state"/>
    </xsl:if>
    </p>
    <xsl:if test="n1:country != 'Österreich' and n1:country != 'A' and n1:country != 'Austria' and n1:country != 'Oesterreich' and n1:country != 'AUT' ">
      <p class="country">

        <xsl:variable name="country">
          <xsl:call-template name="getCountryMapping">
            <xsl:with-param name="country" select="n1:country"/>
          </xsl:call-template>
        </xsl:variable>

        <xsl:value-of select="translate($country, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>

      </p>
    </xsl:if>
    <xsl:value-of select="text()"/>
    </div>
  </xsl:template>

  <!--
    get telecom information (tel, www, ...)
  -->
  <xsl:template match="n1:telecom">
    <xsl:param name="asTable" />
    <xsl:variable name="type" select="substring-before(@value, ':')"/>
    <xsl:variable name="value" select="substring-after(@value, ':')"/>
    <xsl:if test="$type and not($asTable)">
      <p class="telecom">

        <xsl:if test="$type!='http' and $type!='mailto'">
          <xsl:choose>
            <xsl:when test="$type='tel' and @use='MC'">
              <xsl:call-template name="translateCode">
                <xsl:with-param name="code">
                  <xsl:text>MC</xsl:text>
                </xsl:with-param>
              </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
              <xsl:call-template name="translateCode">
                <xsl:with-param name="code" select="$type"/>
              </xsl:call-template>
              <xsl:if test="@use">
                <span class="lighter"><xsl:text> (</xsl:text>
                  <xsl:call-template name="translateCode">
                    <xsl:with-param name="code" select="@use"/>
                  </xsl:call-template>
                  <xsl:text>)</xsl:text></span>
              </xsl:if>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:text>  </xsl:text>
        </xsl:if>

        <xsl:choose>
          <!-- is url -->
          <xsl:when test="$type='http'">
            <a href="{@value}" target="_blank">
              <xsl:call-template name="uriDecode">
                <xsl:with-param name="uri" select="@value" />
              </xsl:call-template>
            </a>
          </xsl:when>
          <!-- is mail -->
          <xsl:when test="$type='mailto'">
            <a href="{@value}" target="_blank">
              <xsl:call-template name="uriDecode">
                <xsl:with-param name="uri" select="$value" />
              </xsl:call-template>
            </a>
          </xsl:when>
          <xsl:when test="$type='tel' or $type='fax'">
            <xsl:variable name="phoneNumber">
              <xsl:call-template name="uriDecode">
                <xsl:with-param name="uri" select="$value" />
              </xsl:call-template>
            </xsl:variable>

            <xsl:call-template name="string-replace-all">
              <xsl:with-param name="text" select="$phoneNumber" />
              <xsl:with-param name="replace" select="'.'" />
              <xsl:with-param name="by" select="' '" />
            </xsl:call-template>
          </xsl:when>
          <xsl:otherwise>
            <xsl:call-template name="uriDecode">
              <xsl:with-param name="uri" select="$value" />
            </xsl:call-template>
          </xsl:otherwise>
        </xsl:choose>
      </p>
    </xsl:if>
    <xsl:if test="$type and $asTable">
      <tr class="telecom">
        <td class="firstrow">

          <xsl:choose>
            <xsl:when test="$type='tel' and @use='MC'">
              <xsl:call-template name="translateCode">
                <xsl:with-param name="code">
                  <xsl:text>MC</xsl:text>
                </xsl:with-param>
              </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
              <xsl:call-template name="translateCode">
                <xsl:with-param name="code" select="$type"/>
              </xsl:call-template>
              <xsl:if test="@use">
                <span class="lighter">
                  <xsl:text> (</xsl:text>
                  <xsl:call-template name="translateCode">
                    <xsl:with-param name="code" select="@use"/>
                  </xsl:call-template>
                  <xsl:text>)</xsl:text></span>
              </xsl:if>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:text>  </xsl:text>
        </td>
        <td>
        <xsl:choose>
          <!-- is url -->
          <xsl:when test="$type='http'">
            <a href="{@value}" target="_blank">
              <xsl:call-template name="uriDecode">
                <xsl:with-param name="uri" select="@value" />
              </xsl:call-template>
            </a>
          </xsl:when>
          <!-- is mail -->
          <xsl:when test="$type='mailto'">
            <a href="{@value}" target="_blank">
              <xsl:call-template name="uriDecode">
                <xsl:with-param name="uri" select="$value" />
              </xsl:call-template>
            </a>
          </xsl:when>
          <xsl:when test="$type='tel'">
            <xsl:variable name="phoneNumber">
              <xsl:call-template name="uriDecode">
                <xsl:with-param name="uri" select="$value" />
              </xsl:call-template>
            </xsl:variable>

            <xsl:call-template name="string-replace-all">
              <xsl:with-param name="text" select="$phoneNumber" />
              <xsl:with-param name="replace" select="'.'" />
              <xsl:with-param name="by" select="' '" />
            </xsl:call-template>
          </xsl:when>
          <xsl:otherwise>
            <xsl:call-template name="uriDecode">
              <xsl:with-param name="uri" select="$value" />
            </xsl:call-template>
          </xsl:otherwise>          
        </xsl:choose>
        </td>
      </tr>
    </xsl:if>
  </xsl:template>

  <xsl:template name="getAddress">
    <xsl:param name="addr"/>
    <div class="address">
    <xsl:if test="$addr/n1:additionalLocator">
      <p class="locator"><xsl:value-of select="$addr/n1:additionalLocator"/></p>
    </xsl:if>
    <xsl:if test="$addr/n1:streetAddressLine">
      <p class="streetAddress"><xsl:value-of select="$addr/n1:streetAddressLine"/></p>
    </xsl:if>
    <p class="street">
    <xsl:if test="$addr/n1:streetName">
      <xsl:value-of select="$addr/n1:streetName"/>
    </xsl:if>
    <xsl:if test="$addr/n1:houseNumber">
      <xsl:text> </xsl:text>
      <xsl:value-of select="$addr/n1:houseNumber"/>
    </xsl:if>
    </p>
    <xsl:if test="$addr/n1:postalCode or $addr/n1:city">
      <p class="city">
      <xsl:value-of select="$addr/n1:postalCode"/>
      <xsl:text> </xsl:text>
    <xsl:variable name="uppercase" >
      <xsl:if test="$addr/n1:country != 'Österreich' and $addr/n1:country != 'A' and $addr/n1:country != 'Austria' and $addr/n1:country != 'Oesterreich' and n1:country != 'AUT' ">
      uppercase
      </xsl:if>
      </xsl:variable>
      <span class="{$uppercase}"><xsl:value-of select="$addr/n1:city"/></span>
      <xsl:if test="$addr/n1:state and not($addr/n1:state/@nullFlavor='UNK')">
        <xsl:text>, </xsl:text>
        <xsl:value-of select="$addr/n1:state"/>
      </xsl:if>
      </p>
      <xsl:if test="$addr/n1:country != 'Österreich' and $addr/n1:country != 'A' and $addr/n1:country != 'Austria' and $addr/n1:country != 'Oesterreich' and n1:country != 'AUT' ">
      <p class="country">
        <xsl:value-of select="$addr/n1:country"/>
      </p>
      </xsl:if>
    </xsl:if>
    </div>
  </xsl:template>

  <xsl:template name="getAuthor">
    <xsl:param name="author"/>
    <xsl:if test="$author/n1:assignedPerson/n1:name">
      <xsl:call-template name="getName">
        <xsl:with-param name="name" select="$author/n1:assignedPerson/n1:name"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="$author/../n1:time/@value">
        (am
        <xsl:call-template name="formatDate">
        <xsl:with-param name="date" select="$author/../n1:time"/>
      </xsl:call-template>)
      </xsl:if>
    <xsl:if test="$author/n1:addr">
      <xsl:call-template name="getAddress">
        <xsl:with-param name="addr" select="$author/n1:addr"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="$author/n1:telecom">
      <xsl:apply-templates select="$author/n1:telecom"/>
    </xsl:if>
    <br/>
  </xsl:template>

  <xsl:template name="getOrganization">
    <xsl:param name="organization"/>
    <xsl:param name="showMore"><xsl:value-of select="0"/></xsl:param>
    <xsl:param name="printNameBold" select="string(false())" />

    <xsl:if test="$organization/n1:name">
      <xsl:choose>
        <xsl:when test="$printNameBold='true'">
          <p class="organisationName"><b><xsl:value-of select="$organization/n1:name"/></b></p>
        </xsl:when>
        <xsl:otherwise>
          <p class="organisationName"><xsl:value-of select="$organization/n1:name"/></p>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>

    <xsl:if test="$organization/n1:addr">
      <xsl:call-template name="getAddress">
        <xsl:with-param name="addr" select="$organization/n1:addr"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="$organization/n1:telecom">
      <xsl:apply-templates select="$organization/n1:telecom"/>
    </xsl:if>
    <xsl:if test="$organization/n1:asOrganizationPartOf/n1:wholeOrganization">
      <xsl:call-template name="getOrganization">
        <xsl:with-param name="organization" select="$organization/n1:asOrganizationPartOf/n1:wholeOrganization"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="count(/n1:ClinicalDocument/n1:author/n1:assignedAuthor[count(n1:assignedAuthoringDevice)=0]) &gt; 1">
      <xsl:if test="$showMore=1">
        <p class="telecom"><i>(mehrere Dokumentenverfasser)</i></p>
      </xsl:if>
    </xsl:if>
  </xsl:template>

  <xsl:template name="getIntendedRecipient">
    <xsl:param name="recipient"/>
    <p class="organisationName">
      <xsl:text>z.H.: </xsl:text>
      <xsl:if test="$recipient/n1:informationRecipient/n1:name">
        <xsl:call-template name="getName">
          <xsl:with-param name="name" select="$recipient/n1:informationRecipient/n1:name"/>
        </xsl:call-template>
      </xsl:if>
    </p>
    <div class="recipient">
      <xsl:if test="$recipient/n1:addr">
        <xsl:call-template name="getAddress">
          <xsl:with-param name="addr" select="$recipient/n1:addr"/>
        </xsl:call-template>
      </xsl:if>
      <xsl:if test="$recipient/n1:telecom">
        <xsl:apply-templates select="$recipient/n1:telecom"/>
      </xsl:if>
    </div>
  </xsl:template>
  
  <!--
    code translations for encounter description 
  -->
  <xsl:template name="getEncounter">
    <xsl:variable name="codeName" select="/n1:ClinicalDocument/n1:componentOf/n1:encompassingEncounter/n1:code/@code" />
    <xsl:choose>
      <xsl:when test="$codeName = 'AMB' or $codeName = 'HH'">Besuch</xsl:when>
      <xsl:when test="$codeName = 'EMER' or $codeName = 'FLD' or $codeName = 'VR'">Behandlung</xsl:when>
      <xsl:when test="$codeName = 'IMP' or $codeName = 'ACUTE' or $codeName = 'NONAC' or $codeName = 'PRENC' or $codeName = 'SS'">Aufenthalt</xsl:when>    
      <xsl:otherwise> </xsl:otherwise>  
    </xsl:choose>
  </xsl:template>
  
  <!--
    code translations for encounter case number 
  -->
  <xsl:template name="getEncounterCaseNumber">
    <xsl:variable name="codeName" select="/n1:ClinicalDocument/n1:componentOf/n1:encompassingEncounter/n1:code/@code" />
    <xsl:choose>
      <xsl:when test="$codeName = 'AMB' or $codeName = 'HH' or $codeName = 'EMER' or $codeName = 'FLD' or $codeName = 'VR'">Fallzahl: </xsl:when>    
      <xsl:when test="$codeName = 'IMP' or $codeName = 'ACUTE' or $codeName = 'NONAC' or $codeName = 'PRENC' or $codeName = 'SS'">Aufnahmezahl: </xsl:when>    
      <xsl:otherwise> </xsl:otherwise>  
    </xsl:choose>
  </xsl:template>

  <!--
    code translations for ambulantory description
  -->
  <xsl:template name="getAmbulatory">
    <xsl:param name="effectiveTime" />
    <xsl:param name="code" />
    <xsl:param name="date_shortmode" />
    <xsl:variable name="codeName" select="$code/@code" />
    <xsl:variable name="codeSys" select="$code/@codeSystem" />
    <xsl:variable name="prefix">
      <xsl:choose>
        <xsl:when test="$codeName = 'AMB' and $codeSys = '2.16.840.1.113883.5.4' ">Ambulant</xsl:when>
        <xsl:when test="$codeName = 'EMER' and $codeSys = '2.16.840.1.113883.5.4' ">Akutbehandlung</xsl:when>
        <xsl:when test="$codeName = 'FLD' and $codeSys = '2.16.840.1.113883.5.4' ">Notfall, Rettung, erste Hilfe</xsl:when>
        <xsl:when test="$codeName = 'HH' and $codeSys = '2.16.840.1.113883.5.4' ">Hausbesuch(e)</xsl:when>
        <xsl:when test="$codeName = 'IMP' and $codeSys = '2.16.840.1.113883.5.4' ">Stationär</xsl:when>
        <xsl:when test="$codeName = 'ACUTE' and $codeSys = '2.16.840.1.113883.5.4' ">Stationär</xsl:when>
        <xsl:when test="$codeName = 'NONAC' and $codeSys = '2.16.840.1.113883.5.4' ">Stationär</xsl:when>
        <xsl:when test="$codeName = 'PRENC' and $codeSys = '2.16.840.1.113883.5.4' ">Prästationär</xsl:when>
        <xsl:when test="$codeName = 'SS' and $codeSys = '2.16.840.1.113883.5.4' ">Tagesklinisch</xsl:when>
        <xsl:when test="$codeName = 'VR' and $codeSys = '2.16.840.1.113883.5.4' ">Behandlung</xsl:when>
        <xsl:otherwise> </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:value-of select="$prefix"/><xsl:text> vom </xsl:text>
        <xsl:call-template name="formatDate">
            <xsl:with-param name="date" select="$effectiveTime/n1:low"/>
	        <xsl:with-param name="date_shortmode"><xsl:value-of select="$date_shortmode" /></xsl:with-param>
        </xsl:call-template>
        <xsl:text> bis </xsl:text>
        <xsl:call-template name="formatDate">
            <xsl:with-param name="date" select="$effectiveTime/n1:high"/>
            <xsl:with-param name="date_shortmode"><xsl:value-of select="$date_shortmode" /></xsl:with-param>
        </xsl:call-template>
  </xsl:template>



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getELGAMaritalStatus">
        <xsl:param name="code" />
        
        <xsl:choose>
            <xsl:when test="$code='D'">Geschieden</xsl:when>
            <xsl:when test="$code='M'">Verheiratet</xsl:when>
            <xsl:when test="$code='S'">Ledig</xsl:when>
            <xsl:when test="$code='T'">In Lebenspartnerschaft</xsl:when>
            <xsl:when test="$code='W'">Verwitwet</xsl:when>
            <xsl:otherwise>unbekannter Ehestatus</xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    


  <!--
    code translations for OIDs
  -->
  <xsl:template name="getNameFromOID">
    <xsl:for-each select="/n1:ClinicalDocument/n1:templateId">
      <xsl:variable name="oid">
        <xsl:value-of select="@root"/>
      </xsl:variable>
      <xsl:choose>
        <xsl:when test="$oid = '1.2.40.0.34.11.1'">Allgemeiner Leitfaden</xsl:when>
        <xsl:when test="$oid = '1.2.40.0.34.11.2'">, Entlassungsbrief (Ärztlich)</xsl:when>
        <xsl:when test="$oid = '1.2.40.0.34.11.3'">, Entlassungsbrief (Pflege)</xsl:when>
        <xsl:when test="$oid = '1.2.40.0.34.11.4'">, Laborbefund</xsl:when>
        <xsl:when test="$oid = '1.2.40.0.34.11.5'">, Befund Bildgebende Diagnostik</xsl:when>
        <xsl:when test="$oid = '1.2.40.0.34.11.8.1'">, e-Medikation (Rezept)</xsl:when>
        <xsl:when test="$oid = '1.2.40.0.34.11.8.2'">, e-Medikation (Abgabe)</xsl:when>
        <xsl:when test="$oid = '1.2.40.0.34.11.8.3'">, e-Medikation (Medikationsliste)</xsl:when>
        <xsl:when test="$oid = '1.2.40.0.34.11.8.4'">, e-Medikation (Pharmazeutische Empfehlung)</xsl:when>
      </xsl:choose>
    </xsl:for-each>
    <xsl:if test="not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.1') and 
      not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.2') and
      not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.3') and
      not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.4') and
      not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.5') and
      not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.8.1') and
      not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.8.2') and
      not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.8.3') and
      not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.8.4')">
      <xsl:text>(keine)</xsl:text>
    </xsl:if>
  </xsl:template>

  <!--
    ELGA Interoperabilitätsstufe
  -->
  <xsl:template name="getEISFromOID">
    <xsl:for-each select="/n1:ClinicalDocument/n1:templateId">
      <xsl:variable name="oid">
        <xsl:value-of select="@root"/>
      </xsl:variable>
      <xsl:choose>
        <xsl:when test="$oid = '1.2.40.0.34.11.2.0.1'">Basic/Structured</xsl:when>
        <xsl:when test="$oid = '1.2.40.0.34.11.2.0.2'">Enhanced</xsl:when>
        <xsl:when test="$oid = '1.2.40.0.34.11.2.0.3'">Full support</xsl:when>
        <xsl:when test="$oid = '1.2.40.0.34.11.3.0.1'">Basic/Structured</xsl:when>
        <xsl:when test="$oid = '1.2.40.0.34.11.3.0.2'">Enhanced</xsl:when>
        <xsl:when test="$oid = '1.2.40.0.34.11.3.0.3'">Full support</xsl:when>
        <xsl:when test="$oid = '1.2.40.0.34.11.4.0.1'">Basic/Structured</xsl:when>
        <xsl:when test="$oid = '1.2.40.0.34.11.4.0.2'">Enhanced</xsl:when>
        <xsl:when test="$oid = '1.2.40.0.34.11.4.0.3'">Full support</xsl:when>
        <xsl:when test="$oid = '1.2.40.0.34.11.5.0.1'">Basic</xsl:when>
        <xsl:when test="$oid = '1.2.40.0.34.11.5.0.3'">Full support</xsl:when>
      </xsl:choose>
    </xsl:for-each>
    <xsl:if test="not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.2.0.1') and 
      not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.2.0.2') and
      not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.2.0.3') and
      not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.3.0.1') and
      not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.3.0.2') and
      not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.3.0.3') and
      not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.4.0.1') and
      not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.4.0.2') and
      not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.4.0.3') and
      not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.5.0.1') and
      not(/n1:ClinicalDocument/n1:templateId/@root='1.2.40.0.34.11.5.0.3')">
      <xsl:text>(keine)</xsl:text>
    </xsl:if>
  </xsl:template>



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getELGAMedikationRezeptart">
        <xsl:param name="code" />
        
        <xsl:choose>
            <xsl:when test="$code='KASSEN'">Kassenrezept</xsl:when>
            <xsl:when test="$code='PRIVAT'">Privatrezept</xsl:when>
            <xsl:when test="$code='SUBST'">Substitutionsrezept</xsl:when>
            <xsl:otherwise>Unbekannter Rezepttyp</xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    


  <!-- ServiceEvents -->
  <xsl:template name="getServiceEvents">
    <ul class="serviceeventlist">
    <xsl:for-each select="*/n1:serviceEvent/n1:code">
      <li>
      	<xsl:choose>
      	  <xsl:when test="@displayName='Microbiology studies (set)'">
      	  	<xsl:text>Mikrobiologie</xsl:text>
      	  </xsl:when>
      	  <xsl:otherwise>
            <xsl:value-of select="@displayName" />
      	  </xsl:otherwise>
      	</xsl:choose>
    	</li>
    </xsl:for-each>
    </ul>
  </xsl:template>



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getHL7ATXDSDokumentenklassen">
        <xsl:param name="code" />
        
        <xsl:choose>
            <xsl:when test="$code='18842-5'">Entlassungsbrief</xsl:when>
            <xsl:when test="$code='11490-0'">Entlassungsbrief Ärztlich</xsl:when>
            <xsl:when test="$code='34745-0'">Entlassungsbrief Pflege</xsl:when>
            <xsl:when test="$code='11502-2'">Laborbefund</xsl:when>
            <xsl:when test="$code='18748-4'">Befund bildgebende Diagnostik</xsl:when>
            <xsl:when test="$code='25045-6'">Computertomographie-Befund</xsl:when>
            <xsl:when test="$code='25056-3'">Magnetresonanztomographie-Befund</xsl:when>
            <xsl:when test="$code='25061-3'">Ultraschall-Befund</xsl:when>
            <xsl:when test="$code='49118-3'">Nuklearmedizinischer Befund</xsl:when>
            <xsl:when test="$code='44136-0'">Positronen-Emissions-Tomographie-Befund</xsl:when>
            <xsl:when test="$code='18745-0'">Herzkatheter-Befund</xsl:when>
            <xsl:when test="$code='42148-7'">Echokardiographie-Befund</xsl:when>
            <xsl:when test="$code='18782-3'">Radiologie-Befund</xsl:when>
            <xsl:when test="$code='18746-8'">Kolonoskopie-Befund</xsl:when>
            <xsl:when test="$code='18751-8'">Endoskopie-Befund</xsl:when>
            <xsl:when test="$code='11525-3'">Geburtshilfliche Ultraschalluntersuchung</xsl:when>
            <xsl:when test="$code='55113-5'">KOS Objekte</xsl:when>
            <xsl:when test="$code='52471-0'">Medikation</xsl:when>
            <xsl:when test="$code='57833-6'">Rezept</xsl:when>
            <xsl:when test="$code='60593-1'">Abgabe</xsl:when>
            <xsl:when test="$code='56445-0'">Medikationsliste</xsl:when>
            <xsl:when test="$code='61356-2'">Pharmazeutische Empfehlung</xsl:when>
            <xsl:when test="$code='11529-5'">Pathologiebefund</xsl:when>
            <xsl:when test="$code='18743-5'">Obduktionsbefund</xsl:when>
            <xsl:when test="$code='18725-2'">Mikrobiologie-Befund</xsl:when>
            <xsl:when test="$code='11504-8'">OP-Bericht</xsl:when>
            <xsl:when test="$code='57829-4'">Verordnung von Heilbehelfen und Hilfsmitteln</xsl:when>
            <xsl:when test="$code='64288-4'">Brillenverordnung</xsl:when>
            <xsl:when test="$code='51845-6'">Allgemeiner Facharztbefund</xsl:when>
            <xsl:when test="$code='34764-1'">Allgemeinmedizinischer Befund</xsl:when>
            <xsl:when test="$code='34803-7'">Arbeitsmedizinischer Befund</xsl:when>
            <xsl:when test="$code='34807-8'">Augenbefund</xsl:when>
            <xsl:when test="$code='33720-4'">Immunhämatologischer Befund</xsl:when>
            <xsl:when test="$code='34847-4'">Chirurgischer Befund</xsl:when>
            <xsl:when test="$code='34758-3'">Dermatologiebefund</xsl:when>
            <xsl:when test="$code='34760-9'">Diabetologischer Befund</xsl:when>
            <xsl:when test="$code='34879-7'">Endokrinologiebefund</xsl:when>
            <xsl:when test="$code='34761-7'">Gastroenterologiebefund</xsl:when>
            <xsl:when test="$code='34853-2'">Gefäßchirurgischer Befund</xsl:when>
            <xsl:when test="$code='34776-5'">Geriatriebefund</xsl:when>
            <xsl:when test="$code='34777-3'">Gynäkologie-Befund</xsl:when>
            <xsl:when test="$code='34779-9'">Hämatologie-Befund</xsl:when>
            <xsl:when test="$code='34816-9'">HNO-Befund</xsl:when>
            <xsl:when test="$code='34781-5'">Infektiologiebefund</xsl:when>
            <xsl:when test="$code='34099-2'">Kardiologiebefund</xsl:when>
            <xsl:when test="$code='68881-2'">Kinder- und Jugendchirurgischer Befund</xsl:when>
            <xsl:when test="$code='34812-8'">Mund-, Kiefer- und Gesichtschirurgischer Befund</xsl:when>
            <xsl:when test="$code='34795-5'">Nephrologischer befund</xsl:when>
            <xsl:when test="$code='34798-9'">Neurochirurgischer Befund</xsl:when>
            <xsl:when test="$code='34797-1'">Neurologischer Befund</xsl:when>
            <xsl:when test="$code='34805-2'">Onkologiebefund</xsl:when>
            <xsl:when test="$code='34814-4'">Orthopädischer/Orthopädisch-Chirurgischer Befund</xsl:when>
            <xsl:when test="$code='68818-4'">Pädiatrischer Befund</xsl:when>
            <xsl:when test="$code='34822-7'">Physikalisch-Medizinischer Befund</xsl:when>
            <xsl:when test="$code='34826-8'">Plastisch-Chirurgischer Befund</xsl:when>
            <xsl:when test="$code='34788-0'">Psychiatrischer Befund</xsl:when>
            <xsl:when test="$code='34103-2'">Pulmologischer Befund</xsl:when>
            <xsl:when test="$code='34839-1'">Rheumatologischer Befund</xsl:when>
            <xsl:when test="$code='34831-8'">Strahlentherapeutisch-Radioonkologischer Befund</xsl:when>
            <xsl:when test="$code='34849-0'">Thoraxchirurgischer Befund</xsl:when>
            <xsl:when test="$code='34851-6'">Urologischer Befund</xsl:when>
            <xsl:when test="$code='28651-8'">Pflegesituationsbericht</xsl:when>
            <xsl:when test="$code='46215-0'">Wunddokumentation</xsl:when>
            <xsl:when test="$code='57016-8'">Patienteneinverständniserklärung</xsl:when>
            <xsl:when test="$code='42348-3'">Patientenverfügung</xsl:when>
            <xsl:when test="$code='64298-3'">Vorsorgevollmacht</xsl:when>
            <xsl:when test="$code='34855-7'">Ergotherapeutischer Bericht</xsl:when>
            <xsl:when test="$code='34845-8'">Logopädischer Bericht</xsl:when>
            <xsl:when test="$code='34841-7'">Sozialpädagogischer Bericht</xsl:when>
            <xsl:when test="$code='34791-4'">Psychologischer Bericht</xsl:when>
            <xsl:when test="$code='34800-3'">Diätologie-Bericht</xsl:when>
            <xsl:when test="$code='34824-3'">Physiotherapiebericht</xsl:when>
            <xsl:when test="$code='57057-2'">Geburtsbericht (ärztlich)</xsl:when>
            <xsl:when test="$code='59268-3'">Geburtsbericht (Hebamme)</xsl:when>
            <xsl:when test="$code='34810-2'">Optometrischer Bericht</xsl:when>
            <xsl:when test="$code='29749-9'">Dialysebericht</xsl:when>
            <xsl:when test="$code='72134-0'">Krebsregistermeldung</xsl:when>
            <xsl:when test="$code='57830-2'">Einweisungsbericht</xsl:when>
            <xsl:when test="$code='57834-4'">Anforderung für Patiententransport</xsl:when>
            <xsl:when test="$code='11524-6'">EKG-Bericht</xsl:when>
            <xsl:when test="$code='46209-3'">Anforderung / Auftrag</xsl:when>
            <xsl:when test="$code='11488-4'">Befund</xsl:when>
            <xsl:when test="$code='60591-5'">Patient Summary</xsl:when>
            <xsl:when test="$code='34133-9'">Krankengeschichte</xsl:when>
            <xsl:otherwise>unbestätigte Dokumentenklasse</xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getELGAReligiousAffiliation">
        <xsl:param name="religiousAffiliation" />
        
        <xsl:choose>
            <xsl:when test="$religiousAffiliation/@code='100'">Katholische Kirche (o.n.A.)</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='101'">Römisch-Katholisch</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='102'">Griechisch-Katholische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='103'">Armenisch-Katholische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='104'">Bulgarisch-Katholische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='105'">Rumänische griechisch-katholische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='106'">Russisch-Katholische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='107'">Syrisch-Katholische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='108'">Ukrainische Griechisch-Katholische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='109'">Katholische Ostkirche (ohne nähere Angabe)</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='110'">Griechisch-Orientalische Kirchen</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='111'">Orthodoxe Kirchen (o.n.A.)</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='112'">Griechisch-Orthodoxe Kirche (Hl.Dreifaltigkeit)</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='113'">Griechisch-Orthodoxe Kirche (Hl.Georg)</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='114'">Bulgarisch-Orthodoxe Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='115'">Rumänisch-griechisch-orientalische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='116'">Russisch-Orthodoxe Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='117'">Serbisch-griechisch-Orthodoxe Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='118'">Ukrainisch-Orthodoxe Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='119'">Orientalisch-Orthodoxe Kirchen</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='120'">Armenisch-apostolische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='121'">Syrisch-orthodoxe Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='122'">Syrisch-orthodoxe Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='123'">Koptisch-orthodoxe Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='124'">Armenisch-apostolische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='125'">Äthiopisch-Orthodoxe Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='126'">Evangelische Kirchen Österreich</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='127'">Evangelische Kirche (o.n.A.)</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='128'">Evangelische Kirche A.B.</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='129'">Evangelische Kirche H.B.</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='130'">Andere Christliche Kirchen</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='131'">Altkatholische Kirche Österreichs</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='132'">Anglikanische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='133'">Evangelisch-methodistische Kirche (EmK)</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='134'">Sonstige Christliche Gemeinschaften</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='135'">Baptisten</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='136'">Bund evangelikaler Gemeinden in Österreich</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='137'">Freie Christengemeinde/Pfingstgemeinde</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='138'">Mennonitische Freikirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='139'">Kirche der Siebenten-Tags-Adventisten</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='140'">Christengemeinschaft</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='141'">Jehovas Zeugen</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='142'">Neuapostolische Kirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='143'">Mormonen</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='144'">Sonstige Christliche Gemeinschaften (O.n.A.)</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='145'">ELAIA Christengemeinden</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='146'">Pfingstkirche Gemeinde Gottes</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='148'">Nicht-christliche Gemeinschaften</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='149'">Israelitische Religionsgesellschaft</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='150'">Islamische Glaubensgemeinschaft</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='151'">Alevitische Religionsgesellschaft</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='152'">Buddhistische Religionsgesellschaft</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='153'">Baha` i</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='154'">Hinduistische Religionsgesellschaft</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='155'">Sikh</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='156'">Shintoismus</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='157'">Vereinigungskirche</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='162'">Pastafarianismus</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='158'">Andere religiöse Bekenntnisgemeinschaften</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='159'">Konfessionslos, ohne Angabe</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='160'">Konfessionslos</xsl:when>
            <xsl:when test="$religiousAffiliation/@code='161'">Ohne Angabe</xsl:when>
            <xsl:otherwise><xsl:value-of select="$religiousAffiliation/@displayName" /></xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    


  <xsl:key name="languageCodeGrouping" match="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:languageCommunication" use="n1:languageCode/@code" />

  <xsl:template name="getLanguageAbility">
  <xsl:param name="patient" />

  <xsl:if test="not($patient/n1:languageCommunication)">
    unbekannt
  </xsl:if>

  <xsl:for-each select="$patient/n1:languageCommunication[generate-id() = generate-id(key('languageCodeGrouping', n1:languageCode/@code))]">

    <xsl:call-template name="getELGAHumanLanguage">
      <xsl:with-param name="code" select="n1:languageCode/@code" />
    </xsl:call-template>
    <xsl:text> </xsl:text>

    <xsl:if test="contains(n1:languageCode/@code, '-')">
      <xsl:text> (</xsl:text>
      <xsl:value-of select="n1:languageCode/@code" />
      <xsl:text>)</xsl:text>
    </xsl:if>

    <xsl:if test="n1:modeCode/@code or n1:proficiencyLevelCode/@code">

      <xsl:text> (</xsl:text>

      <xsl:call-template name="getLanguageAbilityForLanguage">
        <xsl:with-param name="code" select="n1:languageCode/@code" />
        <xsl:with-param name="patient" select="$patient" />
      </xsl:call-template>

      <xsl:text>)</xsl:text>

    </xsl:if>

    <xsl:if test="n1:preferenceInd/@value='true'">
      <xsl:text>, bevorzugt</xsl:text>
    </xsl:if>


    <br />
  </xsl:for-each>

  </xsl:template>

  <xsl:template name="getLanguageAbilityForLanguage">
  <xsl:param name="code" />
  <xsl:param name="patient" />

  <xsl:for-each select="$patient/n1:languageCommunication/n1:languageCode[@code=$code]">

    <xsl:if test="../n1:languageCode/@code=$code">

      <xsl:if test="../n1:modeCode/@code">
        <xsl:call-template name="getELGALanguageAbilityMode">
          <xsl:with-param name="code" select="../n1:modeCode/@code" />
        </xsl:call-template>
        <xsl:text>: </xsl:text>
      </xsl:if>

      <xsl:if test="../n1:proficiencyLevelCode/@code">
        <xsl:call-template name="getELGAProficiencyLevelCode">
          <xsl:with-param name="code" select="../n1:proficiencyLevelCode/@code" />
        </xsl:call-template>
      </xsl:if>

      <xsl:if test="position() &lt; count($patient/n1:languageCommunication/n1:languageCode[@code=$code])">
        <xsl:text>, </xsl:text>
      </xsl:if>

    </xsl:if>
  </xsl:for-each>

  </xsl:template>



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getELGAProficiencyLevelCode">
        <xsl:param name="code" />
        
        <xsl:choose>
            <xsl:when test="$code='E'">ausgezeichnet</xsl:when>
            <xsl:when test="$code='F'">ausreichend</xsl:when>
            <xsl:when test="$code='G'">gut</xsl:when>
            <xsl:when test="$code='P'">mangelhaft</xsl:when>
            <xsl:otherwise>unbekannter Code (<xsl:value-of select="$code" />)</xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getELGALanguageAbilityMode">
        <xsl:param name="code" />
        
        <xsl:choose>
            <xsl:when test="$code='ESP'">spricht</xsl:when>
            <xsl:when test="$code='EWR'">schreibt</xsl:when>
            <xsl:when test="$code='RSP'">versteht gesprochen</xsl:when>
            <xsl:when test="$code='RWR'">versteht geschrieben</xsl:when>
            <xsl:otherwise>unbekannter Code (<xsl:value-of select="$code" />)</xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getELGAHumanLanguage">
        <xsl:param name="code" />
        
        <xsl:variable name="trimmedCode">
            <xsl:choose>
              <xsl:when test="contains($code, '-')">
                <xsl:value-of select="substring-before($code,'-')"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="$code" />
              </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        
        <xsl:choose>
            <xsl:when test="$trimmedCode='aa'">Danakil-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ab'">Abchasisch</xsl:when>
            <xsl:when test="$trimmedCode='ace'">Aceh-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ach'">Acholi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ada'">Adangme-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ady'">Adygisch</xsl:when>
            <xsl:when test="$trimmedCode='ae'">Avestisch</xsl:when>
            <xsl:when test="$trimmedCode='af'">Afrikaans</xsl:when>
            <xsl:when test="$trimmedCode='afa'">Hamitosemitische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='afh'">Afrihili</xsl:when>
            <xsl:when test="$trimmedCode='ain'">Ainu-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ak'">Akan-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='akk'">Akkadisch</xsl:when>
            <xsl:when test="$trimmedCode='ale'">Aleutisch</xsl:when>
            <xsl:when test="$trimmedCode='alg'">Algonkin-Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='alt'">Altaisch</xsl:when>
            <xsl:when test="$trimmedCode='am'">Amharisch</xsl:when>
            <xsl:when test="$trimmedCode='an'">Aragonesisch</xsl:when>
            <xsl:when test="$trimmedCode='ang'">Altenglisch</xsl:when>
            <xsl:when test="$trimmedCode='anp'">Anga-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='apa'">Apachen-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='ar'">Arabisch</xsl:when>
            <xsl:when test="$trimmedCode='arc'">Aramäisch</xsl:when>
            <xsl:when test="$trimmedCode='arn'">Arauka-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='arp'">Arapaho-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='art'">Kunstsprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='arw'">Arawak-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='as'">Assamesisch</xsl:when>
            <xsl:when test="$trimmedCode='ast'">Asturisch</xsl:when>
            <xsl:when test="$trimmedCode='ath'">Athapaskische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='aus'">Australische Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='av'">Awarisch</xsl:when>
            <xsl:when test="$trimmedCode='awa'">Awadhi</xsl:when>
            <xsl:when test="$trimmedCode='ay'">Aymará-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='az'">Aserbeidschanisch</xsl:when>
            <xsl:when test="$trimmedCode='ba'">Baschkirisch</xsl:when>
            <xsl:when test="$trimmedCode='bad'">Banda-Sprachen (Ubangi-Sprachen)</xsl:when>
            <xsl:when test="$trimmedCode='bai'">Bamileke-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='bal'">Belutschisch</xsl:when>
            <xsl:when test="$trimmedCode='ban'">Balinesisch</xsl:when>
            <xsl:when test="$trimmedCode='bas'">Basaa-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='bat'">Baltische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='be'">Weißrussisch</xsl:when>
            <xsl:when test="$trimmedCode='bej'">Bedauye</xsl:when>
            <xsl:when test="$trimmedCode='bem'">Bemba-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ber'">Berbersprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='bg'">Bulgarisch</xsl:when>
            <xsl:when test="$trimmedCode='bh'">Bihari (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='bho'">Bhojpuri</xsl:when>
            <xsl:when test="$trimmedCode='bi'">Beach-la-mar</xsl:when>
            <xsl:when test="$trimmedCode='bik'">Bikol-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='bin'">Edo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='bla'">Blackfoot-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='bm'">Bambara-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='bn'">Bengali</xsl:when>
            <xsl:when test="$trimmedCode='bnt'">Bantusprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='bo'">Tibetisch</xsl:when>
            <xsl:when test="$trimmedCode='br'">Bretonisch</xsl:when>
            <xsl:when test="$trimmedCode='bra'">Braj-Bhakha</xsl:when>
            <xsl:when test="$trimmedCode='bs'">Bosnisch</xsl:when>
            <xsl:when test="$trimmedCode='btk'">Batak-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='bua'">Burjatisch</xsl:when>
            <xsl:when test="$trimmedCode='bug'">Bugi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='byn'">Bilin-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ca'">Katalanisch</xsl:when>
            <xsl:when test="$trimmedCode='cad'">Caddo-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='cai'">Indianersprachen, Zentralamerika (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='car'">Karibische Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='cau'">Kaukasische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='ce'">Tschetschenisch</xsl:when>
            <xsl:when test="$trimmedCode='ceb'">Cebuano</xsl:when>
            <xsl:when test="$trimmedCode='cel'">Keltische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='ch'">Chamorro-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='chb'">Chibcha-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='chg'">Tschagataisch</xsl:when>
            <xsl:when test="$trimmedCode='chk'">Trukesisch</xsl:when>
            <xsl:when test="$trimmedCode='chm'">Tscheremissisch</xsl:when>
            <xsl:when test="$trimmedCode='chn'">Chinook-Jargon</xsl:when>
            <xsl:when test="$trimmedCode='cho'">Choctaw-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='chp'">Chipewyan-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='chr'">Cherokee-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='chy'">Cheyenne-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='cmc'">Cham-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='co'">Korsisch</xsl:when>
            <xsl:when test="$trimmedCode='cop'">Koptisch</xsl:when>
            <xsl:when test="$trimmedCode='cpe'">Kreolisch-Englisch (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='cpf'">Kreolisch-Französisch (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='cpp'">Kreolisch-Portugiesisch (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='cr'">Cree-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='crh'">Krimtatarisch</xsl:when>
            <xsl:when test="$trimmedCode='crp'">Kreolische Sprachen, Pidginsprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='cs'">Tschechisch</xsl:when>
            <xsl:when test="$trimmedCode='csb'">Kaschubisch</xsl:when>
            <xsl:when test="$trimmedCode='cu'">Kirchenslawisch</xsl:when>
            <xsl:when test="$trimmedCode='cus'">Kuschitische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='cv'">Tschuwaschisch</xsl:when>
            <xsl:when test="$trimmedCode='cy'">Kymrisch</xsl:when>
            <xsl:when test="$trimmedCode='da'">Dänisch</xsl:when>
            <xsl:when test="$trimmedCode='dak'">Dakota-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='dar'">Darginisch</xsl:when>
            <xsl:when test="$trimmedCode='day'">Dajakisch</xsl:when>
            <xsl:when test="$trimmedCode='de'">Deutsch</xsl:when>
            <xsl:when test="$trimmedCode='del'">Delaware-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='den'">Slave-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='dgr'">Dogrib-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='din'">Dinka-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='doi'">Dogri</xsl:when>
            <xsl:when test="$trimmedCode='dra'">Drawidische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='dsb'">Niedersorbisch</xsl:when>
            <xsl:when test="$trimmedCode='dua'">Duala-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='dum'">Mittelniederländisch</xsl:when>
            <xsl:when test="$trimmedCode='dv'">Maledivisch</xsl:when>
            <xsl:when test="$trimmedCode='dyu'">Dyula-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='dz'">Dzongkha</xsl:when>
            <xsl:when test="$trimmedCode='ee'">Ewe-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='efi'">Efik</xsl:when>
            <xsl:when test="$trimmedCode='egy'">Ägyptisch</xsl:when>
            <xsl:when test="$trimmedCode='eka'">Ekajuk</xsl:when>
            <xsl:when test="$trimmedCode='el'">Neugriechisch</xsl:when>
            <xsl:when test="$trimmedCode='elx'">Elamisch</xsl:when>
            <xsl:when test="$trimmedCode='en'">Englisch</xsl:when>
            <xsl:when test="$trimmedCode='enm'">Mittelenglisch</xsl:when>
            <xsl:when test="$trimmedCode='eo'">Esperanto</xsl:when>
            <xsl:when test="$trimmedCode='es'">Spanisch</xsl:when>
            <xsl:when test="$trimmedCode='et'">Estnisch</xsl:when>
            <xsl:when test="$trimmedCode='eu'">Baskisch</xsl:when>
            <xsl:when test="$trimmedCode='ewo'">Ewondo</xsl:when>
            <xsl:when test="$trimmedCode='fa'">Persisch</xsl:when>
            <xsl:when test="$trimmedCode='fan'">Pangwe-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='fat'">Fante-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ff'">Ful</xsl:when>
            <xsl:when test="$trimmedCode='fi'">Finnisch</xsl:when>
            <xsl:when test="$trimmedCode='fil'">Pilipino</xsl:when>
            <xsl:when test="$trimmedCode='fiu'">Finnougrische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='fj'">Fidschi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='fo'">Färöisch</xsl:when>
            <xsl:when test="$trimmedCode='fon'">Fon-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='fr'">Französisch</xsl:when>
            <xsl:when test="$trimmedCode='frm'">Mittelfranzösisch</xsl:when>
            <xsl:when test="$trimmedCode='fro'">Altfranzösisch</xsl:when>
            <xsl:when test="$trimmedCode='frr'">Nordfriesisch</xsl:when>
            <xsl:when test="$trimmedCode='frs'">Ostfriesisch</xsl:when>
            <xsl:when test="$trimmedCode='fur'">Friulisch</xsl:when>
            <xsl:when test="$trimmedCode='fy'">Friesisch</xsl:when>
            <xsl:when test="$trimmedCode='ga'">Irisch</xsl:when>
            <xsl:when test="$trimmedCode='gaa'">Ga-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='gay'">Gayo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='gba'">Gbaya-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='gd'">Gälisch-Schottisch</xsl:when>
            <xsl:when test="$trimmedCode='gem'">Germanische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='gez'">Altäthiopisch</xsl:when>
            <xsl:when test="$trimmedCode='gil'">Gilbertesisch</xsl:when>
            <xsl:when test="$trimmedCode='gl'">Galicisch</xsl:when>
            <xsl:when test="$trimmedCode='gmh'">Mittelhochdeutsch</xsl:when>
            <xsl:when test="$trimmedCode='gn'">Guaraní-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='goh'">Althochdeutsch</xsl:when>
            <xsl:when test="$trimmedCode='gon'">Gondi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='gor'">Gorontalesisch</xsl:when>
            <xsl:when test="$trimmedCode='got'">Gotisch</xsl:when>
            <xsl:when test="$trimmedCode='grb'">Grebo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='grc'">Griechisch</xsl:when>
            <xsl:when test="$trimmedCode='gsw'">Schweizerdeutsch</xsl:when>
            <xsl:when test="$trimmedCode='gu'">Gujarati-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='gv'">Manx</xsl:when>
            <xsl:when test="$trimmedCode='gwi'">Kutchin-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ha'">Haussa-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='hai'">Haida-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='haw'">Hawaiisch</xsl:when>
            <xsl:when test="$trimmedCode='he'">Hebräisch</xsl:when>
            <xsl:when test="$trimmedCode='hi'">Hindi</xsl:when>
            <xsl:when test="$trimmedCode='hil'">Hiligaynon-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='him'">Himachali</xsl:when>
            <xsl:when test="$trimmedCode='hit'">Hethitisch</xsl:when>
            <xsl:when test="$trimmedCode='hmn'">Miao-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='ho'">Hiri-Motu</xsl:when>
            <xsl:when test="$trimmedCode='hr'">Kroatisch</xsl:when>
            <xsl:when test="$trimmedCode='hsb'">Obersorbisch</xsl:when>
            <xsl:when test="$trimmedCode='ht'">Haïtien (Haiti-Kreolisch)</xsl:when>
            <xsl:when test="$trimmedCode='hu'">Ungarisch</xsl:when>
            <xsl:when test="$trimmedCode='hup'">Hupa-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='hy'">Armenisch</xsl:when>
            <xsl:when test="$trimmedCode='hz'">Herero-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ia'">Interlingua</xsl:when>
            <xsl:when test="$trimmedCode='iba'">Iban-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='id'">Bahasa Indonesia</xsl:when>
            <xsl:when test="$trimmedCode='ie'">Interlingue</xsl:when>
            <xsl:when test="$trimmedCode='ig'">Ibo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ii'">Lalo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ijo'">Ijo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ik'">Inupik</xsl:when>
            <xsl:when test="$trimmedCode='ilo'">Ilokano-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='inc'">Indoarische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='ine'">Indogermanische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='inh'">Inguschisch</xsl:when>
            <xsl:when test="$trimmedCode='io'">Ido</xsl:when>
            <xsl:when test="$trimmedCode='ira'">Iranische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='iro'">Irokesische Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='is'">Isländisch</xsl:when>
            <xsl:when test="$trimmedCode='it'">Italienisch</xsl:when>
            <xsl:when test="$trimmedCode='iu'">Inuktitut</xsl:when>
            <xsl:when test="$trimmedCode='ja'">Japanisch</xsl:when>
            <xsl:when test="$trimmedCode='jbo'">Lojban</xsl:when>
            <xsl:when test="$trimmedCode='jpr'">Jüdisch-Persisch</xsl:when>
            <xsl:when test="$trimmedCode='jrb'">Jüdisch-Arabisch</xsl:when>
            <xsl:when test="$trimmedCode='jv'">Javanisch</xsl:when>
            <xsl:when test="$trimmedCode='ka'">Georgisch</xsl:when>
            <xsl:when test="$trimmedCode='kaa'">Karakalpakisch</xsl:when>
            <xsl:when test="$trimmedCode='kab'">Kabylisch</xsl:when>
            <xsl:when test="$trimmedCode='kac'">Kachin-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='kam'">Kamba-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='kar'">Karenisch</xsl:when>
            <xsl:when test="$trimmedCode='kaw'">Kawi</xsl:when>
            <xsl:when test="$trimmedCode='kbd'">Kabardinisch</xsl:when>
            <xsl:when test="$trimmedCode='kg'">Kongo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='kha'">Khasi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='khi'">Khoisan-Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='kho'">Sakisch</xsl:when>
            <xsl:when test="$trimmedCode='ki'">Kikuyu-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='kj'">Kwanyama-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='kk'">Kasachisch</xsl:when>
            <xsl:when test="$trimmedCode='kl'">Grönländisch</xsl:when>
            <xsl:when test="$trimmedCode='km'">Kambodschanisch</xsl:when>
            <xsl:when test="$trimmedCode='kmb'">Kimbundu-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='kn'">Kannada</xsl:when>
            <xsl:when test="$trimmedCode='ko'">Koreanisch</xsl:when>
            <xsl:when test="$trimmedCode='kok'">Konkani</xsl:when>
            <xsl:when test="$trimmedCode='kos'">Kosraeanisch</xsl:when>
            <xsl:when test="$trimmedCode='kpe'">Kpelle-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='kr'">Kanuri-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='krc'">Karatschaiisch-Balkarisch</xsl:when>
            <xsl:when test="$trimmedCode='krl'">Karelisch</xsl:when>
            <xsl:when test="$trimmedCode='kro'">Kru-Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='kru'">Oraon-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ks'">Kaschmiri</xsl:when>
            <xsl:when test="$trimmedCode='ku'">Kurdisch</xsl:when>
            <xsl:when test="$trimmedCode='kum'">Kumükisch</xsl:when>
            <xsl:when test="$trimmedCode='kut'">Kutenai-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='kv'">Komi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='kw'">Kornisch</xsl:when>
            <xsl:when test="$trimmedCode='ky'">Kirgisisch</xsl:when>
            <xsl:when test="$trimmedCode='la'">Latein</xsl:when>
            <xsl:when test="$trimmedCode='lad'">Judenspanisch</xsl:when>
            <xsl:when test="$trimmedCode='lah'">Lahnda</xsl:when>
            <xsl:when test="$trimmedCode='lam'">Lamba-Sprache (Bantusprache)</xsl:when>
            <xsl:when test="$trimmedCode='lb'">Luxemburgisch</xsl:when>
            <xsl:when test="$trimmedCode='lez'">Lesgisch</xsl:when>
            <xsl:when test="$trimmedCode='lg'">Ganda-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='li'">Limburgisch</xsl:when>
            <xsl:when test="$trimmedCode='ln'">Lingala</xsl:when>
            <xsl:when test="$trimmedCode='lo'">Laotisch</xsl:when>
            <xsl:when test="$trimmedCode='lol'">Mongo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='loz'">Rotse-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='lt'">Litauisch</xsl:when>
            <xsl:when test="$trimmedCode='lu'">Luba-Katanga-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='lua'">Lulua-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='lui'">Luiseño-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='lun'">Lunda-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='luo'">Luo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='lus'">Lushai-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='lv'">Lettisch</xsl:when>
            <xsl:when test="$trimmedCode='mad'">Maduresisch</xsl:when>
            <xsl:when test="$trimmedCode='mag'">Khotta</xsl:when>
            <xsl:when test="$trimmedCode='mai'">Maithili</xsl:when>
            <xsl:when test="$trimmedCode='mak'">Makassarisch</xsl:when>
            <xsl:when test="$trimmedCode='man'">Malinke-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='map'">Austronesische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='mas'">Massai-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='mdf'">Mokscha-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='mdr'">Mandaresisch</xsl:when>
            <xsl:when test="$trimmedCode='men'">Mende-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='mg'">Malagassi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='mga'">Mittelirisch</xsl:when>
            <xsl:when test="$trimmedCode='mh'">Marschallesisch</xsl:when>
            <xsl:when test="$trimmedCode='mi'">Maori-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='mic'">Micmac-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='min'">Minangkabau-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='mis'">Einzelne andere Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='mk'">Makedonisch</xsl:when>
            <xsl:when test="$trimmedCode='mkh'">Mon-Khmer-Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='ml'">Malayalam</xsl:when>
            <xsl:when test="$trimmedCode='mn'">Mongolisch</xsl:when>
            <xsl:when test="$trimmedCode='mnc'">Mandschurisch</xsl:when>
            <xsl:when test="$trimmedCode='mni'">Meithei-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='mno'">Manobo-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='moh'">Mohawk-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='mos'">Mossi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='mr'">Marathi</xsl:when>
            <xsl:when test="$trimmedCode='ms'">Malaiisch</xsl:when>
            <xsl:when test="$trimmedCode='mt'">Maltesisch</xsl:when>
            <xsl:when test="$trimmedCode='mul'">Mehrere Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='mun'">Mundasprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='mus'">Muskogisch</xsl:when>
            <xsl:when test="$trimmedCode='mwl'">Mirandesisch</xsl:when>
            <xsl:when test="$trimmedCode='mwr'">Marwari</xsl:when>
            <xsl:when test="$trimmedCode='my'">Birmanisch</xsl:when>
            <xsl:when test="$trimmedCode='myn'">Maya-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='myv'">Erza-Mordwinisch</xsl:when>
            <xsl:when test="$trimmedCode='na'">Nauruanisch</xsl:when>
            <xsl:when test="$trimmedCode='nah'">Nahuatl</xsl:when>
            <xsl:when test="$trimmedCode='nai'">Indianersprachen, Nordamerika (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='nap'">Neapel / Mundart</xsl:when>
            <xsl:when test="$trimmedCode='nb'">Bokmål</xsl:when>
            <xsl:when test="$trimmedCode='nd'">Ndebele-Sprache (Simbabwe)</xsl:when>
            <xsl:when test="$trimmedCode='nds'">Niederdeutsch</xsl:when>
            <xsl:when test="$trimmedCode='ne'">Nepali</xsl:when>
            <xsl:when test="$trimmedCode='new'">Newari</xsl:when>
            <xsl:when test="$trimmedCode='ng'">Ndonga</xsl:when>
            <xsl:when test="$trimmedCode='nia'">Nias-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='nic'">Nigerkordofanische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='niu'">Niue-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='nl'">Niederländisch</xsl:when>
            <xsl:when test="$trimmedCode='nn'">Nynorsk</xsl:when>
            <xsl:when test="$trimmedCode='no'">Norwegisch</xsl:when>
            <xsl:when test="$trimmedCode='nog'">Nogaisch</xsl:when>
            <xsl:when test="$trimmedCode='non'">Altnorwegisch</xsl:when>
            <xsl:when test="$trimmedCode='nqo'">N'Ko</xsl:when>
            <xsl:when test="$trimmedCode='nr'">Ndebele-Sprache (Transvaal)</xsl:when>
            <xsl:when test="$trimmedCode='nso'">Pedi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='nub'">Nubische Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='nv'">Navajo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='nwc'">Alt-Newari</xsl:when>
            <xsl:when test="$trimmedCode='ny'">Nyanja-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='nym'">Nyamwezi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='nyn'">Nkole-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='nyo'">Nyoro-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='nzi'">Nzima-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='oc'">Okzitanisch</xsl:when>
            <xsl:when test="$trimmedCode='oj'">Ojibwa-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='om'">Galla-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='or'">Oriya-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='os'">Ossetisch</xsl:when>
            <xsl:when test="$trimmedCode='osa'">Osage-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ota'">Osmanisch</xsl:when>
            <xsl:when test="$trimmedCode='oto'">Otomangue-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='pa'">Pandschabi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='paa'">Papuasprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='pag'">Pangasinan-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='pal'">Mittelpersisch</xsl:when>
            <xsl:when test="$trimmedCode='pam'">Pampanggan-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='pap'">Papiamento</xsl:when>
            <xsl:when test="$trimmedCode='pau'">Palau-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='peo'">Altpersisch</xsl:when>
            <xsl:when test="$trimmedCode='phi'">Philippinisch-Austronesisch (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='phn'">Phönikisch</xsl:when>
            <xsl:when test="$trimmedCode='pi'">Pali</xsl:when>
            <xsl:when test="$trimmedCode='pl'">Polnisch</xsl:when>
            <xsl:when test="$trimmedCode='pon'">Ponapeanisch</xsl:when>
            <xsl:when test="$trimmedCode='pra'">Prakrit</xsl:when>
            <xsl:when test="$trimmedCode='pro'">Altokzitanisch</xsl:when>
            <xsl:when test="$trimmedCode='ps'">Paschtu</xsl:when>
            <xsl:when test="$trimmedCode='pt'">Portugiesisch</xsl:when>
            <xsl:when test="$trimmedCode='qaa'">Reserviert für lokale Verwendung</xsl:when>
            <xsl:when test="$trimmedCode='qu'">Quechua-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='raj'">Rajasthani</xsl:when>
            <xsl:when test="$trimmedCode='rap'">Osterinsel-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='rar'">Rarotonganisch</xsl:when>
            <xsl:when test="$trimmedCode='rm'">Rätoromanisch</xsl:when>
            <xsl:when test="$trimmedCode='rn'">Rundi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ro'">Rumänisch</xsl:when>
            <xsl:when test="$trimmedCode='roa'">Romanische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='rom'">Romani (Sprache)</xsl:when>
            <xsl:when test="$trimmedCode='ru'">Russisch</xsl:when>
            <xsl:when test="$trimmedCode='rup'">Aromunisch</xsl:when>
            <xsl:when test="$trimmedCode='rw'">Rwanda-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='sa'">Sanskrit</xsl:when>
            <xsl:when test="$trimmedCode='sad'">Sandawe-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='sah'">Jakutisch</xsl:when>
            <xsl:when test="$trimmedCode='sai'">Indianersprachen, Südamerika (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='sal'">Salish-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='sam'">Samaritanisch</xsl:when>
            <xsl:when test="$trimmedCode='sas'">Sasak</xsl:when>
            <xsl:when test="$trimmedCode='sat'">Santali</xsl:when>
            <xsl:when test="$trimmedCode='sc'">Sardisch</xsl:when>
            <xsl:when test="$trimmedCode='scn'">Sizilianisch</xsl:when>
            <xsl:when test="$trimmedCode='sco'">Schottisch</xsl:when>
            <xsl:when test="$trimmedCode='sd'">Sindhi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='se'">Nordsaamisch</xsl:when>
            <xsl:when test="$trimmedCode='sel'">Selkupisch</xsl:when>
            <xsl:when test="$trimmedCode='sem'">Semitische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='sg'">Sango-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='sga'">Altirisch</xsl:when>
            <xsl:when test="$trimmedCode='sgn'">Zeichensprachen</xsl:when>
            <xsl:when test="$trimmedCode='shn'">Schan-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='si'">Singhalesisch</xsl:when>
            <xsl:when test="$trimmedCode='sid'">Sidamo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='sio'">Sioux-Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='sit'">Sinotibetische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='sk'">Slowakisch</xsl:when>
            <xsl:when test="$trimmedCode='sl'">Slowenisch</xsl:when>
            <xsl:when test="$trimmedCode='sla'">Slawische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='sm'">Samoanisch</xsl:when>
            <xsl:when test="$trimmedCode='sma'">Südsaamisch</xsl:when>
            <xsl:when test="$trimmedCode='smi'">Saamisch</xsl:when>
            <xsl:when test="$trimmedCode='smj'">Lulesaamisch</xsl:when>
            <xsl:when test="$trimmedCode='smn'">Inarisaamisch</xsl:when>
            <xsl:when test="$trimmedCode='sms'">Skoltsaamisch</xsl:when>
            <xsl:when test="$trimmedCode='sn'">Schona-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='snk'">Soninke-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='so'">Somali</xsl:when>
            <xsl:when test="$trimmedCode='sog'">Sogdisch</xsl:when>
            <xsl:when test="$trimmedCode='son'">Songhai-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='sq'">Albanisch</xsl:when>
            <xsl:when test="$trimmedCode='sr'">Serbisch</xsl:when>
            <xsl:when test="$trimmedCode='srn'">Sranantongo</xsl:when>
            <xsl:when test="$trimmedCode='srr'">Serer-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ss'">Swasi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ssa'">Nilosaharanische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='st'">Süd-Sotho-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='su'">Sundanesisch</xsl:when>
            <xsl:when test="$trimmedCode='suk'">Sukuma-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='sus'">Susu</xsl:when>
            <xsl:when test="$trimmedCode='sux'">Sumerisch</xsl:when>
            <xsl:when test="$trimmedCode='sv'">Schwedisch</xsl:when>
            <xsl:when test="$trimmedCode='sw'">Swahili</xsl:when>
            <xsl:when test="$trimmedCode='syc'">Syrisch</xsl:when>
            <xsl:when test="$trimmedCode='syr'">Neuostaramäisch</xsl:when>
            <xsl:when test="$trimmedCode='ta'">Tamil</xsl:when>
            <xsl:when test="$trimmedCode='tai'">Thaisprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='te'">Telugu-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tem'">Temne-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ter'">Tereno-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tet'">Tetum-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tg'">Tadschikisch</xsl:when>
            <xsl:when test="$trimmedCode='th'">Thailändisch</xsl:when>
            <xsl:when test="$trimmedCode='ti'">Tigrinja-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tig'">Tigre-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tiv'">Tiv-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tk'">Turkmenisch</xsl:when>
            <xsl:when test="$trimmedCode='tkl'">Tokelauanisch</xsl:when>
            <xsl:when test="$trimmedCode='tl'">Tagalog</xsl:when>
            <xsl:when test="$trimmedCode='tlh'">Klingonisch</xsl:when>
            <xsl:when test="$trimmedCode='tli'">Tlingit-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tmh'">Tamaeq</xsl:when>
            <xsl:when test="$trimmedCode='tn'">Tswana-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='to'">Tongaisch</xsl:when>
            <xsl:when test="$trimmedCode='tog'">Tonga (Bantusprache, Sambia)</xsl:when>
            <xsl:when test="$trimmedCode='tpi'">Neumelanesisch</xsl:when>
            <xsl:when test="$trimmedCode='tr'">Türkisch</xsl:when>
            <xsl:when test="$trimmedCode='ts'">Tsonga-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tsi'">Tsimshian-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tt'">Tatarisch</xsl:when>
            <xsl:when test="$trimmedCode='tum'">Tumbuka-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tup'">Tupi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='tut'">Altaische Sprachen (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='tvl'">Elliceanisch</xsl:when>
            <xsl:when test="$trimmedCode='tw'">Twi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ty'">Tahitisch</xsl:when>
            <xsl:when test="$trimmedCode='tyv'">Tuwinisch</xsl:when>
            <xsl:when test="$trimmedCode='udm'">Udmurtisch</xsl:when>
            <xsl:when test="$trimmedCode='ug'">Uigurisch</xsl:when>
            <xsl:when test="$trimmedCode='uga'">Ugaritisch</xsl:when>
            <xsl:when test="$trimmedCode='uk'">Ukrainisch</xsl:when>
            <xsl:when test="$trimmedCode='umb'">Mbundu-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='und'">Nicht zu entscheiden</xsl:when>
            <xsl:when test="$trimmedCode='ur'">Urdu</xsl:when>
            <xsl:when test="$trimmedCode='uz'">Usbekisch</xsl:when>
            <xsl:when test="$trimmedCode='vai'">Vai-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ve'">Venda-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='vi'">Vietnamesisch</xsl:when>
            <xsl:when test="$trimmedCode='vo'">Volapük</xsl:when>
            <xsl:when test="$trimmedCode='vot'">Wotisch</xsl:when>
            <xsl:when test="$trimmedCode='wa'">Wallonisch</xsl:when>
            <xsl:when test="$trimmedCode='wak'">Wakash-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='wal'">Walamo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='war'">Waray</xsl:when>
            <xsl:when test="$trimmedCode='was'">Washo-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='wen'">Sorbisch (Andere)</xsl:when>
            <xsl:when test="$trimmedCode='wo'">Wolof-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='xal'">Kalmückisch</xsl:when>
            <xsl:when test="$trimmedCode='xh'">Xhosa-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='yao'">Yao-Sprache (Bantusprache)</xsl:when>
            <xsl:when test="$trimmedCode='yap'">Yapesisch</xsl:when>
            <xsl:when test="$trimmedCode='yi'">Jiddisch</xsl:when>
            <xsl:when test="$trimmedCode='yo'">Yoruba-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='ypk'">Ypik-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='za'">Zhuang</xsl:when>
            <xsl:when test="$trimmedCode='zap'">Zapotekisch</xsl:when>
            <xsl:when test="$trimmedCode='zbl'">Bliss-Symbol</xsl:when>
            <xsl:when test="$trimmedCode='zen'">Zenaga</xsl:when>
            <xsl:when test="$trimmedCode='zgh'">Tamazight</xsl:when>
            <xsl:when test="$trimmedCode='zh'">Chinesisch</xsl:when>
            <xsl:when test="$trimmedCode='znd'">Zande-Sprachen</xsl:when>
            <xsl:when test="$trimmedCode='zu'">Zulu-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='zun'">Zuñi-Sprache</xsl:when>
            <xsl:when test="$trimmedCode='zxx'">Kein linguistischer Inhalt</xsl:when>
            <xsl:when test="$trimmedCode='zza'">Zazaki</xsl:when>
            <xsl:otherwise>unbekannter Code (<xsl:value-of select="$trimmedCode" />)</xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getCountryMapping">
        <xsl:param name="country" />
        
        <xsl:choose>
            <xsl:when test="$country='ABW'">Aruba</xsl:when>
            <xsl:when test="$country='AFG'">Afghanistan</xsl:when>
            <xsl:when test="$country='AGO'">Angola</xsl:when>
            <xsl:when test="$country='AIA'">Anguilla</xsl:when>
            <xsl:when test="$country='ALA'">Åland</xsl:when>
            <xsl:when test="$country='ALB'">Albanien</xsl:when>
            <xsl:when test="$country='AND'">Andorra</xsl:when>
            <xsl:when test="$country='ANT'">Niederländische Antillen</xsl:when>
            <xsl:when test="$country='ARE'">Vereinigte Arabische Emirate</xsl:when>
            <xsl:when test="$country='ARG'">Argentinien</xsl:when>
            <xsl:when test="$country='ARM'">Armenien</xsl:when>
            <xsl:when test="$country='ASC'">Ascension (verwaltet von St. Helena)</xsl:when>
            <xsl:when test="$country='ASM'">Amerikanisch-Samoa</xsl:when>
            <xsl:when test="$country='ATA'">Antarktis (Sonderstatus durch Antarktis-Vertrag)</xsl:when>
            <xsl:when test="$country='ATF'">Französische Süd- und Antarktisgebiete</xsl:when>
            <xsl:when test="$country='ATG'">Antigua und Barbuda</xsl:when>
            <xsl:when test="$country='AUS'">Australien</xsl:when>
            <xsl:when test="$country='AUT'">Österreich</xsl:when>
            <xsl:when test="$country='AZE'">Aserbaidschan</xsl:when>
            <xsl:when test="$country='BDI'">Burundi</xsl:when>
            <xsl:when test="$country='BEL'">Belgien</xsl:when>
            <xsl:when test="$country='BEN'">Benin</xsl:when>
            <xsl:when test="$country='BES'">Bonaire, Sint Eustatius und Saba (Niederlande</xsl:when>
            <xsl:when test="$country='BFA'">Burkina Faso</xsl:when>
            <xsl:when test="$country='BGD'">Bangladesch</xsl:when>
            <xsl:when test="$country='BGR'">Bulgarien</xsl:when>
            <xsl:when test="$country='BHR'">Bahrain</xsl:when>
            <xsl:when test="$country='BHS'">Bahamas</xsl:when>
            <xsl:when test="$country='BIH'">Bosnien und Herzegowina</xsl:when>
            <xsl:when test="$country='BLM'">Saint-Barthélemy</xsl:when>
            <xsl:when test="$country='BLR'">Belarus (Weißrussland)</xsl:when>
            <xsl:when test="$country='BLZ'">Belize</xsl:when>
            <xsl:when test="$country='BMU'">Bermuda</xsl:when>
            <xsl:when test="$country='BOL'">Bolivien</xsl:when>
            <xsl:when test="$country='BRA'">Brasilien</xsl:when>
            <xsl:when test="$country='BRB'">Barbados</xsl:when>
            <xsl:when test="$country='BRN'">Brunei Darussalam</xsl:when>
            <xsl:when test="$country='BTN'">Bhutan</xsl:when>
            <xsl:when test="$country='BUR'">Burma (jetzt Myanmar)</xsl:when>
            <xsl:when test="$country='BVT'">Bouvetinsel</xsl:when>
            <xsl:when test="$country='BWA'">Botsuana</xsl:when>
            <xsl:when test="$country='CAF'">Zentralafrikanische Republik</xsl:when>
            <xsl:when test="$country='CAN'">Kanada</xsl:when>
            <xsl:when test="$country='CCK'">Kokosinseln</xsl:when>
            <xsl:when test="$country='CHE'">Schweiz (Confoederatio Helvetica)</xsl:when>
            <xsl:when test="$country='CHL'">Chile</xsl:when>
            <xsl:when test="$country='CHN'">China</xsl:when>
            <xsl:when test="$country='CIV'">Côte dIvoire (Elfenbeinküste)</xsl:when>
            <xsl:when test="$country='CMR'">Kamerun</xsl:when>
            <xsl:when test="$country='COD'">Kongo</xsl:when>
            <xsl:when test="$country='COG'">Republik Kongo</xsl:when>
            <xsl:when test="$country='COK'">Cookinseln</xsl:when>
            <xsl:when test="$country='COL'">Kolumbien</xsl:when>
            <xsl:when test="$country='COM'">Komoren</xsl:when>
            <xsl:when test="$country='CPT'">Clipperton (reserviert für ITU)</xsl:when>
            <xsl:when test="$country='CPV'">Kap Verde</xsl:when>
            <xsl:when test="$country='CRI'">Costa Rica</xsl:when>
            <xsl:when test="$country='CSK'">Tschechoslowakei (ehemalig)</xsl:when>
            <xsl:when test="$country='CUB'">Kuba</xsl:when>
            <xsl:when test="$country='CUW'">Curaçao</xsl:when>
            <xsl:when test="$country='CXR'">Weihnachtsinsel</xsl:when>
            <xsl:when test="$country='CYM'">Kaimaninseln</xsl:when>
            <xsl:when test="$country='CYP'">Zypern</xsl:when>
            <xsl:when test="$country='CZE'">Tschechische Republik</xsl:when>
            <xsl:when test="$country='DEU'">Deutschland</xsl:when>
            <xsl:when test="$country='DGA'">Diego Garcia (reserviert für ITU)</xsl:when>
            <xsl:when test="$country='DJI'">Dschibuti</xsl:when>
            <xsl:when test="$country='DMA'">Dominica</xsl:when>
            <xsl:when test="$country='DNK'">Dänemark</xsl:when>
            <xsl:when test="$country='DOM'">Dominikanische Republik</xsl:when>
            <xsl:when test="$country='DZA'">Algerien</xsl:when>
            <xsl:when test="$country='ECU'">Ecuador</xsl:when>
            <xsl:when test="$country='EGY'">Ägypten</xsl:when>
            <xsl:when test="$country='ERI'">Eritrea</xsl:when>
            <xsl:when test="$country='ESH'">Westsahara</xsl:when>
            <xsl:when test="$country='ESP'">Spanien</xsl:when>
            <xsl:when test="$country='EST'">Estland</xsl:when>
            <xsl:when test="$country='ETH'">Äthiopien</xsl:when>
            <xsl:when test="$country='FIN'">Finnland</xsl:when>
            <xsl:when test="$country='FJI'">Fidschi</xsl:when>
            <xsl:when test="$country='FLK'">Falklandinseln</xsl:when>
            <xsl:when test="$country='FRA'">Frankreich</xsl:when>
            <xsl:when test="$country='FRO'">Färöer</xsl:when>
            <xsl:when test="$country='FSM'">Mikronesien</xsl:when>
            <xsl:when test="$country='FXX'">(europ. Frankreich ohne Übersee-Départements)</xsl:when>
            <xsl:when test="$country='GAB'">Gabun</xsl:when>
            <xsl:when test="$country='GBR'">Vereinigtes Königreich Großbritannien und Nordirland</xsl:when>
            <xsl:when test="$country='GEO'">Georgien</xsl:when>
            <xsl:when test="$country='GGY'">Guernsey (Kanalinsel)</xsl:when>
            <xsl:when test="$country='GHA'">Ghana</xsl:when>
            <xsl:when test="$country='GIB'">Gibraltar</xsl:when>
            <xsl:when test="$country='GIN'">Guinea</xsl:when>
            <xsl:when test="$country='GLP'">Guadeloupe</xsl:when>
            <xsl:when test="$country='GMB'">Gambia</xsl:when>
            <xsl:when test="$country='GNB'">Guinea-Bissau</xsl:when>
            <xsl:when test="$country='GNQ'">Äquatorialguinea</xsl:when>
            <xsl:when test="$country='GRC'">Griechenland</xsl:when>
            <xsl:when test="$country='GRD'">Grenada</xsl:when>
            <xsl:when test="$country='GRL'">Grönland</xsl:when>
            <xsl:when test="$country='GTM'">Guatemala</xsl:when>
            <xsl:when test="$country='GUF'">Französisch-Guayana</xsl:when>
            <xsl:when test="$country='GUM'">Guam</xsl:when>
            <xsl:when test="$country='GUY'">Guyana</xsl:when>
            <xsl:when test="$country='HKG'">Hongkong</xsl:when>
            <xsl:when test="$country='HMD'">Heard- und McDonald-Inseln</xsl:when>
            <xsl:when test="$country='HND'">Honduras</xsl:when>
            <xsl:when test="$country='HRV'">Kroatien</xsl:when>
            <xsl:when test="$country='HTI'">Haiti</xsl:when>
            <xsl:when test="$country='HUN'">Ungarn</xsl:when>
            <xsl:when test="$country='IDN'">Indonesien</xsl:when>
            <xsl:when test="$country='IMN'">Insel Man</xsl:when>
            <xsl:when test="$country='IND'">Indien</xsl:when>
            <xsl:when test="$country='IOT'">Britisches Territorium im Indischen Ozean</xsl:when>
            <xsl:when test="$country='IRL'">Irland</xsl:when>
            <xsl:when test="$country='IRN'">Iran</xsl:when>
            <xsl:when test="$country='IRQ'">Irak</xsl:when>
            <xsl:when test="$country='ISL'">Island</xsl:when>
            <xsl:when test="$country='ISR'">Israel</xsl:when>
            <xsl:when test="$country='ITA'">Italien</xsl:when>
            <xsl:when test="$country='JAM'">Jamaika</xsl:when>
            <xsl:when test="$country='JEY'">Jersey (Kanalinsel)</xsl:when>
            <xsl:when test="$country='JOR'">Jordanien</xsl:when>
            <xsl:when test="$country='JPN'">Japan</xsl:when>
            <xsl:when test="$country='KAZ'">Kasachstan</xsl:when>
            <xsl:when test="$country='KEN'">Kenia</xsl:when>
            <xsl:when test="$country='KGZ'">Kirgisistan</xsl:when>
            <xsl:when test="$country='KHM'">Kambodscha</xsl:when>
            <xsl:when test="$country='KIR'">Kiribati</xsl:when>
            <xsl:when test="$country='KNA'">St. Kitts und Nevis</xsl:when>
            <xsl:when test="$country='KOR'">Korea</xsl:when>
            <xsl:when test="$country='KOS'">Kosovo, Republik</xsl:when>
            <xsl:when test="$country='KWT'">Kuwait</xsl:when>
            <xsl:when test="$country='LAO'">Laos</xsl:when>
            <xsl:when test="$country='LBN'">Libanon</xsl:when>
            <xsl:when test="$country='LBR'">Liberia</xsl:when>
            <xsl:when test="$country='LBY'">Libysch-Arabische Dschamahirija (Libyen)</xsl:when>
            <xsl:when test="$country='LCA'">St. Lucia</xsl:when>
            <xsl:when test="$country='LIE'">Liechtenstein</xsl:when>
            <xsl:when test="$country='LKA'">Sri Lanka</xsl:when>
            <xsl:when test="$country='LSO'">Lesotho</xsl:when>
            <xsl:when test="$country='LTU'">Litauen</xsl:when>
            <xsl:when test="$country='LUX'">Luxemburg</xsl:when>
            <xsl:when test="$country='LVA'">Lettland</xsl:when>
            <xsl:when test="$country='MAC'">Macao</xsl:when>
            <xsl:when test="$country='MAF'">Saint-Martin (franz. Teil)</xsl:when>
            <xsl:when test="$country='MAR'">Marokko</xsl:when>
            <xsl:when test="$country='MCO'">Monaco</xsl:when>
            <xsl:when test="$country='MDA'">Moldawien (Republik Moldau)</xsl:when>
            <xsl:when test="$country='MDG'">Madagaskar</xsl:when>
            <xsl:when test="$country='MDV'">Malediven</xsl:when>
            <xsl:when test="$country='MEX'">Mexiko</xsl:when>
            <xsl:when test="$country='MHL'">Marshallinseln</xsl:when>
            <xsl:when test="$country='MKD'">Mazedonien</xsl:when>
            <xsl:when test="$country='MLI'">Mali</xsl:when>
            <xsl:when test="$country='MLT'">Malta</xsl:when>
            <xsl:when test="$country='MMR'">Myanmar (Burma)</xsl:when>
            <xsl:when test="$country='MNE'">Montenegro</xsl:when>
            <xsl:when test="$country='MNG'">Mongolei</xsl:when>
            <xsl:when test="$country='MNP'">Nördliche Marianen</xsl:when>
            <xsl:when test="$country='MOZ'">Mosambik</xsl:when>
            <xsl:when test="$country='MRT'">Mauretanien</xsl:when>
            <xsl:when test="$country='MSR'">Montserrat</xsl:when>
            <xsl:when test="$country='MTQ'">Martinique</xsl:when>
            <xsl:when test="$country='MUS'">Mauritius</xsl:when>
            <xsl:when test="$country='MWI'">Malawi</xsl:when>
            <xsl:when test="$country='MYS'">Malaysia</xsl:when>
            <xsl:when test="$country='MYT'">Mayotte</xsl:when>
            <xsl:when test="$country='NAM'">Namibia</xsl:when>
            <xsl:when test="$country='NCL'">Neukaledonien</xsl:when>
            <xsl:when test="$country='NER'">Niger</xsl:when>
            <xsl:when test="$country='NFK'">Norfolkinsel</xsl:when>
            <xsl:when test="$country='NGA'">Nigeria</xsl:when>
            <xsl:when test="$country='NIC'">Nicaragua</xsl:when>
            <xsl:when test="$country='NIU'">Niue</xsl:when>
            <xsl:when test="$country='NLD'">Niederlande</xsl:when>
            <xsl:when test="$country='NOR'">Norwegen</xsl:when>
            <xsl:when test="$country='NPL'">Nepal</xsl:when>
            <xsl:when test="$country='NRU'">Nauru</xsl:when>
            <xsl:when test="$country='NTZ'">Neutrale Zone (Saudi-Arabien und Irak)</xsl:when>
            <xsl:when test="$country='NZL'">Neuseeland</xsl:when>
            <xsl:when test="$country='OMN'">Oman</xsl:when>
            <xsl:when test="$country='PAK'">Pakistan</xsl:when>
            <xsl:when test="$country='PAN'">Panama</xsl:when>
            <xsl:when test="$country='PCN'">Pitcairninseln</xsl:when>
            <xsl:when test="$country='PER'">Peru</xsl:when>
            <xsl:when test="$country='PHL'">Philippinen</xsl:when>
            <xsl:when test="$country='PLW'">Palau</xsl:when>
            <xsl:when test="$country='PNG'">Papua-Neuguinea</xsl:when>
            <xsl:when test="$country='POL'">Polen</xsl:when>
            <xsl:when test="$country='PRI'">Puerto Rico</xsl:when>
            <xsl:when test="$country='PRK'">Korea</xsl:when>
            <xsl:when test="$country='PRT'">Portugal</xsl:when>
            <xsl:when test="$country='PRY'">Paraguay</xsl:when>
            <xsl:when test="$country='PSE'">Palästinensische Autonomiegebiete</xsl:when>
            <xsl:when test="$country='PYF'">Französisch-Polynesien</xsl:when>
            <xsl:when test="$country='QAT'">Katar</xsl:when>
            <xsl:when test="$country='REU'">Réunion</xsl:when>
            <xsl:when test="$country='ROU'">Rumänien</xsl:when>
            <xsl:when test="$country='RUS'">Russische Föderation</xsl:when>
            <xsl:when test="$country='RWA'">Ruanda</xsl:when>
            <xsl:when test="$country='SAU'">Saudi-Arabien</xsl:when>
            <xsl:when test="$country='SCG'">Serbien und Montenegro (ehemalig)</xsl:when>
            <xsl:when test="$country='SDN'">Sudan</xsl:when>
            <xsl:when test="$country='SEN'">Senegal</xsl:when>
            <xsl:when test="$country='SGP'">Singapur</xsl:when>
            <xsl:when test="$country='SGS'">Südgeorgien und die Südlichen Sandwichinseln</xsl:when>
            <xsl:when test="$country='SHN'">St. Helena</xsl:when>
            <xsl:when test="$country='SJM'">Svalbard und Jan Mayen</xsl:when>
            <xsl:when test="$country='SLB'">Salomonen</xsl:when>
            <xsl:when test="$country='SLE'">Sierra Leone</xsl:when>
            <xsl:when test="$country='SLV'">El Salvador</xsl:when>
            <xsl:when test="$country='SMR'">San Marino</xsl:when>
            <xsl:when test="$country='SOM'">Somalia</xsl:when>
            <xsl:when test="$country='SPM'">Saint-Pierre und Miquelon</xsl:when>
            <xsl:when test="$country='SRB'">Serbien</xsl:when>
            <xsl:when test="$country='SSD'">Südsudan</xsl:when>
            <xsl:when test="$country='STP'">São Tomé und Príncipe</xsl:when>
            <xsl:when test="$country='SUN'">UdSSR (jetzt: Russische Föderation)</xsl:when>
            <xsl:when test="$country='SUR'">Suriname</xsl:when>
            <xsl:when test="$country='SVK'">Slowakei</xsl:when>
            <xsl:when test="$country='SVN'">Slowenien</xsl:when>
            <xsl:when test="$country='SWE'">Schweden</xsl:when>
            <xsl:when test="$country='SWZ'">Swasiland</xsl:when>
            <xsl:when test="$country='SXM'">Sint Maarten (niederl. Teil)</xsl:when>
            <xsl:when test="$country='SYC'">Seychellen</xsl:when>
            <xsl:when test="$country='SYR'">Syrien</xsl:when>
            <xsl:when test="$country='TAA'">Tristan da Cunha (verwaltet von St. Helena)</xsl:when>
            <xsl:when test="$country='TCA'">Turks- und Caicosinseln</xsl:when>
            <xsl:when test="$country='TCD'">Tschad</xsl:when>
            <xsl:when test="$country='TGO'">Togo</xsl:when>
            <xsl:when test="$country='THA'">Thailand</xsl:when>
            <xsl:when test="$country='TJK'">Tadschikistan</xsl:when>
            <xsl:when test="$country='TKL'">Tokelau</xsl:when>
            <xsl:when test="$country='TKM'">Turkmenistan</xsl:when>
            <xsl:when test="$country='TLS'">Osttimor (Timor-Leste)</xsl:when>
            <xsl:when test="$country='TMP'">Osttimor (alt)</xsl:when>
            <xsl:when test="$country='TON'">Tonga</xsl:when>
            <xsl:when test="$country='TTO'">Trinidad und Tobago</xsl:when>
            <xsl:when test="$country='TUN'">Tunesien</xsl:when>
            <xsl:when test="$country='TUR'">Türkei</xsl:when>
            <xsl:when test="$country='TUV'">Tuvalu</xsl:when>
            <xsl:when test="$country='TWN'">Republik China (Taiwan)</xsl:when>
            <xsl:when test="$country='TZA'">Tansania</xsl:when>
            <xsl:when test="$country='UGA'">Uganda</xsl:when>
            <xsl:when test="$country='UKR'">Ukraine</xsl:when>
            <xsl:when test="$country='UMI'">United States Minor Outlying Islands</xsl:when>
            <xsl:when test="$country='URY'">Uruguay</xsl:when>
            <xsl:when test="$country='USA'">Vereinigte Staaten von Amerika</xsl:when>
            <xsl:when test="$country='UZB'">Usbekistan</xsl:when>
            <xsl:when test="$country='VAT'">Vatikanstadt</xsl:when>
            <xsl:when test="$country='VCT'">St. Vincent und die Grenadinen</xsl:when>
            <xsl:when test="$country='VEN'">Venezuela</xsl:when>
            <xsl:when test="$country='VGB'">Britische Jungferninseln</xsl:when>
            <xsl:when test="$country='VIR'">Amerikanische Jungferninseln</xsl:when>
            <xsl:when test="$country='VNM'">Vietnam</xsl:when>
            <xsl:when test="$country='VUT'">Vanuatu</xsl:when>
            <xsl:when test="$country='WLF'">Wallis und Futuna</xsl:when>
            <xsl:when test="$country='WSM'">Samoa</xsl:when>
            <xsl:when test="$country='XKS'">Kosovo</xsl:when>
            <xsl:when test="$country='XXA'">Staatenlos</xsl:when>
            <xsl:when test="$country='XXB'">Flüchtling gemäß Genfer Flüchtlingskonvention (GFK) von 1951</xsl:when>
            <xsl:when test="$country='XXC'">Anderer Flüchtling</xsl:when>
            <xsl:when test="$country='XXX'">Unbekannt</xsl:when>
            <xsl:when test="$country='YEM'">Jemen</xsl:when>
            <xsl:when test="$country='YUG'">Jugoslawien (ehemalig)</xsl:when>
            <xsl:when test="$country='ZAF'">Südafrika</xsl:when>
            <xsl:when test="$country='ZAR'">Zaire (jetzt Demokratische Republik Kongo)</xsl:when>
            <xsl:when test="$country='ZMB'">Sambia</xsl:when>
            <xsl:when test="$country='ZWE'">Simbabwe</xsl:when>
            <xsl:otherwise><xsl:text>unbekannter Ländercode (</xsl:text><xsl:value-of select="$country" /><xsl:text>)</xsl:text></xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    


  <!--  Bottomline (additional information to the document)  -->
  <xsl:template name="bottomline">


  <!--
  additional information about the document
  -->
  <div class="bottomline">
    <div class="collapseTrigger" onclick="toggleCollapseable(this);" id="IDBottomline">
      <h1 class="documentMetaTitle">
        <b>
          <xsl:text>Zusätzliche Informationen über dieses Dokument</xsl:text>
        </b>
      </h1>
      <xsl:call-template name="collapseTrigger"/>
      <div class="clearer" />
    </div>
    <div class="bottomline_data collapsable">
      <xsl:for-each select="/n1:ClinicalDocument/n1:author">
        <div class="element" onclick="toggleCollapseable(this);">
        <div class="bottomlineCollapseable">
          <div class="leftsmall">
            <h2>
              <xsl:choose>
                <xsl:when test="n1:assignedAuthor/n1:assignedAuthoringDevice/n1:manufacturerModelName or
                  n1:assignedAuthor/n1:assignedAuthoringDevice/n1:softwareName">
                  <xsl:text>Erzeugt mit:</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:text>Dokumentverfasser(in)</xsl:text>
                </xsl:otherwise>
              </xsl:choose>
            </h2>
            <p class="date">
              <xsl:call-template name="formatDate">
                <xsl:with-param name="date" select="n1:time"/>
              </xsl:call-template>
            </p>
          </div>
          <div class="leftwide">
            <p class="organisationName">
              <xsl:if test="n1:assignedAuthor/n1:assignedPerson/n1:name">
                <xsl:call-template name="getName">
                  <xsl:with-param name="name" select="n1:assignedAuthor/n1:assignedPerson/n1:name"/>
                </xsl:call-template>
              </xsl:if>
            </p>

            <xsl:if test="n1:functionCode or n1:assignedAuthor/n1:code">
              <p class="telecom">
                <xsl:call-template name="getELGAAuthorSpeciality">
                  <xsl:with-param name="code" select="n1:assignedAuthor/n1:code/@code"/>
                </xsl:call-template>
                <xsl:if test="n1:functionCode/@displayName">
                  <xsl:text> (</xsl:text>
                  <xsl:value-of select="n1:functionCode/@displayName" />
                  <xsl:text>)</xsl:text>
                </xsl:if>
              </p>
            </xsl:if>
            
            <xsl:if test="n1:assignedAuthor/n1:telecom">
              <xsl:call-template name="getContactInfo">
                <xsl:with-param name="contact" select="n1:assignedAuthor"/>
              </xsl:call-template>
            </xsl:if>
            
            <xsl:if test="n1:assignedAuthor/n1:assignedAuthoringDevice/n1:manufacturerModelName">
              <p class="organisationName">
                Hersteller/Gerät: <xsl:value-of select="n1:assignedAuthor/n1:assignedAuthoringDevice/n1:manufacturerModelName"/>
              </p>
            </xsl:if>
            
            <xsl:if test="n1:assignedAuthor/n1:assignedAuthoringDevice/n1:softwareName">
              <p class="organisationName">
                Software: <xsl:value-of select="n1:assignedAuthor/n1:assignedAuthoringDevice/n1:softwareName"/>
              </p>
            </xsl:if>            
            
            <p class="organisationName">
              <xsl:call-template name="getName">
                <xsl:with-param name="name" select="n1:assignedAuthor/n1:representedOrganization/n1:name"/>
              </xsl:call-template>
            </p>
            <xsl:call-template name="getContactInfo">
              <xsl:with-param name="contact" select="n1:assignedAuthor/n1:representedOrganization"/>
            </xsl:call-template>
          </div>
          <xsl:call-template name="collapseTrigger"/>
        </div>
        <div class="clearer" />
        </div>
      </xsl:for-each>
      <xsl:for-each select="/n1:ClinicalDocument/n1:informant">
        <div class="element" onclick="toggleCollapseable(this);">
        <div class="bottomlineCollapseable">
          <xsl:call-template name="collapseTrigger"/>
          <div class="leftsmall">
            <h2><xsl:text>Informiert</xsl:text></h2>
          </div>
          <div class="leftwide">
            <xsl:if test="n1:assignedEntity/n1:assignedPerson|n1:relatedEntity/n1:relatedPerson">
              <p class="organisationName">
              <xsl:call-template name="getName">
                <xsl:with-param name="name" select="n1:assignedEntity/n1:assignedPerson/n1:name|n1:relatedEntity/n1:relatedPerson/n1:name"/>
              </xsl:call-template>
              <xsl:if test="n1:relatedEntity/n1:code">
                <xsl:text> (</xsl:text>
                <xsl:call-template name="translateCode">
                  <xsl:with-param name="code" select="n1:relatedEntity/n1:code"/>
                </xsl:call-template>
                <xsl:text>)</xsl:text>
              </xsl:if>
              </p>
            </xsl:if>
            <xsl:call-template name="getContactInfo">
              <xsl:with-param name="contact" select="n1:assignedEntity|n1:relatedEntity"/>
            </xsl:call-template>
          </div>
        </div>
        <div class="clearer"></div>
        </div>
      </xsl:for-each>

      <xsl:for-each select="/n1:ClinicalDocument/n1:dataEnterer">
        <div class="element" onclick="toggleCollapseable(this);">
        <div class="bottomlineCollapseable">
          <xsl:call-template name="collapseTrigger"/>
          <div class="leftsmall">
            <h2><xsl:text>Eingegeben von</xsl:text></h2>
            <p class="date">
              <xsl:call-template name="formatDate">
                <xsl:with-param name="date" select="n1:time"/>
              </xsl:call-template>
            </p>
          </div>
          <div class="leftwide">
            <p class="organisationName">
              <xsl:call-template name="getName">
                <xsl:with-param name="name" select="n1:assignedEntity/n1:assignedPerson/n1:name"/>
              </xsl:call-template>
            </p>
            <xsl:call-template name="getContactInfo">
              <xsl:with-param name="contact" select="n1:assignedEntity"/>
            </xsl:call-template>
            <xsl:if test="n1:assignedEntity/n1:representedOrganization">
            <xsl:call-template name="getOrganization">
              <xsl:with-param name="organization" select="n1:assignedEntity/n1:representedOrganization"/>
            </xsl:call-template>
            </xsl:if>
          </div>
        </div>
        <div class="clearer"></div>
        </div>
      </xsl:for-each>
      <xsl:for-each select="/n1:ClinicalDocument/n1:informationRecipient">
        <div class="element" onclick="toggleCollapseable(this);">
        <div class="bottomlineCollapseable">
          <xsl:call-template name="collapseTrigger"/>
          <div class="leftsmall">
            <h2>
              <xsl:choose>
                <xsl:when test="@typeCode = 'PRCP'">
                  <xsl:text>Empfänger</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:text>Kopie an</xsl:text>
                </xsl:otherwise>
              </xsl:choose>
            </h2>
          </div>
          <div class="leftwide">
            <p class="organisationName">
            <xsl:if test="n1:intendedRecipient/n1:informationRecipient">
              <xsl:call-template name="getName">
                <xsl:with-param name="name" select="n1:intendedRecipient/n1:informationRecipient/n1:name"/>
              </xsl:call-template>
              <xsl:if test="n1:intendedRecipient/n1:receivedOrganization">
                <br/>
                <xsl:value-of select="n1:intendedRecipient/n1:receivedOrganization/n1:name"/>
              </xsl:if>
            </xsl:if>
            </p>
            <xsl:call-template name="getContactInfo">
              <xsl:with-param name="contact" select="n1:intendedRecipient/n1:receivedOrganization"/>
            </xsl:call-template>
          </div>
        </div>
        <div class="clearer"></div>
        </div>
      </xsl:for-each>

      <xsl:for-each select="/n1:ClinicalDocument/n1:participant">
        <!-- do not show signee and responsible contact again -->
        <xsl:if test="not(@typeCode = 'CALLBCK' and not(n1:functionCode/@code) and n1:associatedEntity/@classCode= 'PROV') ">

          <!-- do not show referrer again, when data is already shown in fulfillment container -->
          <xsl:if test="not(@typeCode= 'REF' and //n1:ClinicalDocument/n1:inFulfillmentOf)">
            <xsl:variable name="showFunctionCode">
              <xsl:if test="@typeCode = 'CON' and n1:associatedEntity/@classCode= 'PROV'">
                <!-- different layout for "weitere behandler" -->
                <xsl:value-of select="1" />
              </xsl:if>
            </xsl:variable>

            <xsl:call-template name="bottomlineElement" >
              <xsl:with-param name="participant" select="." />
              <xsl:with-param name="showFunctionCode" select="$showFunctionCode" />
            </xsl:call-template>
            </xsl:if>
        </xsl:if>
      </xsl:for-each>

      <div class="element" onclick="toggleCollapseable(this);">
      <div class="bottomlineCollapseable">
          <xsl:call-template name="collapseTrigger"/>
          <div class="leftsmall">
              <h2><xsl:text>Verwahrer des Dokuments</xsl:text></h2>
          </div>
          <div class="leftwide">
            <p class="organisationName">
              <xsl:call-template name="getName">
                <xsl:with-param name="name" select="/n1:ClinicalDocument/n1:custodian/n1:assignedCustodian/n1:representedCustodianOrganization/n1:name"/>
              </xsl:call-template>
            </p>
            <xsl:call-template name="getContactInfo">
              <xsl:with-param name="contact" select="/n1:ClinicalDocument/n1:custodian/n1:assignedCustodian/n1:representedCustodianOrganization"/>
            </xsl:call-template>
          </div>
      </div>
      <div class="clearer"></div>
      </div>
      
      
      <xsl:if test="/n1:ClinicalDocument/n1:documentationOf/n1:serviceEvent/n1:code/@code='KASSEN' or 
      				/n1:ClinicalDocument/n1:documentationOf/n1:serviceEvent/n1:code/@code='PRIVAT' or 
      				/n1:ClinicalDocument/n1:documentationOf/n1:serviceEvent/n1:code/@code='SUBST'">
        <div class="element" style="cursor: default;" onclick="toggleCollapseable(this);">
          <div class="bottomlineCollapseable">
            <div class="leftsmall">
              <h2>
                  <xsl:call-template name="getELGAMedikationRezeptart">
                      <xsl:with-param name="code" select="/n1:ClinicalDocument/n1:documentationOf/n1:serviceEvent/n1:code/@code" />
                  </xsl:call-template>
                  <xsl:text> gültig bis</xsl:text>
              </h2>
            </div>
            <div class="leftwide">
              <div class="address" style="display: block;">
		  	    <xsl:call-template name="formatDate">
			      <xsl:with-param name="date" select="*/n1:serviceEvent/n1:effectiveTime/n1:high" />
				  <xsl:with-param name="date_shortmode">false</xsl:with-param>
			    </xsl:call-template>
              </div>
            </div>
          </div>
          <div class="clearer"></div>
        </div>      
      </xsl:if>

      <div class="element" style="cursor: default;" onclick="toggleCollapseable(this);">
        <div class="bottomlineCollapseable">
          <div class="leftsmall">
            <h2><xsl:text>Schlagwörter (Services)</xsl:text></h2>
          </div>
          <div class="leftwide">
            <div class="address" style="display: block;">
              <xsl:call-template name="getServiceEvents" />
            </div>
          </div>
        </div>
        <div class="clearer"></div>
      </div>
      
      <div class="element" onclick="toggleCollapseable(this);">
        <div class="bottomlineCollapseable">
            <xsl:call-template name="collapseTrigger"/>
            <div class="leftsmall">
                <h2><xsl:text>Dokumentinformation</xsl:text></h2>
            </div>
            <div class="leftwide">
              <div class="telecom">
               <xsl:call-template name="getDocumentInformation" />
              </div>
            </div>
        </div>
        <div class="clearer"></div>
      </div>

    </div>
  </div>
  </xsl:template>

  <!--
  Element for participants shown in additional information of document
  -->
  <xsl:template name="bottomlineElement">
    <xsl:param name="participant" />
    <xsl:param name="showFunctionCode" select="0" />

    <div class="element" onclick="toggleCollapseable(this);">
      <div class="bottomlineCollapseable">
        <xsl:call-template name="collapseTrigger"/>
        <div class="leftsmall">
          <xsl:call-template name="participantIdentification">
            <xsl:with-param name="participant" select="$participant" />
          </xsl:call-template>
        </div>
        <div class="leftwide">
          <p class="organisationName">
          <!-- different insurance person -->
          <xsl:variable name="typecode" select="$participant/@typeCode" />
          <xsl:variable name="classcode" select="$participant/n1:associatedEntity/@classCode" />
          <xsl:variable name="code" select="$participant/n1:associatedEntity/n1:code/@code" />

          <xsl:if test="$typecode = 'HLD' and $classcode = 'POLHOLD' and $code = 'SELF'">
            <xsl:text>Versichert bei: </xsl:text>
          </xsl:if>
          <xsl:if test="$typecode = 'HLD' and $classcode = 'POLHOLD' and $code = 'FAMDEP'">
            <xsl:text>Mitversichert bei: </xsl:text>
          </xsl:if>
          <xsl:call-template name="getName">
            <xsl:with-param name="name" select="n1:associatedEntity/n1:associatedPerson/n1:name"/>
          </xsl:call-template>
          <!-- if urgency contact display relationship -->
          <xsl:if test="@typeCode='IND' and not(n1:functionCode/@code) and (n1:associatedEntity/@classCode='ECON' or n1:associatedEntity/@classCode='PRS') ">
            <span class="relationship"><xsl:text> (</xsl:text>
            <xsl:call-template name="getELGAPersonalRelationship" >
              <xsl:with-param name="participant" select="$participant" />
            </xsl:call-template>
            <xsl:text>)</xsl:text></span>
            </xsl:if>
          </p>
          <xsl:if test="$showFunctionCode='1'">
            <xsl:if test="n1:functionCode">
              <p class="organisationName">
                <xsl:call-template name="getELGAAuthorSpeciality">
                  <xsl:with-param name="code" select="n1:functionCode/@code"/>
                </xsl:call-template>
              </p>
            </xsl:if>
          </xsl:if>
          <xsl:call-template name="getContactInfo">
            <xsl:with-param name="contact" select="n1:associatedEntity"/>
          </xsl:call-template>
          <xsl:if test="n1:associatedEntity/n1:scopingOrganization">
            <xsl:call-template name="getOrganization">
            <xsl:with-param name="organization" select="n1:associatedEntity/n1:scopingOrganization"/>
          </xsl:call-template>
          </xsl:if>
        </div>
        <div class="clearer"></div>
      </div>
    </div>
  </xsl:template>

  <xsl:template name="getDocumentInformation">
    <p class="metaInformationLine">
      <xsl:call-template name="getHL7ATXDSDokumentenklassen">
        <xsl:with-param name="code" select="/n1:ClinicalDocument/n1:code/@code" />
      </xsl:call-template>
    </p>
    <p class="metaInformationLine">
      <xsl:text>Dokument erzeugt am </xsl:text>
      <xsl:call-template name="formatDate">
        <xsl:with-param name="date" select="/n1:ClinicalDocument/n1:effectiveTime" />
        <xsl:with-param name="date_shortmode">false</xsl:with-param>
      </xsl:call-template>
    </p>
    <xsl:choose>
      <xsl:when test="*/n1:serviceEvent/n1:effectiveTime/n1:low/@value != '' and */n1:serviceEvent/n1:effectiveTime/n1:high/@value != ''">
        <p>
          <xsl:text>Leistungszeitraum von </xsl:text>
          <xsl:call-template name="formatDate">
            <xsl:with-param name="date" select="*/n1:serviceEvent/n1:effectiveTime/n1:low" />
            <xsl:with-param name="date_shortmode">false</xsl:with-param>
          </xsl:call-template><xsl:text> bis </xsl:text>
          <xsl:call-template name="formatDate">
            <xsl:with-param name="date" select="*/n1:serviceEvent/n1:effectiveTime/n1:high" />
            <xsl:with-param name="date_shortmode">false</xsl:with-param>
          </xsl:call-template>
        </p>
      </xsl:when>
      <xsl:when test="*/n1:serviceEvent/n1:effectiveTime/n1:low/@value != ''">
        <p class="metaInformationLine">
          <xsl:text>Beginn der Leistung: </xsl:text>
          <xsl:call-template name="formatDate">
            <xsl:with-param name="date" select="*/n1:serviceEvent/n1:effectiveTime/n1:low" />
            <xsl:with-param name="date_shortmode">false</xsl:with-param>
          </xsl:call-template>
        </p>
      </xsl:when>
      <xsl:when test="*/n1:serviceEvent/n1:effectiveTime/n1:high/@value != ''">
        <p class="metaInformationLine">
          <xsl:text>Ende der Leistung: </xsl:text>
          <xsl:call-template name="formatDate">
            <xsl:with-param name="date" select="*/n1:serviceEvent/n1:effectiveTime/n1:high" />
            <xsl:with-param name="date_shortmode">false</xsl:with-param>
          </xsl:call-template>
        </p>
      </xsl:when>
      <xsl:otherwise>
        <p class="metaInformationLine">
          <xsl:text>Leistungszeitraum nicht angegeben</xsl:text>
        </p>
      </xsl:otherwise>
    </xsl:choose>
    <p class="metaInformationLine">
      <xsl:text>Dokument-ID: </xsl:text>{<xsl:value-of select="/n1:ClinicalDocument/n1:id/@root" />}&#160;<xsl:value-of select="/n1:ClinicalDocument/n1:id/@extension" />
    </p>
    <p class="metaInformationLine">
      <xsl:text>Set ID: </xsl:text>
      <xsl:choose>
        <xsl:when test="/n1:ClinicalDocument/n1:setId/@root">
          {<xsl:value-of select="/n1:ClinicalDocument/n1:setId/@root" />}
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>unbekannt</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:text> </xsl:text>
      <xsl:if test="/n1:ClinicalDocument/n1:setId/@extension">
        <xsl:value-of select="/n1:ClinicalDocument/n1:setId/@extension" />
      </xsl:if>
    </p>
    <p class="metaInformationLine">
      <xsl:text>Dokumentversion: </xsl:text><xsl:value-of select="/n1:ClinicalDocument/n1:versionNumber/@value" />
    </p>
    <p class="metaInformationLine">
      <xsl:text>Angezeigt mit </xsl:text><xsl:value-of select="document('')/xsl:stylesheet/@id" />
    </p>
    <p class="metaInformationLine">
      <xsl:text>Dieses Dokument entspricht den Vorgaben von: </xsl:text>
      <xsl:call-template name="getNameFromOID" /><xsl:text>; ELGA Interoperabilitätsstufe: </xsl:text><xsl:call-template name="getEISFromOID" />
    </p>
    <p class="metaInformationLine">
      <xsl:variable name="params">
        <xsl:call-template name="renderParamWithValue">
          <xsl:with-param name="paramName">showrevisionmarks</xsl:with-param>
          <xsl:with-param name="paramValue" select="$showrevisionmarks" />
          <xsl:with-param name="paramDefaultValue">0</xsl:with-param>
          <xsl:with-param name="displayText">Text-Revisionen anzeigen</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="renderParamWithValue">
          <xsl:with-param name="paramName">isStrictModeDisabled</xsl:with-param>
          <xsl:with-param name="paramValue" select="$isStrictModeDisabled" />
          <xsl:with-param name="paramDefaultValue">0</xsl:with-param>
          <xsl:with-param name="displayText">Fehlerhafte Tabellen darstellen</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="renderParamWithValue">
          <xsl:with-param name="paramName">useexternalcss</xsl:with-param>
          <xsl:with-param name="paramValue" select="$useexternalcss" />
          <xsl:with-param name="paramDefaultValue">0</xsl:with-param>
          <xsl:with-param name="displayText">Externes CSS verwenden</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="renderParamWithValue">
          <xsl:with-param name="paramName">externalcssname</xsl:with-param>
          <xsl:with-param name="paramValue" select="$externalcssname" />
          <xsl:with-param name="paramDefaultValue"/>
          <xsl:with-param name="displayText">Externe CSS-Datei</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="renderParamWithValue">
          <xsl:with-param name="paramName">printiconvisibility</xsl:with-param>
          <xsl:with-param name="paramValue" select="$printiconvisibility" />
          <xsl:with-param name="paramDefaultValue">0</xsl:with-param>
          <xsl:with-param name="displayText">Druck-Icon anzeigen</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="renderParamWithValue">
          <xsl:with-param name="paramName">isdeprecated</xsl:with-param>
          <xsl:with-param name="paramValue" select="$isdeprecated" />
          <xsl:with-param name="paramDefaultValue">0</xsl:with-param>
          <xsl:with-param name="displayText">Storniertes Dokument</xsl:with-param>
        </xsl:call-template>
<xsl:call-template name="renderParamWithValue">
    <xsl:with-param name="paramName">showEMedicationWarnContainer</xsl:with-param>
    <xsl:with-param name="paramValue" select="$isShowEMedicationWarnContainer" />
    <xsl:with-param name="paramDefaultValue">0</xsl:with-param>
    <xsl:with-param name="displayText">Warn-Container am Beginn des Dokuments anzeigen</xsl:with-param>
</xsl:call-template>
<xsl:call-template name="renderParamWithValue">
    <xsl:with-param name="paramName">eMedicationWarnContainerText</xsl:with-param>
    <xsl:with-param name="paramValue" select="$eMedicationWarnContainerText" />
    <xsl:with-param name="paramDefaultValue" select="''"/>
    <xsl:with-param name="displayText">Text des Warn-Containers</xsl:with-param>
</xsl:call-template>
      </xsl:variable>

      <xsl:choose>
        <xsl:when test="$params != ''">
          <xsl:text>Dieses Dokument wurde mit folgenden Einstellungen erstellt: </xsl:text>
          <xsl:value-of select="substring($params, 1, string-length($params) - 2)" />
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>Dieses Dokument wurde mit den Standard-Einstellungen erstellt.</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
    </p>
  </xsl:template>

  <xsl:template name="renderParamWithValue">
    <xsl:param name="paramName" />
    <xsl:param name="paramValue" />
    <xsl:param name="paramDefaultValue" />
    <xsl:param name="displayText" />

    <xsl:if test="$paramValue != $paramDefaultValue">
      <xsl:value-of select="$displayText" />
      <xsl:text> (Parameter "</xsl:text>
      <xsl:value-of select="$paramName" />
      <xsl:text>"): </xsl:text>
      <xsl:value-of select="$paramValue" />
      <xsl:text>, </xsl:text>
    </xsl:if>

  </xsl:template>

  <!--
  collapse triggers [+] [-] for document
  -->
  <xsl:template name="collapseTrigger">
    <span class="collapseLinks tooltipTrigger">
      <a class="collapseHide" href="#" onclick="return false;">
        <span class="tooltip">einklappen</span>
      </a>
      <a class="collapseShow" href="#" onclick="return false;">
        <span class="tooltip">ausklappen</span>
      </a>
    </span>
  </xsl:template>

<xsl:template name="getPatientInformationData">
  <xsl:param name="sexName"/>
  <xsl:param name="birthdate_long"/>
  <xsl:param name="svnnumber"/>

  <div>
    <table cellpadding="0" cellspacing="0">
      <tr>
        <td width="210px" class="firstrow">
          <xsl:text>Geschlecht</xsl:text>
        </td>
        <td>
          <xsl:value-of select="$sexName"/>
        </td>
      </tr>

      <xsl:if test="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:name/n1:family[@qualifier='SP']">
        <tr>
          <td class="firstrow">
            <xsl:text>Name vor Heirat</xsl:text>
          </td>
          <td>
            <xsl:call-template name="renderListItems">
              <xsl:with-param name="list" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:name/n1:family[@qualifier='SP']"/>
            </xsl:call-template>
          </td>
        </tr>
      </xsl:if>
      <xsl:if test="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:name/n1:family[@qualifier='AD']">
        <tr>
          <td class="firstrow">
            <xsl:text>Name vor Adoption</xsl:text>
          </td>
          <td>
            <xsl:call-template name="renderListItems">
              <xsl:with-param name="list" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:name/n1:family[@qualifier='AD']"/>
            </xsl:call-template>
          </td>
        </tr>
      </xsl:if>
      <xsl:if test="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:name/n1:family[@qualifier='BR']">
        <tr>
          <td class="firstrow">
            <xsl:text>Geburtsname</xsl:text>
          </td>
          <td>
            <xsl:call-template name="renderListItems">
              <xsl:with-param name="list" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:name/n1:family[@qualifier='BR']"/>
            </xsl:call-template>
          </td>
        </tr>
      </xsl:if>
      <tr>
        <td class="firstrow">
          <xsl:text>Geburtsdatum</xsl:text>
        </td>
        <td>
          <xsl:value-of select="$birthdate_long"/>
        </td>
      </tr>
      <xsl:if test="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:birthplace/n1:place/n1:addr">
        <tr>
          <td class="firstrow">
            <xsl:text>Geburtsort</xsl:text>
          </td>
          <td>
            <xsl:apply-templates select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:birthplace/n1:place/n1:addr"/>
          </td>
        </tr>
      </xsl:if>
      <tr>
        <td class="firstrow">
          <xsl:text>SV-Nr</xsl:text>
        </td>
        <td>
          <xsl:value-of select="$svnnumber"/>
        </td>
      </tr>
      <xsl:if test="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:maritalStatusCode">
        <tr>
          <td class="firstrow">
            <xsl:text>Familienstand</xsl:text>
          </td>
          <td>
            <xsl:call-template name="getELGAMaritalStatus">
              <xsl:with-param name="code" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:maritalStatusCode/@code"/>
            </xsl:call-template>
          </td>
        </tr>
      </xsl:if>
      <xsl:if test="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:religiousAffiliationCode">
        <tr>
          <td class="firstrow">
            <xsl:text>Religionsgemeinschaft</xsl:text>
          </td>
          <td>
            <xsl:call-template name="getELGAReligiousAffiliation">
              <xsl:with-param name="religiousAffiliation" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:religiousAffiliationCode"/>
            </xsl:call-template>
          </td>
        </tr>
      </xsl:if>
      <xsl:if test="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:languageCommunication">
        <tr>
          <td class="firstrow">
            <xsl:text>Gesprochene Sprachen</xsl:text>
          </td>
          <td>
            <xsl:call-template name="getLanguageAbility">
              <xsl:with-param name="patient" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient"/>
            </xsl:call-template>
          </td>
        </tr>
      </xsl:if>

      <xsl:if test="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:telecom">
        <!-- add empty table row as a spacer -->
        <tr class="spacer">
          <td/>
          <td/>
        </tr>
        <xsl:call-template name="getContactTelecomTable">
          <xsl:with-param name="contact" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole"/>
        </xsl:call-template>
      </xsl:if>

    </table>
  </div>
</xsl:template>

<xsl:template name="getPatientAdress">
  <xsl:if test="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:addr">
    <div>
      <xsl:call-template name="getContactAddress">
        <xsl:with-param name="contact" select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole"/>
      </xsl:call-template>
    </div>
  </xsl:if>
</xsl:template>

<xsl:template name="getPatientGuardian">
  <xsl:if test="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:guardian">
    <div>
      <b><xsl:text>Gesetzlicher Vertreter: Sachwalter, Vormund, Obsorge</xsl:text></b>
      <xsl:apply-templates select="/n1:ClinicalDocument/n1:recordTarget/n1:patientRole/n1:patient/n1:guardian"/>
    </div>
  </xsl:if>
</xsl:template>

<xsl:template name="getPatientStay">
  <div class="boxLeft">
    <xsl:call-template name="getOrganization">
      <xsl:with-param name="organization" select="/n1:ClinicalDocument/n1:componentOf/n1:encompassingEncounter/n1:location/n1:healthCareFacility/n1:serviceProviderOrganization "/>
      <xsl:with-param name="printNameBold" select="string(true())" />
    </xsl:call-template>
  </div>
  <div class="boxRight">
    <p>
      <b>
        <xsl:call-template name="getEncounterCaseNumber"/>
        <xsl:apply-templates select="/n1:ClinicalDocument/n1:componentOf/n1:encompassingEncounter/n1:id/@extension"/>
      </b>
    </p>
    <p>
      <xsl:call-template name="getAmbulatory">
        <xsl:with-param name="code" select="/n1:ClinicalDocument/n1:componentOf/n1:encompassingEncounter/n1:code"/>
        <xsl:with-param name="effectiveTime" select="/n1:ClinicalDocument/n1:componentOf/n1:encompassingEncounter/n1:effectiveTime"/>
        <xsl:with-param name="date_shortmode">false</xsl:with-param>
      </xsl:call-template>
    </p>
  </div>
  <div class="clearer"/>
</xsl:template>

<xsl:template name="getReferrer">
  <div class="boxLeft">
    <xsl:call-template name="getOrganization">
      <xsl:with-param name="organization" select="//n1:ClinicalDocument/n1:participant[@typeCode='REF']/n1:associatedEntity/n1:scopingOrganization "/>
      <xsl:with-param name="printNameBold" select="string(true())" />
    </xsl:call-template>
  </div>
  <div class="boxRight">
    <p>
      <xsl:call-template name="getName">
        <xsl:with-param name="name" select="//n1:ClinicalDocument/n1:participant[@typeCode='REF']/n1:associatedEntity/n1:associatedPerson/n1:name"/>
      </xsl:call-template>
    </p>
    <p>
      <xsl:call-template name="getContactInfo">
        <xsl:with-param name="contact" select="//n1:ClinicalDocument/n1:participant[@typeCode='REF']/n1:associatedEntity"/>
      </xsl:call-template>
    </p>
  </div>
  <div class="clearer"/>
</xsl:template>

 <!--
  code translations for participants
    most common used in bottom section of document for additional information
  includes tooltips
  -->
  <xsl:template name="participantIdentification">
    <xsl:param name="participant" />
    <xsl:variable name="typecode" select="$participant/@typeCode" />
    <xsl:variable name="functioncode" select="$participant/n1:functionCode/@code" />
    <xsl:variable name="classcode" select="$participant/n1:associatedEntity/@classCode" />
    <xsl:variable name="signaturecode" select="$participant/*/n1:signatureCode/@code" />
    <xsl:variable name="code" select="$participant/n1:associatedEntity/n1:code/@code" />

    <xsl:choose>
      <xsl:when test="$typecode = 'RCT'"><h2 class="tooltipTrigger"><xsl:value-of select="$genderedpatient"/><span class="tooltip"><xsl:value-of select="$genderedpatient"/></span></h2></xsl:when>
      <xsl:when test="$typecode = 'AUT'"><h2 class="tooltipTrigger">Verfasser des Dokuments<span class="tooltip">Autor</span></h2></xsl:when>
      <xsl:when test="$typecode = 'ENT'"><h2 class="tooltipTrigger">Schreibkraft<span class="tooltip">Schreibkraft</span></h2></xsl:when>
      <xsl:when test="$typecode = 'CST'"><h2 class="tooltipTrigger">Originaldokument ist verfügbar bei<span class="tooltip">Gibt die Organisation an, die das originale Befunddokument verwahrt.</span></h2></xsl:when>
      <xsl:when test="$typecode = 'INF'"><h2 class="tooltipTrigger">Auskunftsperson zum Patienten<span class="tooltip">Person, die weitere Informationen über den Patienten geben kann</span></h2></xsl:when>
      <xsl:when test="$typecode = 'PRCP'"><h2 class="tooltipTrigger">Empfänger:<span class="tooltip">Empfänger des Dokuments</span></h2></xsl:when>
      <xsl:when test="$typecode = 'TRC'"><h2 class="tooltipTrigger">Kopie an:<span class="tooltip">Weitere Empfänger des Dokuments</span></h2></xsl:when>
      <xsl:when test="$typecode = 'LA'"><h2 class="tooltipTrigger">Unterzeichner(in)<span class="tooltip">Person, die das Dokument unterzeichnet hat</span></h2></xsl:when>
      <xsl:when test="$typecode = 'LA' and $signaturecode='S'"><h2>Unterzeichner(in)</h2></xsl:when>
      <xsl:when test="$typecode = 'AUTHEN'"><h2 class="tooltipTrigger">Weitere Unterzeichner<span class="tooltip">Weitere Personen, die das Dokument unterzeichnet haben.</span></h2></xsl:when>
      <xsl:when test="$typecode = 'AUTHEN' and $signaturecode='S'"><h2>Weitere Unterzeichner</h2></xsl:when>
      <xsl:when test="$typecode = 'CALLBCK'"><h1 class="tooltipTrigger"><b>Bei Fragen kontaktieren Sie bitte:</b><span class="tooltip">Fachliche(r) Ansprechpartner(in) für dieses Dokument</span></h1></xsl:when>
      <xsl:when test="$typecode = 'REF'"><h2>Zuweiser(in)</h2></xsl:when>
      <xsl:when test="$typecode = 'REF' and $functioncode = 'ADMPHYS'"><h2>Einweisende(r)/Zuweisende(r) Arzt/Ärztin</h2></xsl:when>
      <xsl:when test="$typecode = 'IND'">
        <xsl:choose>
          <xsl:when test="$typecode = 'IND' and $functioncode = 'PCP'"><h2>Hausarzt/Hausärztin</h2></xsl:when>
          <xsl:when test="$typecode = 'IND' and $classcode = 'ECON'"><h2 class="tooltipTrigger">Notfall-Kontakt<span class="tooltip">Auskunftsberechtigte Person</span></h2></xsl:when>
          <xsl:when test="$typecode = 'IND' and $classcode = 'CAREGIVER'"><h2>Betreuende Organisation</h2></xsl:when>
          <xsl:when test="$typecode = 'IND' and $classcode = 'PRS'">
            <h2>Angehörige(r)</h2>
          </xsl:when>
          <xsl:otherwise><h2>Weitere Beteiligte</h2></xsl:otherwise>
        </xsl:choose>
      </xsl:when>
      <xsl:when test="$typecode = 'HLD' and $classcode = 'POLHOLD' and $code = 'SELF'"><h2>Versicherungsinhaber(in) und Versicherungsgesellschaft</h2></xsl:when>
      <xsl:when test="$typecode = 'HLD' and $classcode = 'POLHOLD' and $code = 'FAMDEP'"><h2>Versicherungsinhaber(in) und Versicherungsgesellschaft</h2></xsl:when>
      <xsl:when test="$typecode = 'CON' and $classcode = 'PROV'"><h2>Weitere Behandler</h2></xsl:when>
      <xsl:otherwise>-</xsl:otherwise>
    </xsl:choose>
  </xsl:template>




    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getELGAPersonalRelationship">
        <xsl:param name="participant" />
        
        <xsl:variable name="code"><xsl:value-of select="$participant/*/n1:code/@code"/></xsl:variable>
        
        <xsl:choose>
            <xsl:when test="$code='FAMMEMB'">Familienmitglied</xsl:when>
            <xsl:when test="$code='SPS'">Ehepartner</xsl:when>
            <xsl:when test="$code='HUSB'">Ehemann</xsl:when>
            <xsl:when test="$code='WIFE'">Ehefrau</xsl:when>
            <xsl:when test="$code='PRN'">Elternteil</xsl:when>
            <xsl:when test="$code='FTH'">Vater</xsl:when>
            <xsl:when test="$code='MTH'">Mutter</xsl:when>
            <xsl:when test="$code='NPRN'">leibliches Elternteil</xsl:when>
            <xsl:when test="$code='NFTH'">leiblicher Vater</xsl:when>
            <xsl:when test="$code='NMTH'">leibliche Mutther</xsl:when>
            <xsl:when test="$code='PRNINLAW'">Schwiegereltern</xsl:when>
            <xsl:when test="$code='FTHINLAW'">Schwiegervater</xsl:when>
            <xsl:when test="$code='MTHINLAW'">Schwiegermutter</xsl:when>
            <xsl:when test="$code='STPPRN'">Stiefelternteil</xsl:when>
            <xsl:when test="$code='STPFTH'">Stiefvater</xsl:when>
            <xsl:when test="$code='STPMTH'">Stiefmutter</xsl:when>
            <xsl:when test="$code='SIB'">Geschwister</xsl:when>
            <xsl:when test="$code='BRO'">Bruder</xsl:when>
            <xsl:when test="$code='SIS'">Schwester</xsl:when>
            <xsl:when test="$code='HSIB'">Halbgeschwister</xsl:when>
            <xsl:when test="$code='HBRO'">Halbbruder</xsl:when>
            <xsl:when test="$code='HSIS'">Halbschwester</xsl:when>
            <xsl:when test="$code='NSIB'">leibliche Geschwister</xsl:when>
            <xsl:when test="$code='NBRO'">leiblicher Bruder</xsl:when>
            <xsl:when test="$code='NSIS'">leibliche Schwester</xsl:when>
            <xsl:when test="$code='SIBINLAW'">Schwager/ Schwägerin</xsl:when>
            <xsl:when test="$code='BROINLAW'">Schwager</xsl:when>
            <xsl:when test="$code='SISINLAW'">Schwägerin</xsl:when>
            <xsl:when test="$code='STPSIB'">Stiefgeschwister</xsl:when>
            <xsl:when test="$code='STPBRO'">Stiefbruder</xsl:when>
            <xsl:when test="$code='STPSIS'">Stiefschwester</xsl:when>
            <xsl:when test="$code='CHILD'">Kind</xsl:when>
            <xsl:when test="$code='NCHILD'">leibliches Kind</xsl:when>
            <xsl:when test="$code='CHLDADOPT'">Adoptivkind</xsl:when>
            <xsl:when test="$code='CHLDFOST'">Pflegekind</xsl:when>
            <xsl:when test="$code='CHLDINLAW'">Schwiegerkind</xsl:when>
            <xsl:when test="$code='STPCHLD'">Stiefkind</xsl:when>
            <xsl:when test="$code='DAUC'">Tochter</xsl:when>
            <xsl:when test="$code='DAU'">leibliche Tochter</xsl:when>
            <xsl:when test="$code='DAUADOPT'">Adoptivtocher</xsl:when>
            <xsl:when test="$code='DAUFOST'">Pflegetochter</xsl:when>
            <xsl:when test="$code='DAUINLAW'">Schwiegertochter</xsl:when>
            <xsl:when test="$code='STPDAU'">Stieftochter</xsl:when>
            <xsl:when test="$code='SONC'">Sohn</xsl:when>
            <xsl:when test="$code='SON'">leiblicher Sohn</xsl:when>
            <xsl:when test="$code='SONADOPT'">Adoptivsohn</xsl:when>
            <xsl:when test="$code='SONFOST'">Pflegesohn</xsl:when>
            <xsl:when test="$code='SONINLAW'">Schwiegersohn</xsl:when>
            <xsl:when test="$code='STPSON'">Stiefsohn</xsl:when>
            <xsl:when test="$code='GRPRN'">Großelternteil</xsl:when>
            <xsl:when test="$code='GRFTH'">Großvater</xsl:when>
            <xsl:when test="$code='GRMTH'">Großmutter</xsl:when>
            <xsl:when test="$code='GGRPRN'">Urgroßelternteil</xsl:when>
            <xsl:when test="$code='GGRFTH'">Urgroßvater</xsl:when>
            <xsl:when test="$code='GGRMTH'">Urgroßmutter</xsl:when>
            <xsl:when test="$code='GRNDCHILD'">Enkelkind</xsl:when>
            <xsl:when test="$code='GRNDDAU'">Enkeltochter</xsl:when>
            <xsl:when test="$code='GRNDSON'">Enkelsohn</xsl:when>
            <xsl:when test="$code='AUNT'">Tante</xsl:when>
            <xsl:when test="$code='UNCLE'">Onkel</xsl:when>
            <xsl:when test="$code='NIENEPH'">Nichte/Neffe</xsl:when>
            <xsl:when test="$code='COUSN'">Cousine/Cousin</xsl:when>
            <xsl:when test="$code='FRND'">Bekannte/Bekannter</xsl:when>
            <xsl:when test="$code='SIGOTHR'">wichtige Bezugsperson (z.B. Lebensgefährte)</xsl:when>
            <xsl:when test="$code='ROOM'">MitbewohnerIn</xsl:when>
            <xsl:when test="$code='DOMPART'">LebenspartnerIn</xsl:when>
            <xsl:when test="$code='NBOR'">NachbarIn</xsl:when>
            <xsl:when test="$code='SPON'">Pflegeperson</xsl:when>
            <xsl:when test="$code='GUARD'">SachwalterIn</xsl:when>
            <xsl:when test="$code='SELF'">Patient selbst</xsl:when>
            <xsl:otherwise><xsl:value-of select="$code" />)</xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    


  <!--
  code translations for telecom
  also found in addr tags
  -->
  <xsl:template name="translateCode">
    <xsl:param name="code"/>
    <xsl:choose>
      <!-- lookup table Telecom URI -->
      <xsl:when test="$code='fax'"><xsl:text>Fax</xsl:text></xsl:when>
      <xsl:when test="$code='file'"><xsl:text>Datei</xsl:text></xsl:when>
      <xsl:when test="$code='ftp'"><xsl:text>FTP</xsl:text></xsl:when>
      <xsl:when test="$code='http'"><xsl:text>Web</xsl:text></xsl:when>
      <xsl:when test="$code='mailto'"><xsl:text>Email</xsl:text></xsl:when>
      <xsl:when test="$code='me'"><xsl:text>ME</xsl:text></xsl:when>
      <xsl:when test="$code='mllp'"><xsl:text>MLLP</xsl:text></xsl:when>
      <xsl:when test="$code='modem'"><xsl:text>Modem</xsl:text></xsl:when>
      <xsl:when test="$code='nfs'"><xsl:text>NFS</xsl:text></xsl:when>
      <xsl:when test="$code='tel'"><xsl:text>Tel</xsl:text></xsl:when>
      <xsl:when test="$code='telnet'"><xsl:text>Telnet</xsl:text></xsl:when>
      <!-- addr oder telecom use -->
      <xsl:when test="$code='AS'"><xsl:text>Anrufbeantworter</xsl:text></xsl:when>
      <xsl:when test="$code='EC'"><xsl:text>Im Notfall erreichbar unter</xsl:text></xsl:when>
      <xsl:when test="$code='H'"><xsl:text>Wohnort</xsl:text></xsl:when>
      <xsl:when test="$code='HP'"><xsl:text>Hauptwohnsitz</xsl:text></xsl:when>
      <xsl:when test="$code='HV'"><xsl:text>Ferienwohnort</xsl:text></xsl:when>
      <xsl:when test="$code='MC'"><xsl:text>Mobil</xsl:text></xsl:when>
      <xsl:when test="$code='PG'"><xsl:text>Pager</xsl:text></xsl:when>
      <xsl:when test="$code='WP'"><xsl:text>Geschäftlich</xsl:text></xsl:when>
      <xsl:when test="$code='PUB'"><xsl:text>Geschäftlich</xsl:text></xsl:when>
      <xsl:when test="$code='TMP'"><xsl:text>Pflegeadresse</xsl:text></xsl:when>
      <xsl:otherwise><xsl:value-of select="$code" /></xsl:otherwise>
    </xsl:choose>
  </xsl:template>



    <!-- AUTO GENERATED TEMPLATE. DO NOT MODIFY! -->
    
    <xsl:template name="getELGAAuthorSpeciality">
        <xsl:param name="code" />
        
        <xsl:choose>
            <xsl:when test="$code='10'">Rollen für Personen</xsl:when>
            <xsl:when test="$code='100'">Ärztin/Arzt für Allgemeinmedizin</xsl:when>
            <xsl:when test="$code='101'">Approbierte Ärztin/Approbierter Arzt</xsl:when>
            <xsl:when test="$code='158'">Fachärztin/Facharzt</xsl:when>
            <xsl:when test="$code='102'">Fachärztin/Facharzt für Anästhesiologie und Intensivmedizin</xsl:when>
            <xsl:when test="$code='103'">Fachärztin/Facharzt für Anatomie</xsl:when>
            <xsl:when test="$code='104'">Fachärztin/Facharzt für Arbeitsmedizin</xsl:when>
            <xsl:when test="$code='105'">Fachärztin/Facharzt für Augenheilkunde und Optometrie</xsl:when>
            <xsl:when test="$code='106'">Fachärztin/Facharzt für Blutgruppenserologie und Transfusionsmedizin</xsl:when>
            <xsl:when test="$code='107'">Fachärztin/Facharzt für Chirurgie</xsl:when>
            <xsl:when test="$code='108'">Fachärztin/Facharzt für Frauenheilkunde und Geburtshilfe</xsl:when>
            <xsl:when test="$code='109'">Fachärztin/Facharzt für Gerichtsmedizin</xsl:when>
            <xsl:when test="$code='110'">Fachärztin/Facharzt für Hals-, Nasen- und Ohrenkrankheiten</xsl:when>
            <xsl:when test="$code='111'">Fachärztin/Facharzt für Haut- und Geschlechtskrankheiten</xsl:when>
            <xsl:when test="$code='112'">Fachärztin/Facharzt für Herzchirurgie</xsl:when>
            <xsl:when test="$code='113'">Fachärztin/Facharzt für Histologie und Embryologie</xsl:when>
            <xsl:when test="$code='114'">Fachärztin/Facharzt für Hygiene und Mikrobiologie</xsl:when>
            <xsl:when test="$code='115'">Fachärztin/Facharzt für Immunologie</xsl:when>
            <xsl:when test="$code='116'">Fachärztin/Facharzt für Innere Medizin</xsl:when>
            <xsl:when test="$code='117'">Fachärztin/Facharzt für Kinder- und Jugendchirurgie</xsl:when>
            <xsl:when test="$code='118'">Fachärztin/Facharzt für Kinder- und Jugendheilkunde</xsl:when>
            <xsl:when test="$code='119'">Fachärztin/Facharzt für Kinder- und Jugendpsychiatrie</xsl:when>
            <xsl:when test="$code='120'">Fachärztin/Facharzt für Lungenkrankheiten</xsl:when>
            <xsl:when test="$code='121'">Fachärztin/Facharzt für Medizinische Biologie</xsl:when>
            <xsl:when test="$code='122'">Fachärztin/Facharzt für Medizinische Biophysik</xsl:when>
            <xsl:when test="$code='123'">Fachärztin/Facharzt für Medizinische Genetik</xsl:when>
            <xsl:when test="$code='124'">Fachärztin/Facharzt für Medizinische und Chemische Labordiagnostik</xsl:when>
            <xsl:when test="$code='125'">Fachärztin/Facharzt für Medizinische Leistungsphysiologie</xsl:when>
            <xsl:when test="$code='126'">Fachärztin/Facharzt für Mikrobiologisch-Serologische Labordiagnostik</xsl:when>
            <xsl:when test="$code='127'">Fachärztin/Facharzt für Mund-, Kiefer- und Gesichtschirurgie</xsl:when>
            <xsl:when test="$code='128'">Fachärztin/Facharzt für Neurobiologie</xsl:when>
            <xsl:when test="$code='129'">Fachärztin/Facharzt für Neurochirurgie</xsl:when>
            <xsl:when test="$code='130'">Fachärztin/Facharzt für Neurologie</xsl:when>
            <xsl:when test="$code='131'">Fachärztin/Facharzt für Neurologie und Psychiatrie</xsl:when>
            <xsl:when test="$code='132'">Fachärztin/Facharzt für Neuropathologie</xsl:when>
            <xsl:when test="$code='133'">Fachärztin/Facharzt für Nuklearmedizin</xsl:when>
            <xsl:when test="$code='134'">Fachärztin/Facharzt für Orthopädie und Orthopädische Chirurgie</xsl:when>
            <xsl:when test="$code='135'">Fachärztin/Facharzt für Pathologie</xsl:when>
            <xsl:when test="$code='136'">Fachärztin/Facharzt für Pathophysiologie</xsl:when>
            <xsl:when test="$code='137'">Fachärztin/Facharzt für Pharmakologie und Toxikologie</xsl:when>
            <xsl:when test="$code='138'">Fachärztin/Facharzt für Physikalische Medizin und Allgemeine Rehabilitation</xsl:when>
            <xsl:when test="$code='139'">Fachärztin/Facharzt für Physiologie</xsl:when>
            <xsl:when test="$code='140'">Fachärztin/Facharzt für Plastische, Ästhetische und Rekonstruktive Chirurgie</xsl:when>
            <xsl:when test="$code='141'">Fachärztin/Facharzt für Psychiatrie</xsl:when>
            <xsl:when test="$code='142'">Fachärztin/Facharzt für Psychiatrie und Neurologie</xsl:when>
            <xsl:when test="$code='143'">Fachärztin/Facharzt für Psychiatrie und Psychotherapeutische Medizin</xsl:when>
            <xsl:when test="$code='144'">Fachärztin/Facharzt für Radiologie</xsl:when>
            <xsl:when test="$code='145'">Fachärztin/Facharzt für Sozialmedizin</xsl:when>
            <xsl:when test="$code='146'">Fachärztin/Facharzt für Spezifische Prophylaxe und Tropenmedizin</xsl:when>
            <xsl:when test="$code='147'">Fachärztin/Facharzt für Strahlentherapie-Radioonkologie</xsl:when>
            <xsl:when test="$code='148'">Fachärztin/Facharzt für Theoretische Sonderfächer</xsl:when>
            <xsl:when test="$code='149'">Fachärztin/Facharzt für Thoraxchirurgie</xsl:when>
            <xsl:when test="$code='150'">Fachärztin/Facharzt für Tumorbiologie</xsl:when>
            <xsl:when test="$code='151'">Fachärztin/Facharzt für Unfallchirurgie</xsl:when>
            <xsl:when test="$code='152'">Fachärztin/Facharzt für Urologie</xsl:when>
            <xsl:when test="$code='153'">Fachärztin/Facharzt für Virologie</xsl:when>
            <xsl:when test="$code='154'">Fachärztin/Facharzt für Zahn-, Mund- und Kieferheilkunde</xsl:when>
            <xsl:when test="$code='155'">Zahnärztin/Zahnarzt</xsl:when>
            <xsl:when test="$code='156'">Dentistin/Dentist</xsl:when>
            <xsl:when test="$code='200'">Psychotherapeutin/Psychotherapeut</xsl:when>
            <xsl:when test="$code='201'">Klinische Psychologin/Klinischer Psychologe</xsl:when>
            <xsl:when test="$code='202'">Gesundheitspsychologin/Gesundheitspsychologe</xsl:when>
            <xsl:when test="$code='203'">Musiktherapeutin/Musiktherapeut</xsl:when>
            <xsl:when test="$code='204'">Hebamme</xsl:when>
            <xsl:when test="$code='205'">Physiotherapeutin/Physiotherapeut</xsl:when>
            <xsl:when test="$code='206'">Biomedizinische Analytikerin/Biomedizinischer Analytiker</xsl:when>
            <xsl:when test="$code='207'">Radiologietechnologin/Radiologietechnologe</xsl:when>
            <xsl:when test="$code='208'">Diätologin/Diätologe</xsl:when>
            <xsl:when test="$code='209'">Ergotherapeutin/Ergotherapeut</xsl:when>
            <xsl:when test="$code='210'">Logopädin/Logopäde</xsl:when>
            <xsl:when test="$code='211'">Orthoptistin/Orthoptist</xsl:when>
            <xsl:when test="$code='212'">Diplomierte Gesundheits- und Krankenschwester/Diplomierter Gesundheits- und Krankenpfleger</xsl:when>
            <xsl:when test="$code='213'">Diplomierte Kinderkrankenschwester/Diplomierter Kinderkrankenpfleger</xsl:when>
            <xsl:when test="$code='214'">Diplomierte psychiatrische Gesundheits- und Krankenschwester/Diplomierter psychiatrischer Gesundheits- und Krankenpfleger</xsl:when>
            <xsl:when test="$code='215'">Heilmasseurin/Heilmasseur</xsl:when>
            <xsl:when test="$code='216'">Diplomierte Kardiotechnikerin/Diplomierter Kardiotechniker</xsl:when>
            <xsl:when test="$code='20'">Teil 2: Rollen für Organisationen</xsl:when>
            <xsl:when test="$code='300'">Allgemeine Krankenanstalt</xsl:when>
            <xsl:when test="$code='301'">Sonderkrankenanstalt</xsl:when>
            <xsl:when test="$code='302'">Pflegeanstalt</xsl:when>
            <xsl:when test="$code='303'">Sanatorium</xsl:when>
            <xsl:when test="$code='304'">Selbstständiges Ambulatorium</xsl:when>
            <xsl:when test="$code='305'">Pflegeeinrichtung</xsl:when>
            <xsl:when test="$code='306'">Mobile Pflege</xsl:when>
            <xsl:when test="$code='307'">Kuranstalt</xsl:when>
            <xsl:when test="$code='309'">Straf- und Maßnahmenvollzug</xsl:when>
            <xsl:when test="$code='310'">Untersuchungsanstalt</xsl:when>
            <xsl:when test="$code='311'">Öffentliche Apotheke</xsl:when>
            <xsl:when test="$code='312'">Gewebebank</xsl:when>
            <xsl:when test="$code='313'">Blutspendeeinrichtung</xsl:when>
            <xsl:when test="$code='314'">Augen- und Kontaktlinsenoptik</xsl:when>
            <xsl:when test="$code='315'">Hörgeräteakustik</xsl:when>
            <xsl:when test="$code='316'">Orthopädische Produkte</xsl:when>
            <xsl:when test="$code='317'">Zahntechnik</xsl:when>
            <xsl:when test="$code='318'">Rettungsdienst</xsl:when>
            <xsl:when test="$code='319'">Zahnärztliche Gruppenpraxis</xsl:when>
            <xsl:when test="$code='320'">Ärztliche Gruppenpraxis</xsl:when>
            <xsl:when test="$code='321'">Gewebeentnahmeeinrichtung</xsl:when>
            <xsl:when test="$code='322'">Arbeitsmedizinisches Zentrum</xsl:when>
            <xsl:when test="$code='400'">Gesundheitsmanagement</xsl:when>
            <xsl:when test="$code='401'">Öffentlicher Gesundheitsdienst</xsl:when>
            <xsl:when test="$code='403'">ELGA-Ombudsstelle</xsl:when>
            <xsl:when test="$code='404'">Widerspruchstelle</xsl:when>
            <xsl:when test="$code='405'">Patientenvertretung</xsl:when>
            <xsl:when test="$code='406'">Sozialversicherung</xsl:when>
            <xsl:when test="$code='407'">Krankenfürsorge</xsl:when>
            <xsl:when test="$code='408'">Gesundheitsversicherung</xsl:when>
            <xsl:when test="$code='500'">IKT-Gesundheitsservice</xsl:when>
            <xsl:when test="$code='501'">Verrechnungsservice</xsl:when>
            <xsl:otherwise>Fachrichtung unbekannt</xsl:otherwise>
        
        </xsl:choose>
    
    </xsl:template>
    



  
  <xsl:template name="documentstate">
    <xsl:if test="$isdeprecated=1">
      <div class="deprecated">
        STORNIERT
      </div>
    </xsl:if>
  </xsl:template>

  <!-- base64 encoded images which are used more often -->
  <xsl:template name="getWarningIcon">
    <img alt="" height="18" width="18" src="{$warningIcon}" />
  </xsl:template>

  <xsl:template name="getPatientLivingWillIcon">
    <img alt="" height="18" width="18" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAACXBIWXMAAC4jAAAuIwF4pT92AAAKsWlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNS42LWMxNDAgNzkuMTYwNDUxLCAyMDE3LzA1LzA2LTAxOjA4OjIxICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0RXZ0PSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VFdmVudCMiIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczpwaG90b3Nob3A9Imh0dHA6Ly9ucy5hZG9iZS5jb20vcGhvdG9zaG9wLzEuMC8iIHhtbG5zOnRpZmY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vdGlmZi8xLjAvIiB4bWxuczpleGlmPSJodHRwOi8vbnMuYWRvYmUuY29tL2V4aWYvMS4wLyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOCAoTWFjaW50b3NoKSIgeG1wOkNyZWF0ZURhdGU9IjIwMTgtMDctMjlUMTc6NDA6MTIrMDI6MDAiIHhtcDpNZXRhZGF0YURhdGU9IjIwMTgtMDgtMDJUMDQ6NDM6NDMrMDI6MDAiIHhtcDpNb2RpZnlEYXRlPSIyMDE4LTA4LTAyVDA0OjQzOjQzKzAyOjAwIiBkYzpmb3JtYXQ9ImltYWdlL3BuZyIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDphNjc3ZDc3MC03NGY0LTRjZGYtYjViNC01NGY0MDE5Y2FlMDYiIHhtcE1NOkRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDphYzllM2U2ZC0wYTI1LTJiNDMtODU4Mi05ZDIyZTkwOGVjMDEiIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo0MTEzMDRhNy0yNGMzLTRiZTUtYmJkNC02ZjAxM2MyOGYzNDkiIHBob3Rvc2hvcDpDb2xvck1vZGU9IjMiIHBob3Rvc2hvcDpJQ0NQcm9maWxlPSJzUkdCIElFQzYxOTY2LTIuMSIgdGlmZjpPcmllbnRhdGlvbj0iMSIgdGlmZjpYUmVzb2x1dGlvbj0iMzAwMDAwMC8xMDAwMCIgdGlmZjpZUmVzb2x1dGlvbj0iMzAwMDAwMC8xMDAwMCIgdGlmZjpSZXNvbHV0aW9uVW5pdD0iMiIgZXhpZjpDb2xvclNwYWNlPSIxIiBleGlmOlBpeGVsWERpbWVuc2lvbj0iNjQiIGV4aWY6UGl4ZWxZRGltZW5zaW9uPSI2NCI+IDx4bXBNTTpIaXN0b3J5PiA8cmRmOlNlcT4gPHJkZjpsaSBzdEV2dDphY3Rpb249ImNyZWF0ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6NDExMzA0YTctMjRjMy00YmU1LWJiZDQtNmYwMTNjMjhmMzQ5IiBzdEV2dDp3aGVuPSIyMDE4LTA3LTI5VDE3OjQwOjEyKzAyOjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOCAoTWFjaW50b3NoKSIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6ODA1YWFlMTktOWE5OC00YzFlLWE4YjMtM2FmNzI1MjJjNTAzIiBzdEV2dDp3aGVuPSIyMDE4LTA3LTI5VDE3OjQ2OjA0KzAyOjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOCAoTWFjaW50b3NoKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6ZjNiZjIwODUtOTUxNC00YTkyLThhNzEtNGJmNjNhOWZiODAzIiBzdEV2dDp3aGVuPSIyMDE4LTA4LTAyVDA0OjQzOjQzKzAyOjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOCAoTWFjaW50b3NoKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY29udmVydGVkIiBzdEV2dDpwYXJhbWV0ZXJzPSJmcm9tIGFwcGxpY2F0aW9uL3ZuZC5hZG9iZS5waG90b3Nob3AgdG8gaW1hZ2UvcG5nIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJkZXJpdmVkIiBzdEV2dDpwYXJhbWV0ZXJzPSJjb252ZXJ0ZWQgZnJvbSBhcHBsaWNhdGlvbi92bmQuYWRvYmUucGhvdG9zaG9wIHRvIGltYWdlL3BuZyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6YTY3N2Q3NzAtNzRmNC00Y2RmLWI1YjQtNTRmNDAxOWNhZTA2IiBzdEV2dDp3aGVuPSIyMDE4LTA4LTAyVDA0OjQzOjQzKzAyOjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOCAoTWFjaW50b3NoKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8L3JkZjpTZXE+IDwveG1wTU06SGlzdG9yeT4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6ZjNiZjIwODUtOTUxNC00YTkyLThhNzEtNGJmNjNhOWZiODAzIiBzdFJlZjpkb2N1bWVudElEPSJhZG9iZTpkb2NpZDpwaG90b3Nob3A6YTFhYzMwMmYtMWEyZS0yMTQ4LTkwZmQtMTUwNTY5M2E3YzRiIiBzdFJlZjpvcmlnaW5hbERvY3VtZW50SUQ9InhtcC5kaWQ6NDExMzA0YTctMjRjMy00YmU1LWJiZDQtNmYwMTNjMjhmMzQ5Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+hT/qlQAAAm9JREFUeNrt2stKw0AUBuDgpSpSiqDoQutG3Ln17lN4AbEPIMVLEYrg2idREbGiS7XPoEsVXYh4qVu1Ra3V1DNwAlpzTyaZiSfwUyiZpPNZO2cmo1SrVeU/RyEAAiAAAiAAAiAAAvj1ZsSOoAEaIVnIOeSD3d9DXiEnkAVIvQwAMUjeY6eNcoDXFxpglVPnPSEECXDJGcAVQpAAnxw6fOwVIUgAHn/xDsieFwTZARI4suTcIkQBQPGCEBUAdjRAdp0iRAlAwYJoxwlC1AA0hG27CFEEcIQQVQANYUunzSGkkwfAvGAAGsKGTrs8DwDVAoEHQC+kzSLtkP2admUeAFULhKcA5gJOEucBYIYwIhhCgheAGcIo5DkKAHZuYIQwBnlx8YHfIHeQd1kAzBDGHSCwTs9AmrBtMyQFeZQBwAqhaKPz3Qb/cklIQQYAM4QJSMmk3bTFOJ+SBUBDGNDpxLLB+SUb8/kWHNOlAMg4HBWubZbYBRl+AzIu6oIiLnRI/Q1Q8SvutiiasgCYE70OWNL50MMOKkI2CnQZdL4Hci9yJbioc86Qi3L4FkcD7QeR1QOzkAdRS2EVn9fVHoMe5wKsErzBV2HnAkadF3E26DsA63za5/WACuQUFzXW8fkie93E9ysiAaR9WhH6wqc9k5BWi2vG8bx9bBcqgB9rgmypqt/l9Vm7I5kBcl42OuBRZ/BcQAqAPp92vSRlBfB16w8BEICco4DUhVAYW2TcRtXmFkECXAgEcBXGw9GsQABrYQDEHFZqvJL/udYYxlbZFciZjw847KSM98zWLrPRZmnaLk8ABEAABEAABEAABPA33y0MBL4dj7CbAAAAAElFTkSuQmCC" />
  </xsl:template>

  <xsl:template name="getPatientGuardianIconTitle">
    <img alt="Symbol für gesetzlicher Vertreter" height="18" width="18" style="vertical-align: text-top" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAACXBIWXMAAC4jAAAuIwF4pT92AAAKsWlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNS42LWMxNDAgNzkuMTYwNDUxLCAyMDE3LzA1LzA2LTAxOjA4OjIxICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0RXZ0PSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VFdmVudCMiIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczpwaG90b3Nob3A9Imh0dHA6Ly9ucy5hZG9iZS5jb20vcGhvdG9zaG9wLzEuMC8iIHhtbG5zOnRpZmY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vdGlmZi8xLjAvIiB4bWxuczpleGlmPSJodHRwOi8vbnMuYWRvYmUuY29tL2V4aWYvMS4wLyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOCAoTWFjaW50b3NoKSIgeG1wOkNyZWF0ZURhdGU9IjIwMTgtMDctMjlUMTc6NDA6MTIrMDI6MDAiIHhtcDpNZXRhZGF0YURhdGU9IjIwMTgtMTAtMDdUMTk6NTQ6NTArMDI6MDAiIHhtcDpNb2RpZnlEYXRlPSIyMDE4LTEwLTA3VDE5OjU0OjUwKzAyOjAwIiBkYzpmb3JtYXQ9ImltYWdlL3BuZyIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpiMWNkNmZiNC0zMjgzLTQwNDAtOWVjZi03NzE3Mzk0OWE1ZGQiIHhtcE1NOkRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDozMGY3YWJmNi04MjZlLWMwNDQtYTMxNi1iMmM2YmM3ZGQ5ZjYiIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo0MTEzMDRhNy0yNGMzLTRiZTUtYmJkNC02ZjAxM2MyOGYzNDkiIHBob3Rvc2hvcDpDb2xvck1vZGU9IjMiIHBob3Rvc2hvcDpJQ0NQcm9maWxlPSJzUkdCIElFQzYxOTY2LTIuMSIgdGlmZjpPcmllbnRhdGlvbj0iMSIgdGlmZjpYUmVzb2x1dGlvbj0iMzAwMDAwMC8xMDAwMCIgdGlmZjpZUmVzb2x1dGlvbj0iMzAwMDAwMC8xMDAwMCIgdGlmZjpSZXNvbHV0aW9uVW5pdD0iMiIgZXhpZjpDb2xvclNwYWNlPSIxIiBleGlmOlBpeGVsWERpbWVuc2lvbj0iNjQiIGV4aWY6UGl4ZWxZRGltZW5zaW9uPSI2NCI+IDx4bXBNTTpIaXN0b3J5PiA8cmRmOlNlcT4gPHJkZjpsaSBzdEV2dDphY3Rpb249ImNyZWF0ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6NDExMzA0YTctMjRjMy00YmU1LWJiZDQtNmYwMTNjMjhmMzQ5IiBzdEV2dDp3aGVuPSIyMDE4LTA3LTI5VDE3OjQwOjEyKzAyOjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOCAoTWFjaW50b3NoKSIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6ODA1YWFlMTktOWE5OC00YzFlLWE4YjMtM2FmNzI1MjJjNTAzIiBzdEV2dDp3aGVuPSIyMDE4LTA3LTI5VDE3OjQ2OjA0KzAyOjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOCAoTWFjaW50b3NoKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6NDQ1ODU2MzMtMTU3NC00ZjIwLTlmNWQtYmFiZGZjOTA0YjkxIiBzdEV2dDp3aGVuPSIyMDE4LTEwLTA3VDE5OjU0OjUwKzAyOjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOCAoTWFjaW50b3NoKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY29udmVydGVkIiBzdEV2dDpwYXJhbWV0ZXJzPSJmcm9tIGFwcGxpY2F0aW9uL3ZuZC5hZG9iZS5waG90b3Nob3AgdG8gaW1hZ2UvcG5nIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJkZXJpdmVkIiBzdEV2dDpwYXJhbWV0ZXJzPSJjb252ZXJ0ZWQgZnJvbSBhcHBsaWNhdGlvbi92bmQuYWRvYmUucGhvdG9zaG9wIHRvIGltYWdlL3BuZyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6YjFjZDZmYjQtMzI4My00MDQwLTllY2YtNzcxNzM5NDlhNWRkIiBzdEV2dDp3aGVuPSIyMDE4LTEwLTA3VDE5OjU0OjUwKzAyOjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOCAoTWFjaW50b3NoKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8L3JkZjpTZXE+IDwveG1wTU06SGlzdG9yeT4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NDQ1ODU2MzMtMTU3NC00ZjIwLTlmNWQtYmFiZGZjOTA0YjkxIiBzdFJlZjpkb2N1bWVudElEPSJhZG9iZTpkb2NpZDpwaG90b3Nob3A6YTFhYzMwMmYtMWEyZS0yMTQ4LTkwZmQtMTUwNTY5M2E3YzRiIiBzdFJlZjpvcmlnaW5hbERvY3VtZW50SUQ9InhtcC5kaWQ6NDExMzA0YTctMjRjMy00YmU1LWJiZDQtNmYwMTNjMjhmMzQ5Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+FcDnAwAAA71JREFUeNrtm0loFEEUhr+omWBwS4zLQXE3YNDEBQ9eBReUSBARXEBEUPCiiIILYvAgkuSgeFBEXA6KuBxUFA+KN+OCiCAqMTpiFhDN5hITY8bLG2mKnp7u6eolnS54hJm8qur3TfXren/NkEqlGMxGDCAGEAOIAcQAgrwAly0qABLABuAK0AB0AZ3AW+ASUAUMiyqA9cBnIJXF3gOrIgMAGAqcthG40fqB40BeFACccBi80Y4NaACylM0CqwbmAqOA0cBi4GiGlbBaOwCfWzlwSwKqByosfDcCrxQIjZkSoxMwXgCoAGolqGagR/7WA3UmgVYB82yMu9FkJawLE4DpwA1ZntkS2U3xd9rU2+FyWAAsBzocJrIOYIXDeRYoY7wOA4DlQF+O2bwPqHQwV7HSvy1oADNz+ORV+w7MtjnfcKVvd9AA7roMPm33bM43R+mXDBLAfE3Bp22RjTkPK32uBQmgRjOAuizzlQF/lT6bgwTwVDOAZxZzzQIeKv4tkhMCA/BVMwCzjD4JOCjJTvXfpEMncAOgVzOAPmX8TgvfC7qEEjcAPmsG0GwYO8/C76JVDeAngMeaAdQbxp5s8v8WYKtuqSxMT4Faw9iV8l4n8ADYCYzwQit0A6BCM4CFyo5vpB9i6UDbCYYOwAwPaoFRUipPAYqA/DADAFimsRocB7QrPn9EEb4D7BeZLFQA0iVxu0s9IE+CtNO3AdhrlSeCUoSu21SEbpgoQtU5rKBvwHZgSBg1wcdAk2xjm+R1bQbxcx/wQ1ZREvgAfHKwqh4C48MCwEkbIvJ3gYVPviTbKqkYWzNASErRNKAA5NKKgQNyfqhCaAKmRR1Auk2VnKNCeAkUBAUgASwBdgFngEfAG0lWxpK2Xd5rFB3gNnAK2A0sBcY4mPOcCYQaPwEUyAHF9QzLMtf9wXPRAuycH1xU+vcCpX4AKAe+aK4JVPsLXBUF2qq9UMtmPwAUeRy80X4BOyyuZYvi3wOU+HELdPkIIQUcsriWJ4rvNq8BjPQ5+PROclWG69mjnh16DWBtAACsjsbL1LNDLwEkJFOnArI1JtdUqPj89ArAMOB8AEF/EnlsunwApoWg0XQAKDVMlgBWmiQbP+y+iCVZpQDdAN7Js7jNhfDh1j5K0UQQAH4HeJ//f5w5UcN0A0iFwCYOZgD9bjZmUVkBYx0A6IgigJM5AmiNCoBuB0djPYZ+Z6MCIP1t8UIHSTAJTIgSgHRJfCTLamgQ9bkk6ppgqE6GogEg/tFUDCAGEAOIAQwy+wcuhHvnbACgGQAAAABJRU5ErkJggg==" />
  </xsl:template>

  <xsl:variable name="warningIcon">data:image/png;base64,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</xsl:variable>

  <xsl:variable name="warningIconHover" select="$warningIcon" />

  <xsl:variable name="collapseIconHover">data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIzLjAuMywgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IgoJIHZpZXdCb3g9IjAgMCA0MCAyMCIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDAgMjA7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbC1ydWxlOmV2ZW5vZGQ7Y2xpcC1ydWxlOmV2ZW5vZGQ7fQo8L3N0eWxlPgo8cGF0aCBjbGFzcz0ic3QwIiBkPSJNNi43LDIwTDIwLDYuN0wzMy4zLDIwSDQwTDIwLDBMMCwyMEg2Ljd6Ii8+Cjwvc3ZnPgo=</xsl:variable>

  <xsl:variable name="collapseIcon">data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIzLjAuMywgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IgoJIHZpZXdCb3g9IjAgMCA0MCAyMCIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDAgMjA7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbC1ydWxlOmV2ZW5vZGQ7Y2xpcC1ydWxlOmV2ZW5vZGQ7ZmlsbDojMDU1MzgyO30KPC9zdHlsZT4KPHBhdGggY2xhc3M9InN0MCIgZD0iTTYuNywyMEwyMCw2LjdMMzMuMywyMEg0MEwyMCwwTDAsMjBMNi43LDIweiIvPgo8L3N2Zz4K</xsl:variable>

  <xsl:variable name="expandIcon">data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIzLjAuMywgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IgoJIHZpZXdCb3g9IjAgMCA0MCAyMCIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDAgMjA7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbC1ydWxlOmV2ZW5vZGQ7Y2xpcC1ydWxlOmV2ZW5vZGQ7ZmlsbDojMDU1MzgyO30KPC9zdHlsZT4KPHBhdGggY2xhc3M9InN0MCIgZD0iTTYuNywwTDIwLDEzLjNMMzMuMywwSDQwTDIwLDIwTDAsMEw2LjcsMHoiLz4KPC9zdmc+Cg==</xsl:variable>

  <xsl:variable name="expandIconHover">data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIzLjAuMywgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IgoJIHZpZXdCb3g9IjAgMCA0MCAyMCIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDAgMjA7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbC1ydWxlOmV2ZW5vZGQ7Y2xpcC1ydWxlOmV2ZW5vZGQ7fQo8L3N0eWxlPgo8cGF0aCBjbGFzcz0ic3QwIiBkPSJNNi43LDBMMjAsMTMuM0wzMy4zLDBINDBMMjAsMjBMMCwwSDYuN3oiLz4KPC9zdmc+Cg==</xsl:variable>

  <xsl:variable name="toTopIcon">data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC8AAAArCAYAAAGfseEsAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAKT2lDQ1BQaG90b3Nob3AgSUNDIHByb2ZpbGUAAHjanVNnVFPpFj333vRCS4iAlEtvUhUIIFJCi4AUkSYqIQkQSoghodkVUcERRUUEG8igiAOOjoCMFVEsDIoK2AfkIaKOg6OIisr74Xuja9a89+bN/rXXPues852zzwfACAyWSDNRNYAMqUIeEeCDx8TG4eQuQIEKJHAAEAizZCFz/SMBAPh+PDwrIsAHvgABeNMLCADATZvAMByH/w/qQplcAYCEAcB0kThLCIAUAEB6jkKmAEBGAYCdmCZTAKAEAGDLY2LjAFAtAGAnf+bTAICd+Jl7AQBblCEVAaCRACATZYhEAGg7AKzPVopFAFgwABRmS8Q5ANgtADBJV2ZIALC3AMDOEAuyAAgMADBRiIUpAAR7AGDIIyN4AISZABRG8lc88SuuEOcqAAB4mbI8uSQ5RYFbCC1xB1dXLh4ozkkXKxQ2YQJhmkAuwnmZGTKBNA/g88wAAKCRFRHgg/P9eM4Ors7ONo62Dl8t6r8G/yJiYuP+5c+rcEAAAOF0ftH+LC+zGoA7BoBt/qIl7gRoXgugdfeLZrIPQLUAoOnaV/Nw+H48PEWhkLnZ2eXk5NhKxEJbYcpXff5nwl/AV/1s+X48/Pf14L7iJIEyXYFHBPjgwsz0TKUcz5IJhGLc5o9H/LcL//wd0yLESWK5WCoU41EScY5EmozzMqUiiUKSKcUl0v9k4t8s+wM+3zUAsGo+AXuRLahdYwP2SycQWHTA4vcAAPK7b8HUKAgDgGiD4c93/+8//UegJQCAZkmScQAAXkQkLlTKsz/HCAAARKCBKrBBG/TBGCzABhzBBdzBC/xgNoRCJMTCQhBCCmSAHHJgKayCQiiGzbAdKmAv1EAdNMBRaIaTcA4uwlW4Dj1wD/phCJ7BKLyBCQRByAgTYSHaiAFiilgjjggXmYX4IcFIBBKLJCDJiBRRIkuRNUgxUopUIFVIHfI9cgI5h1xGupE7yAAygvyGvEcxlIGyUT3UDLVDuag3GoRGogvQZHQxmo8WoJvQcrQaPYw2oefQq2gP2o8+Q8cwwOgYBzPEbDAuxsNCsTgsCZNjy7EirAyrxhqwVqwDu4n1Y8+xdwQSgUXACTYEd0IgYR5BSFhMWE7YSKggHCQ0EdoJNwkDhFHCJyKTqEu0JroR+cQYYjIxh1hILCPWEo8TLxB7iEPENyQSiUMyJ7mQAkmxpFTSEtJG0m5SI+ksqZs0SBojk8naZGuyBzmULCAryIXkneTD5DPkG+Qh8lsKnWJAcaT4U+IoUspqShnlEOU05QZlmDJBVaOaUt2ooVQRNY9aQq2htlKvUYeoEzR1mjnNgxZJS6WtopXTGmgXaPdpr+h0uhHdlR5Ol9BX0svpR+iX6AP0dwwNhhWDx4hnKBmbGAcYZxl3GK+YTKYZ04sZx1QwNzHrmOeZD5lvVVgqtip8FZHKCpVKlSaVGyovVKmqpqreqgtV81XLVI+pXlN9rkZVM1PjqQnUlqtVqp1Q61MbU2epO6iHqmeob1Q/pH5Z/YkGWcNMw09DpFGgsV/jvMYgC2MZs3gsIWsNq4Z1gTXEJrHN2Xx2KruY/R27iz2qqaE5QzNKM1ezUvOUZj8H45hx+Jx0TgnnKKeX836K3hTvKeIpG6Y0TLkxZVxrqpaXllirSKtRq0frvTau7aedpr1Fu1n7gQ5Bx0onXCdHZ4/OBZ3nU9lT3acKpxZNPTr1ri6qa6UbobtEd79up+6Ynr5egJ5Mb6feeb3n+hx9L/1U/W36p/VHDFgGswwkBtsMzhg8xTVxbzwdL8fb8VFDXcNAQ6VhlWGX4YSRudE8o9VGjUYPjGnGXOMk423GbcajJgYmISZLTepN7ppSTbmmKaY7TDtMx83MzaLN1pk1mz0x1zLnm+eb15vft2BaeFostqi2uGVJsuRaplnutrxuhVo5WaVYVVpds0atna0l1rutu6cRp7lOk06rntZnw7Dxtsm2qbcZsOXYBtuutm22fWFnYhdnt8Wuw+6TvZN9un2N/T0HDYfZDqsdWh1+c7RyFDpWOt6azpzuP33F9JbpL2dYzxDP2DPjthPLKcRpnVOb00dnF2e5c4PziIuJS4LLLpc+Lpsbxt3IveRKdPVxXeF60vWdm7Obwu2o26/uNu5p7ofcn8w0nymeWTNz0MPIQ+BR5dE/C5+VMGvfrH5PQ0+BZ7XnIy9jL5FXrdewt6V3qvdh7xc+9j5yn+M+4zw33jLeWV/MN8C3yLfLT8Nvnl+F30N/I/9k/3r/0QCngCUBZwOJgUGBWwL7+Hp8Ib+OPzrbZfay2e1BjKC5QRVBj4KtguXBrSFoyOyQrSH355jOkc5pDoVQfujW0Adh5mGLw34MJ4WHhVeGP45wiFga0TGXNXfR3ENz30T6RJZE3ptnMU85ry1KNSo+qi5qPNo3ujS6P8YuZlnM1VidWElsSxw5LiquNm5svt/87fOH4p3iC+N7F5gvyF1weaHOwvSFpxapLhIsOpZATIhOOJTwQRAqqBaMJfITdyWOCnnCHcJnIi/RNtGI2ENcKh5O8kgqTXqS7JG8NXkkxTOlLOW5hCepkLxMDUzdmzqeFpp2IG0yPTq9MYOSkZBxQqohTZO2Z+pn5mZ2y6xlhbL+xW6Lty8elQfJa7OQrAVZLQq2QqboVFoo1yoHsmdlV2a/zYnKOZarnivN7cyzytuQN5zvn//tEsIS4ZK2pYZLVy0dWOa9rGo5sjxxedsK4xUFK4ZWBqw8uIq2Km3VT6vtV5eufr0mek1rgV7ByoLBtQFr6wtVCuWFfevc1+1dT1gvWd+1YfqGnRs+FYmKrhTbF5cVf9go3HjlG4dvyr+Z3JS0qavEuWTPZtJm6ebeLZ5bDpaql+aXDm4N2dq0Dd9WtO319kXbL5fNKNu7g7ZDuaO/PLi8ZafJzs07P1SkVPRU+lQ27tLdtWHX+G7R7ht7vPY07NXbW7z3/T7JvttVAVVN1WbVZftJ+7P3P66Jqun4lvttXa1ObXHtxwPSA/0HIw6217nU1R3SPVRSj9Yr60cOxx++/p3vdy0NNg1VjZzG4iNwRHnk6fcJ3/ceDTradox7rOEH0x92HWcdL2pCmvKaRptTmvtbYlu6T8w+0dbq3nr8R9sfD5w0PFl5SvNUyWna6YLTk2fyz4ydlZ19fi753GDborZ752PO32oPb++6EHTh0kX/i+c7vDvOXPK4dPKy2+UTV7hXmq86X23qdOo8/pPTT8e7nLuarrlca7nuer21e2b36RueN87d9L158Rb/1tWeOT3dvfN6b/fF9/XfFt1+cif9zsu72Xcn7q28T7xf9EDtQdlD3YfVP1v+3Njv3H9qwHeg89HcR/cGhYPP/pH1jw9DBY+Zj8uGDYbrnjg+OTniP3L96fynQ89kzyaeF/6i/suuFxYvfvjV69fO0ZjRoZfyl5O/bXyl/erA6xmv28bCxh6+yXgzMV70VvvtwXfcdx3vo98PT+R8IH8o/2j5sfVT0Kf7kxmTk/8EA5jz/GMzLdsAAAAgY0hSTQAAeiUAAICDAAD5/wAAgOkAAHUwAADqYAAAOpgAABdvkl/FRgAABn1JREFUeNpki7EJwDAMBH/dQJZxZanTPtYmrl4LfKoo4BQHB8cBACLiPoGZXSRVVQ1JdSCpMYZe75CZcnettf7HnPM7AGDvrZMHAAD//2JYuHBhOIaLGBgYGLC56M2bN/8ZYGbCBFEkrl69+n/GjBn/t2/f/v/Tp0+oOqZPn/7/+PHjCB3Pnj3DcNH69ev/AgAAAP//jI+hEcAwDAOzZJfoNmG2k008QLJJiImJqYLaq0lb8ER3r5NK7/24rC/WWvm4qoKZE0SUxz4Fd8cYA601iAhqrYiId8Hd7/Y5Z8rNDIWZz78fzAwbAAD//4yTsQ0DIQxFXWcDVrtBMgINDZACAUtQMwISPQMgRE1BFcmpckIHnK54lfVkw7dhtyBXrLUHAADknPFpBynlG2qtOMa34l/nnMtTaK1NX6q1PtOchBFK6XKkSei9I2MMjTForcUQwl5orWEIAZ1zZ8IxRkwp3Y80rsf44K3gvUelFCqlngl3CCE+4Jz7rq7xSikFCSGvHwAAAP//rJUxboQwEEUn0da5EvfIDfYK0SoVDTIWJlBg4AYUQGOu4J6CFoEoqI3AWimaNIkUtGYVJ7H0Ghfz5Bn7GwDgoaqq6ziOOM/zvzBNE5Zl+e44zgmSJDnbHMPmYgdBEB0K2rZFIQQ2TXMXIQR2XWcUMMbeDgXLsuC6rju01qi1vtlXStkLvlBKYd/36Lou5nmOWZYhpRSHYTAW/rFAa41FUWAYhsg5xzRNd3DOMY5jrOsat22zF3x//qbwlFKiUuomIqxbdJTOUkpj4V8JTAO/1/+dIIqiZ5tYtfmkfN9/gc/1SAi5UEoZIeRPUEqZ53mvAPAEAKcPZsteRWEgisK32gfxPbbcx7HZQthq0S6QBES8/ptKbP1B0yhWVhIGH8MhgoUxMzZni2WXNYmJRostTpWZD+aSc84lIiJmLjiOU7ylTbLkOE7Rtu0CERENBoP3zWYDKeVTMkhKCSEE+v3+J41GIyilcDgcnjb3MAwxmUxArutedPozdDwesVgsrsOvdWxa794ED4IA0+k0MzVd18VsNovdT4UrpWDbdmLhR8XMsczJHEvUnefzGb7vQ2sd+3b3zKMvmc/nMAwDy+UyMR1zwbXW6PV6YGa02200m00Mh0MopR6D/12BohnPzAiCIB9cSolKpYJut5sIb7VasCwLu93ufvhqtYLneRBCgJljm7cQAp7nYb1e5zeR1hqWZV3A6/U6wjDMZ6Lon5IET7vzP+Baa5im+buhNhoN1Gq158CT3Jp1/i547sgdj8epbsuj0+n0XRadTudDCIH9fo9b9vQs+b6P7XaLarVqEBFRuVx+NU2z+mj7/2wApVLpjYhevtgxm9Y0oigM30VXbX9Bd130NxTc9ee03XUZNxWMg2j8mBnhyijJZnBwpwhRJyK6EAkqcRGyiDikH2AkIZK5E++I+HY1U0pNtfUDA128zGYuPFzOPec9LyGEkGQy+VxV1U/ZbNbI5/PQdR3lcnlnpOs68vk8NE27Ojo62pNl+SUhhBBRFF+rqnrVbrdxd3c316LvgpyO0+12kclkvkWj0bcklUp9KBaLuL6+XnvVr1uWZeH29haVSgWiKMYIpfT98fExBoPBzsMzxnBzc4OTk5OfS8Gy8KPRCIwxcM4xHo/XJs45GGMLves/wzsTsFAowOv1IhAIQBCElbW/vw+/349arQbbtjd384wxXF5eotlsotVq/VGdTgdnZ2dot9sL/z09PYVhGGCMbQ5+GTNv2zY456jX65AkCY1Gwy2NvzX/a4d/TJPJBMPhEJqmwe/3Q5ZlpNNpJBIJRCIR5HI5DIfDhaWxNXjGGGzbxvn5OSRJgiAIoJS62a0jRVGQTCYRjUaRTqdxcXHhPtKtw3POYZomSqUSBEFALBaba8QfkyRJiMfjqFaruL+/X9r4rNRtLMtCv9/H4eGhWxqKooBSCkrpL5vDPDnwlFJ3fTk4OICmaTAMw02UNnbzpmm6/dkZ3bPZDNVqFZFIxAWbp0QigVarhel06p53vovCpI09WM45dF3/bZeYB99sNvHw8LBUd/kPvwx8uVxGOBx263+eZFnePXjGGHq93sLJ60zSZep7q0NqlRhtFfiPT8XPO/C6riMej8dIMBh8o6rq106n48agjDFYlrUzcnJ60zTR7Xahqup3n8/3jhBCSCgUeqEoyucnsMN+kSQp6PF4XhFCnv0YAFuCQPLuD5hKAAAAAElFTkSuQmCC</xsl:variable>

  <xsl:variable name="toTopIconHover">data:image/png;base64,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</xsl:variable>

  <xsl:template name="uriDecode">
    <xsl:param name="uri" />
    
    <xsl:variable name="quot">"</xsl:variable>
    <xsl:variable name="apos">'</xsl:variable>

    <xsl:variable name="decodeP20">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$uri" />
        <xsl:with-param name="replace" select="'%20'" />
        <xsl:with-param name="by" select="' '" />
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="decodeP21">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP20" />
        <xsl:with-param name="replace" select="'%21'" />
        <xsl:with-param name="by" select="'!'" />
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="decodeP22">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP21" />
        <xsl:with-param name="replace" select="'%22'" />
        <xsl:with-param name="by" select="$quot" />
      </xsl:call-template>
    </xsl:variable>    

    <xsl:variable name="decodeP23">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP22" />
        <xsl:with-param name="replace" select="'%23'" />
        <xsl:with-param name="by" select="'#'" />
      </xsl:call-template>
    </xsl:variable>     

    <xsl:variable name="decodeP24">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP23" />
        <xsl:with-param name="replace" select="'%24'" />
        <xsl:with-param name="by" select="'$'" />
      </xsl:call-template>
    </xsl:variable>     

    <xsl:variable name="decodeP25">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP24" />
        <xsl:with-param name="replace" select="'%25'" />
        <xsl:with-param name="by" select="'%'" />
      </xsl:call-template>
    </xsl:variable>     

    <xsl:variable name="decodeP26">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP25" />
        <xsl:with-param name="replace" select="'%26'" />
        <xsl:with-param name="by" select="'&amp;'" />
      </xsl:call-template>
    </xsl:variable>    

    <xsl:variable name="decodeP27">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP26" />
        <xsl:with-param name="replace" select="'%27'" />
        <xsl:with-param name="by" select="$apos" />
      </xsl:call-template>
    </xsl:variable>    

    <xsl:variable name="decodeP28">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP27" />
        <xsl:with-param name="replace" select="'%28'" />
        <xsl:with-param name="by" select="'('" />
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="decodeP29">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP28" />
        <xsl:with-param name="replace" select="'%29'" />
        <xsl:with-param name="by" select="')'" />
      </xsl:call-template>
    </xsl:variable>    

    <xsl:variable name="decodeP2A">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP29" />
        <xsl:with-param name="replace" select="'%2A'" />
        <xsl:with-param name="by" select="'*'" />
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="decodeP2B">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP2A" />
        <xsl:with-param name="replace" select="'%2B'" />
        <xsl:with-param name="by" select="'+'" />
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="decodeP2C">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP2B" />
        <xsl:with-param name="replace" select="'%2C'" />
        <xsl:with-param name="by" select="','" />
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="decodeP2F">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP2C" />
        <xsl:with-param name="replace" select="'%2F'" />
        <xsl:with-param name="by" select="'/'" />
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="decodeP3A">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP2F" />
        <xsl:with-param name="replace" select="'%3A'" />
        <xsl:with-param name="by" select="':'" />
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="decodeP3B">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP3A" />
        <xsl:with-param name="replace" select="'%3B'" />
        <xsl:with-param name="by" select="';'" />
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="decodeP3D">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP3B" />
        <xsl:with-param name="replace" select="'%3D'" />
        <xsl:with-param name="by" select="'='" />
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="decodeP3F">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP3D" />
        <xsl:with-param name="replace" select="'%3F'" />
        <xsl:with-param name="by" select="'?'" />
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="decodeP40">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP3F" />
        <xsl:with-param name="replace" select="'%40'" />
        <xsl:with-param name="by" select="'@'" />
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="decodeP5B">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP40" />
        <xsl:with-param name="replace" select="'%5B'" />
        <xsl:with-param name="by" select="'['" />
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="decodeP5D">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP5B" />
        <xsl:with-param name="replace" select="'%5D'" />
        <xsl:with-param name="by" select="']'" />
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="decodePC3P84">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodeP5D" />
        <xsl:with-param name="replace" select="'%C3%84'" />
        <xsl:with-param name="by" select="'Ä'" />
      </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="decodePC3P96">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodePC3P84" />
        <xsl:with-param name="replace" select="'%C3%96'" />
        <xsl:with-param name="by" select="'Ö'" />
      </xsl:call-template>
    </xsl:variable>    

    <xsl:variable name="decodePC3P9C">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodePC3P96" />
        <xsl:with-param name="replace" select="'%C3%9C'" />
        <xsl:with-param name="by" select="'Ü'" />
      </xsl:call-template>
    </xsl:variable> 

    <xsl:variable name="decodePC3PA4">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodePC3P9C" />
        <xsl:with-param name="replace" select="'%C3%A4'" />
        <xsl:with-param name="by" select="'ä'" />
      </xsl:call-template>
    </xsl:variable>     

    <xsl:variable name="decodePC3PB6">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodePC3PA4" />
        <xsl:with-param name="replace" select="'%C3%B6'" />
        <xsl:with-param name="by" select="'ö'" />
      </xsl:call-template>
    </xsl:variable>     

    <xsl:variable name="decodePC3PBC">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodePC3PB6" />
        <xsl:with-param name="replace" select="'%C3%BC'" />
        <xsl:with-param name="by" select="'ü'" />
      </xsl:call-template>
    </xsl:variable>      

    <xsl:variable name="decodePC3P9F">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodePC3PBC" />
        <xsl:with-param name="replace" select="'%C3%9F'" />
        <xsl:with-param name="by" select="'&#223;'" />
      </xsl:call-template>
    </xsl:variable>   
    
    <xsl:variable name="decodePC4">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodePC3P9F" />
        <xsl:with-param name="replace" select="'%C4'" />
        <xsl:with-param name="by" select="'Ä'" />
      </xsl:call-template>
    </xsl:variable>    

    <xsl:variable name="decodePD6">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodePC4" />
        <xsl:with-param name="replace" select="'%D6'" />
        <xsl:with-param name="by" select="'Ö'" />
      </xsl:call-template>
    </xsl:variable>   

    <xsl:variable name="decodePDC">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodePD6" />
        <xsl:with-param name="replace" select="'%DC'" />
        <xsl:with-param name="by" select="'Ü'" />
      </xsl:call-template>
    </xsl:variable> 
    
    <xsl:variable name="decodePE4">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodePDC" />
        <xsl:with-param name="replace" select="'%E4'" />
        <xsl:with-param name="by" select="'ä'" />
      </xsl:call-template>
    </xsl:variable>     

    <xsl:variable name="decodePF6">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodePE4" />
        <xsl:with-param name="replace" select="'%F6'" />
        <xsl:with-param name="by" select="'ö'" />
      </xsl:call-template>
    </xsl:variable>     

    <xsl:variable name="decodePFC">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodePF6" />
        <xsl:with-param name="replace" select="'%FC'" />
        <xsl:with-param name="by" select="'ü'" />
      </xsl:call-template>
    </xsl:variable>     

    <xsl:variable name="decodePDF">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="$decodePFC" />
        <xsl:with-param name="replace" select="'%DF'" />
        <xsl:with-param name="by" select="'&#223;'" />
      </xsl:call-template>
    </xsl:variable> 
                    
    <xsl:value-of select="$decodePDF" />
        
  </xsl:template>
  
  <!-- Source: http://geekswithblogs.net/Erik/archive/2008/04/01/120915.aspx -->
  <xsl:template name="string-replace-all">
    <xsl:param name="text" />
    <xsl:param name="replace" />
    <xsl:param name="by" />
    <xsl:choose>
      <xsl:when test="contains($text, $replace)">
        <xsl:value-of select="substring-before($text,$replace)" />
        <xsl:value-of select="$by" />
        <xsl:call-template name="string-replace-all">
          <xsl:with-param name="text" select="substring-after($text,$replace)" />
          <xsl:with-param name="replace" select="$replace" />
          <xsl:with-param name="by" select="$by" />
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$text" />
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
