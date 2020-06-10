<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.2
Name: Entlassungsdiagnose (enhanced)
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.2-2011-12-19T000000">
   <title>Entlassungsdiagnose (enhanced)</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]
Item: (EntlassungsdiagnoseEnhanced)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]
Item: (EntlassungsdiagnoseEnhanced)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]"
         id="d20e11911-false-d191211e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.2-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']) &gt;= 1">(EntlassungsdiagnoseEnhanced): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.2-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']) &lt;= 1">(EntlassungsdiagnoseEnhanced): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.2-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '11535-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(EntlassungsdiagnoseEnhanced): Element hl7:code[(@code = '11535-2' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.2-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '11535-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(EntlassungsdiagnoseEnhanced): Element hl7:code[(@code = '11535-2' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount" value="count(hl7:title | hl7:title)"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.2-2011-12-19T000000.html"
              test="$elmcount &gt;= 1">(EntlassungsdiagnoseEnhanced): Auswahl (hl7:title  oder  hl7:title) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.2-2011-12-19T000000.html"
              test="$elmcount &lt;= 1">(EntlassungsdiagnoseEnhanced): Auswahl (hl7:title  oder  hl7:title) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.2-2011-12-19T000000.html"
              test="count(hl7:text) &gt;= 1">(EntlassungsdiagnoseEnhanced): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.2-2011-12-19T000000.html"
              test="count(hl7:text) &lt;= 1">(EntlassungsdiagnoseEnhanced): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.2-2011-12-19T000000.html"
              test="count(hl7:entry) = 0">(EntlassungsdiagnoseEnhanced): Element hl7:entry DARF NICHT vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']
Item: (EntlassungsdiagnoseEnhanced)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']"
         id="d20e11915-false-d191270e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.2-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsdiagnoseEnhanced): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.2-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.2')">(EntlassungsdiagnoseEnhanced): Der Wert von root MUSS '1.2.40.0.34.11.2.2.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30003
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]/hl7:code[(@code = '11535-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (EntlassungsdiagnoseAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]/hl7:code[(@code = '11535-2' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d191271e71-false-d191286e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsdiagnoseAlleEIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30003-2011-12-19T000000.html"
              test="@nullFlavor or (@code='11535-2' and @codeSystem='2.16.840.1.113883.6.1')">(EntlassungsdiagnoseAlleEIS): Der Elementinhalt MUSS einer von 'code '11535-2' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30003
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]
Item: (EntlassungsdiagnoseAlleEIS)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30003
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]/hl7:title
Item: (EntlassungsdiagnoseAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]/hl7:title"
         id="d191271e78-false-d191304e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsdiagnoseAlleEIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30003-2011-12-19T000000.html"
              test="text()='Entlassungsdiagnosen' or text()='Diagnosen bei Entlassung'">(EntlassungsdiagnoseAlleEIS): Der Elementinhalt von 'hl7:title' MUSS ''Entlassungsdiagnosen' oder 'Diagnosen bei Entlassung'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30003
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]/hl7:title
Item: (EntlassungsdiagnoseAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]/hl7:title"
         id="d191271e87-false-d191320e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsdiagnoseAlleEIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30003-2011-12-19T000000.html"
              test="text()='Diagnosen bei Entlassung'">(EntlassungsdiagnoseAlleEIS): Der Elementinhalt von 'hl7:title' MUSS ''Diagnosen bei Entlassung'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30003
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]/hl7:text
Item: (EntlassungsdiagnoseAlleEIS)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.2']]/hl7:entry
Item: (EntlassungsdiagnoseEnhanced)
-->
</pattern>
