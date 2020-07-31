<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.3.6.1.4.1.19376.1.3.1.1.1
Name: Notification Condition
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.3.6.1.4.1.19376.1.3.1.1.1-2013-09-09T000000">
    <title>Notification Condition</title>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.1.1
Context: *[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]
Item: (NotifiableCondition)
-->

<!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.1.1
Context: *[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]/hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]
Item: (NotifiableCondition)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]/hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]" id="d245561e8420-false-d489548e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="string(@classCode) = ('COND')">(NotifiableCondition): Der Wert von classCode MUSS 'COND' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="string(@moodCode) = ('EVN')">(NotifiableCondition): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']) &gt;= 1">(NotifiableCondition): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1'] ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']) &lt;= 1">(NotifiableCondition): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="count(hl7:code[(@code = '170516003' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(NotifiableCondition): Element hl7:code[(@code = '170516003' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="count(hl7:code[(@code = '170516003' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(NotifiableCondition): Element hl7:code[(@code = '170516003' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(NotifiableCondition): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(NotifiableCondition): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(NotifiableCondition): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(NotifiableCondition): Element hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.1.1
Context: *[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]/hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']
Item: (NotifiableCondition)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]/hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']" id="d245561e8426-false-d489602e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(NotifiableCondition): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="string(@root) = ('1.3.6.1.4.1.19376.1.3.1.1.1')">(NotifiableCondition): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.1.1.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.1.1
Context: *[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]/hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]/hl7:code[(@code = '170516003' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (NotifiableCondition)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]/hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]/hl7:code[(@code = '170516003' and @codeSystem = '2.16.840.1.113883.6.96')]" id="d245561e8428-false-d489616e0">
        <extends rule="CD"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(NotifiableCondition): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="@nullFlavor or (@code='170516003' and @codeSystem='2.16.840.1.113883.6.96')">(NotifiableCondition): Der Elementinhalt MUSS einer von 'code '170516003' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="count(hl7:qualifier[hl7:name[(@code = '246087005' and @codeSystem = '2.16.840.1.113883.6.96')]]) &gt;= 1">(NotifiableCondition): Element hl7:qualifier[hl7:name[(@code = '246087005' and @codeSystem = '2.16.840.1.113883.6.96')]] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="count(hl7:qualifier[hl7:name[(@code = '246087005' and @codeSystem = '2.16.840.1.113883.6.96')]]) &lt;= 1">(NotifiableCondition): Element hl7:qualifier[hl7:name[(@code = '246087005' and @codeSystem = '2.16.840.1.113883.6.96')]] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.1.1
Context: *[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]/hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]/hl7:code[(@code = '170516003' and @codeSystem = '2.16.840.1.113883.6.96')]/hl7:qualifier[hl7:name[(@code = '246087005' and @codeSystem = '2.16.840.1.113883.6.96')]]
Item: (NotifiableCondition)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]/hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]/hl7:code[(@code = '170516003' and @codeSystem = '2.16.840.1.113883.6.96')]/hl7:qualifier[hl7:name[(@code = '246087005' and @codeSystem = '2.16.840.1.113883.6.96')]]" id="d245561e8430-false-d489641e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="count(hl7:name[(@code = '246087005' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(NotifiableCondition): Element hl7:name[(@code = '246087005' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="count(hl7:name[(@code = '246087005' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(NotifiableCondition): Element hl7:name[(@code = '246087005' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="count(hl7:value[(@code = '116154003' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(NotifiableCondition): Element hl7:value[(@code = '116154003' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="count(hl7:value[(@code = '116154003' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(NotifiableCondition): Element hl7:value[(@code = '116154003' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.1.1
Context: *[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]/hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]/hl7:code[(@code = '170516003' and @codeSystem = '2.16.840.1.113883.6.96')]/hl7:qualifier[hl7:name[(@code = '246087005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:name[(@code = '246087005' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (NotifiableCondition)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]/hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]/hl7:code[(@code = '170516003' and @codeSystem = '2.16.840.1.113883.6.96')]/hl7:qualifier[hl7:name[(@code = '246087005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:name[(@code = '246087005' and @codeSystem = '2.16.840.1.113883.6.96')]" id="d245561e8431-false-d489667e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="@nullFlavor or (@code='246087005' and @codeSystem='2.16.840.1.113883.6.96')">(NotifiableCondition): Der Elementinhalt MUSS einer von 'code '246087005' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.1.1
Context: *[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]/hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]/hl7:code[(@code = '170516003' and @codeSystem = '2.16.840.1.113883.6.96')]/hl7:qualifier[hl7:name[(@code = '246087005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:value[(@code = '116154003' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (NotifiableCondition)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]/hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]/hl7:code[(@code = '170516003' and @codeSystem = '2.16.840.1.113883.6.96')]/hl7:qualifier[hl7:name[(@code = '246087005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:value[(@code = '116154003' and @codeSystem = '2.16.840.1.113883.6.96')]" id="d245561e8433-false-d489680e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="@nullFlavor or (@code='116154003' and @codeSystem='2.16.840.1.113883.6.96')">(NotifiableCondition): Der Elementinhalt MUSS einer von 'code '116154003' codeSystem '2.16.840.1.113883.6.96'' sein.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.1.1
Context: *[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]/hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]/hl7:statusCode[@code = 'completed']
Item: (NotifiableCondition)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]/hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]/hl7:statusCode[@code = 'completed']" id="d245561e8435-false-d489693e0">
        <extends rule="CS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(NotifiableCondition): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="@nullFlavor or (@code='completed')">(NotifiableCondition): Der Elementinhalt MUSS einer von 'code 'completed'' sein.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.3.6.1.4.1.19376.1.3.1.1.1
Context: *[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]/hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (NotifiableCondition)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]]/hl7:observation[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.1.1']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]" id="d245561e8437-false-d489711e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(NotifiableCondition): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theCode" value="@code"/>
        <let name="theCodeSystem" value="@codeSystem"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.3.6.1.4.1.19376.1.3.1.1.1" test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.58-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(NotifiableCondition): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.58 ELGA_SignificantPathogens (DYNAMIC)' sein.</assert>
    </rule>
</pattern>