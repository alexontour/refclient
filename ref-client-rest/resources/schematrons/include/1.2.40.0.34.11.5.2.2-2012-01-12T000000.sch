<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.5.2.2
Name: Anamnese (BildgebendeDiagnostik)
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.5.2.2-2012-01-12T000000">
   <title>Anamnese (BildgebendeDiagnostik)</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]]
Item: (AnamneseBildgebendeDiagnostik)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]
Item: (AnamneseBildgebendeDiagnostik)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]"
         id="d20e41940-false-d340847e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.2-2012-01-12T000000.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(AnamneseBildgebendeDiagnostik): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.2-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']) &gt;= 1">(AnamneseBildgebendeDiagnostik): Element hl7:templateId[@root = '1.2.40.0.34.11.5.2.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.2-2012-01-12T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']) &lt;= 1">(AnamneseBildgebendeDiagnostik): Element hl7:templateId[@root = '1.2.40.0.34.11.5.2.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.2-2012-01-12T000000.html"
              test="count(hl7:code[(@code = '11329-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(AnamneseBildgebendeDiagnostik): Element hl7:code[(@code = '11329-0' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.2-2012-01-12T000000.html"
              test="count(hl7:code[(@code = '11329-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(AnamneseBildgebendeDiagnostik): Element hl7:code[(@code = '11329-0' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.2-2012-01-12T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(AnamneseBildgebendeDiagnostik): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.2-2012-01-12T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(AnamneseBildgebendeDiagnostik): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.2-2012-01-12T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(AnamneseBildgebendeDiagnostik): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.2-2012-01-12T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(AnamneseBildgebendeDiagnostik): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]/hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']
Item: (AnamneseBildgebendeDiagnostik)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]/hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']"
         id="d20e41944-false-d340901e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.2-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AnamneseBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.2-2012-01-12T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.5.2.2')">(AnamneseBildgebendeDiagnostik): Der Wert von root MUSS '1.2.40.0.34.11.5.2.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]/hl7:code[(@code = '11329-0' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (AnamneseBildgebendeDiagnostik)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]/hl7:code[(@code = '11329-0' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e41949-false-d340916e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.2-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AnamneseBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.2-2012-01-12T000000.html"
              test="@nullFlavor or (@code='11329-0' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='History general' and @codeSystemName='LOINC')">(AnamneseBildgebendeDiagnostik): Der Elementinhalt MUSS einer von 'code '11329-0' codeSystem '2.16.840.1.113883.6.1' displayName='History general' codeSystemName='LOINC'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]/hl7:title[not(@nullFlavor)]
Item: (AnamneseBildgebendeDiagnostik)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]/hl7:title[not(@nullFlavor)]"
         id="d20e41954-false-d340932e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.2-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AnamneseBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.2-2012-01-12T000000.html"
              test="text()='Anamnese'">(AnamneseBildgebendeDiagnostik): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Anamnese'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]/hl7:text[not(@nullFlavor)]
Item: (AnamneseBildgebendeDiagnostik)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]/hl7:text[not(@nullFlavor)]"
         id="d20e41960-false-d340946e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.2-2012-01-12T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AnamneseBildgebendeDiagnostik): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.5.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]
Item: (AnamneseBildgebendeDiagnostik)
--></pattern>
