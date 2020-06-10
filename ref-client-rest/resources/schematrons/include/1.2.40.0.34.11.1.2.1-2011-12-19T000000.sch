<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.1.2.1
Name: Brieftext
Description: Ein am Anfang des Briefes formulierter Freitext für eine Anrede oder Begrüßung. Die Angabe von medizinisch fachlich relevanter Information in diesem Abschnitt ist NICHT ERLAUBT.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.1.2.1-2011-12-19T000000">
   <title>Brieftext</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]
Item: (Brieftext)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]
Item: (Brieftext)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]"
         id="d20e4587-false-d36805e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.1-2011-12-19T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(Brieftext): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.1-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']) &gt;= 1">(Brieftext): Element hl7:templateId[@root = '1.2.40.0.34.11.1.2.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.1-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']) &lt;= 1">(Brieftext): Element hl7:templateId[@root = '1.2.40.0.34.11.1.2.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.1-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'BRIEFT' and @codeSystem = '1.2.40.0.34.5.40')]) &gt;= 1">(Brieftext): Element hl7:code[(@code = 'BRIEFT' and @codeSystem = '1.2.40.0.34.5.40')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.1-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'BRIEFT' and @codeSystem = '1.2.40.0.34.5.40')]) &lt;= 1">(Brieftext): Element hl7:code[(@code = 'BRIEFT' and @codeSystem = '1.2.40.0.34.5.40')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.1-2011-12-19T000000.html"
              test="count(hl7:title) &gt;= 1">(Brieftext): Element hl7:title ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.1-2011-12-19T000000.html"
              test="count(hl7:title) &lt;= 1">(Brieftext): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.1-2011-12-19T000000.html"
              test="count(hl7:text) &gt;= 1">(Brieftext): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.1-2011-12-19T000000.html"
              test="count(hl7:text) &lt;= 1">(Brieftext): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.1-2011-12-19T000000.html"
              test="count(hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]]) &lt;= 1">(Brieftext): Element hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]/hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']
Item: (Brieftext)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]/hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']"
         id="d20e4596-false-d36862e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.1-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Brieftext): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.1-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.2.1')">(Brieftext): Der Wert von root MUSS '1.2.40.0.34.11.1.2.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]/hl7:code[(@code = 'BRIEFT' and @codeSystem = '1.2.40.0.34.5.40')]
Item: (Brieftext)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]/hl7:code[(@code = 'BRIEFT' and @codeSystem = '1.2.40.0.34.5.40')]"
         id="d20e4601-false-d36877e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.1-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Brieftext): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.1-2011-12-19T000000.html"
              test="@nullFlavor or (@code='BRIEFT' and @codeSystem='1.2.40.0.34.5.40' and @displayName='Brieftext')">(Brieftext): Der Elementinhalt MUSS einer von 'code 'BRIEFT' codeSystem '1.2.40.0.34.5.40' displayName='Brieftext'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]/hl7:title
Item: (Brieftext)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]/hl7:title"
         id="d20e4614-false-d36893e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.1-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Brieftext): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.1-2011-12-19T000000.html"
              test="text()='Brieftext'">(Brieftext): Der Elementinhalt von 'hl7:title' MUSS ''Brieftext'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]/hl7:text
Item: (Brieftext)
-->


   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]]
Item: (Brieftext)
--></pattern>
