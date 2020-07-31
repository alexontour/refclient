<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.9.17
Name: Performer Body
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.9.17-2019-01-17T124416">
    <title>Performer Body</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.17
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]
Item: (atcdabbr_other_PerformerBody)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]" id="d245561e6349-false-d468622e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.17" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']) &gt;= 1">(atcdabbr_other_PerformerBody): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.17" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']) &lt;= 1">(atcdabbr_other_PerformerBody): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.17" test="count(hl7:time) &lt;= 1">(atcdabbr_other_PerformerBody): Element hl7:time kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.17" test="count(hl7:assignedEntity[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_PerformerBody): Element hl7:assignedEntity[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.17" test="count(hl7:assignedEntity[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_PerformerBody): Element hl7:assignedEntity[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.17
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']
Item: (atcdabbr_other_PerformerBody)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']" id="d245561e6367-false-d468692e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.17" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PerformerBody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.17" test="string(@root) = ('1.2.40.0.34.6.0.11.9.17')">(atcdabbr_other_PerformerBody): Der Wert von root MUSS '1.2.40.0.34.6.0.11.9.17' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.17
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:time
Item: (atcdabbr_other_PerformerBody)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:time" id="d245561e6369-false-d468705e0">
        <extends rule="IVL_TS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.17" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PerformerBody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.17
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]
Item: (atcdabbr_other_PerformerBody)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]" id="d245561e6372-false-d468754e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.17" test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(atcdabbr_other_PerformerBody): Der Wert von classCode MUSS 'ASSIGNED' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <let name="elmcount" value="count(hl7:id[not(@nullFlavor)] | hl7:id[@nullFlavor='NI'] | hl7:id[@nullFlavor='UNK'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.17" test="$elmcount &gt;= 1">(atcdabbr_other_PerformerBody): Auswahl (hl7:id[not(@nullFlavor)]  oder  hl7:id[@nullFlavor='NI']  oder  hl7:id[@nullFlavor='UNK']) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.17" test="count(hl7:id[@nullFlavor='NI']) &lt;= 1">(atcdabbr_other_PerformerBody): Element hl7:id[@nullFlavor='NI'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.17" test="count(hl7:id[@nullFlavor='UNK']) &lt;= 1">(atcdabbr_other_PerformerBody): Element hl7:id[@nullFlavor='UNK'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.17" test="count(hl7:code) &lt;= 1">(atcdabbr_other_PerformerBody): Element hl7:code kommt zu häufig vor [max 1x].</assert>
        <let name="elmcount" value="count(hl7:assignedPerson | hl7:assignedPerson)"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.17" test="$elmcount &lt;= 1">(atcdabbr_other_PerformerBody): Auswahl (hl7:assignedPerson  oder  hl7:assignedPerson) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.17" test="count(hl7:assignedPerson) &lt;= 1">(atcdabbr_other_PerformerBody): Element hl7:assignedPerson kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.17" test="count(hl7:assignedPerson) &lt;= 1">(atcdabbr_other_PerformerBody): Element hl7:assignedPerson kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.17" test="count(hl7:representedOrganization) &lt;= 1">(atcdabbr_other_PerformerBody): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.17" test="count(hl7:telecom)&lt;2 or (count(hl7:telecom) = count(hl7:telecom[@use]))">(atcdabbr_other_PerformerBody): Das Attribut telecom/@use MUSS bei allen telecom Elementen strukturiert sein.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.16
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]
Item: ( atcdabbr_other_AssignedEntityBody)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.16
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: ( atcdabbr_other_AssignedEntityBody)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]" id="d468761e53-false-d468864e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">( atcdabbr_other_AssignedEntityBody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.16
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:id[@nullFlavor='NI']
Item: ( atcdabbr_other_AssignedEntityBody)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:id[@nullFlavor='NI']" id="d468761e65-false-d468871e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">( atcdabbr_other_AssignedEntityBody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.16" test="string(@nullFlavor) = ('NI')">( atcdabbr_other_AssignedEntityBody): Der Wert von nullFlavor MUSS 'NI' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.16
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:id[@nullFlavor='UNK']
Item: ( atcdabbr_other_AssignedEntityBody)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:id[@nullFlavor='UNK']" id="d468761e67-false-d468882e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">( atcdabbr_other_AssignedEntityBody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.16" test="string(@nullFlavor) = ('UNK')">( atcdabbr_other_AssignedEntityBody): Der Wert von nullFlavor MUSS 'UNK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.16
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:code
Item: ( atcdabbr_other_AssignedEntityBody)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:code" id="d468761e69-false-d468895e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">( atcdabbr_other_AssignedEntityBody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.16
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:addr
Item: ( atcdabbr_other_AssignedEntityBody)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.16
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:telecom
Item: ( atcdabbr_other_AssignedEntityBody)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:telecom" id="d468761e85-false-d468922e0">
        <extends rule="TEL.AT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">( atcdabbr_other_AssignedEntityBody): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.16" test="@value">( atcdabbr_other_AssignedEntityBody): Attribut @value MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.16" test="not(@value) or string(@value castable as xs:anyURI)">( atcdabbr_other_AssignedEntityBody): Attribute @value MUSS vom Datentyp 'url' sein  - '<value-of select="@value"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.16" test="not(@use) or (string-length(@use) &gt; 0 and not(matches(@use,'\s')))">( atcdabbr_other_AssignedEntityBody): Attribute @use MUSS vom Datentyp 'cs' sein  - '<value-of select="@use"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.16
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]
Item: ( atcdabbr_other_AssignedEntityBody)
-->


<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.16
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson
Item: ( atcdabbr_other_AssignedEntityBody)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.12
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson
Item: (atcdabbr_other_PersonNameCompilationG1M)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.12" test="string(@classCode) = ('PSN') or not(@classCode)">(atcdabbr_other_PersonNameCompilationG1M): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.12" test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(atcdabbr_other_PersonNameCompilationG1M): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.12" test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_PersonNameCompilationG1M): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.12" test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_PersonNameCompilationG1M): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.12
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]
Item: (atcdabbr_other_PersonNameCompilationG1M)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]">
        <extends rule="PN"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.12" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG1M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.12" test="not(@use) or (string-length(@use) &gt; 0 and not(matches(@use,'\s')))">(atcdabbr_other_PersonNameCompilationG1M): Attribute @use MUSS vom Datentyp 'cs' sein  - '<value-of select="@use"/>'</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.16
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson
Item: ( atcdabbr_other_AssignedEntityBody)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="string(@classCode) = ('PSN') or not(@classCode)">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_PersonNameCompilationG2M): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_PersonNameCompilationG2M): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]">
        <extends rule="PN"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@use) or (string-length(@use) &gt; 0 and not(matches(@use,'\s')))">(atcdabbr_other_PersonNameCompilationG2M): Attribute @use MUSS vom Datentyp 'cs' sein  - '<value-of select="@use"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="count(hl7:family[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_PersonNameCompilationG2M): Element hl7:family[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="count(hl7:given[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_PersonNameCompilationG2M): Element hl7:given[not(@nullFlavor)] ist mandatory [min 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:prefix
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:prefix">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:family[not(@nullFlavor)]
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:family[not(@nullFlavor)]">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:given[not(@nullFlavor)]
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:given[not(@nullFlavor)]">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:suffix
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="*[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:suffix">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.16
Context: *[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.17']]/hl7:assignedEntity[not(@nullFlavor)]/hl7:representedOrganization
Item: ( atcdabbr_other_AssignedEntityBody)
-->
</pattern>