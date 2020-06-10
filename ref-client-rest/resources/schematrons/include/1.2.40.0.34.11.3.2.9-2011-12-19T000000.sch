<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.3.2.9
Name: Schlafen
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.3.2.9-2011-12-19T000000">
   <title>Schlafen</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]
Item: (Schlafen)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]
Item: (Schlafen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]"
         id="d20e27653-false-d257820e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.9-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']) &gt;= 1">(Schlafen): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.9'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.9-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']) &lt;= 1">(Schlafen): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.9'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.9-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'PFSCHL' and @codeSystem = '1.2.40.0.34.5.40')]) &gt;= 1">(Schlafen): Element hl7:code[(@code = 'PFSCHL' and @codeSystem = '1.2.40.0.34.5.40')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.9-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'PFSCHL' and @codeSystem = '1.2.40.0.34.5.40')]) &lt;= 1">(Schlafen): Element hl7:code[(@code = 'PFSCHL' and @codeSystem = '1.2.40.0.34.5.40')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.9-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Schlafen): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.9-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Schlafen): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.9-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Schlafen): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.9-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Schlafen): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.9-2011-12-19T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]) &lt;= 1">(Schlafen): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.9-2011-12-19T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]) &lt;= 1">(Schlafen): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']
Item: (Schlafen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']"
         id="d20e27657-false-d257885e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.9-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Schlafen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.9-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3.2.9')">(Schlafen): Der Wert von root MUSS '1.2.40.0.34.11.3.2.9' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/hl7:code[(@code = 'PFSCHL' and @codeSystem = '1.2.40.0.34.5.40')]
Item: (Schlafen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/hl7:code[(@code = 'PFSCHL' and @codeSystem = '1.2.40.0.34.5.40')]"
         id="d20e27664-false-d257900e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.9-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Schlafen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.9-2011-12-19T000000.html"
              test="@nullFlavor or (@code='PFSCHL' and @codeSystem='1.2.40.0.34.5.40')">(Schlafen): Der Elementinhalt MUSS einer von 'code 'PFSCHL' codeSystem '1.2.40.0.34.5.40'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/hl7:title[not(@nullFlavor)]
Item: (Schlafen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/hl7:title[not(@nullFlavor)]"
         id="d20e27677-false-d257916e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.9-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Schlafen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.9-2011-12-19T000000.html"
              test="text()='Schlafen'">(Schlafen): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Schlafen'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/hl7:text[not(@nullFlavor)]
Item: (Schlafen)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30032
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]
Item: (RisikenHilfsmittelRessourcen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]"
         id="d257932e8-false-d257943e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30032-2013-11-07T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(RisikenHilfsmittelRessourcen): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30032-2013-11-07T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(RisikenHilfsmittelRessourcen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30032
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]
Item: (RisikenHilfsmittelRessourcen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]"
         id="d257932e15-false-d257961e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30032-2013-11-07T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(RisikenHilfsmittelRessourcen): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30032-2013-11-07T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(RisikenHilfsmittelRessourcen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
