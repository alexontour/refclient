<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.3.2.3
Name: Mobilität
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.3.2.3-2011-12-19T000000">
   <title>Mobilität</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]
Item: (Mobilitaet)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]
Item: (Mobilitaet)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]"
         id="d20e27227-false-d256477e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.3-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']) &gt;= 1">(Mobilitaet): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.3'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.3-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']) &lt;= 1">(Mobilitaet): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.3-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'PFMOB' and @codeSystem = '1.2.40.0.34.5.40')]) &gt;= 1">(Mobilitaet): Element hl7:code[(@code = 'PFMOB' and @codeSystem = '1.2.40.0.34.5.40')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.3-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'PFMOB' and @codeSystem = '1.2.40.0.34.5.40')]) &lt;= 1">(Mobilitaet): Element hl7:code[(@code = 'PFMOB' and @codeSystem = '1.2.40.0.34.5.40')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.3-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Mobilitaet): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.3-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Mobilitaet): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.3-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Mobilitaet): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.3-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Mobilitaet): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.3-2011-12-19T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]) &lt;= 1">(Mobilitaet): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.3-2011-12-19T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]) &lt;= 1">(Mobilitaet): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']
Item: (Mobilitaet)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']"
         id="d20e27229-false-d256542e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.3-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Mobilitaet): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.3-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3.2.3')">(Mobilitaet): Der Wert von root MUSS '1.2.40.0.34.11.3.2.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/hl7:code[(@code = 'PFMOB' and @codeSystem = '1.2.40.0.34.5.40')]
Item: (Mobilitaet)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/hl7:code[(@code = 'PFMOB' and @codeSystem = '1.2.40.0.34.5.40')]"
         id="d20e27234-false-d256557e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.3-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Mobilitaet): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.3-2011-12-19T000000.html"
              test="@nullFlavor or (@code='PFMOB' and @codeSystem='1.2.40.0.34.5.40')">(Mobilitaet): Der Elementinhalt MUSS einer von 'code 'PFMOB' codeSystem '1.2.40.0.34.5.40'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/hl7:title[not(@nullFlavor)]
Item: (Mobilitaet)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/hl7:title[not(@nullFlavor)]"
         id="d20e27244-false-d256573e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.3-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Mobilitaet): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.3-2011-12-19T000000.html"
              test="text()='Mobilität'">(Mobilitaet): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Mobilität'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/hl7:text[not(@nullFlavor)]
Item: (Mobilitaet)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30032
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]
Item: (RisikenHilfsmittelRessourcen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]"
         id="d256589e8-false-d256600e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30032-2013-11-07T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(RisikenHilfsmittelRessourcen): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30032-2013-11-07T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(RisikenHilfsmittelRessourcen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30032
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]
Item: (RisikenHilfsmittelRessourcen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]"
         id="d256589e15-false-d256618e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30032-2013-11-07T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(RisikenHilfsmittelRessourcen): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30032-2013-11-07T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(RisikenHilfsmittelRessourcen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
