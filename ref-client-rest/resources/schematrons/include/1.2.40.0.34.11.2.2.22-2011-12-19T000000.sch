<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.22
Name: Verabreichte Medikation während des Aufenthalts
Description: Sämtliche verabreichte Medikation während des Aufenthalts
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.22-2011-12-19T000000">
   <title>Verabreichte Medikation während des Aufenthalts</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.22
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]]
Item: (MedikationAufenthalt)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.22
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]
Item: (MedikationAufenthalt)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]"
         id="d20e12096-false-d193036e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.22-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']) &gt;= 1">(MedikationAufenthalt): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.22'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.22-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']) &lt;= 1">(MedikationAufenthalt): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.22'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.22-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '18610-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(MedikationAufenthalt): Element hl7:code[(@code = '18610-6' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.22-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '18610-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(MedikationAufenthalt): Element hl7:code[(@code = '18610-6' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.22-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(MedikationAufenthalt): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.22-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(MedikationAufenthalt): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.22-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(MedikationAufenthalt): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.22-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(MedikationAufenthalt): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.22
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']
Item: (MedikationAufenthalt)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']"
         id="d20e12098-false-d193079e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.22-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAufenthalt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.22-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.22')">(MedikationAufenthalt): Der Wert von root MUSS '1.2.40.0.34.11.2.2.22' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.22
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]/hl7:code[(@code = '18610-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (MedikationAufenthalt)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]/hl7:code[(@code = '18610-6' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e12103-false-d193094e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.22-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAufenthalt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.22-2011-12-19T000000.html"
              test="@nullFlavor or (@code='18610-6' and @codeSystem='2.16.840.1.113883.6.1')">(MedikationAufenthalt): Der Elementinhalt MUSS einer von 'code '18610-6' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.22
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]/hl7:title[not(@nullFlavor)]
Item: (MedikationAufenthalt)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]/hl7:title[not(@nullFlavor)]"
         id="d20e12113-false-d193110e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.22-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAufenthalt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.22-2011-12-19T000000.html"
              test="text()='Verabreichte Medikation während des Aufenthalts'">(MedikationAufenthalt): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Verabreichte Medikation während des Aufenthalts'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.22
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]/hl7:text[not(@nullFlavor)]
Item: (MedikationAufenthalt)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.22']]/hl7:text[not(@nullFlavor)]"
         id="d20e12119-false-d193124e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.22-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationAufenthalt): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
