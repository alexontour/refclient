<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.5.2.9
Name: Befund
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.5.2.9-2012-01-12T000000">
   <title>Befund</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]
Item: (Befund)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]
Item: (Befund)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]"
         id="d20e42857-false-d342222e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.9-2012-01-12T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(Befund): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.9-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']) &gt;= 1">(Befund): Element hl7:templateId[@root = '1.2.40.0.34.11.5.2.9'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.9-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']) &lt;= 1">(Befund): Element hl7:templateId[@root = '1.2.40.0.34.11.5.2.9'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.9-2012-01-12T000000.html"
              test="count(hl7:code[(@code = '18782-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Befund): Element hl7:code[(@code = '18782-3' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.9-2012-01-12T000000.html"
              test="count(hl7:code[(@code = '18782-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Befund): Element hl7:code[(@code = '18782-3' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.9-2012-01-12T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Befund): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.9-2012-01-12T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Befund): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.9-2012-01-12T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Befund): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.9-2012-01-12T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Befund): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']
Item: (Befund)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']"
         id="d20e42861-false-d342291e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.9-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Befund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.9-2012-01-12T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.5.2.9')">(Befund): Der Wert von root MUSS '1.2.40.0.34.11.5.2.9' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/hl7:code[(@code = '18782-3' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Befund)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/hl7:code[(@code = '18782-3' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e42866-false-d342306e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.9-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Befund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.9-2012-01-12T000000.html"
              test="@nullFlavor or (@code='18782-3' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Study observation' and @codeSystemName='LOINC')">(Befund): Der Elementinhalt MUSS einer von 'code '18782-3' codeSystem '2.16.840.1.113883.6.1' displayName='Study observation' codeSystemName='LOINC'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/hl7:title[not(@nullFlavor)]
Item: (Befund)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/hl7:title[not(@nullFlavor)]"
         id="d20e42871-false-d342322e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.9-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Befund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.9-2012-01-12T000000.html"
              test="text()='Befund'">(Befund): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Befund'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/hl7:text[not(@nullFlavor)]
Item: (Befund)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/hl7:text[not(@nullFlavor)]"
         id="d20e42877-false-d342336e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.9-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Befund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]
Item: (Befund)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]
Item: (Befund)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]
Item: (Befund)
--></pattern>
