<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.5.2.5
Name: Aktuelle Untersuchung
Description: Kurzbeschreibung sämtlicher zur Erstellung des Befundes angewandten Techniken, Eingriffe oder sonstige Maßnahmen sowie Parameter zur Dokumentation der Patientendosis oder auch Kontrastmittelgabe (Präparat und Menge).
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.5.2.5-2019-07-30T142246">
   <title>Aktuelle Untersuchung</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]]
Item: (AktuelleUntersuchung)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]
Item: (AktuelleUntersuchung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]"
         id="d20e42253-false-d341302e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.5-2019-07-30T142246.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(AktuelleUntersuchung): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.5-2019-07-30T142246.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']) &gt;= 1">(AktuelleUntersuchung): Element hl7:templateId[@root = '1.2.40.0.34.11.5.2.5'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.5-2019-07-30T142246.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']) &lt;= 1">(AktuelleUntersuchung): Element hl7:templateId[@root = '1.2.40.0.34.11.5.2.5'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.5-2019-07-30T142246.html"
              test="count(hl7:code[(@code = '55111-9' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(AktuelleUntersuchung): Element hl7:code[(@code = '55111-9' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.5-2019-07-30T142246.html"
              test="count(hl7:code[(@code = '55111-9' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(AktuelleUntersuchung): Element hl7:code[(@code = '55111-9' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.5-2019-07-30T142246.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(AktuelleUntersuchung): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.5-2019-07-30T142246.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(AktuelleUntersuchung): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.5-2019-07-30T142246.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(AktuelleUntersuchung): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.5-2019-07-30T142246.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(AktuelleUntersuchung): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]/hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']
Item: (AktuelleUntersuchung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]/hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']"
         id="d20e42257-false-d341356e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.5-2019-07-30T142246.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AktuelleUntersuchung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.5-2019-07-30T142246.html"
              test="string(@root) = ('1.2.40.0.34.11.5.2.5')">(AktuelleUntersuchung): Der Wert von root MUSS '1.2.40.0.34.11.5.2.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]/hl7:code[(@code = '55111-9' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (AktuelleUntersuchung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]/hl7:code[(@code = '55111-9' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e42262-false-d341371e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.5-2019-07-30T142246.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AktuelleUntersuchung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.5-2019-07-30T142246.html"
              test="@nullFlavor or (@code='55111-9' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Current imaging procedure descriptions' and @codeSystemName='LOINC')">(AktuelleUntersuchung): Der Elementinhalt MUSS einer von 'code '55111-9' codeSystem '2.16.840.1.113883.6.1' displayName='Current imaging procedure descriptions' codeSystemName='LOINC'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]/hl7:title[not(@nullFlavor)]
Item: (AktuelleUntersuchung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]/hl7:title[not(@nullFlavor)]"
         id="d20e42267-false-d341387e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.5-2019-07-30T142246.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AktuelleUntersuchung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.5-2019-07-30T142246.html"
              test="text()='Aktuelle Untersuchung'">(AktuelleUntersuchung): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Aktuelle Untersuchung'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]/hl7:text[not(@nullFlavor)]
Item: (AktuelleUntersuchung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]/hl7:text[not(@nullFlavor)]"
         id="d20e42273-false-d341401e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.5-2019-07-30T142246.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AktuelleUntersuchung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]/hl7:entry[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]
Item: (AktuelleUntersuchung)
--></pattern>
