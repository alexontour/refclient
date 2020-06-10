<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.3.6.1.4.1.19376.1.3.3.2.1
Name: Speciality-Section
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000">
   <title>Speciality-Section</title>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]
Item: (SpecialitySection)
-->

   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]
Item: (SpecialitySection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]"
         id="d20e52400-false-d383996e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="string(@classCode) = ('DOCSECT')">(SpecialitySection): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']) &gt;= 1">(SpecialitySection): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']) &lt;= 1">(SpecialitySection): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(SpecialitySection): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(SpecialitySection): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(SpecialitySection): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(SpecialitySection): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(SpecialitySection): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(SpecialitySection): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="count(hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]) &gt;= 1">(SpecialitySection): Element hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']] ist required [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']
Item: (SpecialitySection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']"
         id="d20e52406-false-d384104e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpecialitySection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.3.2.1')">(SpecialitySection): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.3.2.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:id
Item: (SpecialitySection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:id"
         id="d20e52411-false-d384118e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpecialitySection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (SpecialitySection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d20e52416-false-d384131e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpecialitySection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(SpecialitySection): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.47 ELGA_Laborstruktur (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:title[not(@nullFlavor)]
Item: (SpecialitySection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:title[not(@nullFlavor)]"
         id="d20e52423-false-d384151e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpecialitySection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:text[not(@nullFlavor)]
Item: (SpecialitySection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:text[not(@nullFlavor)]"
         id="d20e52427-false-d384161e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpecialitySection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]
Item: (SpecialitySection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]"
         id="d20e52429-false-d384220e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="string(@typeCode) = ('DRIV') or not(@typeCode)">(SpecialitySection): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']) &gt;= 1">(SpecialitySection): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']) &lt;= 1">(SpecialitySection): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="count(hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]) &gt;= 1">(SpecialitySection): Element hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="count(hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]) &lt;= 1">(SpecialitySection): Element hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']
Item: (SpecialitySection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']"
         id="d20e52463-false-d384331e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpecialitySection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.3.6.1.4.1.19376.1.3.3.2.1-2013-11-07T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.1')">(SpecialitySection): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30020
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]
Item: (SpezimenActEntryAllgemein)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]"
         id="d384332e23-false-d384421e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30020-2017-02-22T000000.html"
              test="string(@classCode) = ('ACT')">(SpezimenActEntryAllgemein): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30020-2017-02-22T000000.html"
              test="string(@moodCode) = ('EVN')">(SpezimenActEntryAllgemein): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30020-2017-02-22T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(SpezimenActEntryAllgemein): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30020-2017-02-22T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(SpezimenActEntryAllgemein): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30020-2017-02-22T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(SpezimenActEntryAllgemein): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30020-2017-02-22T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(SpezimenActEntryAllgemein): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]] | hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]] | hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]] | hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]] | hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]] | hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.4.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]] | hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]] | hl7:entryRelationship[hl7:observationMedia])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30020-2017-02-22T000000.html"
              test="$elmcount &gt;= 1">(SpezimenActEntryAllgemein): Auswahl (hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]  oder  hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]  oder  hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]  oder  hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]  oder  hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]  oder  hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.4.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]  oder  hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]]  oder  hl7:entryRelationship[hl7:observationMedia]) enthält nicht genügend Elemente [min 1x]</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30020
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (SpezimenActEntryAllgemein)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d384332e29-false-d384660e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30020-2017-02-22T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpezimenActEntryAllgemein): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30020-2017-02-22T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(SpezimenActEntryAllgemein): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.47 ELGA_Laborstruktur (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.30020
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:statusCode[@code = 'completed']
Item: (SpezimenActEntryAllgemein)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:statusCode[@code = 'completed']"
         id="d384332e39-false-d384681e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30020-2017-02-22T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpezimenActEntryAllgemein): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30020-2017-02-22T000000.html"
              test="@nullFlavor or (@code='completed')">(SpezimenActEntryAllgemein): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30020
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]
Item: (SpezimenActEntryAllgemein)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]">
      <extends rule="d384721e0-false-d384725e0"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30020-2017-02-22T000000.html"
              test="string(@typeCode) = ('COMP')">(SpezimenActEntryAllgemein): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30021
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]
Item: (SpecimenCollection)
-->
   <rule id="d384721e0-false-d384725e0" abstract="true">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]) &gt;= 1">(SpecimenCollection): Element hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]) &lt;= 1">(SpecimenCollection): Element hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30021
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]
Item: (SpecimenCollection)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="string(@classCode) = ('PROC')">(SpecimenCollection): Der Wert von classCode MUSS 'PROC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="string(@moodCode) = ('EVN')">(SpecimenCollection): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']) &gt;= 1">(SpecimenCollection): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']) &lt;= 1">(SpecimenCollection): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:code[(@code = '33882-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(SpecimenCollection): Element hl7:code[(@code = '33882-2' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:code[(@code = '33882-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(SpecimenCollection): Element hl7:code[(@code = '33882-2' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:effectiveTime) &gt;= 1">(SpecimenCollection): Element hl7:effectiveTime ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(SpecimenCollection): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(SpecimenCollection): Element hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]) &lt;= 1">(SpecimenCollection): Element hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:participant[not(@nullFlavor)][@typeCode = 'PRD'][hl7:participantRole[@classCode = 'SPEC']]) &gt;= 1">(SpecimenCollection): Element hl7:participant[not(@nullFlavor)][@typeCode = 'PRD'][hl7:participantRole[@classCode = 'SPEC']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:participant[not(@nullFlavor)][@typeCode = 'PRD'][hl7:participantRole[@classCode = 'SPEC']]) &lt;= 1">(SpecimenCollection): Element hl7:participant[not(@nullFlavor)][@typeCode = 'PRD'][hl7:participantRole[@classCode = 'SPEC']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30021
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']
Item: (SpecimenCollection)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpecimenCollection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.1.2')">(SpecimenCollection): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.1.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30021
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:code[(@code = '33882-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (SpecimenCollection)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:code[(@code = '33882-2' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpecimenCollection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="@nullFlavor or (@code='33882-2' and @codeSystem='2.16.840.1.113883.6.1')">(SpecimenCollection): Der Elementinhalt MUSS einer von 'code '33882-2' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30021
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:effectiveTime
Item: (SpecimenCollection)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:effectiveTime">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpecimenCollection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30021
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (SpecimenCollection)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.52-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpecimenCollection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.52-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(SpecimenCollection): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.52 ELGA_HumanActSite (DYNAMIC)' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30021
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]
Item: (SpecimenCollection)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="string(@typeCode) = ('PRF')">(SpecimenCollection): Der Wert von typeCode MUSS 'PRF' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &gt;= 1">(SpecimenCollection): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &lt;= 1">(SpecimenCollection): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30021
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]
Item: (SpecimenCollection)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:id) &gt;= 1">(SpecimenCollection): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:addr) &lt;= 1">(SpecimenCollection): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &gt;= 1">(SpecimenCollection): Element hl7:assignedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &lt;= 1">(SpecimenCollection): Element hl7:assignedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(SpecimenCollection): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id
Item: (AssignedEntityElements)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr
Item: (AssignedEntityElements)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom
Item: (AssignedEntityElements)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (AssignedEntityElements)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(AssignedEntityElements): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(AssignedEntityElements): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(AssignedEntityElements): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(AssignedEntityElements): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization
Item: (AssignedEntityElements)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(AssignedEntityElements): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(AssignedEntityElements): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(AssignedEntityElements): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(AssignedEntityElements): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="count(hl7:addr) &lt;= 1">(AssignedEntityElements): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30021
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:participant[not(@nullFlavor)][@typeCode = 'PRD'][hl7:participantRole[@classCode = 'SPEC']]
Item: (SpecimenCollection)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:participant[not(@nullFlavor)][@typeCode = 'PRD'][hl7:participantRole[@classCode = 'SPEC']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="string(@typeCode) = ('PRD')">(SpecimenCollection): Der Wert von typeCode MUSS 'PRD' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]) &gt;= 1">(SpecimenCollection): Element hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]) &lt;= 1">(SpecimenCollection): Element hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30021
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:participant[not(@nullFlavor)][@typeCode = 'PRD'][hl7:participantRole[@classCode = 'SPEC']]/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]
Item: (SpecimenCollection)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:participant[not(@nullFlavor)][@typeCode = 'PRD'][hl7:participantRole[@classCode = 'SPEC']]/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="string(@classCode) = ('SPEC')">(SpecimenCollection): Der Wert von classCode MUSS 'SPEC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(SpecimenCollection): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(SpecimenCollection): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]) &gt;= 1">(SpecimenCollection): Element hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]) &lt;= 1">(SpecimenCollection): Element hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30021
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:participant[not(@nullFlavor)][@typeCode = 'PRD'][hl7:participantRole[@classCode = 'SPEC']]/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:id[not(@nullFlavor)]
Item: (SpecimenCollection)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:participant[not(@nullFlavor)][@typeCode = 'PRD'][hl7:participantRole[@classCode = 'SPEC']]/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:id[not(@nullFlavor)]">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpecimenCollection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30021
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:participant[not(@nullFlavor)][@typeCode = 'PRD'][hl7:participantRole[@classCode = 'SPEC']]/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]
Item: (SpecimenCollection)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:participant[not(@nullFlavor)][@typeCode = 'PRD'][hl7:participantRole[@classCode = 'SPEC']]/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(SpecimenCollection): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(SpecimenCollection): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30021
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:participant[not(@nullFlavor)][@typeCode = 'PRD'][hl7:participantRole[@classCode = 'SPEC']]/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (SpecimenCollection)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:participant[not(@nullFlavor)][@typeCode = 'PRD'][hl7:participantRole[@classCode = 'SPEC']]/hl7:participantRole[hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:playingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpecimenCollection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.46-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(SpecimenCollection): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.46 ELGA_SpecimenType (DYNAMIC)' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30021
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]]
Item: (SpecimenCollection)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30021-2014-03-04T000000.html"
              test="string(@typeCode) = ('COMP')">(SpecimenCollection): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30022
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]]
Item: (SpecimenReceived)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30022
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]]/hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]
Item: (SpecimenReceived)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]]/hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30022-2014-03-04T000000.html"
              test="string(@classCode) = ('ACT')">(SpecimenReceived): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30022-2014-03-04T000000.html"
              test="string(@moodCode) = ('EVN')">(SpecimenReceived): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30022-2014-03-04T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']) &gt;= 1">(SpecimenReceived): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30022-2014-03-04T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']) &lt;= 1">(SpecimenReceived): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30022-2014-03-04T000000.html"
              test="count(hl7:code[(@code = 'SPRECEIVE' and @codeSystem = '1.3.5.1.4.1.19376.1.5.3.2')]) &gt;= 1">(SpecimenReceived): Element hl7:code[(@code = 'SPRECEIVE' and @codeSystem = '1.3.5.1.4.1.19376.1.5.3.2')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30022-2014-03-04T000000.html"
              test="count(hl7:code[(@code = 'SPRECEIVE' and @codeSystem = '1.3.5.1.4.1.19376.1.5.3.2')]) &lt;= 1">(SpecimenReceived): Element hl7:code[(@code = 'SPRECEIVE' and @codeSystem = '1.3.5.1.4.1.19376.1.5.3.2')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30022-2014-03-04T000000.html"
              test="count(hl7:effectiveTime) &gt;= 1">(SpecimenReceived): Element hl7:effectiveTime ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30022-2014-03-04T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(SpecimenReceived): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30022
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]]/hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']
Item: (SpecimenReceived)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]]/hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30022-2014-03-04T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpecimenReceived): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30022-2014-03-04T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.1.3')">(SpecimenReceived): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.1.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30022
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]]/hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]/hl7:code[(@code = 'SPRECEIVE' and @codeSystem = '1.3.5.1.4.1.19376.1.5.3.2')]
Item: (SpecimenReceived)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]]/hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]/hl7:code[(@code = 'SPRECEIVE' and @codeSystem = '1.3.5.1.4.1.19376.1.5.3.2')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30022-2014-03-04T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpecimenReceived): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30022-2014-03-04T000000.html"
              test="@nullFlavor or (@code='SPRECEIVE' and @codeSystem='1.3.5.1.4.1.19376.1.5.3.2')">(SpecimenReceived): Der Elementinhalt MUSS einer von 'code 'SPRECEIVE' codeSystem '1.3.5.1.4.1.19376.1.5.3.2'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30022
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]]/hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]/hl7:effectiveTime
Item: (SpecimenReceived)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]]/hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]/hl7:effectiveTime">
      <extends rule="TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30022-2014-03-04T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SpecimenReceived): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30022-2014-03-04T000000.html"
              test="not(*)">(SpecimenReceived): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30022
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]]/hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.4.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]
Item: (SpecimenReceived)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]]/hl7:procedure[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.2']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]]/hl7:act[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.3']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.4.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30022-2014-03-04T000000.html"
              test="string(@typeCode) = ('COMP')">(SpecimenReceived): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30020
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]
Item: (SpezimenActEntryAllgemein)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30020-2017-02-22T000000.html"
              test="string(@typeCode) = ('COMP')">(SpezimenActEntryAllgemein): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30020
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]
Item: (SpezimenActEntryAllgemein)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30020-2017-02-22T000000.html"
              test="string(@typeCode) = ('COMP')">(SpezimenActEntryAllgemein): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30020
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]
Item: (SpezimenActEntryAllgemein)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30020-2017-02-22T000000.html"
              test="string(@typeCode) = ('COMP')">(SpezimenActEntryAllgemein): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30020
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]
Item: (SpezimenActEntryAllgemein)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30020-2017-02-22T000000.html"
              test="string(@typeCode) = ('COMP')">(SpezimenActEntryAllgemein): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30025
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]
Item: (KulturellerKeimnachweis)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30025
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]
Item: (KulturellerKeimnachweis)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="string(@classCode) = ('CLUSTER')">(KulturellerKeimnachweis): Der Wert von classCode MUSS 'CLUSTER' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="string(@moodCode) = ('EVN')">(KulturellerKeimnachweis): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']) &gt;= 1">(KulturellerKeimnachweis): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']) &lt;= 1">(KulturellerKeimnachweis): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(KulturellerKeimnachweis): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(KulturellerKeimnachweis): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(KulturellerKeimnachweis): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="count(hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]) &gt;= 1">(KulturellerKeimnachweis): Element hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="count(hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]) &lt;= 1">(KulturellerKeimnachweis): Element hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:component[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]] | hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]] | hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="$elmcount &gt;= 1">(KulturellerKeimnachweis): Auswahl (hl7:component[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]  oder  hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]  oder  hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]) enthält nicht genügend Elemente [min 1x]</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30025
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']
Item: (KulturellerKeimnachweis)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KulturellerKeimnachweis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.1.5')">(KulturellerKeimnachweis): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.1.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30025
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:statusCode[@code = 'completed']
Item: (KulturellerKeimnachweis)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:statusCode[@code = 'completed']">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KulturellerKeimnachweis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="@nullFlavor or (@code='completed')">(KulturellerKeimnachweis): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30025
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:effectiveTime
Item: (KulturellerKeimnachweis)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:effectiveTime">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KulturellerKeimnachweis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30025
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]
Item: (KulturellerKeimnachweis)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="string(@typeCode) = ('SPC')">(KulturellerKeimnachweis): Der Wert von typeCode MUSS 'SPC' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="count(hl7:specimenRole[not(@nullFlavor)][@typeCode = 'SPEC'][hl7:specimenPlayingEntity[@typeCode = 'MIC']]) &gt;= 1">(KulturellerKeimnachweis): Element hl7:specimenRole[not(@nullFlavor)][@typeCode = 'SPEC'][hl7:specimenPlayingEntity[@typeCode = 'MIC']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="count(hl7:specimenRole[not(@nullFlavor)][@typeCode = 'SPEC'][hl7:specimenPlayingEntity[@typeCode = 'MIC']]) &lt;= 1">(KulturellerKeimnachweis): Element hl7:specimenRole[not(@nullFlavor)][@typeCode = 'SPEC'][hl7:specimenPlayingEntity[@typeCode = 'MIC']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30025
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]/hl7:specimenRole[not(@nullFlavor)][@typeCode = 'SPEC'][hl7:specimenPlayingEntity[@typeCode = 'MIC']]
Item: (KulturellerKeimnachweis)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]/hl7:specimenRole[not(@nullFlavor)][@typeCode = 'SPEC'][hl7:specimenPlayingEntity[@typeCode = 'MIC']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="string(@typeCode) = ('SPEC')">(KulturellerKeimnachweis): Der Wert von typeCode MUSS 'SPEC' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="count(hl7:specimenPlayingEntity[not(@nullFlavor)][@typeCode = 'MIC']) &gt;= 1">(KulturellerKeimnachweis): Element hl7:specimenPlayingEntity[not(@nullFlavor)][@typeCode = 'MIC'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="count(hl7:specimenPlayingEntity[not(@nullFlavor)][@typeCode = 'MIC']) &lt;= 1">(KulturellerKeimnachweis): Element hl7:specimenPlayingEntity[not(@nullFlavor)][@typeCode = 'MIC'] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30025
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]/hl7:specimenRole[not(@nullFlavor)][@typeCode = 'SPEC'][hl7:specimenPlayingEntity[@typeCode = 'MIC']]/hl7:specimenPlayingEntity[not(@nullFlavor)][@typeCode = 'MIC']
Item: (KulturellerKeimnachweis)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]/hl7:specimenRole[not(@nullFlavor)][@typeCode = 'SPEC'][hl7:specimenPlayingEntity[@typeCode = 'MIC']]/hl7:specimenPlayingEntity[not(@nullFlavor)][@typeCode = 'MIC']">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="string(@typeCode) = ('MIC')">(KulturellerKeimnachweis): Der Wert von typeCode MUSS 'MIC' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="count(hl7:code[@nullFlavor = 'NA']) &gt;= 1">(KulturellerKeimnachweis): Element hl7:code[@nullFlavor = 'NA'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="count(hl7:code[@nullFlavor = 'NA']) &lt;= 1">(KulturellerKeimnachweis): Element hl7:code[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30025
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]/hl7:specimenRole[not(@nullFlavor)][@typeCode = 'SPEC'][hl7:specimenPlayingEntity[@typeCode = 'MIC']]/hl7:specimenPlayingEntity[not(@nullFlavor)][@typeCode = 'MIC']/hl7:code[@nullFlavor = 'NA']
Item: (KulturellerKeimnachweis)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]/hl7:specimenRole[not(@nullFlavor)][@typeCode = 'SPEC'][hl7:specimenPlayingEntity[@typeCode = 'MIC']]/hl7:specimenPlayingEntity[not(@nullFlavor)][@typeCode = 'MIC']/hl7:code[@nullFlavor = 'NA']">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KulturellerKeimnachweis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="string(@nullFlavor) = ('NA')">(KulturellerKeimnachweis): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="count(hl7:originalText[not(@nullFlavor)]) &gt;= 1">(KulturellerKeimnachweis): Element hl7:originalText[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="count(hl7:originalText[not(@nullFlavor)]) &lt;= 1">(KulturellerKeimnachweis): Element hl7:originalText[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30025
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]/hl7:specimenRole[not(@nullFlavor)][@typeCode = 'SPEC'][hl7:specimenPlayingEntity[@typeCode = 'MIC']]/hl7:specimenPlayingEntity[not(@nullFlavor)][@typeCode = 'MIC']/hl7:code[@nullFlavor = 'NA']/hl7:originalText[not(@nullFlavor)]
Item: (KulturellerKeimnachweis)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]/hl7:specimenRole[not(@nullFlavor)][@typeCode = 'SPEC'][hl7:specimenPlayingEntity[@typeCode = 'MIC']]/hl7:specimenPlayingEntity[not(@nullFlavor)][@typeCode = 'MIC']/hl7:code[@nullFlavor = 'NA']/hl7:originalText[not(@nullFlavor)]">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(KulturellerKeimnachweis): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30025
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]
Item: (KulturellerKeimnachweis)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="string(@typeCode) = ('COMP')">(KulturellerKeimnachweis): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30025
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]
Item: (KulturellerKeimnachweis)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="string(@typeCode) = ('COMP')">(KulturellerKeimnachweis): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30025
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]
Item: (KulturellerKeimnachweis)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30025-2017-02-23T000000.html"
              test="string(@typeCode) = ('COMP')">(KulturellerKeimnachweis): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30026
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]
Item: (Antibiogram)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30026
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]
Item: (Antibiogram)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="string(@classCode) = ('CLUSTER')">(Antibiogram): Der Wert von classCode MUSS 'CLUSTER' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="string(@moodCode) = ('EVN')">(Antibiogram): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']) &gt;= 1">(Antibiogram): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']) &lt;= 1">(Antibiogram): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Antibiogram): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Antibiogram): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Antibiogram): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]) &gt;= 1">(Antibiogram): Element hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]) &lt;= 1">(Antibiogram): Element hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30026
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']
Item: (Antibiogram)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Antibiogram): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.1.5')">(Antibiogram): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.1.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30026
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:statusCode[@code = 'completed']
Item: (Antibiogram)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:statusCode[@code = 'completed']">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Antibiogram): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="@nullFlavor or (@code='completed')">(Antibiogram): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30026
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:effectiveTime
Item: (Antibiogram)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:effectiveTime">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Antibiogram): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30026
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]
Item: (Antibiogram)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="string(@typeCode) = ('SPC')">(Antibiogram): Der Wert von typeCode MUSS 'SPC' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:specimenRole[hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]) &gt;= 1">(Antibiogram): Element hl7:specimenRole[hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:specimenRole[hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]) &lt;= 1">(Antibiogram): Element hl7:specimenRole[hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30026
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]/hl7:specimenRole[hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]
Item: (Antibiogram)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]/hl7:specimenRole[hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="string(@typeCode) = ('SPEC')">(Antibiogram): Der Wert von typeCode MUSS 'SPEC' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:id) &gt;= 1">(Antibiogram): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:id) &lt;= 1">(Antibiogram): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]) &gt;= 1">(Antibiogram): Element hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]) &lt;= 1">(Antibiogram): Element hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30026
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]/hl7:specimenRole[hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:id
Item: (Antibiogram)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]/hl7:specimenRole[hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Antibiogram): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30026
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]/hl7:specimenRole[hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]
Item: (Antibiogram)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]/hl7:specimenRole[hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="string(@typeCode) = ('MIC')">(Antibiogram): Der Wert von typeCode MUSS 'MIC' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="not(hl7:code/@nullFlavor) or string-length(hl7:code/hl7:originalText)&gt;0">(Antibiogram):  specimenPlayingEntity: if code/@nullFlavor is set originalText SHALL contain text. </assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(Antibiogram): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Antibiogram): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30026
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]/hl7:specimenRole[hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Antibiogram)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]/hl7:specimenRole[hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Antibiogram): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Antibiogram): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.58 ELGA_SignificantPathogens (DYNAMIC)' sein.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:originalText) &lt;= 1">(Antibiogram): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30026
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]/hl7:specimenRole[hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]/hl7:originalText
Item: (Antibiogram)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:specimen[not(@nullFlavor)][@typeCode = 'SPC'][hl7:specimenRole[@typeCode = 'SPEC']]/hl7:specimenRole[hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:specimenPlayingEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]/hl7:originalText">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Antibiogram): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30026
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]
Item: (Antibiogram)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="string(@typeCode) = ('COMP')">(Antibiogram): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]) &gt;= 1">(Antibiogram): Element hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]) &lt;= 1">(Antibiogram): Element hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30026
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]
Item: (Antibiogram)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']) &gt;= 1">(Antibiogram): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']) &lt;= 1">(Antibiogram): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:code[(@code = '29576-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Antibiogram): Element hl7:code[(@code = '29576-6' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="count(hl7:code[(@code = '29576-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Antibiogram): Element hl7:code[(@code = '29576-6' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30026
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']
Item: (Antibiogram)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Antibiogram): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.3.1.4')">(Antibiogram): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.1.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30026
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:code[(@code = '29576-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Antibiogram)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.5']]/hl7:component[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:code[(@code = '29576-6' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Antibiogram): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30026-2014-04-15T000000.html"
              test="@nullFlavor or (@code='29576-6' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Antibiogramm' and @codeSystemName='LOINC')">(Antibiogram): Der Elementinhalt MUSS einer von 'code '29576-6' codeSystem '2.16.840.1.113883.6.1' displayName='Antibiogramm' codeSystemName='LOINC'' sein.</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30020
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.4.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]
Item: (SpezimenActEntryAllgemein)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.4.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30020-2017-02-22T000000.html"
              test="string(@typeCode) = ('COMP')">(SpezimenActEntryAllgemein): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30020
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]]
Item: (SpezimenActEntryAllgemein)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30020-2017-02-22T000000.html"
              test="string(@typeCode) = ('COMP')">(SpezimenActEntryAllgemein): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.30020
Context: *[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:observationMedia]
Item: (SpezimenActEntryAllgemein)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]/hl7:entry[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1']]/hl7:act[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:entryRelationship[hl7:observationMedia]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.30020-2017-02-22T000000.html"
              test="string(@typeCode) = ('COMP')">(SpezimenActEntryAllgemein): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
