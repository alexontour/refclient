<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.1.2.6
Name: Vitalparameter (enhanced)
Description: Informationen zu den Vitalparametern (Körpertemperatur, Puls, Blutdruck, …).  Diese Sektion wird hauptsächlich bei Verlegungen von Pflegeheimen in Krankenhäuser oder in Notfällen angewandt.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.1.2.6-2011-12-19T000000">
   <title>Vitalparameter (enhanced)</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.6
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]]
Item: (VitalparameterEnhanced)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.6
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]
Item: (VitalparameterEnhanced)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]"
         id="d20e5049-false-d37691e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.6-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.2.6']) &gt;= 1">(VitalparameterEnhanced): Element hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.6-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.2.6']) &lt;= 1">(VitalparameterEnhanced): Element hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.6-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25']) &gt;= 1">(VitalparameterEnhanced): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.6-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25']) &lt;= 1">(VitalparameterEnhanced): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.6-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']) &gt;= 1">(VitalparameterEnhanced): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.6-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']) &lt;= 1">(VitalparameterEnhanced): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.6-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(VitalparameterEnhanced): Element hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.6-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(VitalparameterEnhanced): Element hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.6-2011-12-19T000000.html"
              test="count(hl7:title) &gt;= 1">(VitalparameterEnhanced): Element hl7:title ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.6-2011-12-19T000000.html"
              test="count(hl7:title) &lt;= 1">(VitalparameterEnhanced): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.6-2011-12-19T000000.html"
              test="count(hl7:text) &gt;= 1">(VitalparameterEnhanced): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.6-2011-12-19T000000.html"
              test="count(hl7:text) &lt;= 1">(VitalparameterEnhanced): Element hl7:text kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.6-2011-12-19T000000.html"
              test="count(hl7:entry) = 0">(VitalparameterEnhanced): Element hl7:entry DARF NICHT vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.6
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:templateId[@root = '1.2.40.0.34.11.1.2.6']
Item: (VitalparameterEnhanced)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:templateId[@root = '1.2.40.0.34.11.1.2.6']"
         id="d20e5056-false-d37762e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.6-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterEnhanced): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.6-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.2.6')">(VitalparameterEnhanced): Der Wert von root MUSS '1.2.40.0.34.11.1.2.6' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.6
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25']
Item: (VitalparameterEnhanced)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25']"
         id="d20e5061-false-d37777e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.6-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterEnhanced): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.6-2011-12-19T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.3.25')">(VitalparameterEnhanced): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.3.25' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.6
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']
Item: (VitalparameterEnhanced)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']"
         id="d20e5066-false-d37792e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.6-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterEnhanced): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.2.6-2011-12-19T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.16')">(VitalparameterEnhanced): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.16' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30002
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (VitalparameterAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d37793e94-false-d37808e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterAlleEIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30002-2011-12-19T000000.html"
              test="@nullFlavor or (@code='8716-3' and @codeSystem='2.16.840.1.113883.6.1')">(VitalparameterAlleEIS): Der Elementinhalt MUSS einer von 'code '8716-3' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30002
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:title
Item: (VitalparameterAlleEIS)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:title"
         id="d37793e105-false-d37824e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterAlleEIS): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30002-2011-12-19T000000.html"
              test="text()='Vitalparameter'">(VitalparameterAlleEIS): Der Elementinhalt von 'hl7:title' MUSS ''Vitalparameter'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30002
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:text
Item: (VitalparameterAlleEIS)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.2.6
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:entry
Item: (VitalparameterEnhanced)
-->
</pattern>
