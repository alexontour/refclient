<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.3.2.18
Name: Pflegerelevante Informationen zur medizinischen Behandlung
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.3.2.18-2015-09-17T000000">
   <title>Pflegerelevante Informationen zur medizinischen Behandlung</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.18
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]
Item: (Pflegerelevanteinformationenzurmedizinischenbehandlung)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.18
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]
Item: (Pflegerelevanteinformationenzurmedizinischenbehandlung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]"
         id="d20e27101-false-d255986e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.18-2015-09-17T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']) &gt;= 1">(Pflegerelevanteinformationenzurmedizinischenbehandlung): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.18'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.18-2015-09-17T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']) &lt;= 1">(Pflegerelevanteinformationenzurmedizinischenbehandlung): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.18'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.18-2015-09-17T000000.html"
              test="count(hl7:code[(@code = 'PFMEDBEH' and @codeSystem = '1.2.40.0.34.5.40')]) &gt;= 1">(Pflegerelevanteinformationenzurmedizinischenbehandlung): Element hl7:code[(@code = 'PFMEDBEH' and @codeSystem = '1.2.40.0.34.5.40')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.18-2015-09-17T000000.html"
              test="count(hl7:code[(@code = 'PFMEDBEH' and @codeSystem = '1.2.40.0.34.5.40')]) &lt;= 1">(Pflegerelevanteinformationenzurmedizinischenbehandlung): Element hl7:code[(@code = 'PFMEDBEH' and @codeSystem = '1.2.40.0.34.5.40')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.18-2015-09-17T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Pflegerelevanteinformationenzurmedizinischenbehandlung): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.18-2015-09-17T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Pflegerelevanteinformationenzurmedizinischenbehandlung): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.18-2015-09-17T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Pflegerelevanteinformationenzurmedizinischenbehandlung): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.18-2015-09-17T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Pflegerelevanteinformationenzurmedizinischenbehandlung): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.18-2015-09-17T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]) &lt;= 1">(Pflegerelevanteinformationenzurmedizinischenbehandlung): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.18
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']
Item: (Pflegerelevanteinformationenzurmedizinischenbehandlung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']"
         id="d20e27103-false-d256044e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.18-2015-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pflegerelevanteinformationenzurmedizinischenbehandlung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.18-2015-09-17T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3.2.18')">(Pflegerelevanteinformationenzurmedizinischenbehandlung): Der Wert von root MUSS '1.2.40.0.34.11.3.2.18' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.18
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/hl7:code[(@code = 'PFMEDBEH' and @codeSystem = '1.2.40.0.34.5.40')]
Item: (Pflegerelevanteinformationenzurmedizinischenbehandlung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/hl7:code[(@code = 'PFMEDBEH' and @codeSystem = '1.2.40.0.34.5.40')]"
         id="d20e27108-false-d256059e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.18-2015-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pflegerelevanteinformationenzurmedizinischenbehandlung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.18-2015-09-17T000000.html"
              test="@nullFlavor or (@code='PFMEDBEH' and @codeSystem='1.2.40.0.34.5.40')">(Pflegerelevanteinformationenzurmedizinischenbehandlung): Der Elementinhalt MUSS einer von 'code 'PFMEDBEH' codeSystem '1.2.40.0.34.5.40'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.18
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/hl7:title[not(@nullFlavor)]
Item: (Pflegerelevanteinformationenzurmedizinischenbehandlung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/hl7:title[not(@nullFlavor)]"
         id="d20e27118-false-d256075e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.18-2015-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pflegerelevanteinformationenzurmedizinischenbehandlung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.18-2015-09-17T000000.html"
              test="text()='Pflegerelevante Informationen zur medizinischen Behandlung'">(Pflegerelevanteinformationenzurmedizinischenbehandlung): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Pflegerelevante Informationen zur medizinischen Behandlung'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.18
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/hl7:text[not(@nullFlavor)]
Item: (Pflegerelevanteinformationenzurmedizinischenbehandlung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/hl7:text[not(@nullFlavor)]"
         id="d20e27124-false-d256089e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.18-2015-09-17T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Pflegerelevanteinformationenzurmedizinischenbehandlung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.18
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]
Item: (Pflegerelevanteinformationenzurmedizinischenbehandlung)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.18
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]
Item: (Pflegerelevanteinformationenzurmedizinischenbehandlung)
--></pattern>
