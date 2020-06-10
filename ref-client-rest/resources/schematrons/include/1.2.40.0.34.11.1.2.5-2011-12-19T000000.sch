<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.1.2.5
Name: Anmerkungen
Description: 
                 Ein Freitext für beliebige weitere nicht-medizinische Anmerkungen zum Patienten. Der Text soll keine fachlich relevante Information beinhalten. z.B. „Die Patientin mag besonders Kamelien.“ 
                 
                     
                 
            
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.1.2.5-2011-12-19T000000">
   <title>Anmerkungen</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]]
Item: (Anmerkungen)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]
Item: (Anmerkungen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]"
         id="d20e5003-false-d37562e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.5-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']) &gt;= 1">(Anmerkungen): Element hl7:templateId[@root = '1.2.40.0.34.11.1.2.5'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.5-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']) &lt;= 1">(Anmerkungen): Element hl7:templateId[@root = '1.2.40.0.34.11.1.2.5'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.5-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'ANM' and @codeSystem = '1.2.40.0.34.5.40')]) &gt;= 1">(Anmerkungen): Element hl7:code[(@code = 'ANM' and @codeSystem = '1.2.40.0.34.5.40')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.5-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'ANM' and @codeSystem = '1.2.40.0.34.5.40')]) &lt;= 1">(Anmerkungen): Element hl7:code[(@code = 'ANM' and @codeSystem = '1.2.40.0.34.5.40')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.5-2011-12-19T000000.html"
              test="count(hl7:title) &gt;= 1">(Anmerkungen): Element hl7:title ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.5-2011-12-19T000000.html"
              test="count(hl7:title) &lt;= 1">(Anmerkungen): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.5-2011-12-19T000000.html"
              test="count(hl7:text) &gt;= 1">(Anmerkungen): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.5-2011-12-19T000000.html"
              test="count(hl7:text) &lt;= 1">(Anmerkungen): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]/hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']
Item: (Anmerkungen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]/hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']"
         id="d20e5010-false-d37605e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.5-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Anmerkungen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.5-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.2.5')">(Anmerkungen): Der Wert von root MUSS '1.2.40.0.34.11.1.2.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]/hl7:code[(@code = 'ANM' and @codeSystem = '1.2.40.0.34.5.40')]
Item: (Anmerkungen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]/hl7:code[(@code = 'ANM' and @codeSystem = '1.2.40.0.34.5.40')]"
         id="d20e5015-false-d37620e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.5-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Anmerkungen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.5-2011-12-19T000000.html"
              test="@nullFlavor or (@code='ANM' and @codeSystem='1.2.40.0.34.5.40' and @displayName='Anmerkungen')">(Anmerkungen): Der Elementinhalt MUSS einer von 'code 'ANM' codeSystem '1.2.40.0.34.5.40' displayName='Anmerkungen'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]/hl7:title
Item: (Anmerkungen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]/hl7:title"
         id="d20e5020-false-d37636e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.5-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Anmerkungen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.5-2011-12-19T000000.html"
              test="text()='Anmerkungen'">(Anmerkungen): Der Elementinhalt von 'hl7:title' MUSS ''Anmerkungen'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]/hl7:text
Item: (Anmerkungen)
-->
</pattern>
