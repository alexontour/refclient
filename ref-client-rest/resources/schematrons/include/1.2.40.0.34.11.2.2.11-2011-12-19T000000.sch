<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.2.2.11
Name: Entlassungszustand
Description: Informationen zu Belastbarkeit und Arbeitsunfähigkeit.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.2.2.11-2011-12-19T000000">
   <title>Entlassungszustand</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.11
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]]
Item: (Entlassungszustand)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.11
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]
Item: (Entlassungszustand)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]"
         id="d20e10829-false-d188666e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.11']) &gt;= 1">(Entlassungszustand): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.2.11']) &lt;= 1">(Entlassungszustand): Element hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17']) &gt;= 1">(Entlassungszustand): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17']) &lt;= 1">(Entlassungszustand): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']) &gt;= 1">(Entlassungszustand): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']) &lt;= 1">(Entlassungszustand): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '47420-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Entlassungszustand): Element hl7:code[(@code = '47420-5' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '47420-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Entlassungszustand): Element hl7:code[(@code = '47420-5' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="count(hl7:title) &gt;= 1">(Entlassungszustand): Element hl7:title ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="count(hl7:title) &lt;= 1">(Entlassungszustand): Element hl7:title kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="count(hl7:text) &gt;= 1">(Entlassungszustand): Element hl7:text ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="count(hl7:text) &lt;= 1">(Entlassungszustand): Element hl7:text kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.11
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.11']
Item: (Entlassungszustand)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]/hl7:templateId[@root = '1.2.40.0.34.11.2.2.11']"
         id="d20e10833-false-d188727e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Entlassungszustand): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.2.2.11')">(Entlassungszustand): Der Wert von root MUSS '1.2.40.0.34.11.2.2.11' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.11
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17']
Item: (Entlassungszustand)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17']"
         id="d20e10838-false-d188742e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Entlassungszustand): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.3.17')">(Entlassungszustand): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.3.17' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.11
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']
Item: (Entlassungszustand)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']"
         id="d20e10843-false-d188757e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Entlassungszustand): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.5')">(Entlassungszustand): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.11
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]/hl7:code[(@code = '47420-5' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Entlassungszustand)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]/hl7:code[(@code = '47420-5' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e10851-false-d188772e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Entlassungszustand): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="@nullFlavor or (@code='47420-5' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Functional status assessment')">(Entlassungszustand): Der Elementinhalt MUSS einer von 'code '47420-5' codeSystem '2.16.840.1.113883.6.1' displayName='Functional status assessment'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.11
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]/hl7:title
Item: (Entlassungszustand)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]/hl7:title"
         id="d20e10863-false-d188788e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Entlassungszustand): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="text()='Entlassungszustand'">(Entlassungszustand): Der Elementinhalt von 'hl7:title' MUSS ''Entlassungszustand'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.2.2.11
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]/hl7:text
Item: (Entlassungszustand)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.2.2.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.17'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.5']]/hl7:text"
         id="d20e10871-false-d188802e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.2.2.11-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Entlassungszustand): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
