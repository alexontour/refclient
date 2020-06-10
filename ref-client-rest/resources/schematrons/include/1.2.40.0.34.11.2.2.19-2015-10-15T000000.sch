<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.19
Name: Frühere Erkrankungen
Description: Liste der bisherigen Krankheiten des Patienten.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.19-2015-10-15T000000">
   <title>Frühere Erkrankungen</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.19
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]]
Item: (FruehereErkrankungen)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.19
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]
Item: (FruehereErkrankungen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]"
         id="d20e11775-false-d190759e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.19-2015-10-15T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']) &gt;= 1">(FruehereErkrankungen): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.19'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.19-2015-10-15T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']) &lt;= 1">(FruehereErkrankungen): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.19'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.19-2015-10-15T000000.html"
              test="count(hl7:code[(@code = '11348-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(FruehereErkrankungen): Element hl7:code[(@code = '11348-0' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.19-2015-10-15T000000.html"
              test="count(hl7:code[(@code = '11348-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(FruehereErkrankungen): Element hl7:code[(@code = '11348-0' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.19-2015-10-15T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(FruehereErkrankungen): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.19-2015-10-15T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(FruehereErkrankungen): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.19-2015-10-15T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(FruehereErkrankungen): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.19-2015-10-15T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(FruehereErkrankungen): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.19-2015-10-15T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]]) &lt;= 1">(FruehereErkrankungen): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.19
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']
Item: (FruehereErkrankungen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']"
         id="d20e11777-false-d190822e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.19-2015-10-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(FruehereErkrankungen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.19-2015-10-15T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.19')">(FruehereErkrankungen): Der Wert von root MUSS '1.2.40.0.34.11.2.2.19' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.19
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]/hl7:code[(@code = '11348-0' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (FruehereErkrankungen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]/hl7:code[(@code = '11348-0' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e11782-false-d190837e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.19-2015-10-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(FruehereErkrankungen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.19-2015-10-15T000000.html"
              test="@nullFlavor or (@code='11348-0' and @codeSystem='2.16.840.1.113883.6.1')">(FruehereErkrankungen): Der Elementinhalt MUSS einer von 'code '11348-0' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.19
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]/hl7:title[not(@nullFlavor)]
Item: (FruehereErkrankungen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]/hl7:title[not(@nullFlavor)]"
         id="d20e11792-false-d190853e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.19-2015-10-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(FruehereErkrankungen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.19-2015-10-15T000000.html"
              test="text()='Frühere Erkrankungen'">(FruehereErkrankungen): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Frühere Erkrankungen'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.19
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]/hl7:text[not(@nullFlavor)]
Item: (FruehereErkrankungen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]/hl7:text[not(@nullFlavor)]"
         id="d20e11798-false-d190867e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.19-2015-10-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(FruehereErkrankungen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.19
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]
Item: (FruehereErkrankungen)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.19
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.19']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.25']]]
Item: (FruehereErkrankungen)
--></pattern>
