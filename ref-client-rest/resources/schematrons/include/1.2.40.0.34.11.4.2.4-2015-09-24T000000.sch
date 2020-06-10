<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.4.2.4
Name: Überweisungsgrund
Description: Der Grund für eine Gesundheitsdienstleistung. Enthält eine narrative Beschreibung des Grundes für den Auftrag (Beschreibung aus der Sicht des Gesundheitsdiensteanbieters) und/oder die eigene Beschreibung des Patienten (z.B. Hauptsymptom des Patienten)
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.4.2.4-2015-09-24T000000">
   <title>Überweisungsgrund</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]]
Item: (Ueberweisungsgrund)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]
Item: (Ueberweisungsgrund)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]"
         id="d20e38179-false-d299233e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.4-2015-09-24T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(Ueberweisungsgrund): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.4-2015-09-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']) &gt;= 1">(Ueberweisungsgrund): Element hl7:templateId[@root = '1.2.40.0.34.11.4.2.4'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.4-2015-09-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']) &lt;= 1">(Ueberweisungsgrund): Element hl7:templateId[@root = '1.2.40.0.34.11.4.2.4'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.4-2015-09-24T000000.html"
              test="count(hl7:code[(@code = '46239-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Ueberweisungsgrund): Element hl7:code[(@code = '46239-0' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.4-2015-09-24T000000.html"
              test="count(hl7:code[(@code = '46239-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Ueberweisungsgrund): Element hl7:code[(@code = '46239-0' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.4-2015-09-24T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Ueberweisungsgrund): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.4-2015-09-24T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Ueberweisungsgrund): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.4-2015-09-24T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Ueberweisungsgrund): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.4-2015-09-24T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Ueberweisungsgrund): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]/hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']
Item: (Ueberweisungsgrund)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]/hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']"
         id="d20e38183-false-d299280e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.4-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Ueberweisungsgrund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.4-2015-09-24T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.4.2.4')">(Ueberweisungsgrund): Der Wert von root MUSS '1.2.40.0.34.11.4.2.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]/hl7:code[(@code = '46239-0' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Ueberweisungsgrund)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]/hl7:code[(@code = '46239-0' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e38188-false-d299295e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.4-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Ueberweisungsgrund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.4-2015-09-24T000000.html"
              test="@nullFlavor or (@code='46239-0' and @codeSystem='2.16.840.1.113883.6.1')">(Ueberweisungsgrund): Der Elementinhalt MUSS einer von 'code '46239-0' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]/hl7:title[not(@nullFlavor)]
Item: (Ueberweisungsgrund)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]/hl7:title[not(@nullFlavor)]"
         id="d20e38193-false-d299311e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.4-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Ueberweisungsgrund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.4-2015-09-24T000000.html"
              test="text()='Überweisungsgrund'">(Ueberweisungsgrund): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Überweisungsgrund'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]/hl7:text[not(@nullFlavor)]
Item: (Ueberweisungsgrund)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.4']]/hl7:text[not(@nullFlavor)]"
         id="d20e38199-false-d299325e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.4-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Ueberweisungsgrund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
