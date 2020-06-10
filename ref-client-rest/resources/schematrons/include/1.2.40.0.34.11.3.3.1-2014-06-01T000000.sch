<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.3.3.1
Name: Pflege- und Betreuungsdiagnose Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.3.3.1-2014-06-01T000000">
   <title>Pflege- und Betreuungsdiagnose Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]"
         id="d20e27843-false-d258353e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="string(@classCode) = ('ACT')">(PflegeBetreuungsdiagnoseEntry): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="string(@moodCode) = ('EVN')">(PflegeBetreuungsdiagnoseEntry): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.3.1']) &gt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.3.1']) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']) &gt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1']) &gt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1']) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2']) &gt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2']) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']) &gt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:id) &gt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:id) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:code[@nullFlavor = 'NA']) &gt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:code[@nullFlavor = 'NA'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:code[@nullFlavor = 'NA']) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:code[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:statusCode[@code = 'active']) &gt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:statusCode[@code = 'active'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:statusCode[@code = 'active']) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:statusCode[@code = 'active'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:effectiveTime[hl7:low]) &gt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:effectiveTime[hl7:low] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:effectiveTime[hl7:low]) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:effectiveTime[hl7:low] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]) &gt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '1.2.40.0.34.11.3.3.1']
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '1.2.40.0.34.11.3.3.1']"
         id="d20e27849-false-d258462e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3.3.1')">(PflegeBetreuungsdiagnoseEntry): Der Wert von root MUSS '1.2.40.0.34.11.3.3.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.5']"
         id="d20e27854-false-d258477e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.3.5')">(PflegeBetreuungsdiagnoseEntry): Der Wert von root MUSS '1.2.40.0.34.11.1.3.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1']
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1']"
         id="d20e27859-false-d258492e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.5.1')">(PflegeBetreuungsdiagnoseEntry): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.5.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2']
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2']"
         id="d20e27865-false-d258507e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.5.2')">(PflegeBetreuungsdiagnoseEntry): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.5.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']"
         id="d20e27870-false-d258522e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.27')">(PflegeBetreuungsdiagnoseEntry): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.27' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:id
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:id"
         id="d20e27877-false-d258536e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:code[@nullFlavor = 'NA']
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:code[@nullFlavor = 'NA']"
         id="d20e27881-false-d258546e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="string(@nullFlavor) = ('NA')">(PflegeBetreuungsdiagnoseEntry): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:statusCode[@code = 'active']
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:statusCode[@code = 'active']"
         id="d20e27889-false-d258561e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PflegeBetreuungsdiagnoseEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="@nullFlavor or (@code='active')">(PflegeBetreuungsdiagnoseEntry): Der Elementinhalt MUSS einer von 'code 'active'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:effectiveTime[hl7:low]
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:effectiveTime[hl7:low]"
         id="d20e27896-false-d258577e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:low) &gt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:low ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:low) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:low kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="count(hl7:high) &lt;= 1">(PflegeBetreuungsdiagnoseEntry): Element hl7:high kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:effectiveTime[hl7:low]/hl7:low
Item: (PflegeBetreuungsdiagnoseEntry)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:effectiveTime[hl7:low]/hl7:high
Item: (PflegeBetreuungsdiagnoseEntry)
-->


   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.1
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]
Item: (PflegeBetreuungsdiagnoseEntry)
-->
   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="string(@typeCode) = ('SUBJ')">(PflegeBetreuungsdiagnoseEntry): Der Wert von typeCode MUSS 'SUBJ' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="string(@inversionInd) = ('false')">(PflegeBetreuungsdiagnoseEntry): Der Wert von inversionInd MUSS 'false' sein. Gefunden: "<value-of select="@inversionInd"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.1-2014-06-01T000000.html"
              test="hl7:observation/hl7:code[@code='282291009' and @codeSystem='2.16.840.1.113883.6.96']">(PflegeBetreuungsdiagnoseEntry): Observation.code ProblemEntry MUSS 282291009 aus Snomed-CT sein</assert>
   </rule>
</pattern>
