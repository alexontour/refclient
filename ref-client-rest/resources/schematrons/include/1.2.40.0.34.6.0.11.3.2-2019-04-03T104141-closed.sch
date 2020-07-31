<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.3.2
Name: Immunization Target Entry
Description: Impfschutz gegen eine bestimmte Krankheit oder einen Erreger.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.3.2-2019-04-03T104141-closed">
    <title>Immunization Target Entry</title>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.2']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.2']])]" id="d245561e4685-true-d442145e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.2" test="not(.)">(atcdabbr_entry_ImmunizationTarget)/d245561e4685-true-d442145e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.2']] (rule-reference: d245561e4685-true-d442145e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.2']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.2']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.2'] | self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | self::hl7:text | self::hl7:statusCode[@code = 'completed' or @code = doc('include/voc-2.16.840.1.113883.1.11.20025-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code])]" id="d245561e4700-true-d442194e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.2" test="not(.)">(atcdabbr_entry_ImmunizationTarget)/d245561e4700-true-d442194e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.2'] | hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | hl7:text | hl7:statusCode[@code = 'completed' or @code = doc('include/voc-2.16.840.1.113883.1.11.20025-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code] (rule-reference: d245561e4700-true-d442194e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.2']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.2']]/hl7:text/*[not(@xsi:nil = 'true')][not(self::hl7:reference[not(@nullFlavor)])]" id="d442214e37-true-d442225e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="not(.)">(atcdabrr_other_NarrativeTextReference)/d442214e37-true-d442225e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:reference[not(@nullFlavor)] (rule-reference: d442214e37-true-d442225e0)</assert>
    </rule>
</pattern>