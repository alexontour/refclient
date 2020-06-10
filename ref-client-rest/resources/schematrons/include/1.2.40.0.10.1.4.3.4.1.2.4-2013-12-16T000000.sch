<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.10.1.4.3.4.1.2.4
Name: Pharmazeutische Empfehlung Section-deprecated
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000">
   <title>Pharmazeutische Empfehlung Section-deprecated</title>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]
Item: (PharmazeutischeEmpfehlungSektion-deprecated)
-->

   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]
Item: (PharmazeutischeEmpfehlungSektion-deprecated)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]"
         id="d20e1144-false-d14073e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(PharmazeutischeEmpfehlungSektion-deprecated): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4']) &gt;= 1">(PharmazeutischeEmpfehlungSektion-deprecated): Element hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4']) &lt;= 1">(PharmazeutischeEmpfehlungSektion-deprecated): Element hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']) &gt;= 1">(PharmazeutischeEmpfehlungSektion-deprecated): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']) &lt;= 1">(PharmazeutischeEmpfehlungSektion-deprecated): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="count(hl7:id) &lt;= 1">(PharmazeutischeEmpfehlungSektion-deprecated): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="count(hl7:code[(@code = '61357-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(PharmazeutischeEmpfehlungSektion-deprecated): Element hl7:code[(@code = '61357-0' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="count(hl7:code[(@code = '61357-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(PharmazeutischeEmpfehlungSektion-deprecated): Element hl7:code[(@code = '61357-0' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(PharmazeutischeEmpfehlungSektion-deprecated): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(PharmazeutischeEmpfehlungSektion-deprecated): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(PharmazeutischeEmpfehlungSektion-deprecated): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(PharmazeutischeEmpfehlungSektion-deprecated): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]) &gt;= 1">(PharmazeutischeEmpfehlungSektion-deprecated): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]] ist required [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4']
Item: (PharmazeutischeEmpfehlungSektion-deprecated)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4']"
         id="d20e1150-false-d14224e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmazeutischeEmpfehlungSektion-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="string(@root) = ('1.2.40.0.10.1.4.3.4.1.2.4')">(PharmazeutischeEmpfehlungSektion-deprecated): Der Wert von root MUSS '1.2.40.0.10.1.4.3.4.1.2.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']
Item: (PharmazeutischeEmpfehlungSektion-deprecated)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']"
         id="d20e1155-false-d14239e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmazeutischeEmpfehlungSektion-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.9.1.2.2')">(PharmazeutischeEmpfehlungSektion-deprecated): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.9.1.2.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:id
Item: (PharmazeutischeEmpfehlungSektion-deprecated)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:id"
         id="d20e1163-false-d14253e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmazeutischeEmpfehlungSektion-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:code[(@code = '61357-0' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (PharmazeutischeEmpfehlungSektion-deprecated)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:code[(@code = '61357-0' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e1168-false-d14264e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmazeutischeEmpfehlungSektion-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="@nullFlavor or (@code='61357-0' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Medication Pharmaceutical Advice.Brief' and @codeSystemName='LOINC')">(PharmazeutischeEmpfehlungSektion-deprecated): Der Elementinhalt MUSS einer von 'code '61357-0' codeSystem '2.16.840.1.113883.6.1' displayName='Medication Pharmaceutical Advice.Brief' codeSystemName='LOINC'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:title[not(@nullFlavor)]
Item: (PharmazeutischeEmpfehlungSektion-deprecated)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:title[not(@nullFlavor)]"
         id="d20e1175-false-d14280e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmazeutischeEmpfehlungSektion-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="text()='Pharmazeutische Empfehlung'">(PharmazeutischeEmpfehlungSektion-deprecated): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Pharmazeutische Empfehlung'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:text[not(@nullFlavor)]
Item: (PharmazeutischeEmpfehlungSektion-deprecated)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:text[not(@nullFlavor)]"
         id="d20e1183-false-d14294e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmazeutischeEmpfehlungSektion-deprecated): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.10.1.4.3.4.1.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]
Item: (PharmazeutischeEmpfehlungSektion-deprecated)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.10.1.4.3.4.1.2.4-2013-12-16T000000.html"
              test="string(@typeCode) = ('DRIV') or not(@typeCode)">(PharmazeutischeEmpfehlungSektion-deprecated): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
