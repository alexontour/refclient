<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.5.3.3
Name: Strahlenexposition Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.5.3.3-2015-09-24T000000">
   <title>Strahlenexposition Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.3
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]
Item: (Strahlenexpositionentry)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.3
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]
Item: (Strahlenexpositionentry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]"
         id="d20e43163-false-d343193e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="string(@classCode) = ('OBS')">(Strahlenexpositionentry): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="string(@moodCode) = ('EVN')">(Strahlenexpositionentry): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14']) &gt;= 1">(Strahlenexpositionentry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14']) &lt;= 1">(Strahlenexpositionentry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']) &gt;= 1">(Strahlenexpositionentry): Element hl7:templateId[@root = '1.2.40.0.34.11.5.3.3'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']) &lt;= 1">(Strahlenexpositionentry): Element hl7:templateId[@root = '1.2.40.0.34.11.5.3.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.166-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(Strahlenexpositionentry): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.166-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.166-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(Strahlenexpositionentry): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.166-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="count(hl7:text[not(@nullFlavor)][hl7:reference]) &gt;= 1">(Strahlenexpositionentry): Element hl7:text[not(@nullFlavor)][hl7:reference] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="count(hl7:text[not(@nullFlavor)][hl7:reference]) &lt;= 1">(Strahlenexpositionentry): Element hl7:text[not(@nullFlavor)][hl7:reference] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Strahlenexpositionentry): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Strahlenexpositionentry): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(Strahlenexpositionentry): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(Strahlenexpositionentry): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="count(hl7:value[not(@nullFlavor)]) &gt;= 1">(Strahlenexpositionentry): Element hl7:value[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="count(hl7:value[not(@nullFlavor)]) &lt;= 1">(Strahlenexpositionentry): Element hl7:value[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.3
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14']
Item: (Strahlenexpositionentry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14']"
         id="d20e43174-false-d343272e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Strahlenexpositionentry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.6.2.14')">(Strahlenexpositionentry): Der Wert von root MUSS '2.16.840.1.113883.10.20.6.2.14' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.3
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]/hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']
Item: (Strahlenexpositionentry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]/hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']"
         id="d20e43179-false-d343287e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Strahlenexpositionentry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.5.3.3')">(Strahlenexpositionentry): Der Wert von root MUSS '1.2.40.0.34.11.5.3.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.3
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.166-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (Strahlenexpositionentry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.166-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d20e43185-false-d343304e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Strahlenexpositionentry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.166-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Strahlenexpositionentry): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.166 ELGA_Dosisparameter (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.3
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]/hl7:text[not(@nullFlavor)][hl7:reference]
Item: (Strahlenexpositionentry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]/hl7:text[not(@nullFlavor)][hl7:reference]"
         id="d20e43190-false-d343324e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Strahlenexpositionentry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(Strahlenexpositionentry): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(Strahlenexpositionentry): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.3
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]/hl7:text[not(@nullFlavor)][hl7:reference]/hl7:reference[not(@nullFlavor)]
Item: (Strahlenexpositionentry)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.3
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]/hl7:statusCode[@code = 'completed']
Item: (Strahlenexpositionentry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]/hl7:statusCode[@code = 'completed']"
         id="d20e43201-false-d343352e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Strahlenexpositionentry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="@nullFlavor or (@code='completed')">(Strahlenexpositionentry): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.3
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (Strahlenexpositionentry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d20e43206-false-d343368e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Strahlenexpositionentry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="not(*)">(Strahlenexpositionentry): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.3
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]/hl7:value[not(@nullFlavor)]
Item: (Strahlenexpositionentry)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]/hl7:value[not(@nullFlavor)]"
         id="d20e43214-false-d343381e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Strahlenexpositionentry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Strahlenexpositionentry): @value ist keine gültige PQ Zahl <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Strahlenexpositionentry): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="@unit">(Strahlenexpositionentry): Attribut @unit MUSS vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="not(@unit) or (string-length(@unit) &gt; 0 and not(matches(@unit,'\s')))">(Strahlenexpositionentry): Attribute @unit MUSS vom Datentyp 'cs' sein  - '<value-of select="@unit"/>'</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="@value">(Strahlenexpositionentry): Attribut @value MUSS vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.3-2015-09-24T000000.html"
              test="not(@value) or matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Strahlenexpositionentry): Attribute @value ist keine gültige real Zahl <value-of select="@value"/>
      </assert>
   </rule>
</pattern>
