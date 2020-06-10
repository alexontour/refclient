<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.1.2.3
Name: Beilagen
Description: 
                 Sonstige Beilagen, außer denjenigen Dokumenten, die in „Patientenverfügungen und andere juridische Dokumente“ angegeben sind. 
                 Achtung: Ein „Referenzieren“ auf Beilagen ist NICHT ERLAUBT. Beigelegte Dokumente/Bilder MÜSSEN dem Dokument in technisch eingebetteter Form beiliegen. 
            
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.1.2.3-2015-04-23T000000">
   <title>Beilagen</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]
Item: (Beilagen)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]
Item: (Beilagen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]"
         id="d20e4770-false-d37104e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.3-2015-04-23T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']) &gt;= 1">(Beilagen): Element hl7:templateId[@root = '1.2.40.0.34.11.1.2.3'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.3-2015-04-23T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']) &lt;= 1">(Beilagen): Element hl7:templateId[@root = '1.2.40.0.34.11.1.2.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.3-2015-04-23T000000.html"
              test="count(hl7:code[(@code = 'BEIL' and @codeSystem = '1.2.40.0.34.5.40')]) &gt;= 1">(Beilagen): Element hl7:code[(@code = 'BEIL' and @codeSystem = '1.2.40.0.34.5.40')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.3-2015-04-23T000000.html"
              test="count(hl7:code[(@code = 'BEIL' and @codeSystem = '1.2.40.0.34.5.40')]) &lt;= 1">(Beilagen): Element hl7:code[(@code = 'BEIL' and @codeSystem = '1.2.40.0.34.5.40')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.3-2015-04-23T000000.html"
              test="count(hl7:title) &gt;= 1">(Beilagen): Element hl7:title ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.3-2015-04-23T000000.html"
              test="count(hl7:title) &lt;= 1">(Beilagen): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.3-2015-04-23T000000.html"
              test="count(hl7:text) &gt;= 1">(Beilagen): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.3-2015-04-23T000000.html"
              test="count(hl7:text) &lt;= 1">(Beilagen): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.3-2015-04-23T000000.html"
              test="count(hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]) &gt;= 1">(Beilagen): Element hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] ist required [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]/hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']
Item: (Beilagen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]/hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']"
         id="d20e4775-false-d37157e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.3-2015-04-23T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Beilagen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.3-2015-04-23T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.2.3')">(Beilagen): Der Wert von root MUSS '1.2.40.0.34.11.1.2.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]/hl7:code[(@code = 'BEIL' and @codeSystem = '1.2.40.0.34.5.40')]
Item: (Beilagen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]/hl7:code[(@code = 'BEIL' and @codeSystem = '1.2.40.0.34.5.40')]"
         id="d20e4780-false-d37172e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.3-2015-04-23T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Beilagen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.3-2015-04-23T000000.html"
              test="@nullFlavor or (@code='BEIL' and @codeSystem='1.2.40.0.34.5.40')">(Beilagen): Der Elementinhalt MUSS einer von 'code 'BEIL' codeSystem '1.2.40.0.34.5.40'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]/hl7:title
Item: (Beilagen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]/hl7:title"
         id="d20e4785-false-d37188e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.3-2015-04-23T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Beilagen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.3-2015-04-23T000000.html"
              test="text()='Beilagen'">(Beilagen): Der Elementinhalt von 'hl7:title' MUSS ''Beilagen'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]/hl7:text
Item: (Beilagen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]/hl7:text"
         id="d20e4791-false-d37202e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.3-2015-04-23T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Beilagen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.3
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]
Item: (Beilagen)
--></pattern>
