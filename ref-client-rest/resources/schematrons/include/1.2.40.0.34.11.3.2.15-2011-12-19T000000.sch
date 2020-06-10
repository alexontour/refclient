<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.3.2.15
Name: Medikamentenverabreichung
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.3.2.15-2011-12-19T000000">
   <title>Medikamentenverabreichung</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.15
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]
Item: (Medikamentenverabreichung)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.15
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]
Item: (Medikamentenverabreichung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]"
         id="d20e26875-false-d255345e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.15-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']) &gt;= 1">(Medikamentenverabreichung): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.15'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.15-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']) &lt;= 1">(Medikamentenverabreichung): Element hl7:templateId[@root = '1.2.40.0.34.11.3.2.15'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.15-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'PFMED' and @codeSystem = '1.2.40.0.34.5.40')]) &gt;= 1">(Medikamentenverabreichung): Element hl7:code[(@code = 'PFMED' and @codeSystem = '1.2.40.0.34.5.40')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.15-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'PFMED' and @codeSystem = '1.2.40.0.34.5.40')]) &lt;= 1">(Medikamentenverabreichung): Element hl7:code[(@code = 'PFMED' and @codeSystem = '1.2.40.0.34.5.40')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.15-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Medikamentenverabreichung): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.15-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Medikamentenverabreichung): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.15-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Medikamentenverabreichung): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.15-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Medikamentenverabreichung): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.15
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']
Item: (Medikamentenverabreichung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]/hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']"
         id="d20e26877-false-d255394e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.15-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Medikamentenverabreichung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.15-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3.2.15')">(Medikamentenverabreichung): Der Wert von root MUSS '1.2.40.0.34.11.3.2.15' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.15
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]/hl7:code[(@code = 'PFMED' and @codeSystem = '1.2.40.0.34.5.40')]
Item: (Medikamentenverabreichung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]/hl7:code[(@code = 'PFMED' and @codeSystem = '1.2.40.0.34.5.40')]"
         id="d20e26882-false-d255409e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.15-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Medikamentenverabreichung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.15-2011-12-19T000000.html"
              test="@nullFlavor or (@code='PFMED' and @codeSystem='1.2.40.0.34.5.40')">(Medikamentenverabreichung): Der Elementinhalt MUSS einer von 'code 'PFMED' codeSystem '1.2.40.0.34.5.40'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.15
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]/hl7:title[not(@nullFlavor)]
Item: (Medikamentenverabreichung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]/hl7:title[not(@nullFlavor)]"
         id="d20e26892-false-d255425e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.15-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Medikamentenverabreichung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.2.15-2011-12-19T000000.html"
              test="text()='Medikamentenverabreichung'">(Medikamentenverabreichung): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Medikamentenverabreichung'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.15
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]/hl7:text[not(@nullFlavor)]
Item: (Medikamentenverabreichung)
-->


   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.2.15
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]
Item: (Medikamentenverabreichung)
--></pattern>
