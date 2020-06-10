<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.7
Name: Empfohlene Medikation (enhanced)
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.7-2011-12-19T000000">
   <title>Empfohlene Medikation (enhanced)</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.7
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]]
Item: (EmpfohleneMedikationEnhanced)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.7
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]
Item: (EmpfohleneMedikationEnhanced)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]"
         id="d20e12941-false-d195118e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.7-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']) &gt;= 1">(EmpfohleneMedikationEnhanced): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.7'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.7-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']) &lt;= 1">(EmpfohleneMedikationEnhanced): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.7'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.7-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '10183-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(EmpfohleneMedikationEnhanced): Element hl7:code[(@code = '10183-2' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.7-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '10183-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(EmpfohleneMedikationEnhanced): Element hl7:code[(@code = '10183-2' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.7-2011-12-19T000000.html"
              test="count(hl7:title) &gt;= 1">(EmpfohleneMedikationEnhanced): Element hl7:title ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.7-2011-12-19T000000.html"
              test="count(hl7:title) &lt;= 1">(EmpfohleneMedikationEnhanced): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.7-2011-12-19T000000.html"
              test="count(hl7:text) &gt;= 1">(EmpfohleneMedikationEnhanced): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.7-2011-12-19T000000.html"
              test="count(hl7:text) &lt;= 1">(EmpfohleneMedikationEnhanced): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.7-2011-12-19T000000.html"
              test="count(hl7:entry) = 0">(EmpfohleneMedikationEnhanced): Element hl7:entry DARF NICHT vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.7
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']
Item: (EmpfohleneMedikationEnhanced)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']"
         id="d20e12969-false-d195171e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.7-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EmpfohleneMedikationEnhanced): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.7-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.7')">(EmpfohleneMedikationEnhanced): Der Wert von root MUSS '1.2.40.0.34.11.2.2.7' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30004
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]/hl7:code[(@code = '10183-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (EmpfohleneMedikationAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]/hl7:code[(@code = '10183-2' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d195172e134-false-d195187e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30004-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EmpfohleneMedikationAlleEIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30004-2011-12-19T000000.html"
              test="@nullFlavor or (@code='10183-2' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Hospital discharge medications')">(EmpfohleneMedikationAlleEIS): Der Elementinhalt MUSS einer von 'code '10183-2' codeSystem '2.16.840.1.113883.6.1' displayName='Hospital discharge medications'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30004
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]/hl7:title
Item: (EmpfohleneMedikationAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]/hl7:title"
         id="d195172e145-false-d195203e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30004-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EmpfohleneMedikationAlleEIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30004-2011-12-19T000000.html"
              test="text()='Empfohlene Medikation'">(EmpfohleneMedikationAlleEIS): Der Elementinhalt von 'hl7:title' MUSS ''Empfohlene Medikation'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30004
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]/hl7:text
Item: (EmpfohleneMedikationAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]/hl7:text"
         id="d195172e151-false-d195217e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30004-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EmpfohleneMedikationAlleEIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.7
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.7']]/hl7:entry
Item: (EmpfohleneMedikationEnhanced)
-->
</pattern>
