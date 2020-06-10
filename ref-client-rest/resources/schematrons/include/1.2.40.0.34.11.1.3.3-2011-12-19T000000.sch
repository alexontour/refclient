<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.1.3.3
Name: Vitalparameter Gruppe Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.1.3.3-2011-12-19T000000">
   <title>Vitalparameter Gruppe Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.3
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]
Item: (VitalparameterGruppeEntry)
-->

   <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]"
         id="d20e5598-false-d38925e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="count(hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]) &gt;= 1">(VitalparameterGruppeEntry): Element hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="count(hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]) &lt;= 1">(VitalparameterGruppeEntry): Element hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.3
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]
Item: (VitalparameterGruppeEntry)
-->

   <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]"
         id="d20e5665-false-d38954e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="string(@classCode) = ('CLUSTER')">(VitalparameterGruppeEntry): Der Wert von classCode MUSS 'CLUSTER' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="string(@moodCode) = ('EVN')">(VitalparameterGruppeEntry): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.3']) &gt;= 1">(VitalparameterGruppeEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.3']) &lt;= 1">(VitalparameterGruppeEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32']) &gt;= 1">(VitalparameterGruppeEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32']) &lt;= 1">(VitalparameterGruppeEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35']) &gt;= 1">(VitalparameterGruppeEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35']) &lt;= 1">(VitalparameterGruppeEntry): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']) &gt;= 1">(VitalparameterGruppeEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']) &lt;= 1">(VitalparameterGruppeEntry): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="count(hl7:id) &gt;= 1">(VitalparameterGruppeEntry): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="count(hl7:id) &lt;= 1">(VitalparameterGruppeEntry): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '46680005' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(VitalparameterGruppeEntry): Element hl7:code[(@code = '46680005' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="count(hl7:code[(@code = '46680005' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(VitalparameterGruppeEntry): Element hl7:code[(@code = '46680005' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(VitalparameterGruppeEntry): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(VitalparameterGruppeEntry): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(VitalparameterGruppeEntry): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]) &gt;= 1">(VitalparameterGruppeEntry): Element hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]] ist mandatory [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.3
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.3']
Item: (VitalparameterGruppeEntry)
-->

   <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.3']"
         id="d20e5671-false-d39052e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterGruppeEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1.3.3')">(VitalparameterGruppeEntry): Der Wert von root MUSS '1.2.40.0.34.11.1.3.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.3
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32']
Item: (VitalparameterGruppeEntry)
-->

   <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32']"
         id="d20e5679-false-d39067e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterGruppeEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.32')">(VitalparameterGruppeEntry): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.32' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.3
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35']
Item: (VitalparameterGruppeEntry)
-->

   <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35']"
         id="d20e5689-false-d39082e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterGruppeEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.35')">(VitalparameterGruppeEntry): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.35' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.3
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']
Item: (VitalparameterGruppeEntry)
-->

   <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']"
         id="d20e5700-false-d39097e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterGruppeEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.13.1')">(VitalparameterGruppeEntry): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.13.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.3
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:id
Item: (VitalparameterGruppeEntry)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.3
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:code[(@code = '46680005' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (VitalparameterGruppeEntry)
-->

   <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:code[(@code = '46680005' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d20e5727-false-d39120e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterGruppeEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="@nullFlavor or (@code='46680005' and @codeSystem='2.16.840.1.113883.6.96')">(VitalparameterGruppeEntry): Der Elementinhalt MUSS einer von 'code '46680005' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.3
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:statusCode[@code = 'completed']
Item: (VitalparameterGruppeEntry)
-->

   <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:statusCode[@code = 'completed']"
         id="d20e5737-false-d39137e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterGruppeEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="@nullFlavor or (@code='completed')">(VitalparameterGruppeEntry): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.3
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:effectiveTime
Item: (VitalparameterGruppeEntry)
-->

   <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:effectiveTime"
         id="d20e5742-false-d39153e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.3.3-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(VitalparameterGruppeEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.3
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]
Item: (VitalparameterGruppeEntry)
--></pattern>
