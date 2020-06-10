<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.1.2.8
Name: Risiken
Description: Wird ausschließlich als Untersektion zu einer fachlichen Sektion angewandt.  Enthält die Risiken zum Thema der übergeordneten Sektion als narrative Beschreibung oder Auflistung.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.1.2.8-2011-12-19T000000">
   <title>Risiken</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.8
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]
Item: (Risiken)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.8
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]
Item: (Risiken)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]"
         id="d20e5268-false-d38408e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.8-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']) &gt;= 1">(Risiken): Element hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.8-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']) &lt;= 1">(Risiken): Element hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.8-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Risiken): Element hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.8-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Risiken): Element hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.8-2011-12-19T000000.html"
              test="count(hl7:title) &gt;= 1">(Risiken): Element hl7:title ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.8-2011-12-19T000000.html"
              test="count(hl7:title) &lt;= 1">(Risiken): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.8-2011-12-19T000000.html"
              test="count(hl7:text) &gt;= 1">(Risiken): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.8-2011-12-19T000000.html"
              test="count(hl7:text) &lt;= 1">(Risiken): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.8
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']
Item: (Risiken)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']"
         id="d20e5275-false-d38451e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.8-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Risiken): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.8-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.2.8')">(Risiken): Der Wert von root MUSS '1.2.40.0.34.11.1.2.8' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.8
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Risiken)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e5280-false-d38466e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.8-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Risiken): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.8-2011-12-19T000000.html"
              test="@nullFlavor or (@code='51898-5' and @codeSystem='2.16.840.1.113883.6.1')">(Risiken): Der Elementinhalt MUSS einer von 'code '51898-5' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.8
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/hl7:title
Item: (Risiken)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/hl7:title"
         id="d20e5285-false-d38482e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.8-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Risiken): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.8-2011-12-19T000000.html"
              test="text()='Risiken'">(Risiken): Der Elementinhalt von 'hl7:title' MUSS ''Risiken'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.8
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/hl7:text
Item: (Risiken)
-->
</pattern>
