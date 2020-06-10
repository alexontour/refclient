<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.8.3.2.1
Name: Medikationslisten Section
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000">
   <title>Medikationslisten Section</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]]
Item: (MedikationslistenSection)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]
Item: (MedikationslistenSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]"
         id="d20e47072-false-d370001e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(MedikationslistenSection): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1']) &gt;= 1">(MedikationslistenSection): Element hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1']) &lt;= 1">(MedikationslistenSection): Element hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']) &gt;= 1">(MedikationslistenSection): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']) &lt;= 1">(MedikationslistenSection): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="count(hl7:id) &lt;= 1">(MedikationslistenSection): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="count(hl7:code[(@code = '10160-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(MedikationslistenSection): Element hl7:code[(@code = '10160-0' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="count(hl7:code[(@code = '10160-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(MedikationslistenSection): Element hl7:code[(@code = '10160-0' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(MedikationslistenSection): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(MedikationslistenSection): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(MedikationslistenSection): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(MedikationslistenSection): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]/hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1']
Item: (MedikationslistenSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]/hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1']"
         id="d20e47076-false-d370198e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationslistenSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.8.3.2.1')">(MedikationslistenSection): Der Wert von root MUSS '1.2.40.0.34.11.8.3.2.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']
Item: (MedikationslistenSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']"
         id="d20e47081-false-d370213e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationslistenSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.9.1.2.5')">(MedikationslistenSection): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.9.1.2.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]/hl7:id
Item: (MedikationslistenSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]/hl7:id"
         id="d20e47089-false-d370227e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationslistenSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]/hl7:code[(@code = '10160-0' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (MedikationslistenSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]/hl7:code[(@code = '10160-0' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e47097-false-d370238e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationslistenSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="@nullFlavor or (@code='10160-0' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='History of medication use' and @codeSystemName='LOINC')">(MedikationslistenSection): Der Elementinhalt MUSS einer von 'code '10160-0' codeSystem '2.16.840.1.113883.6.1' displayName='History of medication use' codeSystemName='LOINC'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]/hl7:title[not(@nullFlavor)]
Item: (MedikationslistenSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]/hl7:title[not(@nullFlavor)]"
         id="d20e47103-false-d370254e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationslistenSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="text()='Medikationsliste'">(MedikationslistenSection): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Medikationsliste'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]/hl7:text[not(@nullFlavor)]
Item: (MedikationslistenSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]/hl7:text[not(@nullFlavor)]"
         id="d20e47109-false-d370268e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationslistenSection): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]/hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]
Item: (MedikationslistenSection)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]/hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.6']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="string(@typeCode) = ('DRIV') or not(@typeCode)">(MedikationslistenSection): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.3.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]/hl7:entry[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.8.2.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]
Item: (MedikationslistenSection)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.3.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.5']]/hl7:entry[hl7:supply[hl7:templateId[@root = '1.2.40.0.34.11.8.2.3.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.34'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.4']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.3.2.1-2014-01-31T000000.html"
              test="string(@typeCode) = ('DRIV') or not(@typeCode)">(MedikationslistenSection): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
