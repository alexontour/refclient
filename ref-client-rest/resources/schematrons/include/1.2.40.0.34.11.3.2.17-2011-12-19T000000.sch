<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.3.2.17
Name: Entlassungsmanagement (full)
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.3.2.17-2011-12-19T000000">
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
         id="d20e27039-false-d255853e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.17']) &gt;= 1">(EntlassungsmanagementFull): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.17']) &lt;= 1">(EntlassungsmanagementFull): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']) &gt;= 1">(EntlassungsmanagementFull): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']) &lt;= 1">(EntlassungsmanagementFull): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2011-12-19T000000.html"
              test="count(hl7:effectiveTime[2]) = 0">(EntlassungsmanagementFull): Element hl7:effectiveTime[2] DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2011-12-19T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]) &gt;= 1">(EntlassungsmanagementFull): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]] ist required [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.17
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.17']
Item: (EntlassungsmanagementFull)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.17']"
         id="d20e27043-false-d255900e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsmanagementFull): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3.2.17')">(EntlassungsmanagementFull): Der Wert von root MUSS '1.2.40.0.34.11.3.2.17' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.17
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']
Item: (EntlassungsmanagementFull)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']"
         id="d20e27048-false-d255915e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsmanagementFull): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2011-12-19T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.3.32')">(EntlassungsmanagementFull): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.3.32' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30010
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:effectiveTime[2]
Item: (Dosierung4)
-->


   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.17
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]
Item: (EntlassungsmanagementFull)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.17-2011-12-19T000000.html"
              test="string(@typeCode) = ('DRIV') or not(@typeCode)">(EntlassungsmanagementFull): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
