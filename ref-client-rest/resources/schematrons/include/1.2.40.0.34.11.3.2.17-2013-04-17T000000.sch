<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.3.2.17
Name: Entlassungsmanagement (full)
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.3.2.17-2013-04-17T000000">
   <title>Entlassungsmanagement (full)</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.17
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]
Item: (EntlassungsmanagementFull)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.17
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]
Item: (EntlassungsmanagementFull)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]"
         id="d20e27012-false-d255666e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2013-04-17T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.17']) &gt;= 1">(EntlassungsmanagementFull): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2013-04-17T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.17']) &lt;= 1">(EntlassungsmanagementFull): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2013-04-17T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']) &gt;= 1">(EntlassungsmanagementFull): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2013-04-17T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']) &lt;= 1">(EntlassungsmanagementFull): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2013-04-17T000000.html"
              test="count(hl7:code[(@code = '8650-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(EntlassungsmanagementFull): Element hl7:code[(@code = '8650-4' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2013-04-17T000000.html"
              test="count(hl7:code[(@code = '8650-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(EntlassungsmanagementFull): Element hl7:code[(@code = '8650-4' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2013-04-17T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(EntlassungsmanagementFull): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2013-04-17T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(EntlassungsmanagementFull): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2013-04-17T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(EntlassungsmanagementFull): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2013-04-17T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(EntlassungsmanagementFull): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2013-04-17T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]) &lt;= 1">(EntlassungsmanagementFull): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.17
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.17']
Item: (EntlassungsmanagementFull)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.17']"
         id="d20e27014-false-d255732e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2013-04-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsmanagementFull): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2013-04-17T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3.2.17')">(EntlassungsmanagementFull): Der Wert von root MUSS '1.2.40.0.34.11.3.2.17' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.17
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']
Item: (EntlassungsmanagementFull)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']"
         id="d20e27019-false-d255747e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2013-04-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsmanagementFull): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2013-04-17T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.3.32')">(EntlassungsmanagementFull): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.3.32' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30012
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:code[(@code = '8650-4' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (EntlassungsmanagementAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:code[(@code = '8650-4' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d255748e66-false-d255763e0">
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
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:title[not(@nullFlavor)]
Item: (EntlassungsmanagementAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:title[not(@nullFlavor)]"
         id="d255748e77-false-d255779e0">
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
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:text[not(@nullFlavor)]
Item: (EntlassungsmanagementAlleEIS)
-->


   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.17
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]
Item: (EntlassungsmanagementFull)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2013-04-17T000000.html"
              test="string(@typeCode) = ('DRIV') or not(@typeCode)">(EntlassungsmanagementFull): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
