<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.3.6.1.4.1.19376.1.3.1.4
Name: Befundgruppen (Laboratory Battery Organizer)
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.3.6.1.4.1.19376.1.3.1.4-2017-02-23T000000">
    <title>Befundgruppen (Laboratory Battery Organizer)</title>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.4
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]
Item: (LaboratoryBatteryOrganizer)
-->

<!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.4
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]
Item: (LaboratoryBatteryOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]" id="d245561e8459-false-d489813e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="string(@classCode) = ('BATTERY')">(LaboratoryBatteryOrganizer): Der Wert von classCode MUSS 'BATTERY' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="string(@moodCode) = ('EVN')">(LaboratoryBatteryOrganizer): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']) &gt;= 1">(LaboratoryBatteryOrganizer): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4'] ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']) &lt;= 1">(LaboratoryBatteryOrganizer): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(LaboratoryBatteryOrganizer): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(LaboratoryBatteryOrganizer): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(LaboratoryBatteryOrganizer): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(LaboratoryBatteryOrganizer): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="count(hl7:effectiveTime) &lt;= 1">(LaboratoryBatteryOrganizer): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.4
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']
Item: (LaboratoryBatteryOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']" id="d245561e8465-false-d489899e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryBatteryOrganizer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="string(@root) = ('1.3.6.1.4.1.19376.1.3.1.4')">(LaboratoryBatteryOrganizer): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.1.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.4
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (LaboratoryBatteryOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]" id="d245561e8467-false-d489915e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryBatteryOrganizer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theCode" value="@code"/>
        <let name="theCodeSystem" value="@codeSystem"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.47-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(LaboratoryBatteryOrganizer): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.47 ELGA_Laborstruktur (DYNAMIC)' sein.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.4
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:statusCode[@code = 'completed']
Item: (LaboratoryBatteryOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:statusCode[@code = 'completed']" id="d245561e8469-false-d489935e0">
        <extends rule="CS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryBatteryOrganizer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="@nullFlavor or (@code='completed')">(LaboratoryBatteryOrganizer): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.4
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:effectiveTime
Item: (LaboratoryBatteryOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:effectiveTime" id="d245561e8471-false-d489950e0">
        <extends rule="IVL_TS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryBatteryOrganizer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="count(hl7:low[not(@nullFlavor)]) &gt;= 1">(LaboratoryBatteryOrganizer): Element hl7:low[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="count(hl7:low[not(@nullFlavor)]) &lt;= 1">(LaboratoryBatteryOrganizer): Element hl7:low[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="count(hl7:high[not(@nullFlavor)]) &gt;= 1">(LaboratoryBatteryOrganizer): Element hl7:high[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="count(hl7:high[not(@nullFlavor)]) &lt;= 1">(LaboratoryBatteryOrganizer): Element hl7:high[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.4
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:effectiveTime/hl7:low[not(@nullFlavor)]
Item: (LaboratoryBatteryOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:effectiveTime/hl7:low[not(@nullFlavor)]" id="d245561e8474-false-d489976e0">
        <extends rule="TS.DATE.MIN"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryBatteryOrganizer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="not(*)">(LaboratoryBatteryOrganizer): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.4
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:effectiveTime/hl7:high[not(@nullFlavor)]
Item: (LaboratoryBatteryOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:effectiveTime/hl7:high[not(@nullFlavor)]" id="d245561e8475-false-d489988e0">
        <extends rule="TS.DATE.MIN"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryBatteryOrganizer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="not(*)">(LaboratoryBatteryOrganizer): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
    </rule>

   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.4
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]
Item: (LaboratoryBatteryOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="string(@typeCode) = ('COMP')">(LaboratoryBatteryOrganizer): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.4
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]
Item: (LaboratoryBatteryOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="string(@typeCode) = ('COMP')">(LaboratoryBatteryOrganizer): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.4
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:component[hl7:observationMedia]
Item: (LaboratoryBatteryOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:component[hl7:observationMedia]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="string(@typeCode) = ('COMP')">(LaboratoryBatteryOrganizer): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.4
Context: *[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:component[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.4.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]
Item: (LaboratoryBatteryOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:component[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.4.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.4" test="string(@typeCode) = ('COMP')">(LaboratoryBatteryOrganizer): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
    </rule>
</pattern>