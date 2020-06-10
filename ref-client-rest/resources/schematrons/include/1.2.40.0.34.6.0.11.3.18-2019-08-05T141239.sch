<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.3.18
Name: Antikörper-Bestimmung Battery Organizer
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.3.18-2019-08-05T141239">
    <title>Antikörper-Bestimmung Battery Organizer</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.18
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]
Item: (eimpf_entry_AntikoerperBestimmungBatteryOrganizer)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.18
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]
Item: (eimpf_entry_AntikoerperBestimmungBatteryOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]" id="d133e5878-false-d135985e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="string(@classCode) = ('BATTERY')">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Der Wert von classCode MUSS 'BATTERY' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="string(@moodCode) = ('EVN')">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18']) &gt;= 1">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18']) &lt;= 1">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']) &gt;= 1">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']) &lt;= 1">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="count(hl7:effectiveTime) &lt;= 1">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.18
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18']
Item: (eimpf_entry_AntikoerperBestimmungBatteryOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18']" id="d133e5884-false-d136082e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="string(@root) = ('1.2.40.0.34.6.0.11.3.18')">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Der Wert von root MUSS '1.2.40.0.34.6.0.11.3.18' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.18
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']
Item: (eimpf_entry_AntikoerperBestimmungBatteryOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']" id="d133e5888-false-d136096e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="string(@root) = ('1.3.6.1.4.1.19376.1.3.1.4')">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.1.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.18
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (eimpf_entry_AntikoerperBestimmungBatteryOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]" id="d133e5892-false-d136112e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theCode" value="@code"/>
        <let name="theCodeSystem" value="@codeSystem"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.6.0.10.13-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Der Elementinhalt MUSS einer von '1.2.40.0.34.6.0.10.13 eImpf_Antikoerperbestimmung_VS (DYNAMIC)' sein.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.18
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:statusCode[@code = 'completed']
Item: (eimpf_entry_AntikoerperBestimmungBatteryOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:statusCode[@code = 'completed']" id="d133e5897-false-d136132e0">
        <extends rule="CS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="@nullFlavor or (@code='completed')">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.18
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:effectiveTime
Item: (eimpf_entry_AntikoerperBestimmungBatteryOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:effectiveTime" id="d133e5901-false-d136151e0">
        <extends rule="IVL_TS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="elmcount" value="count(hl7:low[@value] | hl7:low[@nullFlavor='UNK'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="$elmcount &gt;= 1">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Auswahl (hl7:low[@value]  oder  hl7:low[@nullFlavor='UNK']) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="$elmcount &lt;= 1">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Auswahl (hl7:low[@value]  oder  hl7:low[@nullFlavor='UNK']) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="count(hl7:low[@value]) &lt;= 1">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Element hl7:low[@value] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="count(hl7:low[@nullFlavor='UNK']) &lt;= 1">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Element hl7:low[@nullFlavor='UNK'] kommt zu häufig vor [max 1x].</assert>
        <let name="elmcount" value="count(hl7:high[@value] | hl7:high[@nullFlavor='UNK'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="$elmcount &gt;= 1">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Auswahl (hl7:high[@value]  oder  hl7:high[@nullFlavor='UNK']) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="$elmcount &lt;= 1">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Auswahl (hl7:high[@value]  oder  hl7:high[@nullFlavor='UNK']) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="count(hl7:high[@value]) &lt;= 1">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Element hl7:high[@value] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="count(hl7:high[@nullFlavor='UNK']) &lt;= 1">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Element hl7:high[@nullFlavor='UNK'] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.15
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:effectiveTime
Item: (atcdabbr_other_TimeIntervalInformationMinimal)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.15
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:effectiveTime/hl7:low[@value]
Item: (atcdabbr_other_TimeIntervalInformationMinimal)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:effectiveTime/hl7:low[@value]" id="d136154e38-false-d136198e0">
        <extends rule="TS.AT.TZ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_TimeIntervalInformationMinimal): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="not(*)">(atcdabbr_other_TimeIntervalInformationMinimal): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.15
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:effectiveTime/hl7:low[@nullFlavor='UNK']
Item: (atcdabbr_other_TimeIntervalInformationMinimal)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:effectiveTime/hl7:low[@nullFlavor='UNK']" id="d136154e39-false-d136208e0">
        <extends rule="TS.AT.TZ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_TimeIntervalInformationMinimal): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="not(*)">(atcdabbr_other_TimeIntervalInformationMinimal): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="string(@nullFlavor) = ('UNK')">(atcdabbr_other_TimeIntervalInformationMinimal): Der Wert von nullFlavor MUSS 'UNK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.15
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:effectiveTime
Item: (atcdabbr_other_TimeIntervalInformationMinimal)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.15
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:effectiveTime/hl7:high[@value]
Item: (atcdabbr_other_TimeIntervalInformationMinimal)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:effectiveTime/hl7:high[@value]" id="d136154e42-false-d136223e0">
        <extends rule="TS.AT.TZ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_TimeIntervalInformationMinimal): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="not(*)">(atcdabbr_other_TimeIntervalInformationMinimal): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.15
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:effectiveTime/hl7:high[@nullFlavor='UNK']
Item: (atcdabbr_other_TimeIntervalInformationMinimal)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:effectiveTime/hl7:high[@nullFlavor='UNK']" id="d136154e43-false-d136233e0">
        <extends rule="TS.AT.TZ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_TimeIntervalInformationMinimal): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="not(*)">(atcdabbr_other_TimeIntervalInformationMinimal): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="string(@nullFlavor) = ('UNK')">(atcdabbr_other_TimeIntervalInformationMinimal): Der Wert von nullFlavor MUSS 'UNK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.18
Context: *[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]
Item: (eimpf_entry_AntikoerperBestimmungBatteryOrganizer)
-->
    <rule context="*[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.18'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.4']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="string(@typeCode) = ('COMP')">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.18" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(eimpf_entry_AntikoerperBestimmungBatteryOrganizer): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>
</pattern>