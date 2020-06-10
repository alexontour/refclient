<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.4.2.1
Name: Spezimen-Section
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.4.2.1-2012-01-07T000000">
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
         id="d20e37862-false-d298633e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2012-01-07T000000.html"
              test="string(@classCode) = ('DOCSECT')">(SpezimenSection): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2012-01-07T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']) &gt;= 1">(SpezimenSection): Element hl7:templateId[@root = '1.2.40.0.34.11.4.2.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2012-01-07T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']) &lt;= 1">(SpezimenSection): Element hl7:templateId[@root = '1.2.40.0.34.11.4.2.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2012-01-07T000000.html"
              test="count(hl7:code[(@code = '10' and @codeSystem = '1.2.40.0.34.5.47')]) &gt;= 1">(SpezimenSection): Element hl7:code[(@code = '10' and @codeSystem = '1.2.40.0.34.5.47')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2012-01-07T000000.html"
              test="count(hl7:code[(@code = '10' and @codeSystem = '1.2.40.0.34.5.47')]) &lt;= 1">(SpezimenSection): Element hl7:code[(@code = '10' and @codeSystem = '1.2.40.0.34.5.47')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2012-01-07T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(SpezimenSection): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2012-01-07T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(SpezimenSection): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2012-01-07T000000.html"
              test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.4.3.1']]]) &lt;= 1">(SpezimenSection): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.4.3.1']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]/hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']
Item: (SpezimenSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]/hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']"
         id="d20e37868-false-d298687e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2012-01-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpezimenSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2012-01-07T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.4.2.1')">(SpezimenSection): Der Wert von root MUSS '1.2.40.0.34.11.4.2.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]/hl7:code[(@code = '10' and @codeSystem = '1.2.40.0.34.5.47')]
Item: (SpezimenSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]/hl7:code[(@code = '10' and @codeSystem = '1.2.40.0.34.5.47')]"
         id="d20e37875-false-d298702e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2012-01-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpezimenSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2012-01-07T000000.html"
              test="@nullFlavor or (@code='10' and @codeSystem='1.2.40.0.34.5.47' and @displayName='Probeninformation' and @codeSystemName='ELGA_Laborstruktur')">(SpezimenSection): Der Elementinhalt MUSS einer von 'code '10' codeSystem '1.2.40.0.34.5.47' displayName='Probeninformation' codeSystemName='ELGA_Laborstruktur'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]/hl7:title[not(@nullFlavor)]
Item: (SpezimenSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]/hl7:title[not(@nullFlavor)]"
         id="d20e37883-false-d298718e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2012-01-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpezimenSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.4.2.1-2012-01-07T000000.html"
              test="text()='Probeninformation'">(SpezimenSection): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Probeninformation'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.4.2.1']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.4.3.1']]]
Item: (SpezimenSection)
--></pattern>
