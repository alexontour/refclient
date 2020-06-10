<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.9
Name: Weitere empfohlene Maßnahmen
Description: Weitere Therapieempfehlungen nach der Entlassung (außer Medikation).
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.9-2015-10-15T000000">
   <title>Weitere empfohlene Maßnahmen</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]
Item: (WeitereMassnahmen)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]
Item: (WeitereMassnahmen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]"
         id="d20e13126-false-d196038e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.9']) &gt;= 1">(WeitereMassnahmen): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.9']) &lt;= 1">(WeitereMassnahmen): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31']) &gt;= 1">(WeitereMassnahmen): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31']) &lt;= 1">(WeitereMassnahmen): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']) &gt;= 1">(WeitereMassnahmen): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']) &lt;= 1">(WeitereMassnahmen): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="count(hl7:code[(@code = '18776-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(WeitereMassnahmen): Element hl7:code[(@code = '18776-5' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="count(hl7:code[(@code = '18776-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(WeitereMassnahmen): Element hl7:code[(@code = '18776-5' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="count(hl7:title) &gt;= 1">(WeitereMassnahmen): Element hl7:title ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="count(hl7:title) &lt;= 1">(WeitereMassnahmen): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="count(hl7:text) &gt;= 1">(WeitereMassnahmen): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="count(hl7:text) &lt;= 1">(WeitereMassnahmen): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.9']
Item: (WeitereMassnahmen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.9']"
         id="d20e13128-false-d196135e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(WeitereMassnahmen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.9')">(WeitereMassnahmen): Der Wert von root MUSS '1.2.40.0.34.11.2.2.9' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31']
Item: (WeitereMassnahmen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31']"
         id="d20e13133-false-d196150e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(WeitereMassnahmen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.3.31')">(WeitereMassnahmen): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.3.31' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']
Item: (WeitereMassnahmen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']"
         id="d20e13138-false-d196165e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(WeitereMassnahmen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.10')">(WeitereMassnahmen): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.10' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]/hl7:code[(@code = '18776-5' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (WeitereMassnahmen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]/hl7:code[(@code = '18776-5' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e13143-false-d196180e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(WeitereMassnahmen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="@nullFlavor or (@code='18776-5' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Treatment plan')">(WeitereMassnahmen): Der Elementinhalt MUSS einer von 'code '18776-5' codeSystem '2.16.840.1.113883.6.1' displayName='Treatment plan'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]/hl7:title
Item: (WeitereMassnahmen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]/hl7:title"
         id="d20e13153-false-d196196e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(WeitereMassnahmen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="text()='Weitere empfohlene Maßnahmen'">(WeitereMassnahmen): Der Elementinhalt von 'hl7:title' MUSS ''Weitere empfohlene Maßnahmen'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]/hl7:text
Item: (WeitereMassnahmen)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]/hl7:text"
         id="d20e13160-false-d196210e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(WeitereMassnahmen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]
Item: (WeitereMassnahmen)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]]
Item: (WeitereMassnahmen)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.10']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(WeitereMassnahmen): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(WeitereMassnahmen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]]
Item: (WeitereMassnahmen)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(WeitereMassnahmen): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(WeitereMassnahmen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.9
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.24']]]
Item: (WeitereMassnahmen)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.9'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.10']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.24']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(WeitereMassnahmen): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.9-2015-10-15T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(WeitereMassnahmen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
