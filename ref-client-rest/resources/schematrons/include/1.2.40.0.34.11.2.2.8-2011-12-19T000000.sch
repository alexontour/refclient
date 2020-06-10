<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.8
Name: Empfohlene Medikation (full support)
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.8-2011-12-19T000000">
   <title>Empfohlene Medikation (full support)</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.8
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]
Item: (EmpfohleneMedikationFull)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.8
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]
Item: (EmpfohleneMedikationFull)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]"
         id="d20e13046-false-d195733e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.8-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.8']) &gt;= 1">(EmpfohleneMedikationFull): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.8-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.8']) &lt;= 1">(EmpfohleneMedikationFull): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.8-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']) &gt;= 1">(EmpfohleneMedikationFull): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.8-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']) &lt;= 1">(EmpfohleneMedikationFull): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.8-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '10183-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(EmpfohleneMedikationFull): Element hl7:code[(@code = '10183-2' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.8-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '10183-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(EmpfohleneMedikationFull): Element hl7:code[(@code = '10183-2' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.8-2011-12-19T000000.html"
              test="count(hl7:title) &gt;= 1">(EmpfohleneMedikationFull): Element hl7:title ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.8-2011-12-19T000000.html"
              test="count(hl7:title) &lt;= 1">(EmpfohleneMedikationFull): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.8-2011-12-19T000000.html"
              test="count(hl7:text) &gt;= 1">(EmpfohleneMedikationFull): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.8-2011-12-19T000000.html"
              test="count(hl7:text) &lt;= 1">(EmpfohleneMedikationFull): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.8-2011-12-19T000000.html"
              test="count(hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.2.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2']]]) &gt;= 1">(EmpfohleneMedikationFull): Element hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.2.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2']]] ist required [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.8
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.8']
Item: (EmpfohleneMedikationFull)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.8']"
         id="d20e13050-false-d195837e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.8-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EmpfohleneMedikationFull): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.8-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.8')">(EmpfohleneMedikationFull): Der Wert von root MUSS '1.2.40.0.34.11.2.2.8' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.8
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']
Item: (EmpfohleneMedikationFull)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']"
         id="d20e13055-false-d195852e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.8-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EmpfohleneMedikationFull): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.8-2011-12-19T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.3.22')">(EmpfohleneMedikationFull): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.3.22' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30004
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]/hl7:code[(@code = '10183-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (EmpfohleneMedikationAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]/hl7:code[(@code = '10183-2' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d195853e134-false-d195868e0">
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
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]/hl7:title
Item: (EmpfohleneMedikationAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]/hl7:title"
         id="d195853e145-false-d195884e0">
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
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]/hl7:text
Item: (EmpfohleneMedikationAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]/hl7:text"
         id="d195853e151-false-d195898e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30004-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EmpfohleneMedikationAlleEIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.8
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]/hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.2.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2']]]
Item: (EmpfohleneMedikationFull)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.8'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.22']]/hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.2.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.8-2011-12-19T000000.html"
              test="string(@typeCode) = ('DRIV') or not(@typeCode)">(EmpfohleneMedikationFull): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
