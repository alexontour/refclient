<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.12.2.2
Name: Pflege- und Betreuungsumfang
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.12.2.2-2015-10-20T000000">
   <title>Pflege- und Betreuungsumfang</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.12.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]]
Item: (Pflegeundbetreuungsumfang)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.12.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]
Item: (Pflegeundbetreuungsumfang)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]"
         id="d20e8388-false-d147279e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12.2.2-2015-10-20T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']) &gt;= 1">(Pflegeundbetreuungsumfang): Element hl7:templateId[@root = '1.2.40.0.34.11.12.2.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12.2.2-2015-10-20T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']) &lt;= 1">(Pflegeundbetreuungsumfang): Element hl7:templateId[@root = '1.2.40.0.34.11.12.2.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12.2.2-2015-10-20T000000.html"
              test="count(hl7:code[(@code = 'PUBUMF' and @codeSystem = '1.2.40.0.34.5.40')]) &gt;= 1">(Pflegeundbetreuungsumfang): Element hl7:code[(@code = 'PUBUMF' and @codeSystem = '1.2.40.0.34.5.40')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12.2.2-2015-10-20T000000.html"
              test="count(hl7:code[(@code = 'PUBUMF' and @codeSystem = '1.2.40.0.34.5.40')]) &lt;= 1">(Pflegeundbetreuungsumfang): Element hl7:code[(@code = 'PUBUMF' and @codeSystem = '1.2.40.0.34.5.40')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12.2.2-2015-10-20T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Pflegeundbetreuungsumfang): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12.2.2-2015-10-20T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Pflegeundbetreuungsumfang): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12.2.2-2015-10-20T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Pflegeundbetreuungsumfang): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12.2.2-2015-10-20T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Pflegeundbetreuungsumfang): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.12.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]/hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']
Item: (Pflegeundbetreuungsumfang)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]/hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']"
         id="d20e8390-false-d147322e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12.2.2-2015-10-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pflegeundbetreuungsumfang): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12.2.2-2015-10-20T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.12.2.2')">(Pflegeundbetreuungsumfang): Der Wert von root MUSS '1.2.40.0.34.11.12.2.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.12.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]/hl7:code[(@code = 'PUBUMF' and @codeSystem = '1.2.40.0.34.5.40')]
Item: (Pflegeundbetreuungsumfang)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]/hl7:code[(@code = 'PUBUMF' and @codeSystem = '1.2.40.0.34.5.40')]"
         id="d20e8395-false-d147337e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12.2.2-2015-10-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pflegeundbetreuungsumfang): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12.2.2-2015-10-20T000000.html"
              test="@nullFlavor or (@code='PUBUMF' and @codeSystem='1.2.40.0.34.5.40')">(Pflegeundbetreuungsumfang): Der Elementinhalt MUSS einer von 'code 'PUBUMF' codeSystem '1.2.40.0.34.5.40'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.12.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]/hl7:title[not(@nullFlavor)]
Item: (Pflegeundbetreuungsumfang)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]/hl7:title[not(@nullFlavor)]"
         id="d20e8405-false-d147353e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12.2.2-2015-10-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pflegeundbetreuungsumfang): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12.2.2-2015-10-20T000000.html"
              test="text()='Pflege- und Betreuungsumfang'">(Pflegeundbetreuungsumfang): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Pflege- und Betreuungsumfang'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.12.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]/hl7:text[not(@nullFlavor)]
Item: (Pflegeundbetreuungsumfang)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]/hl7:text[not(@nullFlavor)]"
         id="d20e8411-false-d147367e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12.2.2-2015-10-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pflegeundbetreuungsumfang): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
