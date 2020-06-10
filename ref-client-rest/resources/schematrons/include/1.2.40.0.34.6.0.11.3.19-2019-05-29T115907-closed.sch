<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.3.19
Name: Eingebettetes Objekt Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.3.19-2019-05-29T115907-closed">
    <title>Eingebettetes Objekt Entry</title>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']])]" id="d133e5909-true-d140175e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.19" test="not(.)">(atcdabbr_entry_EingebettetesObjektEntry)/d133e5909-true-d140175e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']] (rule-reference: d133e5909-true-d140175e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19'] | self::hl7:value[not(@nullFlavor)])]" id="d133e5925-true-d140196e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.19" test="not(.)">(atcdabbr_entry_EingebettetesObjektEntry)/d133e5925-true-d140196e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19'] | hl7:value[not(@nullFlavor)] (rule-reference: d133e5925-true-d140196e0)</assert>
    </rule>
</pattern>