<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.1.3.4
Name: Vitalparameter Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.1.3.4-2011-12-19T000000">
   <title>Vitalparameter Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]
Item: (VitalparameterEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]"
         id="d20e5781-false-d39194e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]) &gt;= 1">(VitalparameterEntry): Element hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]) &lt;= 1">(VitalparameterEntry): Element hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]
Item: (VitalparameterEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]"
         id="d20e5851-false-d39217e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="string(@classCode) = ('OBS')">(VitalparameterEntry): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="string(@moodCode) = ('EVN')">(VitalparameterEntry): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.4']) &gt;= 1">(VitalparameterEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.4']) &lt;= 1">(VitalparameterEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13']) &gt;= 1">(VitalparameterEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13']) &lt;= 1">(VitalparameterEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2']) &gt;= 1">(VitalparameterEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2']) &lt;= 1">(VitalparameterEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']) &gt;= 1">(VitalparameterEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']) &lt;= 1">(VitalparameterEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:id) &gt;= 1">(VitalparameterEntry): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:id) &lt;= 1">(VitalparameterEntry): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(VitalparameterEntry): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(VitalparameterEntry): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(VitalparameterEntry): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(VitalparameterEntry): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(VitalparameterEntry): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(VitalparameterEntry): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(VitalparameterEntry): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:value[not(@nullFlavor)]) &gt;= 1">(VitalparameterEntry): Element hl7:value[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:value[not(@nullFlavor)]) &lt;= 1">(VitalparameterEntry): Element hl7:value[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.4']
Item: (VitalparameterEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.4']"
         id="d20e5857-false-d39320e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.3.4')">(VitalparameterEntry): Der Wert von root MUSS '1.2.40.0.34.11.1.3.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13']
Item: (VitalparameterEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13']"
         id="d20e5865-false-d39335e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.13')">(VitalparameterEntry): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.13' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2']
Item: (VitalparameterEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2']"
         id="d20e5875-false-d39350e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.13.2')">(VitalparameterEntry): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.13.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']
Item: (VitalparameterEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']"
         id="d20e5886-false-d39365e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.31')">(VitalparameterEntry): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.31' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:id
Item: (VitalparameterEntry)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (VitalparameterEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d20e5908-false-d39390e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.34-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(VitalparameterEntry): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.34 ELGA_Vitalparameterarten (DYNAMIC)' sein.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:originalText[not(@nullFlavor)]) &gt;= 1">(VitalparameterEntry): Element hl7:originalText[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:originalText[not(@nullFlavor)]) &lt;= 1">(VitalparameterEntry): Element hl7:originalText[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]/hl7:originalText[not(@nullFlavor)]
Item: (VitalparameterEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]/hl7:originalText[not(@nullFlavor)]"
         id="d20e5933-false-d39418e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:text[not(@nullFlavor)]
Item: (VitalparameterEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:text[not(@nullFlavor)]"
         id="d20e5945-false-d39428e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(VitalparameterEntry): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(VitalparameterEntry): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]
Item: (VitalparameterEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]"
         id="d20e5955-false-d39447e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:statusCode[@code = 'completed']
Item: (VitalparameterEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:statusCode[@code = 'completed']"
         id="d20e5958-false-d39458e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="@nullFlavor or (@code='completed')">(VitalparameterEntry): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:effectiveTime
Item: (VitalparameterEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:effectiveTime"
         id="d20e5963-false-d39474e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:value[not(@nullFlavor)]
Item: (VitalparameterEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:value[not(@nullFlavor)]"
         id="d20e5987-false-d39484e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(VitalparameterEntry): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.4-2011-12-19T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(VitalparameterEntry): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
   </rule>
</pattern>
