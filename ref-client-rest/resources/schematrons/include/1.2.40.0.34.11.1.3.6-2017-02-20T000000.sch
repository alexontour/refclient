<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.1.3.6
Name: Problem Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.1.3.6-2017-02-20T000000">
   <title>Problem Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]"
         id="d20e6532-false-d40293e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]) &gt;= 1">(ProblemEntry): Element hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]) &lt;= 1">(ProblemEntry): Element hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]"
         id="d20e6604-false-d40314e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="string(@classCode) = ('OBS')">(ProblemEntry): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="string(@moodCode) = ('EVN')">(ProblemEntry): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="@negationInd">(ProblemEntry): Attribut @negationInd MUSS vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(ProblemEntry): Attribute @negationInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']) &gt;= 1">(ProblemEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']) &lt;= 1">(ProblemEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5']) &gt;= 1">(ProblemEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5']) &lt;= 1">(ProblemEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']) &gt;= 1">(ProblemEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']) &lt;= 1">(ProblemEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:id) &gt;= 1">(ProblemEntry): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:id) &lt;= 1">(ProblemEntry): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(ProblemEntry): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(ProblemEntry): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(ProblemEntry): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(ProblemEntry): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(ProblemEntry): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(ProblemEntry): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(ProblemEntry): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(ProblemEntry): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:value) &gt;= 1">(ProblemEntry): Element hl7:value ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:value) &lt;= 1">(ProblemEntry): Element hl7:value kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.6']"
         id="d20e6627-false-d40415e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.3.6')">(ProblemEntry): Der Wert von root MUSS '1.2.40.0.34.11.1.3.6' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5']
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5']"
         id="d20e6636-false-d40430e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.5')">(ProblemEntry): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']"
         id="d20e6646-false-d40445e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.28')">(ProblemEntry): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.28' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:id
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:id"
         id="d20e6656-false-d40459e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d20e6671-false-d40472e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(ProblemEntry): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.35 ELGA_Problemarten (DYNAMIC)' sein.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:originalText) &lt;= 1">(ProblemEntry): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]/hl7:originalText
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]/hl7:originalText"
         id="d20e6699-false-d40498e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:text[not(@nullFlavor)]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:text[not(@nullFlavor)]"
         id="d20e6710-false-d40508e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(ProblemEntry): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(ProblemEntry): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]"
         id="d20e6717-false-d40527e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:statusCode[@code = 'completed']
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:statusCode[@code = 'completed']"
         id="d20e6720-false-d40538e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="@nullFlavor or (@code='completed')">(ProblemEntry): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d20e6726-false-d40554e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value"
         id="d20e6738-false-d40564e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="not(//hl7:templateId[@root='1.2.40.0.34.11.2']) or @nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.169-DYNAMIC.xml')/*/valueSet[conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]                          or completeCodeSystem[@codeSystem=$theCodeSystem]])">(ProblemEntry): (ProblemEntry): Im Dokument "CDA Dokument Entlassung Ärztlich" (cdaea) muss der Code aus dem Value Set ELGA_Problemkataloge (1.2.40.0.34.10.169 gewählt werden.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:originalText[not(@nullFlavor)]) &gt;= 1">(ProblemEntry): Element hl7:originalText[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:originalText[not(@nullFlavor)]) &lt;= 1">(ProblemEntry): Element hl7:originalText[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:qualifier[hl7:name[@code='7']]) &lt;= 1">(ProblemEntry): Element hl7:qualifier[hl7:name[@code='7']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:qualifier[hl7:name[@code='8']]) &lt;= 1">(ProblemEntry): Element hl7:qualifier[hl7:name[@code='8']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:originalText[not(@nullFlavor)]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:originalText[not(@nullFlavor)]"
         id="d20e6803-false-d40594e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:qualifier[hl7:name[@code='7']]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:qualifier[hl7:name[@code='7']]"
         id="d20e6815-false-d40602e0">
      <extends rule="CR"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CR' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CR" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:name[(@code = '7' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]) &gt;= 1">(ProblemEntry): Element hl7:name[(@code = '7' and @codeSystem = '2.16.840.1.113883.3.7.1.0')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:name[(@code = '7' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]) &lt;= 1">(ProblemEntry): Element hl7:name[(@code = '7' and @codeSystem = '2.16.840.1.113883.3.7.1.0')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(ProblemEntry): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(ProblemEntry): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:qualifier[hl7:name[@code='7']]/hl7:name[(@code = '7' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:qualifier[hl7:name[@code='7']]/hl7:name[(@code = '7' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]"
         id="d20e6831-false-d40634e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="@nullFlavor or (@code='7' and @codeSystem='2.16.840.1.113883.3.7.1.0')">(ProblemEntry): Der Elementinhalt MUSS einer von 'code '7' codeSystem '2.16.840.1.113883.3.7.1.0'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:qualifier[hl7:name[@code='7']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:qualifier[hl7:name[@code='7']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d20e6836-false-d40653e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(ProblemEntry): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.176 ELGA_Seitenlokalisation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(ProblemEntry): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.40.0.34.10.176 ELGA_Seitenlokalisation (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:qualifier[hl7:name[@code='8']]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:qualifier[hl7:name[@code='8']]"
         id="d20e6842-false-d40673e0">
      <extends rule="CR"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CR' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CR" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]) &gt;= 1">(ProblemEntry): Element hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]) &lt;= 1">(ProblemEntry): Element hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.168-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(ProblemEntry): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.168-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.168-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(ProblemEntry): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.168-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:qualifier[hl7:name[@code='8']]/hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:qualifier[hl7:name[@code='8']]/hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')]"
         id="d20e6847-false-d40705e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="@nullFlavor or (@code='8' and @codeSystem='2.16.840.1.113883.3.7.1.0')">(ProblemEntry): Der Elementinhalt MUSS einer von 'code '8' codeSystem '2.16.840.1.113883.3.7.1.0'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:qualifier[hl7:name[@code='8']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.168-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:qualifier[hl7:name[@code='8']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.168-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d20e6852-false-d40724e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.168-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(ProblemEntry): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.168 ELGA_Diagnosesicherheit (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.6
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:translation
Item: (ProblemEntry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:translation"
         id="d20e6858-false-d40744e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.6-2017-02-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ProblemEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
