<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.9.21
Name: Performer Body - Impfende Person
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.9.21-2019-05-08T132112-closed">
    <title>Performer Body - Impfende Person</title>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.21']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.21'] | self::hl7:time | self::hl7:assignedEntity[not(@nullFlavor)])]" id="d133e8299-true-d162098e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.21" test="not(.)">(atcdabbr_other_PerformerBodyImpfendePerson)/d133e8299-true-d162098e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.21'] | hl7:time | hl7:assignedEntity[not(@nullFlavor)] (rule-reference: d133e8299-true-d162098e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.21']]/hl7:assignedEntity[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)] | self::hl7:id[@nullFlavor='NI'] | self::hl7:id[@nullFlavor='UNK'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | self::hl7:code[@nullFlavor='UNK'] | self::hl7:addr[not(@nullFlavor)] | self::hl7:addr[@nullFlavor = 'UNK'] | self::hl7:telecom[not(@nullFlavor)] | self::hl7:assignedPerson | self::hl7:assignedPerson | self::hl7:representedOrganization)]" id="d133e8366-true-d162209e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.21" test="not(.)">(atcdabbr_other_PerformerBodyImpfendePerson)/d133e8366-true-d162209e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id[not(@nullFlavor)] | hl7:id[@nullFlavor='NI'] | hl7:id[@nullFlavor='UNK'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | hl7:code[@nullFlavor='UNK'] | hl7:addr[not(@nullFlavor)] | hl7:addr[@nullFlavor = 'UNK'] | hl7:telecom[not(@nullFlavor)] | hl7:assignedPerson | hl7:assignedPerson | hl7:representedOrganization (rule-reference: d133e8366-true-d162209e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.21']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:streetAddressLine | self::hl7:streetName | self::hl7:houseNumber | self::hl7:postalCode | self::hl7:city | self::hl7:state | self::hl7:country | self::hl7:additionalLocator)]" id="d133e8460-true-d162273e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.21" test="not(.)">(atcdabbr_other_PerformerBodyImpfendePerson)/d133e8460-true-d162273e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:streetAddressLine | hl7:streetName | hl7:houseNumber | hl7:postalCode | hl7:city | hl7:state | hl7:country | hl7:additionalLocator (rule-reference: d133e8460-true-d162273e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.21']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]" id="d133e8538-true-d162327e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.21" test="not(.)">(atcdabbr_other_PerformerBodyImpfendePerson)/d133e8538-true-d162327e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d133e8538-true-d162327e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.21']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]" id="d133e8552-true-d162347e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.21" test="not(.)">(atcdabbr_other_PerformerBodyImpfendePerson)/d133e8552-true-d162347e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d133e8552-true-d162347e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.21']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:prefix | self::hl7:family[not(@nullFlavor)] | self::hl7:given[not(@nullFlavor)] | self::hl7:suffix)]" id="d162336e12-true-d162375e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.21" test="not(.)">(atcdabbr_other_PerformerBodyImpfendePerson)/d162336e12-true-d162375e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:prefix | hl7:family[not(@nullFlavor)] | hl7:given[not(@nullFlavor)] | hl7:suffix (rule-reference: d162336e12-true-d162375e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.21']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)] | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom[not(@nullFlavor)] | self::hl7:addr[not(@nullFlavor)])]" id="d133e8564-true-d162421e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.21" test="not(.)">(atcdabbr_other_PerformerBodyImpfendePerson)/d133e8564-true-d162421e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id[not(@nullFlavor)] | hl7:name[not(@nullFlavor)] | hl7:telecom[not(@nullFlavor)] | hl7:addr[not(@nullFlavor)] (rule-reference: d133e8564-true-d162421e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.21']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:streetAddressLine | self::hl7:streetName | self::hl7:houseNumber | self::hl7:postalCode | self::hl7:city | self::hl7:state | self::hl7:country | self::hl7:additionalLocator)]" id="d162396e58-true-d162478e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.21" test="not(.)">(atcdabbr_other_PerformerBodyImpfendePerson)/d162396e58-true-d162478e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:streetAddressLine | hl7:streetName | hl7:houseNumber | hl7:postalCode | hl7:city | hl7:state | hl7:country | hl7:additionalLocator (rule-reference: d162396e58-true-d162478e0)</assert>
    </rule>
</pattern>