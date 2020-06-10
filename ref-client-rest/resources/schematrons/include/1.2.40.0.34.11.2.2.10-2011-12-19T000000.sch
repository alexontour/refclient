<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.10
Name: Termine, Kontrollen, Wiederbestellung
Description: Auflistung weiterer Behandlungstermine, Kontrollen und Wiederbestellungen.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.10-2011-12-19T000000">
   <title>Termine, Kontrollen, Wiederbestellung</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.10
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]]
Item: (TermineKontrollenWiederbestellung)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.10
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]
Item: (TermineKontrollenWiederbestellung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]"
         id="d20e10695-false-d188340e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.10-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']) &gt;= 1">(TermineKontrollenWiederbestellung): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.10'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.10-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']) &lt;= 1">(TermineKontrollenWiederbestellung): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.10'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.10-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'TERMIN' and @codeSystem = '1.2.40.0.34.5.40')]) &gt;= 1">(TermineKontrollenWiederbestellung): Element hl7:code[(@code = 'TERMIN' and @codeSystem = '1.2.40.0.34.5.40')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.10-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'TERMIN' and @codeSystem = '1.2.40.0.34.5.40')]) &lt;= 1">(TermineKontrollenWiederbestellung): Element hl7:code[(@code = 'TERMIN' and @codeSystem = '1.2.40.0.34.5.40')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.10-2011-12-19T000000.html"
              test="count(hl7:title) &gt;= 1">(TermineKontrollenWiederbestellung): Element hl7:title ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.10-2011-12-19T000000.html"
              test="count(hl7:title) &lt;= 1">(TermineKontrollenWiederbestellung): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.10-2011-12-19T000000.html"
              test="count(hl7:text) &gt;= 1">(TermineKontrollenWiederbestellung): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.10-2011-12-19T000000.html"
              test="count(hl7:text) &lt;= 1">(TermineKontrollenWiederbestellung): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.10
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']
Item: (TermineKontrollenWiederbestellung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']"
         id="d20e10697-false-d188383e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.10-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TermineKontrollenWiederbestellung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.10-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.10')">(TermineKontrollenWiederbestellung): Der Wert von root MUSS '1.2.40.0.34.11.2.2.10' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.10
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]/hl7:code[(@code = 'TERMIN' and @codeSystem = '1.2.40.0.34.5.40')]
Item: (TermineKontrollenWiederbestellung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]/hl7:code[(@code = 'TERMIN' and @codeSystem = '1.2.40.0.34.5.40')]"
         id="d20e10702-false-d188398e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.10-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TermineKontrollenWiederbestellung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.10-2011-12-19T000000.html"
              test="@nullFlavor or (@code='TERMIN' and @codeSystem='1.2.40.0.34.5.40')">(TermineKontrollenWiederbestellung): Der Elementinhalt MUSS einer von 'code 'TERMIN' codeSystem '1.2.40.0.34.5.40'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.10
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]/hl7:title
Item: (TermineKontrollenWiederbestellung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]/hl7:title"
         id="d20e10712-false-d188414e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.10-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TermineKontrollenWiederbestellung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.10-2011-12-19T000000.html"
              test="text()='Termine, Kontrollen, Wiederbestellung'">(TermineKontrollenWiederbestellung): Der Elementinhalt von 'hl7:title' MUSS ''Termine, Kontrollen, Wiederbestellung'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.10
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]/hl7:text
Item: (TermineKontrollenWiederbestellung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]/hl7:text"
         id="d20e10718-false-d188428e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.10-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TermineKontrollenWiederbestellung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
