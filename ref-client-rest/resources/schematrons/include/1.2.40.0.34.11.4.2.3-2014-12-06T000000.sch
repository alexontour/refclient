<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.4.2.3
Name: Sektion Mikroskopie
Description: Eigenschaften des Materials/Mikroskopie
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.4.2.3-2014-12-06T000000">
   <title>Sektion Mikroskopie</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]]
Item: (MikroskopieSektion)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]
Item: (MikroskopieSektion)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]"
         id="d20e38100-false-d299083e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.3-2014-12-06T000000.html"
              test="string(@classCode) = ('DOCSECT')">(MikroskopieSektion): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.3-2014-12-06T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']) &gt;= 1">(MikroskopieSektion): Element hl7:templateId[@root = '1.2.40.0.34.11.4.2.3'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.3-2014-12-06T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']) &lt;= 1">(MikroskopieSektion): Element hl7:templateId[@root = '1.2.40.0.34.11.4.2.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.3-2014-12-06T000000.html"
              test="count(hl7:id) &lt;= 1">(MikroskopieSektion): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.3-2014-12-06T000000.html"
              test="count(hl7:code[(@code = '104157003' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(MikroskopieSektion): Element hl7:code[(@code = '104157003' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.3-2014-12-06T000000.html"
              test="count(hl7:code[(@code = '104157003' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(MikroskopieSektion): Element hl7:code[(@code = '104157003' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.3-2014-12-06T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(MikroskopieSektion): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.3-2014-12-06T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(MikroskopieSektion): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.3-2014-12-06T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(MikroskopieSektion): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.3-2014-12-06T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(MikroskopieSektion): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.3-2014-12-06T000000.html"
              test="count(hl7:entry) = 0">(MikroskopieSektion): Element hl7:entry DARF NICHT vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]/hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']
Item: (MikroskopieSektion)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]/hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']"
         id="d20e38104-false-d299142e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.3-2014-12-06T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MikroskopieSektion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.3-2014-12-06T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.4.2.3')">(MikroskopieSektion): Der Wert von root MUSS '1.2.40.0.34.11.4.2.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]/hl7:id
Item: (MikroskopieSektion)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]/hl7:id"
         id="d20e38109-false-d299156e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.3-2014-12-06T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MikroskopieSektion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]/hl7:code[(@code = '104157003' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (MikroskopieSektion)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]/hl7:code[(@code = '104157003' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d20e38117-false-d299167e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.3-2014-12-06T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MikroskopieSektion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.3-2014-12-06T000000.html"
              test="@nullFlavor or (@code='104157003' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='Light microscopy (procedure)')">(MikroskopieSektion): Der Elementinhalt MUSS einer von 'code '104157003' codeSystem '2.16.840.1.113883.6.96' displayName='Light microscopy (procedure)'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]/hl7:title[not(@nullFlavor)]
Item: (MikroskopieSektion)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]/hl7:title[not(@nullFlavor)]"
         id="d20e38122-false-d299183e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.3-2014-12-06T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MikroskopieSektion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.3-2014-12-06T000000.html"
              test="text()='Eigenschaften des Materials / Mikroskopie'">(MikroskopieSektion): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Eigenschaften des Materials / Mikroskopie'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]/hl7:text[not(@nullFlavor)]
Item: (MikroskopieSektion)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]/hl7:text[not(@nullFlavor)]"
         id="d20e38129-false-d299197e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.3-2014-12-06T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MikroskopieSektion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.3']]/hl7:entry
Item: (MikroskopieSektion)
-->
</pattern>
