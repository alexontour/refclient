<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.3
Name: Entlassungsbrief (Pflege)
Description: Template Spezieller Implementierungsleitfaden ELGA Entlassungsbrief (Pflege)
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.3-2011-12-19T000000">
   <title>Entlassungsbrief (Pflege)</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]"
         id="d20e26393-false-d253819e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3']) &gt;= 1">(EntlassungsbriefPflege): Element hl7:templateId[@root = '1.2.40.0.34.11.3'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3']) &lt;= 1">(EntlassungsbriefPflege): Element hl7:templateId[@root = '1.2.40.0.34.11.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']) &gt;= 1">(EntlassungsbriefPflege): Element hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']) &lt;= 1">(EntlassungsbriefPflege): Element hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '34745-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:code[(@code = '34745-0' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '34745-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:code[(@code = '34745-0' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:participant[@typeCode='REF']) &lt;= 1">(EntlassungsbriefPflege): Element hl7:participant[@typeCode='REF'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:templateId[@root = '1.2.40.0.34.11.3']
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:templateId[@root = '1.2.40.0.34.11.3']"
         id="d20e26404-false-d253882e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3')">(EntlassungsbriefPflege): Der Wert von root MUSS '1.2.40.0.34.11.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']"
         id="d20e26410-false-d253897e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.3.0.1','1.2.40.0.34.11.3.0.2','1.2.40.0.34.11.3.0.3')">(EntlassungsbriefPflege): Der Wert von root MUSS '1.2.40.0.34.11.3.0.1','1.2.40.0.34.11.3.0.2','1.2.40.0.34.11.3.0.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:code[(@code = '34745-0' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:code[(@code = '34745-0' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e26418-false-d253912e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="@nullFlavor or (@code='34745-0' and @codeSystem='2.16.840.1.113883.6.1')">(EntlassungsbriefPflege): Der Elementinhalt MUSS einer von 'code '34745-0' codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:participant[@typeCode='CALLBCK'][not(@nullFlavor)]
Item: (EntlassungsbriefPflege)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:participant[@typeCode='REF']
Item: (EntlassungsbriefPflege)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]"
         id="d20e26432-false-d253941e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]"
         id="d20e26434-false-d253959e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:performer) = 0">(EntlassungsbriefPflege): Element hl7:performer DARF NICHT vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]"
         id="d20e26436-false-d253983e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="@nullFlavor or (@code='GDLSTATAUF' and @codeSystem='1.2.40.0.34.5.21')">(EntlassungsbriefPflege): Der Elementinhalt MUSS einer von 'code 'GDLSTATAUF' codeSystem '1.2.40.0.34.5.21'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:performer
Item: (EntlassungsbriefPflege)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]"
         id="d20e26445-false-d254008e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]"
         id="d20e26447-false-d254026e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:id) &gt;= 1">(EntlassungsbriefPflege): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:id) &lt;= 1">(EntlassungsbriefPflege): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]) &gt;= 1">(EntlassungsbriefPflege): Element hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]) &lt;= 1">(EntlassungsbriefPflege): Element hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:responsibleParty) &lt;= 1">(EntlassungsbriefPflege): Element hl7:responsibleParty kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:id
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:id"
         id="d20e26449-false-d254057e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]"
         id="d20e26451-false-d254068e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="@nullFlavor or (@code='IMP' and @codeSystem='2.16.840.1.113883.5.4')">(EntlassungsbriefPflege): Der Elementinhalt MUSS einer von 'code 'IMP' codeSystem '2.16.840.1.113883.5.4'' sein.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="count(hl7:originalText) &lt;= 1">(EntlassungsbriefPflege): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]/hl7:originalText
Item: (EntlassungsbriefPflege)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]/hl7:originalText"
         id="d20e26455-false-d254090e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EntlassungsbriefPflege): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.3'] and hl7:templateId[@root = '1.2.40.0.34.11.3.0.1|1.2.40.0.34.11.3.0.2|1.2.40.0.34.11.3.0.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4') or @nullFlavor]]/hl7:responsibleParty
Item: (EntlassungsbriefPflege)
-->
</pattern>
