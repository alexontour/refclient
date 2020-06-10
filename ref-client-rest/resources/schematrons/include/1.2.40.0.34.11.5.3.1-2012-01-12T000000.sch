<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.5.3.1
Name: BI-RADS® Klassifikation
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.5.3.1-2012-01-12T000000">
   <title>BI-RADS® Klassifikation</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]
Item: (KlassifikationBIRADS)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]"
         id="d20e43025-false-d342719e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="string(@classCode) = ('OBS')">(KlassifikationBIRADS): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="string(@moodCode) = ('EVN')">(KlassifikationBIRADS): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']) &gt;= 1">(KlassifikationBIRADS): Element hl7:templateId[@root = '1.2.40.0.34.11.5.3.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']) &lt;= 1">(KlassifikationBIRADS): Element hl7:templateId[@root = '1.2.40.0.34.11.5.3.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="count(hl7:code[(@code = '36625-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(KlassifikationBIRADS): Element hl7:code[(@code = '36625-2' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="count(hl7:code[(@code = '36625-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(KlassifikationBIRADS): Element hl7:code[(@code = '36625-2' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="count(hl7:text[not(@nullFlavor)][hl7:reference]) &gt;= 1">(KlassifikationBIRADS): Element hl7:text[not(@nullFlavor)][hl7:reference] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="count(hl7:text[not(@nullFlavor)][hl7:reference]) &lt;= 1">(KlassifikationBIRADS): Element hl7:text[not(@nullFlavor)][hl7:reference] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(KlassifikationBIRADS): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(KlassifikationBIRADS): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(KlassifikationBIRADS): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(KlassifikationBIRADS): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.55-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(KlassifikationBIRADS): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.55-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.55-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(KlassifikationBIRADS): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.55-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']"
         id="d20e43033-false-d342790e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.5.3.1')">(KlassifikationBIRADS): Der Wert von root MUSS '1.2.40.0.34.11.5.3.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:code[(@code = '36625-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:code[(@code = '36625-2' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e43041-false-d342805e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="@nullFlavor or (@code='36625-2' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Breast Mammogram' and @codeSystemName='LOINC')">(KlassifikationBIRADS): Der Elementinhalt MUSS einer von 'code '36625-2' codeSystem '2.16.840.1.113883.6.1' displayName='Breast Mammogram' codeSystemName='LOINC'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:text[not(@nullFlavor)][hl7:reference]
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:text[not(@nullFlavor)][hl7:reference]"
         id="d20e43048-false-d342821e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(KlassifikationBIRADS): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(KlassifikationBIRADS): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:text[not(@nullFlavor)][hl7:reference]/hl7:reference[not(@nullFlavor)]
Item: (KlassifikationBIRADS)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d20e43055-false-d342848e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:statusCode[@code = 'completed']
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:statusCode[@code = 'completed']"
         id="d20e43060-false-d342859e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="@nullFlavor or (@code='completed')">(KlassifikationBIRADS): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.3.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.55-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (KlassifikationBIRADS)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.55-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d20e43067-false-d342878e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KlassifikationBIRADS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.3.1-2012-01-12T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.55-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(KlassifikationBIRADS): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.55 ELGA_MammogramAssessment (DYNAMIC)' sein.</assert>
   </rule>
</pattern>
