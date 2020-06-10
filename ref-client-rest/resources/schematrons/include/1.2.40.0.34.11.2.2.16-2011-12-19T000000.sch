<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.16
Name: Auszüge aus erhobenen Befunden
Description: Beinhaltet Auszüge von Befunden in narrativer Form.  Die Angabe der Auszüge erfolgt nach Ermessen des Dokumenterstellers, allerdings soll zu jedem Auszug mindestens das Datum und die Art des Ursprungsbefundes angegeben werden.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.16-2011-12-19T000000">
   <title>Auszüge aus erhobenen Befunden</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.16
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]]
Item: (AuszuegeBefunde)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.16
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]
Item: (AuszuegeBefunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]"
         id="d20e11486-false-d190152e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.16-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']) &gt;= 1">(AuszuegeBefunde): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.16'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.16-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']) &lt;= 1">(AuszuegeBefunde): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.16'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.16-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'BEFERH' and @codeSystem = '1.2.40.0.34.5.40')]) &gt;= 1">(AuszuegeBefunde): Element hl7:code[(@code = 'BEFERH' and @codeSystem = '1.2.40.0.34.5.40')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.16-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'BEFERH' and @codeSystem = '1.2.40.0.34.5.40')]) &lt;= 1">(AuszuegeBefunde): Element hl7:code[(@code = 'BEFERH' and @codeSystem = '1.2.40.0.34.5.40')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.16-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(AuszuegeBefunde): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.16-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(AuszuegeBefunde): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.16-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(AuszuegeBefunde): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.16-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(AuszuegeBefunde): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.16
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']
Item: (AuszuegeBefunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']"
         id="d20e11490-false-d190195e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.16-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuszuegeBefunde): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.16-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.16')">(AuszuegeBefunde): Der Wert von root MUSS '1.2.40.0.34.11.2.2.16' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.16
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]/hl7:code[(@code = 'BEFERH' and @codeSystem = '1.2.40.0.34.5.40')]
Item: (AuszuegeBefunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]/hl7:code[(@code = 'BEFERH' and @codeSystem = '1.2.40.0.34.5.40')]"
         id="d20e11497-false-d190210e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.16-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuszuegeBefunde): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.16-2011-12-19T000000.html"
              test="@nullFlavor or (@code='BEFERH' and @codeSystem='1.2.40.0.34.5.40')">(AuszuegeBefunde): Der Elementinhalt MUSS einer von 'code 'BEFERH' codeSystem '1.2.40.0.34.5.40'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.16
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]/hl7:title[not(@nullFlavor)]
Item: (AuszuegeBefunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]/hl7:title[not(@nullFlavor)]"
         id="d20e11510-false-d190226e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.16-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuszuegeBefunde): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.16-2011-12-19T000000.html"
              test="text()='Auszüge aus erhobenen Befunden'">(AuszuegeBefunde): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Auszüge aus erhobenen Befunden'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.16
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]/hl7:text[not(@nullFlavor)]
Item: (AuszuegeBefunde)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.16']]/hl7:text[not(@nullFlavor)]"
         id="d20e11518-false-d190240e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.16-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AuszuegeBefunde): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
