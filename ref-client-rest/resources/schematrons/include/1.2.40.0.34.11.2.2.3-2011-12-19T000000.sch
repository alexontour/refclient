<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.3
Name: Entlassungsdiagnose (full support)
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.3-2011-12-19T000000">
   <title>Entlassungsdiagnose (full support)</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]
Item: (EntlassungsdiagnoseFull)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]
Item: (EntlassungsdiagnoseFull)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]"
         id="d20e12598-false-d194263e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.3-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.3']) &gt;= 1">(EntlassungsdiagnoseFull): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.3-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.3']) &lt;= 1">(EntlassungsdiagnoseFull): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.3-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']) &gt;= 1">(EntlassungsdiagnoseFull): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.3-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']) &lt;= 1">(EntlassungsdiagnoseFull): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.3-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '11535-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(EntlassungsdiagnoseFull): Element hl7:code[(@code = '11535-2' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.3-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '11535-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(EntlassungsdiagnoseFull): Element hl7:code[(@code = '11535-2' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount" value="count(hl7:title | hl7:title)"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.3-2011-12-19T000000.html"
              test="$elmcount &gt;= 1">(EntlassungsdiagnoseFull): Auswahl (hl7:title  oder  hl7:title) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.3-2011-12-19T000000.html"
              test="$elmcount &lt;= 1">(EntlassungsdiagnoseFull): Auswahl (hl7:title  oder  hl7:title) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.3-2011-12-19T000000.html"
              test="count(hl7:text) &gt;= 1">(EntlassungsdiagnoseFull): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.3-2011-12-19T000000.html"
              test="count(hl7:text) &lt;= 1">(EntlassungsdiagnoseFull): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.3-2011-12-19T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]) &gt;= 1">(EntlassungsdiagnoseFull): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]] ist required [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.3']
Item: (EntlassungsdiagnoseFull)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.3']"
         id="d20e12602-false-d194342e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.3-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsdiagnoseFull): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.3-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.3')">(EntlassungsdiagnoseFull): Der Wert von root MUSS '1.2.40.0.34.11.2.2.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']
Item: (EntlassungsdiagnoseFull)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']"
         id="d20e12607-false-d194357e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.3-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsdiagnoseFull): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.3-2011-12-19T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.3.7')">(EntlassungsdiagnoseFull): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.3.7' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30003
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]/hl7:code[(@code = '11535-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (EntlassungsdiagnoseAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]/hl7:code[(@code = '11535-2' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d194358e71-false-d194373e0">
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
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]
Item: (EntlassungsdiagnoseAlleEIS)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30003
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]/hl7:title
Item: (EntlassungsdiagnoseAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]/hl7:title"
         id="d194358e78-false-d194391e0">
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
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]/hl7:title
Item: (EntlassungsdiagnoseAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]/hl7:title"
         id="d194358e87-false-d194407e0">
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
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]/hl7:text
Item: (EntlassungsdiagnoseAlleEIS)
-->


   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]
Item: (EntlassungsdiagnoseFull)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.7']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.3-2011-12-19T000000.html"
              test="string(@typeCode) = ('DRIV') or not(@typeCode)">(EntlassungsdiagnoseFull): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
