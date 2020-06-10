<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.9.14
Name: Participant Body - Transcriber
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.9.14-2019-04-03T161946-closed">
    <title>Participant Body - Transcriber</title>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14'][not(@nullFlavor)] | self::hl7:time | self::hl7:participantRole[not(@nullFlavor)])]" id="d133e7823-true-d160751e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="not(.)">(atcdabbr_other_ParticipantBodyTranscriber)/d133e7823-true-d160751e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14'][not(@nullFlavor)] | hl7:time | hl7:participantRole[not(@nullFlavor)] (rule-reference: d133e7823-true-d160751e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)] | self::hl7:id[@nullFlavor='NI'] | self::hl7:id[@nullFlavor='UNK'] | self::hl7:addr[not(@nullFlavor)] | self::hl7:telecom[not(@nullFlavor)] | self::hl7:playingDevice | self::hl7:playingEntity)]" id="d133e7922-true-d160790e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="not(.)">(atcdabbr_other_ParticipantBodyTranscriber)/d133e7922-true-d160790e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id[not(@nullFlavor)] | hl7:id[@nullFlavor='NI'] | hl7:id[@nullFlavor='UNK'] | hl7:addr[not(@nullFlavor)] | hl7:telecom[not(@nullFlavor)] | hl7:playingDevice | hl7:playingEntity (rule-reference: d133e7922-true-d160790e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:streetAddressLine | self::hl7:streetName | self::hl7:houseNumber | self::hl7:postalCode[not(@nullFlavor)] | self::hl7:city[not(@nullFlavor)] | self::hl7:state | self::hl7:country[not(@nullFlavor)] | self::hl7:additionalLocator)]" id="d133e7951-true-d160845e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="not(.)">(atcdabbr_other_ParticipantBodyTranscriber)/d133e7951-true-d160845e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:streetAddressLine | hl7:streetName | hl7:houseNumber | hl7:postalCode[not(@nullFlavor)] | hl7:city[not(@nullFlavor)] | hl7:state | hl7:country[not(@nullFlavor)] | hl7:additionalLocator (rule-reference: d133e7951-true-d160845e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingDevice/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturerModelName[not(@nullFlavor)] | self::hl7:softwareName[not(@nullFlavor)])]" id="d133e7981-true-d160900e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="not(.)">(atcdabbr_other_ParticipantBodyTranscriber)/d133e7981-true-d160900e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:manufacturerModelName[not(@nullFlavor)] | hl7:softwareName[not(@nullFlavor)] (rule-reference: d133e7981-true-d160900e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingEntity/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]" id="d133e7983-true-d160921e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="not(.)">(atcdabbr_other_ParticipantBodyTranscriber)/d133e7983-true-d160921e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d133e7983-true-d160921e0)</assert>
    </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
    <rule context="*[hl7:templateId[@root='1.2.40.0.34.6.0.11.9.14']]/hl7:participantRole[not(@nullFlavor)]/hl7:playingEntity/hl7:name[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:prefix | self::hl7:family[not(@nullFlavor)] | self::hl7:given[not(@nullFlavor)] | self::hl7:suffix)]" id="d133e7989-true-d160949e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.14" test="not(.)">(atcdabbr_other_ParticipantBodyTranscriber)/d133e7989-true-d160949e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:prefix | hl7:family[not(@nullFlavor)] | hl7:given[not(@nullFlavor)] | hl7:suffix (rule-reference: d133e7989-true-d160949e0)</assert>
    </rule>
</pattern>