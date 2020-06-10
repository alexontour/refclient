<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.1.3.6
Name: Problem Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.1.3.6-2015-09-24T000000">
   <title>Problem Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]"
         id="d20e6869-false-d40761e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]) &gt;= 1">(ProblemEntry): Element hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]) &lt;= 1">(ProblemEntry): Element hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]"
         id="d20e6875-false-d40782e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="string(@classCode) = ('OBS')">(ProblemEntry): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="string(@moodCode) = ('EVN')">(ProblemEntry): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="@negationInd">(ProblemEntry): Attribut @negationInd MUSS vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']) &gt;= 1">(ProblemEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']) &lt;= 1">(ProblemEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5']) &gt;= 1">(ProblemEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5']) &lt;= 1">(ProblemEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']) &gt;= 1">(ProblemEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']) &lt;= 1">(ProblemEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:id) &gt;= 1">(ProblemEntry): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:id) &lt;= 1">(ProblemEntry): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(ProblemEntry): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(ProblemEntry): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(ProblemEntry): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(ProblemEntry): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(ProblemEntry): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(ProblemEntry): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(ProblemEntry): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(ProblemEntry): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:value[not(@nullFlavor)]) &gt;= 1">(ProblemEntry): Element hl7:value[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:value[not(@nullFlavor)]) &lt;= 1">(ProblemEntry): Element hl7:value[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']"
         id="d20e6885-false-d40881e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.3.6')">(ProblemEntry): Der Wert von root MUSS '1.2.40.0.34.11.1.3.6' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5']
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5']"
         id="d20e6891-false-d40896e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.5')">(ProblemEntry): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']"
         id="d20e6896-false-d40911e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.28')">(ProblemEntry): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.28' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:id
Item: (ProblemEntry)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d20e6907-false-d40936e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(ProblemEntry): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.35 ELGA_Problemarten (DYNAMIC)' sein.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:originalText) &lt;= 1">(ProblemEntry): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]/hl7:originalText
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]/hl7:originalText"
         id="d20e6911-false-d40962e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:text[not(@nullFlavor)]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:text[not(@nullFlavor)]"
         id="d20e6917-false-d40972e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(ProblemEntry): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(ProblemEntry): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]"
         id="d20e6919-false-d40991e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:statusCode[@code = 'completed']
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:statusCode[@code = 'completed']"
         id="d20e6924-false-d41002e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="@nullFlavor or (@code='completed')">(ProblemEntry): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d20e6931-false-d41018e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value[not(@nullFlavor)]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value[not(@nullFlavor)]"
         id="d20e6936-false-d41028e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="not(//hl7:templateId[@root='1.2.40.0.34.11.2']) or @nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.169-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]                          or completeCodeSystem[@codeSystem=$theCodeSystem]])">(ProblemEntry): (ProblemEntry): Im Dokument "CDA Dokument Entlassung Ärztlich" (cdaea) muss der Code aus dem Value Set ELGA_Problemkataloge (1.2.40.0.34.10.169 gewählt werden.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:originalText[not(@nullFlavor)]) &gt;= 1">(ProblemEntry): Element hl7:originalText[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:originalText[not(@nullFlavor)]) &lt;= 1">(ProblemEntry): Element hl7:originalText[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value[not(@nullFlavor)]/hl7:originalText[not(@nullFlavor)]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value[not(@nullFlavor)]/hl7:originalText[not(@nullFlavor)]"
         id="d20e6978-false-d41055e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value[not(@nullFlavor)]/hl7:qualifier[hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value[not(@nullFlavor)]/hl7:qualifier[hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]]"
         id="d20e6981-false-d41066e0">
      <extends rule="CR"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CR' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CR" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]) &gt;= 1">(ProblemEntry): Element hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]) &lt;= 1">(ProblemEntry): Element hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.168-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(ProblemEntry): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.168-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.168-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(ProblemEntry): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.168-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value[not(@nullFlavor)]/hl7:qualifier[hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]]/hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value[not(@nullFlavor)]/hl7:qualifier[hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]]/hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]"
         id="d20e6996-false-d41098e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="@nullFlavor or (@code='8' and @codeSystem='2.16.840.1.113883.3.7.1.0')">(ProblemEntry): Der Elementinhalt MUSS einer von 'code '8' codeSystem '2.16.840.1.113883.3.7.1.0'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value[not(@nullFlavor)]/hl7:qualifier[hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.168-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value[not(@nullFlavor)]/hl7:qualifier[hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.168-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d20e7001-false-d41117e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.168-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(ProblemEntry): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.168 ELGA_Diagnosesicherheit (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value[not(@nullFlavor)]/hl7:translation
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value[not(@nullFlavor)]/hl7:translation"
         id="d20e7007-false-d41137e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
