<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.10.20.1.40
Name: Befundtext (Anmerkungen und Kommentare)-deprecated
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.10.20.1.40-2013-02-10T000001">
   <title>Befundtext (Anmerkungen und Kommentare)-deprecated</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.1.40
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]
Item: (Annotation-deprecated)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.1.40
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]
Item: (Annotation-deprecated)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]"
         id="d20e52940-false-d386376e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="string(@classCode) = ('ACT')">(Annotation-deprecated): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="string(@moodCode) = ('EVN')">(Annotation-deprecated): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40']) &gt;= 1">(Annotation-deprecated): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40']) &lt;= 1">(Annotation-deprecated): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']) &gt;= 1">(Annotation-deprecated): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']) &lt;= 1">(Annotation-deprecated): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="count(hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Annotation-deprecated): Element hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="count(hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Annotation-deprecated): Element hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="count(hl7:text[not(@nullFlavor)][hl7:reference]) &gt;= 1">(Annotation-deprecated): Element hl7:text[not(@nullFlavor)][hl7:reference] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="count(hl7:text[not(@nullFlavor)][hl7:reference]) &lt;= 1">(Annotation-deprecated): Element hl7:text[not(@nullFlavor)][hl7:reference] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="count(hl7:statusCode[@code = 'completed' or @nullFlavor]) &lt;= 1">(Annotation-deprecated): Element hl7:statusCode[@code = 'completed' or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.1.40
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40']
Item: (Annotation-deprecated)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40']"
         id="d20e52948-false-d386435e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Annotation-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.40')">(Annotation-deprecated): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.40' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.1.40
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']
Item: (Annotation-deprecated)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']"
         id="d20e52953-false-d386450e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Annotation-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.2')">(Annotation-deprecated): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.1.40
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]/hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Annotation-deprecated)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]/hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e52961-false-d386465e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Annotation-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="@nullFlavor or (@code='48767-8' and @codeSystem='2.16.840.1.113883.6.1')">(Annotation-deprecated): Der Elementinhalt MUSS einer von 'code '48767-8' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.1.40
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]/hl7:text[not(@nullFlavor)][hl7:reference]
Item: (Annotation-deprecated)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]/hl7:text[not(@nullFlavor)][hl7:reference]"
         id="d20e52968-false-d386481e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Annotation-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(Annotation-deprecated): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(Annotation-deprecated): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.1.40
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]/hl7:text[not(@nullFlavor)][hl7:reference]/hl7:reference[not(@nullFlavor)]
Item: (Annotation-deprecated)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]/hl7:text[not(@nullFlavor)][hl7:reference]/hl7:reference[not(@nullFlavor)]"
         id="d20e52970-false-d386500e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="@value">(Annotation-deprecated): Attribut @value MUSS vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.20.1.40
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]/hl7:statusCode[@code = 'completed' or @nullFlavor]
Item: (Annotation-deprecated)
-->

   <rule context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]/hl7:statusCode[@code = 'completed' or @nullFlavor]"
         id="d20e52976-false-d386512e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Annotation-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-2.16.840.1.113883.10.20.1.40-2013-02-10T000001.html"
              test="@nullFlavor or (@code='completed')">(Annotation-deprecated): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
</pattern>
