<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.4
Name: Durchgeführte Maßnahmen
Description: Kurzbeschreibung sämtlicher während des Aufenthalts durchgeführten Maßnahmen, wie OPs, Eingriffe oder sonstige Maßnahmen.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.4-2011-12-19T000000">
   <title>Durchgeführte Maßnahmen</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]]
Item: (DurchgefuehrteMassnahmen)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]
Item: (DurchgefuehrteMassnahmen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]"
         id="d20e12802-false-d194880e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.4-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']) &gt;= 1">(DurchgefuehrteMassnahmen): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.4'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.4-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']) &lt;= 1">(DurchgefuehrteMassnahmen): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.4'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.4-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '29554-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(DurchgefuehrteMassnahmen): Element hl7:code[(@code = '29554-3' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.4-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '29554-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(DurchgefuehrteMassnahmen): Element hl7:code[(@code = '29554-3' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.4-2011-12-19T000000.html"
              test="count(hl7:title) &gt;= 1">(DurchgefuehrteMassnahmen): Element hl7:title ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.4-2011-12-19T000000.html"
              test="count(hl7:title) &lt;= 1">(DurchgefuehrteMassnahmen): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.4-2011-12-19T000000.html"
              test="count(hl7:text) &gt;= 1">(DurchgefuehrteMassnahmen): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.4-2011-12-19T000000.html"
              test="count(hl7:text) &lt;= 1">(DurchgefuehrteMassnahmen): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']
Item: (DurchgefuehrteMassnahmen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']"
         id="d20e12806-false-d194923e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(DurchgefuehrteMassnahmen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.4-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.4')">(DurchgefuehrteMassnahmen): Der Wert von root MUSS '1.2.40.0.34.11.2.2.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]/hl7:code[(@code = '29554-3' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (DurchgefuehrteMassnahmen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]/hl7:code[(@code = '29554-3' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e12813-false-d194938e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(DurchgefuehrteMassnahmen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.4-2011-12-19T000000.html"
              test="@nullFlavor or (@code='29554-3' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Procedures')">(DurchgefuehrteMassnahmen): Der Elementinhalt MUSS einer von 'code '29554-3' codeSystem '2.16.840.1.113883.6.1' displayName='Procedures'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]/hl7:title
Item: (DurchgefuehrteMassnahmen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]/hl7:title"
         id="d20e12826-false-d194954e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(DurchgefuehrteMassnahmen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.4-2011-12-19T000000.html"
              test="text()='Durchgeführte Maßnahmen'">(DurchgefuehrteMassnahmen): Der Elementinhalt von 'hl7:title' MUSS ''Durchgeführte Maßnahmen'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]/hl7:text
Item: (DurchgefuehrteMassnahmen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.4']]/hl7:text"
         id="d20e12834-false-d194968e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(DurchgefuehrteMassnahmen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
