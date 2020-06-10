<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.2.8
Name: Übersetzung
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.2.8-2019-05-14T152450-closed">
    <title>Übersetzung</title>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']])]" id="d133e4181-true-d110651e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.8" test="not(.)">(atcdabbr_section_Uebersetzung)/d133e4181-true-d110651e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']] (rule-reference: d133e4181-true-d110651e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8'] | self::hl7:id[not(@nullFlavor)] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code] | self::hl7:author[hl7:assignedAuthor])]" id="d133e4382-true-d110814e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.8" test="not(.)">(atcdabbr_section_Uebersetzung)/d133e4382-true-d110814e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8'] | hl7:id[not(@nullFlavor)] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code] | hl7:author[hl7:assignedAuthor] (rule-reference: d133e4382-true-d110814e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]/hl7:author[hl7:assignedAuthor]/*[not(@xsi:nil = 'true')][not(self::hl7:time[not(@nullFlavor)] | self::hl7:time[@nullFlavor='UNK'] | self::hl7:assignedAuthor)]" id="d133e4428-true-d110960e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.8" test="not(.)">(atcdabbr_section_Uebersetzung)/d133e4428-true-d110960e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:time[not(@nullFlavor)] | hl7:time[@nullFlavor='UNK'] | hl7:assignedAuthor (rule-reference: d133e4428-true-d110960e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)] | self::hl7:id[@nullFlavor='UNK'] | self::hl7:code[not(@nullFlavor)] | self::hl7:addr[not(@nullFlavor)] | self::hl7:telecom[not(@nullFlavor)] | self::hl7:assignedPerson | self::hl7:assignedAuthoringDevice | self::hl7:representedOrganization)]" id="d110841e26-true-d111063e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.8" test="not(.)">(atcdabbr_section_Uebersetzung)/d110841e26-true-d111063e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id[not(@nullFlavor)] | hl7:id[@nullFlavor='UNK'] | hl7:code[not(@nullFlavor)] | hl7:addr[not(@nullFlavor)] | hl7:telecom[not(@nullFlavor)] | hl7:assignedPerson | hl7:assignedAuthoringDevice | hl7:representedOrganization (rule-reference: d110841e26-true-d111063e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:streetAddressLine | self::hl7:streetName | self::hl7:houseNumber | self::hl7:postalCode[not(@nullFlavor)] | self::hl7:city[not(@nullFlavor)] | self::hl7:state | self::hl7:country[not(@nullFlavor)] | self::hl7:additionalLocator)]" id="d110841e45-true-d111118e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.8" test="not(.)">(atcdabbr_section_Uebersetzung)/d110841e45-true-d111118e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:streetAddressLine | hl7:streetName | hl7:houseNumber | hl7:postalCode[not(@nullFlavor)] | hl7:city[not(@nullFlavor)] | hl7:state | hl7:country[not(@nullFlavor)] | hl7:additionalLocator (rule-reference: d110841e45-true-d111118e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)] | self::hl7:name[@nullFlavor='UNK'] | self::hl7:name[@nullFlavor='MSK'])]" id="d110841e88-true-d111165e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.8" test="not(.)">(atcdabbr_section_Uebersetzung)/d110841e88-true-d111165e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] | hl7:name[@nullFlavor='UNK'] | hl7:name[@nullFlavor='MSK'] (rule-reference: d110841e88-true-d111165e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:prefix | self::hl7:family[not(@nullFlavor)] | self::hl7:given[not(@nullFlavor)] | self::hl7:suffix)]" id="d111169e62-true-d111197e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.6" test="not(.)">(atcdabbr_other_PersonNameCompilationG2)/d111169e62-true-d111197e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:prefix | hl7:family[not(@nullFlavor)] | hl7:given[not(@nullFlavor)] | hl7:suffix (rule-reference: d111169e62-true-d111197e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedAuthoringDevice/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturerModelName[not(@nullFlavor)] | self::hl7:softwareName[not(@nullFlavor)])]" id="d110841e111-true-d111238e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.8" test="not(.)">(atcdabbr_section_Uebersetzung)/d110841e111-true-d111238e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:manufacturerModelName[not(@nullFlavor)] | hl7:softwareName[not(@nullFlavor)] (rule-reference: d110841e111-true-d111238e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)] | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom[not(@nullFlavor)] | self::hl7:addr[not(@nullFlavor)])]" id="d110841e127-true-d111280e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.8" test="not(.)">(atcdabbr_section_Uebersetzung)/d110841e127-true-d111280e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id[not(@nullFlavor)] | hl7:name[not(@nullFlavor)] | hl7:telecom[not(@nullFlavor)] | hl7:addr[not(@nullFlavor)] (rule-reference: d110841e127-true-d111280e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:streetAddressLine | self::hl7:streetName | self::hl7:houseNumber | self::hl7:postalCode[not(@nullFlavor)] | self::hl7:city[not(@nullFlavor)] | self::hl7:state | self::hl7:country[not(@nullFlavor)] | self::hl7:additionalLocator)]" id="d111251e75-true-d111339e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.8" test="not(.)">(atcdabbr_section_Uebersetzung)/d111251e75-true-d111339e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:streetAddressLine | hl7:streetName | hl7:houseNumber | hl7:postalCode[not(@nullFlavor)] | hl7:city[not(@nullFlavor)] | hl7:state | hl7:country[not(@nullFlavor)] | hl7:additionalLocator (rule-reference: d111251e75-true-d111339e0)</assert>
    </rule>
</pattern>