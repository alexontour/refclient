<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.12
Name: Zusammenfassung des Aufenthalts
Description: Kurzbeschreibung des Verlaufs des stat. Aufenthaltes (Dekurs).
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.12-2011-12-19T000000">
   <title>Zusammenfassung des Aufenthalts</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.12
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]]
Item: (Aufenthaltszusammenfassung)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.12
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]
Item: (Aufenthaltszusammenfassung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]"
         id="d20e10966-false-d189008e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.12-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.12']) &gt;= 1">(Aufenthaltszusammenfassung): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.12-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.12']) &lt;= 1">(Aufenthaltszusammenfassung): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.12-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']) &gt;= 1">(Aufenthaltszusammenfassung): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.12-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']) &lt;= 1">(Aufenthaltszusammenfassung): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.12-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '8648-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Aufenthaltszusammenfassung): Element hl7:code[(@code = '8648-8' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.12-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '8648-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Aufenthaltszusammenfassung): Element hl7:code[(@code = '8648-8' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.12-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(Aufenthaltszusammenfassung): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.12-2011-12-19T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(Aufenthaltszusammenfassung): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.12-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(Aufenthaltszusammenfassung): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.12-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(Aufenthaltszusammenfassung): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.12
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.12']
Item: (Aufenthaltszusammenfassung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.12']"
         id="d20e10970-false-d189060e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.12-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Aufenthaltszusammenfassung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.12-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.12')">(Aufenthaltszusammenfassung): Der Wert von root MUSS '1.2.40.0.34.11.2.2.12' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.12
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']
Item: (Aufenthaltszusammenfassung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']"
         id="d20e10975-false-d189075e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.12-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Aufenthaltszusammenfassung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.12-2011-12-19T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.3.5')">(Aufenthaltszusammenfassung): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.3.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.12
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]/hl7:code[(@code = '8648-8' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Aufenthaltszusammenfassung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]/hl7:code[(@code = '8648-8' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e10982-false-d189090e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.12-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Aufenthaltszusammenfassung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.12-2011-12-19T000000.html"
              test="@nullFlavor or (@code='8648-8' and @codeSystem='2.16.840.1.113883.6.1')">(Aufenthaltszusammenfassung): Der Elementinhalt MUSS einer von 'code '8648-8' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.12
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]/hl7:title[not(@nullFlavor)]
Item: (Aufenthaltszusammenfassung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]/hl7:title[not(@nullFlavor)]"
         id="d20e10995-false-d189106e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.12-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Aufenthaltszusammenfassung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.12-2011-12-19T000000.html"
              test="text()='Zusammenfassung des Aufenthalts'">(Aufenthaltszusammenfassung): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Zusammenfassung des Aufenthalts'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.12
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]/hl7:text[not(@nullFlavor)]
Item: (Aufenthaltszusammenfassung)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.12'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.5']]/hl7:text[not(@nullFlavor)]"
         id="d20e11003-false-d189120e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.12-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Aufenthaltszusammenfassung): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
