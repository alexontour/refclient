<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.9.28
Name: Performer Body - Laboratory
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.9.28-2019-05-15T163536-closed">
    <title>Performer Body - Laboratory</title>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.28'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.28'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7'] | self::hl7:time[not(@nullFlavor)] | self::hl7:assignedEntity[not(@nullFlavor)])]" id="d133e8928-true-d163463e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.28" test="not(.)">(atcdabbr_other_PerformerBodyLaboratory)/d133e8928-true-d163463e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.28'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7'] | hl7:time[not(@nullFlavor)] | hl7:assignedEntity[not(@nullFlavor)] (rule-reference: d133e8928-true-d163463e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.28'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)] | self::hl7:id[@nullFlavor='NI'] | self::hl7:id[@nullFlavor='UNK'] | self::hl7:code[not(@nullFlavor)] | self::hl7:code[@nullFlavor='UNK'] | self::hl7:addr[not(@nullFlavor)] | self::hl7:addr[@nullFlavor='UNK'] | self::hl7:telecom | self::hl7:assignedPerson | self::hl7:assignedPerson | self::hl7:representedOrganization)]" id="d133e8958-true-d163559e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.28" test="not(.)">(atcdabbr_other_PerformerBodyLaboratory)/d133e8958-true-d163559e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id[not(@nullFlavor)] | hl7:id[@nullFlavor='NI'] | hl7:id[@nullFlavor='UNK'] | hl7:code[not(@nullFlavor)] | hl7:code[@nullFlavor='UNK'] | hl7:addr[not(@nullFlavor)] | hl7:addr[@nullFlavor='UNK'] | hl7:telecom | hl7:assignedPerson | hl7:assignedPerson | hl7:representedOrganization (rule-reference: d133e8958-true-d163559e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.28'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:streetAddressLine | self::hl7:streetName | self::hl7:houseNumber | self::hl7:postalCode | self::hl7:city | self::hl7:state | self::hl7:country | self::hl7:additionalLocator)]" id="d163563e124-true-d163630e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.29" test="not(.)">( atcdabbr_other_AssignedEntityBodyWithNameAddrAndTelecom)/d163563e124-true-d163630e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:streetAddressLine | hl7:streetName | hl7:houseNumber | hl7:postalCode | hl7:city | hl7:state | hl7:country | hl7:additionalLocator (rule-reference: d163563e124-true-d163630e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.28'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]" id="d163563e199-true-d163697e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.29" test="not(.)">( atcdabbr_other_AssignedEntityBodyWithNameAddrAndTelecom)/d163563e199-true-d163697e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d163563e199-true-d163697e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.28'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]" id="d163563e216-true-d163717e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.29" test="not(.)">( atcdabbr_other_AssignedEntityBodyWithNameAddrAndTelecom)/d163563e216-true-d163717e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d163563e216-true-d163717e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.28'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:prefix | self::hl7:family[not(@nullFlavor)] | self::hl7:given[not(@nullFlavor)] | self::hl7:suffix)]" id="d163706e16-true-d163745e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.29" test="not(.)">( atcdabbr_other_AssignedEntityBodyWithNameAddrAndTelecom)/d163706e16-true-d163745e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:prefix | hl7:family[not(@nullFlavor)] | hl7:given[not(@nullFlavor)] | hl7:suffix (rule-reference: d163706e16-true-d163745e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.28'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]" id="d163563e232-true-d163825e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.28" test="not(.)">(atcdabbr_other_PerformerBodyLaboratory)/d163563e232-true-d163825e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d163563e232-true-d163825e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.28'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetAddressLine | self::hl7:streetName | self::hl7:houseNumber | self::hl7:postalCode | self::hl7:city | self::hl7:state | self::hl7:country | self::hl7:additionalLocator)]" id="d163766e35-true-d163888e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.28" test="not(.)">(atcdabbr_other_PerformerBodyLaboratory)/d163766e35-true-d163888e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:streetAddressLine | hl7:streetName | hl7:houseNumber | hl7:postalCode | hl7:city | hl7:state | hl7:country | hl7:additionalLocator (rule-reference: d163766e35-true-d163888e0)</assert>
    </rule>
</pattern>