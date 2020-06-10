<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.8.1.3.2
Name: Medikation Verordnung Entry No Drug Therapy
Description: No Drug Therapy Prescribed
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000">
   <title>Medikation Verordnung Entry No Drug Therapy</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.2
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]
Item: (MedikationVerordnungEntryNoDrugTherapy)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.2
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]
Item: (MedikationVerordnungEntryNoDrugTherapy)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]"
         id="d20e44889-false-d353922e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="string(@classCode) = ('SBADM')">(MedikationVerordnungEntryNoDrugTherapy): Der Wert von classCode MUSS 'SBADM' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="string(@moodCode) = ('INT')">(MedikationVerordnungEntryNoDrugTherapy): Der Wert von moodCode MUSS 'INT' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2']) &gt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2']) &lt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24']) &gt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24']) &lt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7']) &gt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7']) &lt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']) &gt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']) &lt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:id) &gt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:id) &lt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:code[(@code = '182849000' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:code[(@code = '182849000' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:code[(@code = '182849000' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:code[(@code = '182849000' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]) &gt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]) &lt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.2
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2']
Item: (MedikationVerordnungEntryNoDrugTherapy)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2']"
         id="d20e44897-false-d354019e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryNoDrugTherapy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.8.1.3.2')">(MedikationVerordnungEntryNoDrugTherapy): Der Wert von root MUSS '1.2.40.0.34.11.8.1.3.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.2
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24']
Item: (MedikationVerordnungEntryNoDrugTherapy)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24']"
         id="d20e44902-false-d354034e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryNoDrugTherapy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.24')">(MedikationVerordnungEntryNoDrugTherapy): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.24' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.2
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7']
Item: (MedikationVerordnungEntryNoDrugTherapy)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7']"
         id="d20e44908-false-d354049e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryNoDrugTherapy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.7')">(MedikationVerordnungEntryNoDrugTherapy): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.7' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.2
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']
Item: (MedikationVerordnungEntryNoDrugTherapy)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']"
         id="d20e44913-false-d354064e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryNoDrugTherapy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.7.1')">(MedikationVerordnungEntryNoDrugTherapy): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.7.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.2
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:id
Item: (MedikationVerordnungEntryNoDrugTherapy)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:id"
         id="d20e44920-false-d354078e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryNoDrugTherapy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.2
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:code[(@code = '182849000' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (MedikationVerordnungEntryNoDrugTherapy)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:code[(@code = '182849000' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d20e44927-false-d354089e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryNoDrugTherapy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="@nullFlavor or (@code='182849000' and @codeSystem='2.16.840.1.113883.6.96' and @displayName='no drug therapy prescribed')">(MedikationVerordnungEntryNoDrugTherapy): Der Elementinhalt MUSS einer von 'code '182849000' codeSystem '2.16.840.1.113883.6.96' displayName='no drug therapy prescribed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.2
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:text[not(@nullFlavor)]
Item: (MedikationVerordnungEntryNoDrugTherapy)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:text[not(@nullFlavor)]"
         id="d20e44935-false-d354105e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryNoDrugTherapy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.2
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]
Item: (MedikationVerordnungEntryNoDrugTherapy)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]"
         id="d20e44937-false-d354124e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryNoDrugTherapy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.2
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:statusCode[@code = 'completed']
Item: (MedikationVerordnungEntryNoDrugTherapy)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:statusCode[@code = 'completed']"
         id="d20e44942-false-d354135e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryNoDrugTherapy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="@nullFlavor or (@code='completed')">(MedikationVerordnungEntryNoDrugTherapy): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.2
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]
Item: (MedikationVerordnungEntryNoDrugTherapy)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]"
         id="d20e44949-false-d354153e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]) &gt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]) &lt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.2
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]
Item: (MedikationVerordnungEntryNoDrugTherapy)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]"
         id="d20e44951-false-d354173e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="string(@classCode) = ('MANU')">(MedikationVerordnungEntryNoDrugTherapy): Der Wert von classCode MUSS 'MANU' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']) &gt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']) &lt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']) &gt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']) &lt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:manufacturedMaterial[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND'][hl7:code[@nullFlavor = 'NA']]) &gt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:manufacturedMaterial[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND'][hl7:code[@nullFlavor = 'NA']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:manufacturedMaterial[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND'][hl7:code[@nullFlavor = 'NA']]) &lt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:manufacturedMaterial[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND'][hl7:code[@nullFlavor = 'NA']] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.2
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']
Item: (MedikationVerordnungEntryNoDrugTherapy)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']"
         id="d20e44955-false-d354212e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryNoDrugTherapy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.7.2')">(MedikationVerordnungEntryNoDrugTherapy): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.7.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.2
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']
Item: (MedikationVerordnungEntryNoDrugTherapy)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']"
         id="d20e44960-false-d354227e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(MedikationVerordnungEntryNoDrugTherapy): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.20.1.53')">(MedikationVerordnungEntryNoDrugTherapy): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.53' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.2
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND'][hl7:code[@nullFlavor = 'NA']]
Item: (MedikationVerordnungEntryNoDrugTherapy)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND'][hl7:code[@nullFlavor = 'NA']]"
         id="d20e44967-false-d354241e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="string(@classCode) = ('MMAT')">(MedikationVerordnungEntryNoDrugTherapy): Der Wert von classCode MUSS 'MMAT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="string(@determinerCode) = ('KIND')">(MedikationVerordnungEntryNoDrugTherapy): Der Wert von determinerCode MUSS 'KIND' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:code[@nullFlavor = 'NA']) &gt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:code[@nullFlavor = 'NA'] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="count(hl7:code[@nullFlavor = 'NA']) &lt;= 1">(MedikationVerordnungEntryNoDrugTherapy): Element hl7:code[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.1.3.2
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND'][hl7:code[@nullFlavor = 'NA']]/hl7:code[@nullFlavor = 'NA']
Item: (MedikationVerordnungEntryNoDrugTherapy)
-->

   <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.11.8.1.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.24'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.1']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']]/hl7:manufacturedMaterial[not(@nullFlavor)][@classCode = 'MMAT'][@determinerCode = 'KIND'][hl7:code[@nullFlavor = 'NA']]/hl7:code[@nullFlavor = 'NA']"
         id="d20e44973-false-d354265e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.1.3.2-2014-05-14T000000.html"
              test="string(@nullFlavor) = ('NA')">(MedikationVerordnungEntryNoDrugTherapy): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>
</pattern>
