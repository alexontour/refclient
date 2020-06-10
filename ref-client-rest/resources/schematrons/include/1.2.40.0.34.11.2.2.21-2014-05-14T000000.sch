<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.21
Name: Medikation bei Einweisung (full)
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.21-2014-05-14T000000">
   <title>Medikation bei Einweisung (full)</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.21
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]
Item: (MedikationEinweisungFull)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.21
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]
Item: (MedikationEinweisungFull)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]"
         id="d20e11959-false-d191878e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.21-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.21']) &gt;= 1">(MedikationEinweisungFull): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.21-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.21']) &lt;= 1">(MedikationEinweisungFull): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.21-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']) &gt;= 1">(MedikationEinweisungFull): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.21-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']) &lt;= 1">(MedikationEinweisungFull): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.21-2014-05-14T000000.html"
              test="count(hl7:code[(@code = '42346-7' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(MedikationEinweisungFull): Element hl7:code[(@code = '42346-7' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.21-2014-05-14T000000.html"
              test="count(hl7:code[(@code = '42346-7' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(MedikationEinweisungFull): Element hl7:code[(@code = '42346-7' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.21-2014-05-14T000000.html"
              test="count(hl7:title) &gt;= 1">(MedikationEinweisungFull): Element hl7:title ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.21-2014-05-14T000000.html"
              test="count(hl7:title) &lt;= 1">(MedikationEinweisungFull): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.21-2014-05-14T000000.html"
              test="count(hl7:text) &gt;= 1">(MedikationEinweisungFull): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.21-2014-05-14T000000.html"
              test="count(hl7:text) &lt;= 1">(MedikationEinweisungFull): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.21-2014-05-14T000000.html"
              test="count(hl7:entry[hl7:substanceAdministration/hl7:templateId/@root='1.2.40.0.34.11.8.1.3.3']) &lt;= 1">(MedikationEinweisungFull): Element hl7:entry[hl7:substanceAdministration/hl7:templateId/@root='1.2.40.0.34.11.8.1.3.3'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.21
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.21']
Item: (MedikationEinweisungFull)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.21']"
         id="d20e11961-false-d191943e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.21-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationEinweisungFull): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.21-2014-05-14T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.21')">(MedikationEinweisungFull): Der Wert von root MUSS '1.2.40.0.34.11.2.2.21' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.21
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']
Item: (MedikationEinweisungFull)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']"
         id="d20e11966-false-d191958e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.21-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationEinweisungFull): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.21-2014-05-14T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.3.20')">(MedikationEinweisungFull): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.3.20' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30005
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]/hl7:code[(@code = '42346-7' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (MedikationEinweisungAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]/hl7:code[(@code = '42346-7' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d191959e162-false-d191974e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30005-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationEinweisungAlleEIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30005-2011-12-19T000000.html"
              test="@nullFlavor or (@code='42346-7' and @codeSystem='2.16.840.1.113883.6.1')">(MedikationEinweisungAlleEIS): Der Elementinhalt MUSS einer von 'code '42346-7' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30005
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]/hl7:title
Item: (MedikationEinweisungAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]/hl7:title"
         id="d191959e168-false-d191990e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30005-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationEinweisungAlleEIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30005-2011-12-19T000000.html"
              test="text()='Medikation bei Einweisung'">(MedikationEinweisungAlleEIS): Der Elementinhalt von 'hl7:title' MUSS ''Medikation bei Einweisung'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30005
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]/hl7:text
Item: (MedikationEinweisungAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]/hl7:text"
         id="d191959e174-false-d192004e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30005-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationEinweisungAlleEIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.21
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]/hl7:entry[hl7:substanceAdministration/hl7:templateId/@root='1.2.40.0.34.11.8.1.3.1']
Item: (MedikationEinweisungFull)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]/hl7:entry[hl7:substanceAdministration/hl7:templateId/@root='1.2.40.0.34.11.8.1.3.1']">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.21-2014-05-14T000000.html"
              test="string(@typeCode) = ('DRIV') or not(@typeCode)">(MedikationEinweisungFull): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.21
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]/hl7:entry[hl7:supply/hl7:templateId/@root='1.2.40.0.34.11.8.2.3.1']
Item: (MedikationEinweisungFull)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]/hl7:entry[hl7:supply/hl7:templateId/@root='1.2.40.0.34.11.8.2.3.1']">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.21-2014-05-14T000000.html"
              test="string(@typeCode) = ('DRIV') or not(@typeCode)">(MedikationEinweisungFull): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.21
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]/hl7:entry[hl7:substanceAdministration/hl7:templateId/@root='1.2.40.0.34.11.8.1.3.3']
Item: (MedikationEinweisungFull)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.21'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.20']]/hl7:entry[hl7:substanceAdministration/hl7:templateId/@root='1.2.40.0.34.11.8.1.3.3']">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.21-2014-05-14T000000.html"
              test="string(@typeCode) = ('DRIV') or not(@typeCode)">(MedikationEinweisungFull): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
