<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.25
Name: Bisherige Maßnahmen
Description: Enthält relevante Maßnahmen, die schon vor dem Aufenthalt durchgeführt wurden
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.25-2015-09-19T000000">
   <title>Bisherige Maßnahmen</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.25
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]]
Item: (BisherigeMassnahmen)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.25
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]
Item: (BisherigeMassnahmen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]"
         id="d20e12367-false-d193537e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.25-2015-09-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']) &gt;= 1">(BisherigeMassnahmen): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.25'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.25-2015-09-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']) &lt;= 1">(BisherigeMassnahmen): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.25'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.25-2015-09-19T000000.html"
              test="count(hl7:code[(@code = '67803-7' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(BisherigeMassnahmen): Element hl7:code[(@code = '67803-7' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.25-2015-09-19T000000.html"
              test="count(hl7:code[(@code = '67803-7' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(BisherigeMassnahmen): Element hl7:code[(@code = '67803-7' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.25-2015-09-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(BisherigeMassnahmen): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.25-2015-09-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(BisherigeMassnahmen): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.25-2015-09-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(BisherigeMassnahmen): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.25-2015-09-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(BisherigeMassnahmen): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.25
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']
Item: (BisherigeMassnahmen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']"
         id="d20e12369-false-d193587e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.25-2015-09-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BisherigeMassnahmen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.25-2015-09-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.25')">(BisherigeMassnahmen): Der Wert von root MUSS '1.2.40.0.34.11.2.2.25' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.25
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]/hl7:code[(@code = '67803-7' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (BisherigeMassnahmen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]/hl7:code[(@code = '67803-7' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e12374-false-d193602e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.25-2015-09-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BisherigeMassnahmen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.25-2015-09-19T000000.html"
              test="@nullFlavor or (@code='67803-7' and @codeSystem='2.16.840.1.113883.6.1')">(BisherigeMassnahmen): Der Elementinhalt MUSS einer von 'code '67803-7' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.25
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]/hl7:title[not(@nullFlavor)]
Item: (BisherigeMassnahmen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]/hl7:title[not(@nullFlavor)]"
         id="d20e12384-false-d193618e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.25-2015-09-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BisherigeMassnahmen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.25-2015-09-19T000000.html"
              test="text()='Bisherige Maßnahmen'">(BisherigeMassnahmen): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Bisherige Maßnahmen'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.25
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]/hl7:text[not(@nullFlavor)]
Item: (BisherigeMassnahmen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]/hl7:text[not(@nullFlavor)]"
         id="d20e12390-false-d193632e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.25-2015-09-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BisherigeMassnahmen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.25
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]
Item: (BisherigeMassnahmen)
--></pattern>
