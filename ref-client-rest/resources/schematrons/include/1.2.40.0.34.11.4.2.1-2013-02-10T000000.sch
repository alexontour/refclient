<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.4.2.1
Name: Spezimen-Section
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.4.2.1-2013-02-10T000000">
   <title>Spezimen-Section</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]
Item: (SpezimenSection)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]
Item: (SpezimenSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]"
         id="d20e37825-false-d298454e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2013-02-10T000000.html"
              test="string(@classCode) = ('DOCSECT')">(SpezimenSection): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2013-02-10T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']) &gt;= 1">(SpezimenSection): Element hl7:templateId[@root = '1.2.40.0.34.11.4.2.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2013-02-10T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']) &lt;= 1">(SpezimenSection): Element hl7:templateId[@root = '1.2.40.0.34.11.4.2.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2013-02-10T000000.html"
              test="count(hl7:code[(@code = '10' and @codeSystem = '1.2.40.0.34.5.11')]) &gt;= 1">(SpezimenSection): Element hl7:code[(@code = '10' and @codeSystem = '1.2.40.0.34.5.11')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2013-02-10T000000.html"
              test="count(hl7:code[(@code = '10' and @codeSystem = '1.2.40.0.34.5.11')]) &lt;= 1">(SpezimenSection): Element hl7:code[(@code = '10' and @codeSystem = '1.2.40.0.34.5.11')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2013-02-10T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(SpezimenSection): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2013-02-10T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(SpezimenSection): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2013-02-10T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.4.3.1']]]) &lt;= 1">(SpezimenSection): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.4.3.1']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]/hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']
Item: (SpezimenSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]/hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']"
         id="d20e37831-false-d298512e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2013-02-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpezimenSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2013-02-10T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.4.2.1')">(SpezimenSection): Der Wert von root MUSS '1.2.40.0.34.11.4.2.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]/hl7:id
Item: (SpezimenSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]/hl7:id"
         id="d20e37836-false-d298526e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2013-02-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpezimenSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]/hl7:code[(@code = '10' and @codeSystem = '1.2.40.0.34.5.11')]
Item: (SpezimenSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]/hl7:code[(@code = '10' and @codeSystem = '1.2.40.0.34.5.11')]"
         id="d20e37841-false-d298537e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2013-02-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpezimenSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2013-02-10T000000.html"
              test="@nullFlavor or (@code='10' and @codeSystem='1.2.40.0.34.5.11')">(SpezimenSection): Der Elementinhalt MUSS einer von 'code '10' codeSystem '1.2.40.0.34.5.11'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]/hl7:title[not(@nullFlavor)]
Item: (SpezimenSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]/hl7:title[not(@nullFlavor)]"
         id="d20e37848-false-d298553e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2013-02-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpezimenSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2013-02-10T000000.html"
              test="text()='Probeninformation'">(SpezimenSection): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Probeninformation'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.4.3.1']]]
Item: (SpezimenSection)
--></pattern>
