<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.3.2.1
Name: Pflege- und Betreuungsdiagnosen (enhanced)
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.3.2.1-2011-12-19T000000">
   <title>Pflege- und Betreuungsdiagnosen (enhanced)</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]]
Item: (PflegeBetreuungsdiagnosenEnhanced)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]
Item: (PflegeBetreuungsdiagnosenEnhanced)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]"
         id="d20e26490-false-d254269e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.1-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']) &gt;= 1">(PflegeBetreuungsdiagnosenEnhanced): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.1-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']) &lt;= 1">(PflegeBetreuungsdiagnosenEnhanced): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.1-2011-12-19T000000.html"
              test="count(hl7:effectiveTime[2]) = 0">(PflegeBetreuungsdiagnosenEnhanced): Element hl7:effectiveTime[2] DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.1-2011-12-19T000000.html"
              test="count(hl7:entry) = 0">(PflegeBetreuungsdiagnosenEnhanced): Element hl7:entry DARF NICHT vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']
Item: (PflegeBetreuungsdiagnosenEnhanced)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']"
         id="d20e26494-false-d254303e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.1-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnosenEnhanced): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.1-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3.2.1')">(PflegeBetreuungsdiagnosenEnhanced): Der Wert von root MUSS '1.2.40.0.34.11.3.2.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30010
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]/hl7:effectiveTime[2]
Item: (Dosierung4)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]/hl7:entry
Item: (PflegeBetreuungsdiagnosenEnhanced)
-->
</pattern>
