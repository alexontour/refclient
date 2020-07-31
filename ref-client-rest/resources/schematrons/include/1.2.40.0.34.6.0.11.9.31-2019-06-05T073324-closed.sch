<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.9.31
Name: Vaccine Product nicht angegeben
Description: Gibt an, dass kein Impfstoff angegeben wird oder werden kann.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.9.31-2019-06-05T073324-closed">
    <title>Vaccine Product nicht angegeben</title>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']])]" id="d245561e7209-true-d472879e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="not(.)">(atcdabbr_other_vaccineProductNichtAngegeben)/d245561e7209-true-d472879e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']] (rule-reference: d245561e7209-true-d472879e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] | self::hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] | self::hl7:manufacturedMaterial[not(@nullFlavor)][hl7:code[@nullFlavor = 'NA']])]" id="d245561e7242-true-d472916e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="not(.)">(atcdabbr_other_vaccineProductNichtAngegeben)/d245561e7242-true-d472916e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] | hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] | hl7:manufacturedMaterial[not(@nullFlavor)][hl7:code[@nullFlavor = 'NA']] (rule-reference: d245561e7242-true-d472916e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]/hl7:manufacturedMaterial[not(@nullFlavor)][hl7:code[@nullFlavor = 'NA']]/*[not(@xsi:nil = 'true')][not(self::hl7:code[@nullFlavor = 'NA'])]" id="d245561e7270-true-d472944e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="not(.)">(atcdabbr_other_vaccineProductNichtAngegeben)/d245561e7270-true-d472944e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:code[@nullFlavor = 'NA'] (rule-reference: d245561e7270-true-d472944e0)</assert>
    </rule>
</pattern>