<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.3.1
Name: Entlassungsdiagnose Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.3.1-2014-04-01T000000">
   <title>Entlassungsdiagnose Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]
Item: (EntlassungsdiagnoseEntry)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]
Item: (EntlassungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]"
         id="d20e13683-false-d197821e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="string(@classCode) = ('ACT')">(EntlassungsdiagnoseEntry): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="string(@moodCode) = ('EVN')">(EntlassungsdiagnoseEntry): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.3.1']) &gt;= 1">(EntlassungsdiagnoseEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.3.1']) &lt;= 1">(EntlassungsdiagnoseEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']) &gt;= 1">(EntlassungsdiagnoseEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']) &lt;= 1">(EntlassungsdiagnoseEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1']) &gt;= 1">(EntlassungsdiagnoseEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1']) &lt;= 1">(EntlassungsdiagnoseEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2']) &gt;= 1">(EntlassungsdiagnoseEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2']) &lt;= 1">(EntlassungsdiagnoseEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']) &gt;= 1">(EntlassungsdiagnoseEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']) &lt;= 1">(EntlassungsdiagnoseEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:id) &gt;= 1">(EntlassungsdiagnoseEntry): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:id) &lt;= 1">(EntlassungsdiagnoseEntry): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:code[@nullFlavor = 'NA']) &gt;= 1">(EntlassungsdiagnoseEntry): Element hl7:code[@nullFlavor = 'NA'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:code[@nullFlavor = 'NA']) &lt;= 1">(EntlassungsdiagnoseEntry): Element hl7:code[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:statusCode[@code = 'active' or @code = 'suspended' or @code = 'completed' or @code = 'aborted']) &gt;= 1">(EntlassungsdiagnoseEntry): Element hl7:statusCode[@code = 'active' or @code = 'suspended' or @code = 'completed' or @code = 'aborted'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:statusCode[@code = 'active' or @code = 'suspended' or @code = 'completed' or @code = 'aborted']) &lt;= 1">(EntlassungsdiagnoseEntry): Element hl7:statusCode[@code = 'active' or @code = 'suspended' or @code = 'completed' or @code = 'aborted'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:effectiveTime[hl7:low]) &gt;= 1">(EntlassungsdiagnoseEntry): Element hl7:effectiveTime[hl7:low] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:effectiveTime[hl7:low]) &lt;= 1">(EntlassungsdiagnoseEntry): Element hl7:effectiveTime[hl7:low] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]) &gt;= 1">(EntlassungsdiagnoseEntry): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]) &lt;= 1">(EntlassungsdiagnoseEntry): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '1.2.40.0.34.11.2.3.1']
Item: (EntlassungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '1.2.40.0.34.11.2.3.1']"
         id="d20e13691-false-d197930e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.3.1')">(EntlassungsdiagnoseEntry): Der Wert von root MUSS '1.2.40.0.34.11.2.3.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']
Item: (EntlassungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']"
         id="d20e13696-false-d197945e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.3.5')">(EntlassungsdiagnoseEntry): Der Wert von root MUSS '1.2.40.0.34.11.1.3.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1']
Item: (EntlassungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1']"
         id="d20e13702-false-d197960e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.5.1')">(EntlassungsdiagnoseEntry): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.5.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2']
Item: (EntlassungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2']"
         id="d20e13707-false-d197975e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.5.2')">(EntlassungsdiagnoseEntry): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.5.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']
Item: (EntlassungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']"
         id="d20e13712-false-d197990e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.27')">(EntlassungsdiagnoseEntry): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.27' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:id
Item: (EntlassungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:id"
         id="d20e13719-false-d198004e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:code[@nullFlavor = 'NA']
Item: (EntlassungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:code[@nullFlavor = 'NA']"
         id="d20e13724-false-d198014e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="string(@nullFlavor) = ('NA')">(EntlassungsdiagnoseEntry): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:statusCode[@code = 'active' or @code = 'suspended' or @code = 'completed' or @code = 'aborted']
Item: (EntlassungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:statusCode[@code = 'active' or @code = 'suspended' or @code = 'completed' or @code = 'aborted']"
         id="d20e13731-false-d198029e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="@nullFlavor or (@code='active') or (@code='suspended') or (@code='completed') or (@code='aborted')">(EntlassungsdiagnoseEntry): Der Elementinhalt MUSS einer von 'code 'active' oder code 'suspended' oder code 'completed' oder code 'aborted'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:effectiveTime[hl7:low]
Item: (EntlassungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:effectiveTime[hl7:low]"
         id="d20e13744-false-d198051e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:low) &gt;= 1">(EntlassungsdiagnoseEntry): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:low) &lt;= 1">(EntlassungsdiagnoseEntry): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:high) &lt;= 1">(EntlassungsdiagnoseEntry): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:effectiveTime[hl7:low]/hl7:low
Item: (EntlassungsdiagnoseEntry)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:effectiveTime[hl7:low]/hl7:high
Item: (EntlassungsdiagnoseEntry)
-->


   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]
Item: (EntlassungsdiagnoseEntry)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="string(@typeCode) = ('SUBJ')">(EntlassungsdiagnoseEntry): Der Wert von typeCode MUSS 'SUBJ' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="string(@inversionInd) = ('false')">(EntlassungsdiagnoseEntry): Der Wert von inversionInd MUSS 'false' sein. Gefunden: "<value-of select="@inversionInd"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:observation[hl7:code[@code = '282291009']]) &gt;= 1">(EntlassungsdiagnoseEntry): Element hl7:observation[hl7:code[@code = '282291009']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:observation[hl7:code[@code = '282291009']]) &lt;= 1">(EntlassungsdiagnoseEntry): Element hl7:observation[hl7:code[@code = '282291009']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:code[@code = '282291009']]
Item: (EntlassungsdiagnoseEntry)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:code[@code = '282291009']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:code[@code = '282291009']) &gt;= 1">(EntlassungsdiagnoseEntry): Element hl7:code[@code = '282291009'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:code[@code = '282291009']) &lt;= 1">(EntlassungsdiagnoseEntry): Element hl7:code[@code = '282291009'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:value[@codeSystem = '1.2.40.0.34.5.56']) &gt;= 1">(EntlassungsdiagnoseEntry): Element hl7:value[@codeSystem = '1.2.40.0.34.5.56'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="count(hl7:value[@codeSystem = '1.2.40.0.34.5.56']) &lt;= 1">(EntlassungsdiagnoseEntry): Element hl7:value[@codeSystem = '1.2.40.0.34.5.56'] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:code[@code = '282291009']]/hl7:code[@code = '282291009']
Item: (EntlassungsdiagnoseEntry)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:code[@code = '282291009']]/hl7:code[@code = '282291009']">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="@nullFlavor or (@code='282291009' and @displayName='Diagnosis')">(EntlassungsdiagnoseEntry): Der Elementinhalt MUSS einer von 'code '282291009' displayName='Diagnosis'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:code[@code = '282291009']]/hl7:value[@codeSystem = '1.2.40.0.34.5.56']
Item: (EntlassungsdiagnoseEntry)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.2.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:code[@code = '282291009']]/hl7:value[@codeSystem = '1.2.40.0.34.5.56']">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.3.1-2014-04-01T000000.html"
              test="@nullFlavor or (@codeSystem='1.2.40.0.34.5.56')">(EntlassungsdiagnoseEntry): Der Elementinhalt MUSS einer von 'codeSystem '1.2.40.0.34.5.56'' sein.</assert>
   </rule>
</pattern>
