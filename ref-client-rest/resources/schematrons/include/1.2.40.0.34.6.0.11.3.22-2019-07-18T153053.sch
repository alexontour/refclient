<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.3.22
Name: Impfplan Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.3.22-2019-07-18T153053">
    <title>Impfplan Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.22
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]
Item: (atcdabbr_entry_impfPlan)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.22
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]
Item: (atcdabbr_entry_impfPlan)
-->
    <rule context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]" id="d245561e5003-false-d445729e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.22" test="string(@classCode) = ('DOC') or not(@classCode)">(atcdabbr_entry_impfPlan): Der Wert von classCode MUSS 'DOC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.22" test="string(@moodCode) = ('EVN') or not(@moodCode)">(atcdabbr_entry_impfPlan): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.22" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']) &gt;= 1">(atcdabbr_entry_impfPlan): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.22" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']) &lt;= 1">(atcdabbr_entry_impfPlan): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.22" test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(atcdabbr_entry_impfPlan): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.22" test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_impfPlan): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.22" test="count(hl7:code[not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_impfPlan): Element hl7:code[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.22" test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(atcdabbr_entry_impfPlan): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.22" test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_impfPlan): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.22" test="count(hl7:setId[not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_impfPlan): Element hl7:setId[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.22" test="count(hl7:versionNumber[not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_impfPlan): Element hl7:versionNumber[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.22
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']
Item: (atcdabbr_entry_impfPlan)
-->
    <rule context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']" id="d245561e5006-false-d445788e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.22" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_impfPlan): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.22" test="string(@root) = ('1.2.40.0.34.6.0.11.3.22')">(atcdabbr_entry_impfPlan): Der Wert von root MUSS '1.2.40.0.34.6.0.11.3.22' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.22
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]/hl7:id[not(@nullFlavor)]
Item: (atcdabbr_entry_impfPlan)
-->
    <rule context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]/hl7:id[not(@nullFlavor)]" id="d245561e5011-false-d445801e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.22" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_impfPlan): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.22
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]/hl7:code[not(@nullFlavor)]
Item: (atcdabbr_entry_impfPlan)
-->
    <rule context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]/hl7:code[not(@nullFlavor)]" id="d245561e5015-false-d445808e0">
        <extends rule="CD"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.22" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_impfPlan): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.22" test="@nullFlavor or (@codeSystem='2.16.840.1.113883.6.1')">(atcdabbr_entry_impfPlan): Der Elementinhalt MUSS einer von 'codeSystem '2.16.840.1.113883.6.1'' sein.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.1
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]/hl7:text
Item: (atcdabrr_other_NarrativeTextReference)
-->
    <rule context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]/hl7:text" id="d445809e50-false-d445824e0">
        <extends rule="ED"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_other_NarrativeTextReference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(atcdabrr_other_NarrativeTextReference): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(atcdabrr_other_NarrativeTextReference): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.1
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]/hl7:text/hl7:reference[not(@nullFlavor)]
Item: (atcdabrr_other_NarrativeTextReference)
-->
    <rule context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]/hl7:text/hl7:reference[not(@nullFlavor)]" id="d445809e51-false-d445842e0">
        <extends rule="TEL"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_other_NarrativeTextReference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="@value">(atcdabrr_other_NarrativeTextReference): Attribut @value MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="starts-with(@value,'#')">(atcdabrr_other_NarrativeTextReference): The @value attribute content MUST conform to the format '#xxx', where xxx is the ID of the corresponding 'content'-element.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.22
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]/hl7:setId[not(@nullFlavor)]
Item: (atcdabbr_entry_impfPlan)
-->
    <rule context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]/hl7:setId[not(@nullFlavor)]" id="d245561e5025-false-d445853e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.22" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_impfPlan): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.22
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]/hl7:versionNumber[not(@nullFlavor)]
Item: (atcdabbr_entry_impfPlan)
-->
    <rule context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]/hl7:versionNumber[not(@nullFlavor)]" id="d245561e5028-false-d445860e0">
        <extends rule="INT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.22" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_impfPlan): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:INT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.22" test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(atcdabbr_entry_impfPlan): @value ist keine gültige INT Zahl <value-of select="@value"/>
        </assert>
    </rule>
</pattern>