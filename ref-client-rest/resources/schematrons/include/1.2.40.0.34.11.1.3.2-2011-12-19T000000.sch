<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.1.3.2
Name: Logo Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.1.3.2-2011-12-19T000000">
   <title>Logo Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.2
Context: *[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]]
Item: (LogoEntry)
-->

   <rule context="*[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]]"
         id="d20e5500-false-d38826e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.2-2011-12-19T000000.html"
              test="count(hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]) &gt;= 1">(LogoEntry): Element hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.2-2011-12-19T000000.html"
              test="count(hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]) &lt;= 1">(LogoEntry): Element hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.2
Context: *[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]
Item: (LogoEntry)
-->

   <rule context="*[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]"
         id="d20e5527-false-d38843e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.2-2011-12-19T000000.html"
              test="string(@classCode) = ('OBS')">(LogoEntry): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.2-2011-12-19T000000.html"
              test="string(@moodCode) = ('EVN')">(LogoEntry): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.2-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']) &gt;= 1">(LogoEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.2-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']) &lt;= 1">(LogoEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.2-2011-12-19T000000.html"
              test="count(hl7:value[not(@nullFlavor)]) &gt;= 1">(LogoEntry): Element hl7:value[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.2-2011-12-19T000000.html"
              test="count(hl7:value[not(@nullFlavor)]) &lt;= 1">(LogoEntry): Element hl7:value[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.2
Context: *[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']
Item: (LogoEntry)
-->

   <rule context="*[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']"
         id="d20e5533-false-d38877e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.2-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LogoEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.2-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.3.2')">(LogoEntry): Der Wert von root MUSS '1.2.40.0.34.11.1.3.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.2
Context: *[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]/hl7:value[not(@nullFlavor)]
Item: (LogoEntry)
-->

   <rule context="*[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]/hl7:value[not(@nullFlavor)]"
         id="d20e5538-false-d38891e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.2-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LogoEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.2-2011-12-19T000000.html"
              test="@mediaType">(LogoEntry): Attribut @mediaType MUSS vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.2-2011-12-19T000000.html"
              test="not(@mediaType) or string-length(@mediaType)&gt;0">(LogoEntry): Attribute @mediaType MUSS vom Datentyp 'st' sein  - '<value-of select="@mediaType"/>'</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.2-2011-12-19T000000.html"
              test="string(@representation) = ('B64')">(LogoEntry): Der Wert von representation MUSS 'B64' sein. Gefunden: "<value-of select="@representation"/>"</assert>
   </rule>
</pattern>
