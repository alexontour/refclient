<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.5
Name: Letzte Medikation
Description: Die zuletzt im Spital gegebene Medikation.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.5-2011-12-19T000000">
   <title>Letzte Medikation</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]]
Item: (LetzteMedikation)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]
Item: (LetzteMedikation)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]"
         id="d20e12875-false-d194995e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.5-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']) &gt;= 1">(LetzteMedikation): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.5'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.5-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']) &lt;= 1">(LetzteMedikation): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.5'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.5-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '10160-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(LetzteMedikation): Element hl7:code[(@code = '10160-0' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.5-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '10160-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(LetzteMedikation): Element hl7:code[(@code = '10160-0' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.5-2011-12-19T000000.html"
              test="count(hl7:title) &gt;= 1">(LetzteMedikation): Element hl7:title ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.5-2011-12-19T000000.html"
              test="count(hl7:title) &lt;= 1">(LetzteMedikation): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.5-2011-12-19T000000.html"
              test="count(hl7:text) &gt;= 1">(LetzteMedikation): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.5-2011-12-19T000000.html"
              test="count(hl7:text) &lt;= 1">(LetzteMedikation): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']
Item: (LetzteMedikation)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']"
         id="d20e12900-false-d195038e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.5-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LetzteMedikation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.5-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.5')">(LetzteMedikation): Der Wert von root MUSS '1.2.40.0.34.11.2.2.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]/hl7:code[(@code = '10160-0' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (LetzteMedikation)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]/hl7:code[(@code = '10160-0' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e12905-false-d195053e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.5-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LetzteMedikation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.5-2011-12-19T000000.html"
              test="@nullFlavor or (@code='10160-0' and @codeSystem='2.16.840.1.113883.6.1')">(LetzteMedikation): Der Elementinhalt MUSS einer von 'code '10160-0' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]/hl7:title
Item: (LetzteMedikation)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]/hl7:title"
         id="d20e12915-false-d195069e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.5-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LetzteMedikation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.5-2011-12-19T000000.html"
              test="text()='Letzte Medikation'">(LetzteMedikation): Der Elementinhalt von 'hl7:title' MUSS ''Letzte Medikation'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]/hl7:text
Item: (LetzteMedikation)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.5']]/hl7:text"
         id="d20e12921-false-d195083e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.5-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LetzteMedikation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
