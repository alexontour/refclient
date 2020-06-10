<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.10.1.4.3.4.1.2.1
Name: Rezept Section-deprecated
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000">
   <title>Rezept Section-deprecated</title>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]
Item: (RezeptSection-deprecated)
-->

   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]
Item: (RezeptSection-deprecated)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]"
         id="d20e644-false-d12129e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(RezeptSection-deprecated): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1']) &gt;= 1">(RezeptSection-deprecated): Element hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1']) &lt;= 1">(RezeptSection-deprecated): Element hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1']) &gt;= 1">(RezeptSection-deprecated): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1']) &lt;= 1">(RezeptSection-deprecated): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19']) &gt;= 1">(RezeptSection-deprecated): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19']) &lt;= 1">(RezeptSection-deprecated): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']) &gt;= 1">(RezeptSection-deprecated): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']) &lt;= 1">(RezeptSection-deprecated): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="count(hl7:id) &lt;= 1">(RezeptSection-deprecated): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="count(hl7:code[(@code = '57828-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(RezeptSection-deprecated): Element hl7:code[(@code = '57828-6' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="count(hl7:code[(@code = '57828-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(RezeptSection-deprecated): Element hl7:code[(@code = '57828-6' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(RezeptSection-deprecated): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(RezeptSection-deprecated): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(RezeptSection-deprecated): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(RezeptSection-deprecated): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="count(hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]) &gt;= 1">(RezeptSection-deprecated): Element hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]] ist required [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1']
Item: (RezeptSection-deprecated)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1']"
         id="d20e650-false-d12271e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RezeptSection-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="string(@root) = ('1.2.40.0.10.1.4.3.4.1.2.1')">(RezeptSection-deprecated): Der Wert von root MUSS '1.2.40.0.10.1.4.3.4.1.2.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1']
Item: (RezeptSection-deprecated)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1']"
         id="d20e655-false-d12286e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RezeptSection-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.9.1.2.1')">(RezeptSection-deprecated): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.9.1.2.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19']
Item: (RezeptSection-deprecated)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19']"
         id="d20e663-false-d12301e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RezeptSection-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.3.19')">(RezeptSection-deprecated): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.3.19' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']
Item: (RezeptSection-deprecated)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']"
         id="d20e672-false-d12316e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RezeptSection-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.8')">(RezeptSection-deprecated): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.8' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:id
Item: (RezeptSection-deprecated)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:id"
         id="d20e680-false-d12330e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RezeptSection-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:code[(@code = '57828-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (RezeptSection-deprecated)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:code[(@code = '57828-6' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e684-false-d12341e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RezeptSection-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="@nullFlavor or (@code='57828-6' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Prescriptions' and @codeSystemName='LOINC')">(RezeptSection-deprecated): Der Elementinhalt MUSS einer von 'code '57828-6' codeSystem '2.16.840.1.113883.6.1' displayName='Prescriptions' codeSystemName='LOINC'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:title[not(@nullFlavor)]
Item: (RezeptSection-deprecated)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:title[not(@nullFlavor)]"
         id="d20e691-false-d12357e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RezeptSection-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="text()='Rezept'">(RezeptSection-deprecated): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Rezept'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:text[not(@nullFlavor)]
Item: (RezeptSection-deprecated)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:text[not(@nullFlavor)]"
         id="d20e700-false-d12371e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RezeptSection-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]
Item: (RezeptSection-deprecated)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.1-2013-12-16T000000.html"
              test="string(@typeCode) = ('DRIV') or not(@typeCode)">(RezeptSection-deprecated): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
