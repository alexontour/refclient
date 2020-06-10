<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.27
Name: Outcome Measurement
Description: Das Outcome Measurement oder die medizinische Ergebnis- Messung erfolgt mittels (indikationsspezifischer) Scores und Lebensqualitätsfragebögen zu Beginn und vor Ende des Reha- Aufenthaltes und unterstützt die objektive Dokumentation der Reha-Ziele-Erreichung.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.27-2017-02-20T000000">
   <title>Outcome Measurement</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.27
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]]
Item: (OutcomeMeasurement)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.27
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]
Item: (OutcomeMeasurement)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]"
         id="d20e12520-false-d193831e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.27-2017-02-20T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']) &gt;= 1">(OutcomeMeasurement): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.27'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.27-2017-02-20T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']) &lt;= 1">(OutcomeMeasurement): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.27'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.27-2017-02-20T000000.html"
              test="count(hl7:code[(@code = 'OUTCOMEMEAS' and @codeSystem = '1.2.40.0.34.5.40')]) &gt;= 1">(OutcomeMeasurement): Element hl7:code[(@code = 'OUTCOMEMEAS' and @codeSystem = '1.2.40.0.34.5.40')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.27-2017-02-20T000000.html"
              test="count(hl7:code[(@code = 'OUTCOMEMEAS' and @codeSystem = '1.2.40.0.34.5.40')]) &lt;= 1">(OutcomeMeasurement): Element hl7:code[(@code = 'OUTCOMEMEAS' and @codeSystem = '1.2.40.0.34.5.40')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.27-2017-02-20T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(OutcomeMeasurement): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.27-2017-02-20T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(OutcomeMeasurement): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.27-2017-02-20T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(OutcomeMeasurement): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.27-2017-02-20T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(OutcomeMeasurement): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.27
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']
Item: (OutcomeMeasurement)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']"
         id="d20e12522-false-d193881e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.27-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OutcomeMeasurement): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.27-2017-02-20T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.27')">(OutcomeMeasurement): Der Wert von root MUSS '1.2.40.0.34.11.2.2.27' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.27
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]/hl7:code[(@code = 'OUTCOMEMEAS' and @codeSystem = '1.2.40.0.34.5.40')]
Item: (OutcomeMeasurement)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]/hl7:code[(@code = 'OUTCOMEMEAS' and @codeSystem = '1.2.40.0.34.5.40')]"
         id="d20e12527-false-d193896e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.27-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OutcomeMeasurement): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.27-2017-02-20T000000.html"
              test="@nullFlavor or (@code='OUTCOMEMEAS' and @codeSystem='1.2.40.0.34.5.40')">(OutcomeMeasurement): Der Elementinhalt MUSS einer von 'code 'OUTCOMEMEAS' codeSystem '1.2.40.0.34.5.40'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.27
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]/hl7:title[not(@nullFlavor)]
Item: (OutcomeMeasurement)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]/hl7:title[not(@nullFlavor)]"
         id="d20e12537-false-d193912e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.27-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OutcomeMeasurement): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.27-2017-02-20T000000.html"
              test="text()='Outcome Measurement' or text()='Rehabilitation - Ergebnismessung'">(OutcomeMeasurement): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Outcome Measurement' oder 'Rehabilitation - Ergebnismessung'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.27
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]/hl7:text[not(@nullFlavor)]
Item: (OutcomeMeasurement)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]/hl7:text[not(@nullFlavor)]"
         id="d20e12546-false-d193928e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.27-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OutcomeMeasurement): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.27
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.27']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]
Item: (OutcomeMeasurement)
--></pattern>
