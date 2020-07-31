<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.3.10
Name: Immunization Schedule Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.3.10-2019-04-17T105355">
    <title>Immunization Schedule Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.10
Context: *[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]
Item: (atcdabbr_entry_ImmunizationSchedule)
-->
    <rule context="*[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]" id="d245561e3931-false-d405197e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="count(hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]) &gt;= 1">(atcdabbr_entry_ImmunizationSchedule): Element hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="count(hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]) &lt;= 1">(atcdabbr_entry_ImmunizationSchedule): Element hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.10
Context: *[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]
Item: (atcdabbr_entry_ImmunizationSchedule)
-->
    <rule context="*[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]" id="d245561e3992-false-d405221e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="string(@classCode) = ('OBS') or not(@classCode)">(atcdabbr_entry_ImmunizationSchedule): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="string(@moodCode) = ('EVN.CRT') or not(@moodCode)">(atcdabbr_entry_ImmunizationSchedule): Der Wert von moodCode MUSS 'EVN.CRT' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']) &gt;= 1">(atcdabbr_entry_ImmunizationSchedule): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']) &lt;= 1">(atcdabbr_entry_ImmunizationSchedule): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10'] kommt zu häufig vor [max 1x].</assert>
        <let name="elmcount" value="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | hl7:code[@nullFlavor='NI'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="$elmcount &gt;= 1">(atcdabbr_entry_ImmunizationSchedule): Auswahl (hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]  oder  hl7:code[@nullFlavor='NI']) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="$elmcount &lt;= 1">(atcdabbr_entry_ImmunizationSchedule): Auswahl (hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]  oder  hl7:code[@nullFlavor='NI']) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(atcdabbr_entry_ImmunizationSchedule): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="count(hl7:code[@nullFlavor='NI']) &lt;= 1">(atcdabbr_entry_ImmunizationSchedule): Element hl7:code[@nullFlavor='NI'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="count(hl7:text) &gt;= 1">(atcdabbr_entry_ImmunizationSchedule): Element hl7:text ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="count(hl7:text) &lt;= 1">(atcdabbr_entry_ImmunizationSchedule): Element hl7:text kommt zu häufig vor [max 1x].</assert>
        <let name="elmcount" value="count(hl7:value[not(@nullFlavor)] | hl7:value[@nullFlavor='UNK'] | hl7:value[@nullFlavor='NAV'] | hl7:value[@nullFlavor='NA'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="$elmcount &gt;= 1">(atcdabbr_entry_ImmunizationSchedule): Auswahl (hl7:value[not(@nullFlavor)]  oder  hl7:value[@nullFlavor='UNK']  oder  hl7:value[@nullFlavor='NAV']  oder  hl7:value[@nullFlavor='NA']) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="$elmcount &lt;= 1">(atcdabbr_entry_ImmunizationSchedule): Auswahl (hl7:value[not(@nullFlavor)]  oder  hl7:value[@nullFlavor='UNK']  oder  hl7:value[@nullFlavor='NAV']  oder  hl7:value[@nullFlavor='NA']) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="count(hl7:value[not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_ImmunizationSchedule): Element hl7:value[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="count(hl7:value[@nullFlavor='UNK']) &lt;= 1">(atcdabbr_entry_ImmunizationSchedule): Element hl7:value[@nullFlavor='UNK'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="count(hl7:value[@nullFlavor='NAV']) &lt;= 1">(atcdabbr_entry_ImmunizationSchedule): Element hl7:value[@nullFlavor='NAV'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="count(hl7:value[@nullFlavor='NA']) &lt;= 1">(atcdabbr_entry_ImmunizationSchedule): Element hl7:value[@nullFlavor='NA'] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.10
Context: *[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']
Item: (atcdabbr_entry_ImmunizationSchedule)
-->
    <rule context="*[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']" id="d245561e4003-false-d405308e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationSchedule): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="string(@root) = ('1.2.40.0.34.6.0.11.3.10')">(atcdabbr_entry_ImmunizationSchedule): Der Wert von root MUSS '1.2.40.0.34.6.0.11.3.10' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.10
Context: *[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (atcdabbr_entry_ImmunizationSchedule)
-->
    <rule context="*[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]" id="d245561e4010-false-d405324e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationSchedule): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theCode" value="@code"/>
        <let name="theCodeSystem" value="@codeSystem"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.6.0.10.5-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(atcdabbr_entry_ImmunizationSchedule): Der Elementinhalt MUSS einer von '1.2.40.0.34.6.0.10.5 eImpf_Impfschema_VS (DYNAMIC)' sein.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="@code">(atcdabbr_entry_ImmunizationSchedule): Attribut @code MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="not(@code) or (string-length(@code) &gt; 0 and not(matches(@code,'\s')))">(atcdabbr_entry_ImmunizationSchedule): Attribute @code MUSS vom Datentyp 'cs' sein  - '<value-of select="@code"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="@codeSystem">(atcdabbr_entry_ImmunizationSchedule): Attribut @codeSystem MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="not(@codeSystem) or matches(@codeSystem,'^[0-2](\.(0|[1-9]\d*))*$')">(atcdabbr_entry_ImmunizationSchedule): Attribute @codeSystem MUSS vom Datentyp 'oid' sein  - '<value-of select="@codeSystem"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="not(@displayName) or string-length(@displayName)&gt;0">(atcdabbr_entry_ImmunizationSchedule): Attribute @displayName MUSS vom Datentyp 'st' sein  - '<value-of select="@displayName"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.10
Context: *[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:code[@nullFlavor='NI']
Item: (atcdabbr_entry_ImmunizationSchedule)
-->
    <rule context="*[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:code[@nullFlavor='NI']" id="d245561e4040-false-d405354e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationSchedule): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="string(@nullFlavor) = ('NI')">(atcdabbr_entry_ImmunizationSchedule): Der Wert von nullFlavor MUSS 'NI' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.1
Context: *[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:text
Item: (atcdabrr_other_NarrativeTextReference)
-->
    <rule context="*[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:text" id="d405355e52-false-d405368e0">
        <extends rule="ED"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_other_NarrativeTextReference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(atcdabrr_other_NarrativeTextReference): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(atcdabrr_other_NarrativeTextReference): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.1
Context: *[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:text/hl7:reference[not(@nullFlavor)]
Item: (atcdabrr_other_NarrativeTextReference)
-->
    <rule context="*[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:text/hl7:reference[not(@nullFlavor)]" id="d405355e53-false-d405386e0">
        <extends rule="TEL"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_other_NarrativeTextReference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="@value">(atcdabrr_other_NarrativeTextReference): Attribut @value MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="starts-with(@value,'#')">(atcdabrr_other_NarrativeTextReference): The @value attribute content MUST conform to the format '#xxx', where xxx is the ID of the corresponding 'content'-element.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.10
Context: *[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:value[not(@nullFlavor)]
Item: (atcdabbr_entry_ImmunizationSchedule)
-->
    <rule context="*[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:value[not(@nullFlavor)]" id="d245561e4076-false-d405397e0">
        <extends rule="CD"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationSchedule): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theCode" value="@code"/>
        <let name="theCodeSystem" value="@codeSystem"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.6.0.10.6-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(atcdabbr_entry_ImmunizationSchedule): Der Elementinhalt MUSS einer von '1.2.40.0.34.6.0.10.6 eImpf_Impfdosis_VS (DYNAMIC)' sein.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="@displayName">(atcdabbr_entry_ImmunizationSchedule): Attribut @displayName MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="not(@displayName) or string-length(@displayName)&gt;0">(atcdabbr_entry_ImmunizationSchedule): Attribute @displayName MUSS vom Datentyp 'st' sein  - '<value-of select="@displayName"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="@codeSystem">(atcdabbr_entry_ImmunizationSchedule): Attribut @codeSystem MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="not(@codeSystem) or matches(@codeSystem,'^[0-2](\.(0|[1-9]\d*))*$')">(atcdabbr_entry_ImmunizationSchedule): Attribute @codeSystem MUSS vom Datentyp 'oid' sein  - '<value-of select="@codeSystem"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="@code">(atcdabbr_entry_ImmunizationSchedule): Attribut @code MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="not(@code) or (string-length(@code) &gt; 0 and not(matches(@code,'\s')))">(atcdabbr_entry_ImmunizationSchedule): Attribute @code MUSS vom Datentyp 'cs' sein  - '<value-of select="@code"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="count(hl7:originalText) &lt;= 1">(atcdabbr_entry_ImmunizationSchedule): Element hl7:originalText kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.2
Context: *[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:value[not(@nullFlavor)]/hl7:originalText
Item: (atcdabbr_other_OriginalTextReference)
-->
    <rule context="*[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:value[not(@nullFlavor)]/hl7:originalText" id="d405400e46-false-d405444e0">
        <extends rule="ED"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_OriginalTextReference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.2" test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_OriginalTextReference): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.2" test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_OriginalTextReference): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.2
Context: *[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:value[not(@nullFlavor)]/hl7:originalText/hl7:reference[not(@nullFlavor)]
Item: (atcdabbr_other_OriginalTextReference)
-->
    <rule context="*[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:value[not(@nullFlavor)]/hl7:originalText/hl7:reference[not(@nullFlavor)]" id="d405400e50-false-d405462e0">
        <extends rule="TEL"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_OriginalTextReference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.2" test="@value">(atcdabbr_other_OriginalTextReference): Attribut @value MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.2" test="starts-with(@value,'#')">(atcdabbr_other_OriginalTextReference): The @value attribute content MUST conform to the format '#xxx', where xxx is the ID of the corresponding 'content'-element.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.10
Context: *[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:value[@nullFlavor='UNK']
Item: (atcdabbr_entry_ImmunizationSchedule)
-->
    <rule context="*[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:value[@nullFlavor='UNK']" id="d245561e4093-false-d405473e0">
        <extends rule="CD"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationSchedule): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="string(@nullFlavor) = ('UNK')">(atcdabbr_entry_ImmunizationSchedule): Der Wert von nullFlavor MUSS 'UNK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="((/hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.2'] or /hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4']) and (ancestor::*/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.1'] and ancestor::*/hl7:participant/hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.14'])) or ((/hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.2'] or /hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4']) and ancestor::*/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3'])">(atcdabbr_entry_ImmunizationSchedule): value/@nullFlavor = "UNK" ist NICHT ERLAUBT</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.10
Context: *[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:value[@nullFlavor='NAV']
Item: (atcdabbr_entry_ImmunizationSchedule)
-->
    <rule context="*[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:value[@nullFlavor='NAV']" id="d245561e4104-false-d405484e0">
        <extends rule="CD"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationSchedule): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="string(@nullFlavor) = ('NAV')">(atcdabbr_entry_ImmunizationSchedule): Der Wert von nullFlavor MUSS 'NAV' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="(/hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4'] and ancestor::*/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3'])">(atcdabbr_entry_ImmunizationSchedule): value/@nullFlavor = "NAV" ist NICHT ERLAUBT</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.10
Context: *[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:value[@nullFlavor='NA']
Item: (atcdabbr_entry_ImmunizationSchedule)
-->
    <rule context="*[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]/hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]/hl7:value[@nullFlavor='NA']" id="d245561e4116-false-d405495e0">
        <extends rule="CD"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationSchedule): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="string(@nullFlavor) = ('NA')">(atcdabbr_entry_ImmunizationSchedule): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.10" test="(/hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4'] and ancestor::*/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3'])">(atcdabbr_entry_ImmunizationSchedule): value/@nullFlavor = "NA" ist NICHT ERLAUBT</assert>
    </rule>
</pattern>