<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.10.20.6.2.12
Name: Kodierung des Befundtextes-deprecated
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.10.20.6.2.12-2012-01-12T000000">
   <title>Kodierung des Befundtextes-deprecated</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.12
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]
Item: (BefundtextKodierung-deprecated)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.12
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]
Item: (BefundtextKodierung-deprecated)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]"
         id="d20e53219-false-d387011e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.12-2012-01-12T000000.html"
              test="string(@classCode) = ('OBS')">(BefundtextKodierung-deprecated): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.12-2012-01-12T000000.html"
              test="string(@moodCode) = ('EVN')">(BefundtextKodierung-deprecated): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.12-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']) &gt;= 1">(BefundtextKodierung-deprecated): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.12-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']) &lt;= 1">(BefundtextKodierung-deprecated): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.12-2012-01-12T000000.html"
              test="count(hl7:code[(@code = '121071' and @codeSystem = '1.2.840.10008.2.16.4')]) &gt;= 1">(BefundtextKodierung-deprecated): Element hl7:code[(@code = '121071' and @codeSystem = '1.2.840.10008.2.16.4')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.12-2012-01-12T000000.html"
              test="count(hl7:code[(@code = '121071' and @codeSystem = '1.2.840.10008.2.16.4')]) &lt;= 1">(BefundtextKodierung-deprecated): Element hl7:code[(@code = '121071' and @codeSystem = '1.2.840.10008.2.16.4')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.12-2012-01-12T000000.html"
              test="count(hl7:value[not(@nullFlavor)][hl7:reference]) &gt;= 1">(BefundtextKodierung-deprecated): Element hl7:value[not(@nullFlavor)][hl7:reference] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.12-2012-01-12T000000.html"
              test="count(hl7:value[not(@nullFlavor)][hl7:reference]) &lt;= 1">(BefundtextKodierung-deprecated): Element hl7:value[not(@nullFlavor)][hl7:reference] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.12
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']
Item: (BefundtextKodierung-deprecated)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']"
         id="d20e53227-false-d387054e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.12-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundtextKodierung-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.12-2012-01-12T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.6.2.12')">(BefundtextKodierung-deprecated): Der Wert von root MUSS '2.16.840.1.113883.10.20.6.2.12' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.12
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:code[(@code = '121071' and @codeSystem = '1.2.840.10008.2.16.4')]
Item: (BefundtextKodierung-deprecated)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:code[(@code = '121071' and @codeSystem = '1.2.840.10008.2.16.4')]"
         id="d20e53235-false-d387069e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.12-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundtextKodierung-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.12-2012-01-12T000000.html"
              test="@nullFlavor or (@code='121071' and @codeSystem='1.2.840.10008.2.16.4' and @displayName='Finding' and @codeSystemName='DCM')">(BefundtextKodierung-deprecated): Der Elementinhalt MUSS einer von 'code '121071' codeSystem '1.2.840.10008.2.16.4' displayName='Finding' codeSystemName='DCM'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.12
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[not(@nullFlavor)][hl7:reference]
Item: (BefundtextKodierung-deprecated)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[not(@nullFlavor)][hl7:reference]"
         id="d20e53242-false-d387085e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.12-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BefundtextKodierung-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.12-2012-01-12T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(BefundtextKodierung-deprecated): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.6.2.12-2012-01-12T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(BefundtextKodierung-deprecated): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.6.2.12
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[not(@nullFlavor)][hl7:reference]/hl7:reference[not(@nullFlavor)]
Item: (BefundtextKodierung-deprecated)
-->
</pattern>
