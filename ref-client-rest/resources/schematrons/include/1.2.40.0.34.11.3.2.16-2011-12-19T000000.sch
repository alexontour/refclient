<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.3.2.16
Name: Entlassungsmanagement (enhanced)
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.3.2.16-2011-12-19T000000">
   <title>Entlassungsmanagement (enhanced)</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.16
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]
Item: (EntlassungsmanagementEnhanced)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.16
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]
Item: (EntlassungsmanagementEnhanced)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]"
         id="d20e26949-false-d255491e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.16-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.16']) &gt;= 1">(EntlassungsmanagementEnhanced): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.16-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.16']) &lt;= 1">(EntlassungsmanagementEnhanced): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.16-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']) &gt;= 1">(EntlassungsmanagementEnhanced): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.16-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']) &lt;= 1">(EntlassungsmanagementEnhanced): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.16-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '8650-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(EntlassungsmanagementEnhanced): Element hl7:code[(@code = '8650-4' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.16-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '8650-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(EntlassungsmanagementEnhanced): Element hl7:code[(@code = '8650-4' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.16-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(EntlassungsmanagementEnhanced): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.16-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(EntlassungsmanagementEnhanced): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.16-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(EntlassungsmanagementEnhanced): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.16-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(EntlassungsmanagementEnhanced): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.16-2011-12-19T000000.html"
              test="count(hl7:entry) = 0">(EntlassungsmanagementEnhanced): Element hl7:entry DARF NICHT vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.16
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.16']
Item: (EntlassungsmanagementEnhanced)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.16']"
         id="d20e26951-false-d255553e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.16-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsmanagementEnhanced): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.16-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3.2.16')">(EntlassungsmanagementEnhanced): Der Wert von root MUSS '1.2.40.0.34.11.3.2.16' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.16
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']
Item: (EntlassungsmanagementEnhanced)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']"
         id="d20e26956-false-d255568e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.16-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsmanagementEnhanced): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.16-2011-12-19T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.3.32')">(EntlassungsmanagementEnhanced): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.3.32' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30012
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:code[(@code = '8650-4' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (EntlassungsmanagementAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:code[(@code = '8650-4' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d255569e66-false-d255584e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30012-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsmanagementAlleEIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30012-2011-12-19T000000.html"
              test="@nullFlavor or (@code='8650-4' and @codeSystem='2.16.840.1.113883.6.1')">(EntlassungsmanagementAlleEIS): Der Elementinhalt MUSS einer von 'code '8650-4' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30012
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:title[not(@nullFlavor)]
Item: (EntlassungsmanagementAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:title[not(@nullFlavor)]"
         id="d255569e77-false-d255600e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30012-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsmanagementAlleEIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30012-2011-12-19T000000.html"
              test="text()='Entlassungsmanagement'">(EntlassungsmanagementAlleEIS): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Entlassungsmanagement'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30012
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:text[not(@nullFlavor)]
Item: (EntlassungsmanagementAlleEIS)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.16
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:entry
Item: (EntlassungsmanagementEnhanced)
-->
</pattern>
