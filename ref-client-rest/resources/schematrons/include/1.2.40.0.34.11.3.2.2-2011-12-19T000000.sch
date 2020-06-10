<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.3.2.2
Name: Pflege- und Betreuungsdiagnosen (full)
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.3.2.2-2011-12-19T000000">
   <title>Pflege- und Betreuungsdiagnosen (full)</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]
Item: (PflegeBetreuungsdiagnosenFull)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]
Item: (PflegeBetreuungsdiagnosenFull)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]"
         id="d20e27171-false-d256349e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.2-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']) &gt;= 1">(PflegeBetreuungsdiagnosenFull): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.2-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']) &lt;= 1">(PflegeBetreuungsdiagnosenFull): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.2-2011-12-19T000000.html"
              test="count(hl7:effectiveTime[2]) = 0">(PflegeBetreuungsdiagnosenFull): Element hl7:effectiveTime[2] DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.2-2011-12-19T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]) &gt;= 1">(PflegeBetreuungsdiagnosenFull): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]] ist required [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']
Item: (PflegeBetreuungsdiagnosenFull)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']"
         id="d20e27175-false-d256394e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.2-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnosenFull): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.2-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3.2.2')">(PflegeBetreuungsdiagnosenFull): Der Wert von root MUSS '1.2.40.0.34.11.3.2.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30010
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:effectiveTime[2]
Item: (Dosierung4)
-->


   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]
Item: (PflegeBetreuungsdiagnosenFull)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.2-2011-12-19T000000.html"
              test="string(@typeCode) = ('DRIV') or not(@typeCode)">(PflegeBetreuungsdiagnosenFull): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
