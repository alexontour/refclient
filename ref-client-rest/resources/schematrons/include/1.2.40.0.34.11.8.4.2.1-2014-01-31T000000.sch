<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.8.4.2.1
Name: Pharmazeutische Empfehlung Section
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000">
   <title>Pharmazeutische Empfehlung Section</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]
Item: (PharmazeutischeEmpfehlungSektion)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]
Item: (PharmazeutischeEmpfehlungSektion)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]"
         id="d20e47317-false-d372988e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(PharmazeutischeEmpfehlungSektion): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1']) &gt;= 1">(PharmazeutischeEmpfehlungSektion): Element hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1']) &lt;= 1">(PharmazeutischeEmpfehlungSektion): Element hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']) &gt;= 1">(PharmazeutischeEmpfehlungSektion): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']) &lt;= 1">(PharmazeutischeEmpfehlungSektion): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="count(hl7:id) &lt;= 1">(PharmazeutischeEmpfehlungSektion): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="count(hl7:code[(@code = '61357-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(PharmazeutischeEmpfehlungSektion): Element hl7:code[(@code = '61357-0' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="count(hl7:code[(@code = '61357-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(PharmazeutischeEmpfehlungSektion): Element hl7:code[(@code = '61357-0' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(PharmazeutischeEmpfehlungSektion): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(PharmazeutischeEmpfehlungSektion): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(PharmazeutischeEmpfehlungSektion): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(PharmazeutischeEmpfehlungSektion): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]) &gt;= 1">(PharmazeutischeEmpfehlungSektion): Element hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]] ist required [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1']
Item: (PharmazeutischeEmpfehlungSektion)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1']"
         id="d20e47321-false-d373139e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmazeutischeEmpfehlungSektion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.8.4.2.1')">(PharmazeutischeEmpfehlungSektion): Der Wert von root MUSS '1.2.40.0.34.11.8.4.2.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']
Item: (PharmazeutischeEmpfehlungSektion)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']"
         id="d20e47326-false-d373154e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmazeutischeEmpfehlungSektion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.9.1.2.2')">(PharmazeutischeEmpfehlungSektion): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.9.1.2.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:id
Item: (PharmazeutischeEmpfehlungSektion)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:id"
         id="d20e47334-false-d373168e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmazeutischeEmpfehlungSektion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:code[(@code = '61357-0' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (PharmazeutischeEmpfehlungSektion)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:code[(@code = '61357-0' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e47342-false-d373179e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmazeutischeEmpfehlungSektion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="@nullFlavor or (@code='61357-0' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Medication Pharmaceutical Advice.Brief' and @codeSystemName='LOINC')">(PharmazeutischeEmpfehlungSektion): Der Elementinhalt MUSS einer von 'code '61357-0' codeSystem '2.16.840.1.113883.6.1' displayName='Medication Pharmaceutical Advice.Brief' codeSystemName='LOINC'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:title[not(@nullFlavor)]
Item: (PharmazeutischeEmpfehlungSektion)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:title[not(@nullFlavor)]"
         id="d20e47348-false-d373195e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmazeutischeEmpfehlungSektion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="text()='Pharmazeutische Empfehlung'">(PharmazeutischeEmpfehlungSektion): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Pharmazeutische Empfehlung'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:text[not(@nullFlavor)]
Item: (PharmazeutischeEmpfehlungSektion)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:text[not(@nullFlavor)]"
         id="d20e47354-false-d373209e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PharmazeutischeEmpfehlungSektion): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.4.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]
Item: (PharmazeutischeEmpfehlungSektion)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.4.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.2']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.8.4.3.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.3.3']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.4.2.1-2014-01-31T000000.html"
              test="string(@typeCode) = ('DRIV') or not(@typeCode)">(PharmazeutischeEmpfehlungSektion): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
