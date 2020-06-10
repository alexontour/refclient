<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.5.2.13
Name: Empfehlung
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.5.2.13-2012-01-12T000000">
   <title>Empfehlung</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.13
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]]
Item: (Empfehlung)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.13
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]
Item: (Empfehlung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]"
         id="d20e41818-false-d340543e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.13-2012-01-12T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(Empfehlung): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.13-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']) &gt;= 1">(Empfehlung): Element hl7:templateId[@root = '1.2.40.0.34.11.5.2.13'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.13-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']) &lt;= 1">(Empfehlung): Element hl7:templateId[@root = '1.2.40.0.34.11.5.2.13'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.13-2012-01-12T000000.html"
              test="count(hl7:code[(@code = '18783-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Empfehlung): Element hl7:code[(@code = '18783-1' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.13-2012-01-12T000000.html"
              test="count(hl7:code[(@code = '18783-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Empfehlung): Element hl7:code[(@code = '18783-1' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.13-2012-01-12T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Empfehlung): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.13-2012-01-12T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Empfehlung): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.13-2012-01-12T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Empfehlung): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.13-2012-01-12T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Empfehlung): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.13
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]/hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']
Item: (Empfehlung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]/hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']"
         id="d20e41822-false-d340597e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.13-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Empfehlung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.13-2012-01-12T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.5.2.13')">(Empfehlung): Der Wert von root MUSS '1.2.40.0.34.11.5.2.13' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.13
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]/hl7:code[(@code = '18783-1' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Empfehlung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]/hl7:code[(@code = '18783-1' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e41827-false-d340612e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.13-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Empfehlung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.13-2012-01-12T000000.html"
              test="@nullFlavor or (@code='18783-1' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Study recommendation' and @codeSystemName='LOINC')">(Empfehlung): Der Elementinhalt MUSS einer von 'code '18783-1' codeSystem '2.16.840.1.113883.6.1' displayName='Study recommendation' codeSystemName='LOINC'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.13
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]/hl7:title[not(@nullFlavor)]
Item: (Empfehlung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]/hl7:title[not(@nullFlavor)]"
         id="d20e41832-false-d340628e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.13-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Empfehlung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.13-2012-01-12T000000.html"
              test="text()='Empfehlung'">(Empfehlung): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Empfehlung'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.13
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]/hl7:text[not(@nullFlavor)]
Item: (Empfehlung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]/hl7:text[not(@nullFlavor)]"
         id="d20e41838-false-d340642e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.13-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Empfehlung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.13
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]
Item: (Empfehlung)
--></pattern>
