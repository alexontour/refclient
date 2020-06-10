<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.1.2.2
Name: AbschliessendeBemerkung
Description: Ein am Ende des Briefes formulierter Freitext entsprechend einer Grußformel. Die Angabe von medizinisch fachlich relevanter Information in diesem Abschnitt ist NICHT ERLAUBT.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.1.2.2-2012-07-14T000000">
   <title>AbschliessendeBemerkung</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]
Item: (AbschliessendeBemerkung)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]
Item: (AbschliessendeBemerkung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]"
         id="d20e4682-false-d36957e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.2-2012-07-14T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']) &gt;= 1">(AbschliessendeBemerkung): Element hl7:templateId[@root = '1.2.40.0.34.11.1.2.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.2-2012-07-14T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']) &lt;= 1">(AbschliessendeBemerkung): Element hl7:templateId[@root = '1.2.40.0.34.11.1.2.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.2-2012-07-14T000000.html"
              test="count(hl7:code[(@code = 'ABBEM' and @codeSystem = '1.2.40.0.34.5.40')]) &gt;= 1">(AbschliessendeBemerkung): Element hl7:code[(@code = 'ABBEM' and @codeSystem = '1.2.40.0.34.5.40')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.2-2012-07-14T000000.html"
              test="count(hl7:code[(@code = 'ABBEM' and @codeSystem = '1.2.40.0.34.5.40')]) &lt;= 1">(AbschliessendeBemerkung): Element hl7:code[(@code = 'ABBEM' and @codeSystem = '1.2.40.0.34.5.40')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.2-2012-07-14T000000.html"
              test="count(hl7:title) &gt;= 1">(AbschliessendeBemerkung): Element hl7:title ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.2-2012-07-14T000000.html"
              test="count(hl7:title) &lt;= 1">(AbschliessendeBemerkung): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.2-2012-07-14T000000.html"
              test="count(hl7:text) &gt;= 1">(AbschliessendeBemerkung): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.2-2012-07-14T000000.html"
              test="count(hl7:text) &lt;= 1">(AbschliessendeBemerkung): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]/hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']
Item: (AbschliessendeBemerkung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]/hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']"
         id="d20e4689-false-d37007e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.2-2012-07-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AbschliessendeBemerkung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.2-2012-07-14T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.2.2')">(AbschliessendeBemerkung): Der Wert von root MUSS '1.2.40.0.34.11.1.2.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]/hl7:code[(@code = 'ABBEM' and @codeSystem = '1.2.40.0.34.5.40')]
Item: (AbschliessendeBemerkung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]/hl7:code[(@code = 'ABBEM' and @codeSystem = '1.2.40.0.34.5.40')]"
         id="d20e4694-false-d37022e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.2-2012-07-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AbschliessendeBemerkung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.2-2012-07-14T000000.html"
              test="@nullFlavor or (@code='ABBEM' and @codeSystem='1.2.40.0.34.5.40' and @displayName='Abschließende Bemerkungen')">(AbschliessendeBemerkung): Der Elementinhalt MUSS einer von 'code 'ABBEM' codeSystem '1.2.40.0.34.5.40' displayName='Abschließende Bemerkungen'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]/hl7:title
Item: (AbschliessendeBemerkung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]/hl7:title"
         id="d20e4699-false-d37038e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.2-2012-07-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AbschliessendeBemerkung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.2-2012-07-14T000000.html"
              test="text()='Abschließende Bemerkungen'">(AbschliessendeBemerkung): Der Elementinhalt von 'hl7:title' MUSS ''Abschließende Bemerkungen'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]/hl7:text
Item: (AbschliessendeBemerkung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]/hl7:text"
         id="d20e4705-false-d37052e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.2-2012-07-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AbschliessendeBemerkung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]
Item: (AbschliessendeBemerkung)
--></pattern>
