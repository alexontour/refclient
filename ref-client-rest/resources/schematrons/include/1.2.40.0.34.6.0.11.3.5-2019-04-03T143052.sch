<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.3.5
Name: Immunization Billability Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.3.5-2019-04-03T143052">
    <title>Immunization Billability Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.5
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]]
Item: (atcdabbr_entry_ImmunizationBillability)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.5
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]
Item: (atcdabbr_entry_ImmunizationBillability)
-->
    <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]" id="d245561e5418-false-d455205e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="string(@classCode) = ('ACT')">(atcdabbr_entry_ImmunizationBillability): Der Wert von classCode MUSS 'ACT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="string(@moodCode) = ('INT')">(atcdabbr_entry_ImmunizationBillability): Der Wert von moodCode MUSS 'INT' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="not(@negationInd) or string(@negationInd)=('true','false')">(atcdabbr_entry_ImmunizationBillability): Attribute @negationInd MUSS vom Datentyp 'bl' sein  - '<value-of select="@negationInd"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']) &gt;= 1">(atcdabbr_entry_ImmunizationBillability): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']) &lt;= 1">(atcdabbr_entry_ImmunizationBillability): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_ImmunizationBillability): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="count(hl7:code[(@code = 'PAY' and @codeSystem = '2.16.840.1.113883.5.4')]) &gt;= 1">(atcdabbr_entry_ImmunizationBillability): Element hl7:code[(@code = 'PAY' and @codeSystem = '2.16.840.1.113883.5.4')] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="count(hl7:code[(@code = 'PAY' and @codeSystem = '2.16.840.1.113883.5.4')]) &lt;= 1">(atcdabbr_entry_ImmunizationBillability): Element hl7:code[(@code = 'PAY' and @codeSystem = '2.16.840.1.113883.5.4')] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="count(hl7:statusCode[not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_ImmunizationBillability): Element hl7:statusCode[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <let name="elmcount" value="count(hl7:effectiveTime[not(@nullFlavor)] | hl7:effectiveTime[@nullFlavor='UNK'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="$elmcount &gt;= 1">(atcdabbr_entry_ImmunizationBillability): Auswahl (hl7:effectiveTime[not(@nullFlavor)]  oder  hl7:effectiveTime[@nullFlavor='UNK']) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="$elmcount &lt;= 1">(atcdabbr_entry_ImmunizationBillability): Auswahl (hl7:effectiveTime[not(@nullFlavor)]  oder  hl7:effectiveTime[@nullFlavor='UNK']) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_ImmunizationBillability): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="count(hl7:effectiveTime[@nullFlavor='UNK']) &lt;= 1">(atcdabbr_entry_ImmunizationBillability): Element hl7:effectiveTime[@nullFlavor='UNK'] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.5
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']
Item: (atcdabbr_entry_ImmunizationBillability)
-->
    <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']" id="d245561e5422-false-d455266e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationBillability): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="string(@root) = ('1.2.40.0.34.6.0.11.3.5')">(atcdabbr_entry_ImmunizationBillability): Der Wert von root MUSS '1.2.40.0.34.6.0.11.3.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.5
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]/hl7:id[not(@nullFlavor)]
Item: (atcdabbr_entry_ImmunizationBillability)
-->
    <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]/hl7:id[not(@nullFlavor)]" id="d245561e5426-false-d455277e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationBillability): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.5
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]/hl7:code[(@code = 'PAY' and @codeSystem = '2.16.840.1.113883.5.4')]
Item: (atcdabbr_entry_ImmunizationBillability)
-->
    <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]/hl7:code[(@code = 'PAY' and @codeSystem = '2.16.840.1.113883.5.4')]" id="d245561e5436-false-d455287e0">
        <extends rule="CD"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationBillability): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="@nullFlavor or (@code='PAY' and @codeSystem='2.16.840.1.113883.5.4')">(atcdabbr_entry_ImmunizationBillability): Der Elementinhalt MUSS einer von 'code 'PAY' codeSystem '2.16.840.1.113883.5.4'' sein.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="count(hl7:qualifier[hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]) &lt;= 1">(atcdabbr_entry_ImmunizationBillability): Element hl7:qualifier[hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.5
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]/hl7:code[(@code = 'PAY' and @codeSystem = '2.16.840.1.113883.5.4')]/hl7:qualifier[hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]
Item: (atcdabbr_entry_ImmunizationBillability)
-->
    <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]/hl7:code[(@code = 'PAY' and @codeSystem = '2.16.840.1.113883.5.4')]/hl7:qualifier[hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]" id="d245561e5440-false-d455314e0">
        <extends rule="CR"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CR' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationBillability): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CR" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(atcdabbr_entry_ImmunizationBillability): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(atcdabbr_entry_ImmunizationBillability): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.5
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]/hl7:code[(@code = 'PAY' and @codeSystem = '2.16.840.1.113883.5.4')]/hl7:qualifier[hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (atcdabbr_entry_ImmunizationBillability)
-->
    <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]/hl7:code[(@code = 'PAY' and @codeSystem = '2.16.840.1.113883.5.4')]/hl7:qualifier[hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]" id="d245561e5444-false-d455338e0">
        <extends rule="CD"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationBillability): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theCode" value="@code"/>
        <let name="theCodeSystem" value="@codeSystem"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.6.0.10.7-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(atcdabbr_entry_ImmunizationBillability): Der Elementinhalt MUSS einer von '1.2.40.0.34.6.0.10.7 eImpf_Impfgrund_VS (DYNAMIC)' sein.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.5
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]/hl7:statusCode[not(@nullFlavor)]
Item: (atcdabbr_entry_ImmunizationBillability)
-->
    <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]/hl7:statusCode[not(@nullFlavor)]" id="d245561e5446-false-d455355e0">
        <extends rule="CS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationBillability): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="@nullFlavor or (@code='completed')">(atcdabbr_entry_ImmunizationBillability): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.5
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (atcdabbr_entry_ImmunizationBillability)
-->
    <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]/hl7:effectiveTime[not(@nullFlavor)]" id="d245561e5456-false-d455368e0">
        <extends rule="TS.DATE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationBillability): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="not(*)">(atcdabbr_entry_ImmunizationBillability): <value-of select="local-name()"/> with datatype TS.DATE, SHOULD NOT have child elements.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.5
Context: *[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]/hl7:effectiveTime[@nullFlavor='UNK']
Item: (atcdabbr_entry_ImmunizationBillability)
-->
    <rule context="*[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.5']]/hl7:effectiveTime[@nullFlavor='UNK']" id="d245561e5457-false-d455378e0">
        <extends rule="TS.DATE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationBillability): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="not(*)">(atcdabbr_entry_ImmunizationBillability): <value-of select="local-name()"/> with datatype TS.DATE, SHOULD NOT have child elements.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.5" test="string(@nullFlavor) = ('UNK')">(atcdabbr_entry_ImmunizationBillability): Der Wert von nullFlavor MUSS 'UNK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>
</pattern>