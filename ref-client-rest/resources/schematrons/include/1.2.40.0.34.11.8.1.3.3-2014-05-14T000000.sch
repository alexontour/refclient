<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.8.1.3.3
Name: Medikation Verordnung Entry Patient Not On Self Medication
Description: Patient Not On Self Medication
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000">
   <title>Medikation Verordnung Entry Patient Not On Self Medication</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]
Item: (MedikationVerordnungEntryPatientNotOnSelfMedication)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]
Item: (MedikationVerordnungEntryPatientNotOnSelfMedication)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]"
         id="d20e45033-false-d354311e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="string(@classCode) = ('SBADM')">(MedikationVerordnungEntryPatientNotOnSelfMedication): Der Wert von classCode MUSS 'SBADM' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="string(@moodCode) = ('INT')">(MedikationVerordnungEntryPatientNotOnSelfMedication): Der Wert von moodCode MUSS 'INT' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3']) &gt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3']) &lt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24']) &gt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24']) &lt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7']) &gt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7']) &lt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']) &gt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']) &lt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:id) &gt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:id) &lt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:code[(@code = '408350003' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:code[(@code = '408350003' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:code[(@code = '408350003' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:code[(@code = '408350003' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]) &gt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]) &lt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3']
Item: (MedikationVerordnungEntryPatientNotOnSelfMedication)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3']"
         id="d20e45041-false-d354408e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryPatientNotOnSelfMedication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.8.1.3.3')">(MedikationVerordnungEntryPatientNotOnSelfMedication): Der Wert von root MUSS '1.2.40.0.34.11.8.1.3.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24']
Item: (MedikationVerordnungEntryPatientNotOnSelfMedication)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24']"
         id="d20e45046-false-d354423e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryPatientNotOnSelfMedication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.24')">(MedikationVerordnungEntryPatientNotOnSelfMedication): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.24' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7']
Item: (MedikationVerordnungEntryPatientNotOnSelfMedication)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7']"
         id="d20e45052-false-d354438e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryPatientNotOnSelfMedication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.7')">(MedikationVerordnungEntryPatientNotOnSelfMedication): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.7' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']
Item: (MedikationVerordnungEntryPatientNotOnSelfMedication)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']"
         id="d20e45057-false-d354453e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryPatientNotOnSelfMedication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.7.1')">(MedikationVerordnungEntryPatientNotOnSelfMedication): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.7.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:id
Item: (MedikationVerordnungEntryPatientNotOnSelfMedication)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:id"
         id="d20e45064-false-d354467e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryPatientNotOnSelfMedication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:code[(@code = '408350003' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (MedikationVerordnungEntryPatientNotOnSelfMedication)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:code[(@code = '408350003' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d20e45071-false-d354478e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryPatientNotOnSelfMedication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="@nullFlavor or (@code='408350003' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='patient not on self-medications')">(MedikationVerordnungEntryPatientNotOnSelfMedication): Der Elementinhalt MUSS einer von 'code '408350003' codeSystem '2.16.840.1.113883.6.96' displayName='patient not on self-medications'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:text[not(@nullFlavor)]
Item: (MedikationVerordnungEntryPatientNotOnSelfMedication)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:text[not(@nullFlavor)]"
         id="d20e45079-false-d354494e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryPatientNotOnSelfMedication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]
Item: (MedikationVerordnungEntryPatientNotOnSelfMedication)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]"
         id="d20e45081-false-d354513e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryPatientNotOnSelfMedication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:statusCode[@code = 'completed']
Item: (MedikationVerordnungEntryPatientNotOnSelfMedication)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:statusCode[@code = 'completed']"
         id="d20e45086-false-d354524e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryPatientNotOnSelfMedication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="@nullFlavor or (@code='completed')">(MedikationVerordnungEntryPatientNotOnSelfMedication): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]
Item: (MedikationVerordnungEntryPatientNotOnSelfMedication)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]"
         id="d20e45093-false-d354542e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]) &gt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]) &lt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]
Item: (MedikationVerordnungEntryPatientNotOnSelfMedication)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]"
         id="d20e45095-false-d354562e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="string(@classCode) = ('MANU')">(MedikationVerordnungEntryPatientNotOnSelfMedication): Der Wert von classCode MUSS 'MANU' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']) &gt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']) &lt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']) &gt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']) &lt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:manufacturedMaterial[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND'][hl7:code[@nullFlavor = 'NA']]) &gt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:manufacturedMaterial[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND'][hl7:code[@nullFlavor = 'NA']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:manufacturedMaterial[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND'][hl7:code[@nullFlavor = 'NA']]) &lt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:manufacturedMaterial[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND'][hl7:code[@nullFlavor = 'NA']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']
Item: (MedikationVerordnungEntryPatientNotOnSelfMedication)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']"
         id="d20e45099-false-d354601e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryPatientNotOnSelfMedication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.7.2')">(MedikationVerordnungEntryPatientNotOnSelfMedication): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.7.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']
Item: (MedikationVerordnungEntryPatientNotOnSelfMedication)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']"
         id="d20e45104-false-d354616e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryPatientNotOnSelfMedication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.53')">(MedikationVerordnungEntryPatientNotOnSelfMedication): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.53' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND'][hl7:code[@nullFlavor = 'NA']]
Item: (MedikationVerordnungEntryPatientNotOnSelfMedication)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND'][hl7:code[@nullFlavor = 'NA']]"
         id="d20e45111-false-d354630e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="string(@classCode) = ('MMAT')">(MedikationVerordnungEntryPatientNotOnSelfMedication): Der Wert von classCode MUSS 'MMAT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="string(@determinerCode) = ('KIND')">(MedikationVerordnungEntryPatientNotOnSelfMedication): Der Wert von determinerCode MUSS 'KIND' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:code[@nullFlavor = 'NA']) &gt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:code[@nullFlavor = 'NA'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="count(hl7:code[@nullFlavor = 'NA']) &lt;= 1">(MedikationVerordnungEntryPatientNotOnSelfMedication): Element hl7:code[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND'][hl7:code[@nullFlavor = 'NA']]/hl7:code[@nullFlavor = 'NA']
Item: (MedikationVerordnungEntryPatientNotOnSelfMedication)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND'][hl7:code[@nullFlavor = 'NA']]/hl7:code[@nullFlavor = 'NA']"
         id="d20e45117-false-d354654e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.3-2014-05-14T000000.html"
              test="string(@nullFlavor) = ('NA')">(MedikationVerordnungEntryPatientNotOnSelfMedication): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>
</pattern>
