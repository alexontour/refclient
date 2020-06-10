<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.3.3.2
Name: Entlassungsmanagement-Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.3.3.2-2011-12-19T000000">
   <title>Entlassungsmanagement-Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.2
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]
Item: (EntlassungsmanagementEntry)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.2
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]
Item: (EntlassungsmanagementEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]"
         id="d20e28276-false-d259821e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="string(@classCode) = ('ACT')">(EntlassungsmanagementEntry): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="string(@moodCode) = ('INT')">(EntlassungsmanagementEntry): Der Wert von moodCode MUSS 'INT' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.3.2']) &gt;= 1">(EntlassungsmanagementEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.3.2']) &lt;= 1">(EntlassungsmanagementEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']) &gt;= 1">(EntlassungsmanagementEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']) &lt;= 1">(EntlassungsmanagementEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(EntlassungsmanagementEntry): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(EntlassungsmanagementEntry): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'GEPLENTLDAT' and @codeSystem = '1.2.40.0.34.5.28')]) &gt;= 1">(EntlassungsmanagementEntry): Element hl7:code[(@code = 'GEPLENTLDAT' and @codeSystem = '1.2.40.0.34.5.28')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'GEPLENTLDAT' and @codeSystem = '1.2.40.0.34.5.28')]) &lt;= 1">(EntlassungsmanagementEntry): Element hl7:code[(@code = 'GEPLENTLDAT' and @codeSystem = '1.2.40.0.34.5.28')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(EntlassungsmanagementEntry): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(EntlassungsmanagementEntry): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:statusCode[@code = 'normal']) &gt;= 1">(EntlassungsmanagementEntry): Element hl7:statusCode[@code = 'normal'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:statusCode[@code = 'normal']) &lt;= 1">(EntlassungsmanagementEntry): Element hl7:statusCode[@code = 'normal'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(EntlassungsmanagementEntry): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(EntlassungsmanagementEntry): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.2
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:templateId[@root = '1.2.40.0.34.11.3.3.2']
Item: (EntlassungsmanagementEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:templateId[@root = '1.2.40.0.34.11.3.3.2']"
         id="d20e28287-false-d259898e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsmanagementEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3.3.2')">(EntlassungsmanagementEntry): Der Wert von root MUSS '1.2.40.0.34.11.3.3.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.2
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']
Item: (EntlassungsmanagementEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']"
         id="d20e28292-false-d259913e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsmanagementEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2')">(EntlassungsmanagementEntry): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.2
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:id[not(@nullFlavor)]
Item: (EntlassungsmanagementEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:id[not(@nullFlavor)]"
         id="d20e28298-false-d259927e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsmanagementEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.2
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:code[(@code = 'GEPLENTLDAT' and @codeSystem = '1.2.40.0.34.5.28')]
Item: (EntlassungsmanagementEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:code[(@code = 'GEPLENTLDAT' and @codeSystem = '1.2.40.0.34.5.28')]"
         id="d20e28310-false-d259938e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsmanagementEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="@nullFlavor or (@code='GEPLENTLDAT' and @codeSystem='1.2.40.0.34.5.28' and @displayName='Geplantes Entlassungsdatum')">(EntlassungsmanagementEntry): Der Elementinhalt MUSS einer von 'code 'GEPLENTLDAT' codeSystem '1.2.40.0.34.5.28' displayName='Geplantes Entlassungsdatum'' sein.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:originalText) &lt;= 1">(EntlassungsmanagementEntry): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.2
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:code[(@code = 'GEPLENTLDAT' and @codeSystem = '1.2.40.0.34.5.28')]/hl7:originalText
Item: (EntlassungsmanagementEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:code[(@code = 'GEPLENTLDAT' and @codeSystem = '1.2.40.0.34.5.28')]/hl7:originalText"
         id="d20e28319-false-d259960e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsmanagementEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.2
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:text[not(@nullFlavor)]
Item: (EntlassungsmanagementEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:text[not(@nullFlavor)]"
         id="d20e28332-false-d259970e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsmanagementEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(EntlassungsmanagementEntry): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(EntlassungsmanagementEntry): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.2
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]
Item: (EntlassungsmanagementEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]"
         id="d20e28339-false-d259989e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsmanagementEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.2
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:statusCode[@code = 'normal']
Item: (EntlassungsmanagementEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:statusCode[@code = 'normal']"
         id="d20e28342-false-d260000e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsmanagementEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="@nullFlavor or (@code='normal')">(EntlassungsmanagementEntry): Der Elementinhalt MUSS einer von 'code 'normal'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.2
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (EntlassungsmanagementEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d20e28352-false-d260016e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsmanagementEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &gt;= 1">(EntlassungsmanagementEntry): Element hl7:low[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:low[not(@nullFlavor)]) &lt;= 1">(EntlassungsmanagementEntry): Element hl7:low[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:high[@nullFlavor = 'NI']) &gt;= 1">(EntlassungsmanagementEntry): Element hl7:high[@nullFlavor = 'NI'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="count(hl7:high[@nullFlavor = 'NI']) &lt;= 1">(EntlassungsmanagementEntry): Element hl7:high[@nullFlavor = 'NI'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.2
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]
Item: (EntlassungsmanagementEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]"
         id="d20e28375-false-d260043e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsmanagementEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="not(*)">(EntlassungsmanagementEntry): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3.3.2
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[@nullFlavor = 'NI']
Item: (EntlassungsmanagementEntry)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[@nullFlavor = 'NI']"
         id="d20e28377-false-d260056e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsmanagementEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="not(*)">(EntlassungsmanagementEntry): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3.3.2-2011-12-19T000000.html"
              test="string(@nullFlavor) = ('NI')">(EntlassungsmanagementEntry): Der Wert von nullFlavor MUSS 'NI' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>
</pattern>
