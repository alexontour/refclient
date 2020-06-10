<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.1
Name: Aufnahmegrund
Description: Der Grund der Einweisung. Beschreibung der Symptome, Verdachtsdiagnosen, etc.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.1-2011-12-19T000000">
   <title>Aufnahmegrund</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]
Item: (Aufnahmegrund)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]
Item: (Aufnahmegrund)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]"
         id="d20e10617-false-d188201e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.1-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.1']) &gt;= 1">(Aufnahmegrund): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.1-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.1']) &lt;= 1">(Aufnahmegrund): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.1-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']) &gt;= 1">(Aufnahmegrund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.1-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']) &lt;= 1">(Aufnahmegrund): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.1-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '42349-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Aufnahmegrund): Element hl7:code[(@code = '42349-1' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.1-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '42349-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Aufnahmegrund): Element hl7:code[(@code = '42349-1' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.1-2011-12-19T000000.html"
              test="count(hl7:title) &gt;= 1">(Aufnahmegrund): Element hl7:title ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.1-2011-12-19T000000.html"
              test="count(hl7:title) &lt;= 1">(Aufnahmegrund): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.1-2011-12-19T000000.html"
              test="count(hl7:text) &gt;= 1">(Aufnahmegrund): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.1-2011-12-19T000000.html"
              test="count(hl7:text) &lt;= 1">(Aufnahmegrund): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.1']
Item: (Aufnahmegrund)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.1']"
         id="d20e10621-false-d188253e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.1-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Aufnahmegrund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.1-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.1')">(Aufnahmegrund): Der Wert von root MUSS '1.2.40.0.34.11.2.2.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']
Item: (Aufnahmegrund)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']"
         id="d20e10626-false-d188268e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.1-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Aufnahmegrund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.1-2011-12-19T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.3.1')">(Aufnahmegrund): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.3.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]/hl7:code[(@code = '42349-1' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Aufnahmegrund)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]/hl7:code[(@code = '42349-1' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e10633-false-d188283e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.1-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Aufnahmegrund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.1-2011-12-19T000000.html"
              test="@nullFlavor or (@code='42349-1' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Reason for Referral')">(Aufnahmegrund): Der Elementinhalt MUSS einer von 'code '42349-1' codeSystem '2.16.840.1.113883.6.1' displayName='Reason for Referral'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]/hl7:title
Item: (Aufnahmegrund)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]/hl7:title"
         id="d20e10646-false-d188299e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.1-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Aufnahmegrund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.1-2011-12-19T000000.html"
              test="text()='Aufnahmegrund'">(Aufnahmegrund): Der Elementinhalt von 'hl7:title' MUSS ''Aufnahmegrund'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]/hl7:text
Item: (Aufnahmegrund)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.1']]/hl7:text"
         id="d20e10654-false-d188313e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.1-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Aufnahmegrund): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
