<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.4.3.3
Name: Laboratory Performer 2
Description: Element zur Kennzeichnung einer Analyse, die in einem externen Labor durchgeführt wurde.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.11.4.3.3-2014-12-06T000000">
    <title>Laboratory Performer 2</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.3.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]
Item: (LaboratoryPerformer2)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]" id="d245561e493-false-d248227e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="count(hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']) &gt;= 1">(LaboratoryPerformer2): Element hl7:templateId[@root = '1.2.40.0.34.11.4.3.3'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="count(hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']) &lt;= 1">(LaboratoryPerformer2): Element hl7:templateId[@root = '1.2.40.0.34.11.4.3.3'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="count(hl7:time[not(@nullFlavor)]) &gt;= 1">(LaboratoryPerformer2): Element hl7:time[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="count(hl7:time[not(@nullFlavor)]) &lt;= 1">(LaboratoryPerformer2): Element hl7:time[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="count(hl7:assignedEntity[not(@nullFlavor)]) &gt;= 1">(LaboratoryPerformer2): Element hl7:assignedEntity[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="count(hl7:assignedEntity[not(@nullFlavor)]) &lt;= 1">(LaboratoryPerformer2): Element hl7:assignedEntity[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.3.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']
Item: (LaboratoryPerformer2)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']" id="d245561e517-false-d248262e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="string(@root) = ('1.2.40.0.34.11.4.3.3')">(LaboratoryPerformer2): Der Wert von root MUSS '1.2.40.0.34.11.4.3.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.3.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:time[not(@nullFlavor)]
Item: (LaboratoryPerformer2)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:time[not(@nullFlavor)]" id="d245561e519-false-d248272e0">
        <extends rule="IVL_TS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryPerformer2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.3.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]
Item: (LaboratoryPerformer2)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]" id="d245561e522-false-d248286e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="count(hl7:id) &gt;= 1">(LaboratoryPerformer2): Element hl7:id ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="count(hl7:id) &lt;= 1">(LaboratoryPerformer2): Element hl7:id kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="count(hl7:code[(@code = 'E' and @codeSystem = '2.16.840.1.113883.2.16.1.4.9') or @nullFlavor]) &lt;= 1">(LaboratoryPerformer2): Element hl7:code[(@code = 'E' and @codeSystem = '2.16.840.1.113883.2.16.1.4.9') or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="count(hl7:addr[not(@nullFlavor)]) &gt;= 1">(LaboratoryPerformer2): Element hl7:addr[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="count(hl7:addr[not(@nullFlavor)]) &lt;= 1">(LaboratoryPerformer2): Element hl7:addr[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="count(hl7:telecom[not(@nullFlavor)]) &gt;= 1">(LaboratoryPerformer2): Element hl7:telecom[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <let name="elmcount" value="count(hl7:assignedPerson | hl7:representedOrganization)"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="$elmcount &gt;= 1">(LaboratoryPerformer2): Auswahl (hl7:assignedPerson  oder  hl7:representedOrganization) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="count(hl7:assignedPerson) &lt;= 1">(LaboratoryPerformer2): Element hl7:assignedPerson kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="count(hl7:representedOrganization) &lt;= 1">(LaboratoryPerformer2): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.3.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:id
Item: (LaboratoryPerformer2)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:id" id="d245561e523-false-d248351e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryPerformer2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.3.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:code[(@code = 'E' and @codeSystem = '2.16.840.1.113883.2.16.1.4.9') or @nullFlavor]
Item: (LaboratoryPerformer2)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:code[(@code = 'E' and @codeSystem = '2.16.840.1.113883.2.16.1.4.9') or @nullFlavor]" id="d245561e533-false-d248361e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryPerformer2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="@nullFlavor or (@code='E' and @codeSystem='2.16.840.1.113883.2.16.1.4.9' and @displayName='EXTERN' and @codeSystemName='HL7.at.Laborkennzeichnung')">(LaboratoryPerformer2): Der Elementinhalt MUSS einer von 'code 'E' codeSystem '2.16.840.1.113883.2.16.1.4.9' displayName='EXTERN' codeSystemName='HL7.at.Laborkennzeichnung'' sein.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.3.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]
Item: (LaboratoryPerformer2)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]" id="d245561e537-false-d248376e0">
        <extends rule="AD"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryPerformer2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.3.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:telecom[not(@nullFlavor)]
Item: (LaboratoryPerformer2)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:telecom[not(@nullFlavor)]" id="d245561e541-false-d248385e0">
        <extends rule="TEL.AT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryPerformer2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.3.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson
Item: (LaboratoryPerformer2)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson" id="d245561e548-false-d248397e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="string(@classCode) = ('PSN') or not(@classCode)">(LaboratoryPerformer2): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(LaboratoryPerformer2): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(LaboratoryPerformer2): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(LaboratoryPerformer2): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]" id="d248394e35-false-d248426e0">
        <extends rule="PN"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.90001" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.3.3
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:representedOrganization
Item: (LaboratoryPerformer2)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:representedOrganization" id="d245561e553-false-d248438e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="string(@classCode) = ('ORG') or not(@classCode)">(LaboratoryPerformer2): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(LaboratoryPerformer2): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(LaboratoryPerformer2): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(LaboratoryPerformer2): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.3" test="count(hl7:addr) &lt;= 1">(LaboratoryPerformer2): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:representedOrganization/hl7:id" id="d248435e34-false-d248478e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.90002" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]" id="d248435e35-false-d248487e0">
        <extends rule="ON"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.90002" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:representedOrganization/hl7:telecom" id="d248435e36-false-d248496e0">
        <extends rule="TEL.AT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.90002" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.4.3.3']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:representedOrganization/hl7:addr" id="d248435e37-false-d248505e0">
        <extends rule="AD"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.90002" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
</pattern>