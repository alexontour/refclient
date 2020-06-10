<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.10.20.6.1.1
Name: DICOM Object Catalog Sektion Allgemein
Description: DICOM Object Catalog section. Muss angeführt werden wenn das Dokument Referenzen auf DICOM Bilder aufweist. Des Weiteren muss diese Sektion die erste Sektion des Dokuments sein.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.10.20.6.1.1-2012-01-12T000000">
   <title>DICOM Object Catalog Sektion Allgemein</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.1.1
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]
Item: (DOCS)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.1.1
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]
Item: (DOCS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]"
         id="d20e53180-false-d386873e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.1.1-2012-01-12T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(DOCS): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.1.1-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']) &gt;= 1">(DOCS): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.1.1-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']) &lt;= 1">(DOCS): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.1.1-2012-01-12T000000.html"
              test="count(hl7:code[(@code = '121181' and @codeSystem = '1.2.840.10008.2.16.4')]) &gt;= 1">(DOCS): Element hl7:code[(@code = '121181' and @codeSystem = '1.2.840.10008.2.16.4')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.1.1-2012-01-12T000000.html"
              test="count(hl7:code[(@code = '121181' and @codeSystem = '1.2.840.10008.2.16.4')]) &lt;= 1">(DOCS): Element hl7:code[(@code = '121181' and @codeSystem = '1.2.840.10008.2.16.4')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.1.1-2012-01-12T000000.html"
              test="count(hl7:title) = 0">(DOCS): Element hl7:title DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.1.1-2012-01-12T000000.html"
              test="count(hl7:text) = 0">(DOCS): Element hl7:text DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.1.1-2012-01-12T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]) &gt;= 1">(DOCS): Element hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.1.1-2012-01-12T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]) &lt;= 1">(DOCS): Element hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.1.1
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']
Item: (DOCS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']"
         id="d20e53186-false-d386930e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.1.1-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(DOCS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.1.1-2012-01-12T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.6.1.1')">(DOCS): Der Wert von root MUSS '2.16.840.1.113883.10.20.6.1.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.1.1
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]/hl7:code[(@code = '121181' and @codeSystem = '1.2.840.10008.2.16.4')]
Item: (DOCS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]/hl7:code[(@code = '121181' and @codeSystem = '1.2.840.10008.2.16.4')]"
         id="d20e53193-false-d386945e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.1.1-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(DOCS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.1.1-2012-01-12T000000.html"
              test="@nullFlavor or (@code='121181' and @codeSystem='1.2.840.10008.2.16.4' and @displayName='DICOM Object Catalog' and @codeSystemName='DCM')">(DOCS): Der Elementinhalt MUSS einer von 'code '121181' codeSystem '1.2.840.10008.2.16.4' displayName='DICOM Object Catalog' codeSystemName='DCM'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.1.1
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]/hl7:title
Item: (DOCS)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.1.1
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]/hl7:text
Item: (DOCS)
-->


   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.1.1
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]/hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]
Item: (DOCS)
--></pattern>
