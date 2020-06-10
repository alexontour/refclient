<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.8.1.2.1
Name: Rezept Section
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000">
   <title>Rezept Section</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]
Item: (RezeptSection)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]
Item: (RezeptSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]"
         id="d20e43500-false-d346290e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(RezeptSection): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1']) &gt;= 1">(RezeptSection): Element hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1']) &lt;= 1">(RezeptSection): Element hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1']) &gt;= 1">(RezeptSection): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1']) &lt;= 1">(RezeptSection): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19']) &gt;= 1">(RezeptSection): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19']) &lt;= 1">(RezeptSection): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']) &gt;= 1">(RezeptSection): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']) &lt;= 1">(RezeptSection): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="count(hl7:id) &lt;= 1">(RezeptSection): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="count(hl7:code[(@code = '57828-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(RezeptSection): Element hl7:code[(@code = '57828-6' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="count(hl7:code[(@code = '57828-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(RezeptSection): Element hl7:code[(@code = '57828-6' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(RezeptSection): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(RezeptSection): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(RezeptSection): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(RezeptSection): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="count(hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]) &gt;= 1">(RezeptSection): Element hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]] ist required [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1']
Item: (RezeptSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1']"
         id="d20e43506-false-d346432e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RezeptSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.8.1.2.1')">(RezeptSection): Der Wert von root MUSS '1.2.40.0.34.11.8.1.2.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1']
Item: (RezeptSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1']"
         id="d20e43511-false-d346447e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RezeptSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.9.1.2.1')">(RezeptSection): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.9.1.2.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19']
Item: (RezeptSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19']"
         id="d20e43519-false-d346462e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RezeptSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.3.19')">(RezeptSection): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.3.19' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']
Item: (RezeptSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']"
         id="d20e43528-false-d346477e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RezeptSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.8')">(RezeptSection): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.8' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:id
Item: (RezeptSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:id"
         id="d20e43536-false-d346491e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RezeptSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:code[(@code = '57828-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (RezeptSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:code[(@code = '57828-6' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e43540-false-d346502e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RezeptSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="@nullFlavor or (@code='57828-6' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Prescription list' and @codeSystemName='LOINC')">(RezeptSection): Der Elementinhalt MUSS einer von 'code '57828-6' codeSystem '2.16.840.1.113883.6.1' displayName='Prescription list' codeSystemName='LOINC'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:title[not(@nullFlavor)]
Item: (RezeptSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:title[not(@nullFlavor)]"
         id="d20e43547-false-d346518e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RezeptSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="text()='Rezept'">(RezeptSection): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Rezept'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:text[not(@nullFlavor)]
Item: (RezeptSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:text[not(@nullFlavor)]"
         id="d20e43556-false-d346532e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RezeptSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]
Item: (RezeptSection)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.19'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]/hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.2.1-2014-01-31T000000.html"
              test="string(@typeCode) = ('DRIV') or not(@typeCode)">(RezeptSection): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
