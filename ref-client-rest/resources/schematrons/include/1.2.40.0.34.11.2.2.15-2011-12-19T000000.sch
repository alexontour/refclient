<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.15
Name: Ausstehende Befunde
Description: Beinhaltet die Hinweise auf noch ausstehende Befunde in narrativer Form als Information für den Dokumentempfänger. In vorläufigen Entlassungsdokumenten sind oftmals noch nicht alle Befunde ausformuliert. Diese Sektion dient dazu, die noch ausstehenden Befunde als Information für den Dokumentempfänger bekanntzugeben. Dabei soll ein kurzer Vermerk für jeden ausstehenden Befund angegeben werden.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.15-2011-12-19T000000">
   <title>Ausstehende Befunde</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.15
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]]
Item: (AusstehendeBefunde)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.15
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]
Item: (AusstehendeBefunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]"
         id="d20e11368-false-d189890e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.15-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']) &gt;= 1">(AusstehendeBefunde): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.15'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.15-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']) &lt;= 1">(AusstehendeBefunde): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.15'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.15-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'BEFAUS' and @codeSystem = '1.2.40.0.34.5.40')]) &gt;= 1">(AusstehendeBefunde): Element hl7:code[(@code = 'BEFAUS' and @codeSystem = '1.2.40.0.34.5.40')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.15-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'BEFAUS' and @codeSystem = '1.2.40.0.34.5.40')]) &lt;= 1">(AusstehendeBefunde): Element hl7:code[(@code = 'BEFAUS' and @codeSystem = '1.2.40.0.34.5.40')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.15-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(AusstehendeBefunde): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.15-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(AusstehendeBefunde): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.15-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(AusstehendeBefunde): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.15-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(AusstehendeBefunde): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.15
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']
Item: (AusstehendeBefunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']"
         id="d20e11370-false-d189933e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.15-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AusstehendeBefunde): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.15-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.15')">(AusstehendeBefunde): Der Wert von root MUSS '1.2.40.0.34.11.2.2.15' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.15
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]/hl7:code[(@code = 'BEFAUS' and @codeSystem = '1.2.40.0.34.5.40')]
Item: (AusstehendeBefunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]/hl7:code[(@code = 'BEFAUS' and @codeSystem = '1.2.40.0.34.5.40')]"
         id="d20e11375-false-d189948e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.15-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AusstehendeBefunde): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.15-2011-12-19T000000.html"
              test="@nullFlavor or (@code='BEFAUS' and @codeSystem='1.2.40.0.34.5.40')">(AusstehendeBefunde): Der Elementinhalt MUSS einer von 'code 'BEFAUS' codeSystem '1.2.40.0.34.5.40'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.15
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]/hl7:title[not(@nullFlavor)]
Item: (AusstehendeBefunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]/hl7:title[not(@nullFlavor)]"
         id="d20e11385-false-d189964e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.15-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AusstehendeBefunde): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.15-2011-12-19T000000.html"
              test="text()='Ausstehende Befunde'">(AusstehendeBefunde): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Ausstehende Befunde'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.15
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]/hl7:text[not(@nullFlavor)]
Item: (AusstehendeBefunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.15']]/hl7:text[not(@nullFlavor)]"
         id="d20e11391-false-d189978e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.15-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AusstehendeBefunde): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
