<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.13
Name: Allergien, Unverträglichkeiten und Risiken
Description: Beschreibung der Allergien und Medikamentenunverträglichkeiten und deren beobachteten Nebenwirkungen, sowie sonstiger Risiken
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.13-2012-07-14T000000">
   <title>Allergien, Unverträglichkeiten und Risiken</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.13
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]]
Item: (AllergienUnvertraeglichkeitenRisiken)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.13
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]
Item: (AllergienUnvertraeglichkeitenRisiken)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]"
         id="d20e11044-false-d189147e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.13-2012-07-14T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']) &gt;= 1">(AllergienUnvertraeglichkeitenRisiken): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.13'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.13-2012-07-14T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']) &lt;= 1">(AllergienUnvertraeglichkeitenRisiken): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.13'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.13-2012-07-14T000000.html"
              test="count(hl7:code[(@code = '48765-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(AllergienUnvertraeglichkeitenRisiken): Element hl7:code[(@code = '48765-2' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.13-2012-07-14T000000.html"
              test="count(hl7:code[(@code = '48765-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(AllergienUnvertraeglichkeitenRisiken): Element hl7:code[(@code = '48765-2' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.13-2012-07-14T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(AllergienUnvertraeglichkeitenRisiken): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.13-2012-07-14T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(AllergienUnvertraeglichkeitenRisiken): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.13-2012-07-14T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(AllergienUnvertraeglichkeitenRisiken): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.13-2012-07-14T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(AllergienUnvertraeglichkeitenRisiken): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.13
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']
Item: (AllergienUnvertraeglichkeitenRisiken)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']"
         id="d20e11046-false-d189190e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.13-2012-07-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AllergienUnvertraeglichkeitenRisiken): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.13-2012-07-14T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.13')">(AllergienUnvertraeglichkeitenRisiken): Der Wert von root MUSS '1.2.40.0.34.11.2.2.13' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.13
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]/hl7:code[(@code = '48765-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (AllergienUnvertraeglichkeitenRisiken)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]/hl7:code[(@code = '48765-2' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e11051-false-d189205e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.13-2012-07-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AllergienUnvertraeglichkeitenRisiken): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.13-2012-07-14T000000.html"
              test="@nullFlavor or (@code='48765-2' and @codeSystem='2.16.840.1.113883.6.1')">(AllergienUnvertraeglichkeitenRisiken): Der Elementinhalt MUSS einer von 'code '48765-2' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.13
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]/hl7:title[not(@nullFlavor)]
Item: (AllergienUnvertraeglichkeitenRisiken)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]/hl7:title[not(@nullFlavor)]"
         id="d20e11061-false-d189221e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.13-2012-07-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AllergienUnvertraeglichkeitenRisiken): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.13-2012-07-14T000000.html"
              test="text()='Allergien, Unverträglichkeiten und Risiken'">(AllergienUnvertraeglichkeitenRisiken): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Allergien, Unverträglichkeiten und Risiken'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.13
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]/hl7:text[not(@nullFlavor)]
Item: (AllergienUnvertraeglichkeitenRisiken)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.13']]/hl7:text[not(@nullFlavor)]"
         id="d20e11067-false-d189235e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.13-2012-07-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AllergienUnvertraeglichkeitenRisiken): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
