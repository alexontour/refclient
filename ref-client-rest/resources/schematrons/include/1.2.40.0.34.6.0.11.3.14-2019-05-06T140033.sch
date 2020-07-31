<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.3.14
Name: External Document Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.3.14-2019-05-06T140033">
    <title>External Document Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.14
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]
Item: (atcdabbr_entry_externalDocument)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.14
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]
Item: (atcdabbr_entry_externalDocument)
-->
    <rule context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]" id="d245561e4220-false-d413245e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="string(@classCode) = ('DOC') or not(@classCode)">(atcdabbr_entry_externalDocument): Der Wert von classCode MUSS 'DOC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="string(@moodCode) = ('EVN') or not(@moodCode)">(atcdabbr_entry_externalDocument): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']) &gt;= 1">(atcdabbr_entry_externalDocument): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']) &lt;= 1">(atcdabbr_entry_externalDocument): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(atcdabbr_entry_externalDocument): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_externalDocument): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="count(hl7:code) &lt;= 1">(atcdabbr_entry_externalDocument): Element hl7:code kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(atcdabbr_entry_externalDocument): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_externalDocument): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="count(hl7:setId[not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_externalDocument): Element hl7:setId[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="count(hl7:versionNumber[not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_externalDocument): Element hl7:versionNumber[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.14
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']
Item: (atcdabbr_entry_externalDocument)
-->
    <rule context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']" id="d245561e4223-false-d413306e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_externalDocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="string(@root) = ('1.2.40.0.34.6.0.11.3.14')">(atcdabbr_entry_externalDocument): Der Wert von root MUSS '1.2.40.0.34.6.0.11.3.14' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.14
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]/hl7:id[not(@nullFlavor)]
Item: (atcdabbr_entry_externalDocument)
-->
    <rule context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]/hl7:id[not(@nullFlavor)]" id="d245561e4228-false-d413319e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_externalDocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.14
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]/hl7:code
Item: (atcdabbr_entry_externalDocument)
-->
    <rule context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]/hl7:code" id="d245561e4235-false-d413328e0">
        <extends rule="CD"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_externalDocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="@codeSystem">(atcdabbr_entry_externalDocument): Attribut @codeSystem MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="not(@codeSystem) or matches(@codeSystem,'^[0-2](\.(0|[1-9]\d*))*$')">(atcdabbr_entry_externalDocument): Attribute @codeSystem MUSS vom Datentyp 'oid' sein  - '<value-of select="@codeSystem"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="@code">(atcdabbr_entry_externalDocument): Attribut @code MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="not(@code) or (string-length(@code) &gt; 0 and not(matches(@code,'\s')))">(atcdabbr_entry_externalDocument): Attribute @code MUSS vom Datentyp 'cs' sein  - '<value-of select="@code"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.1
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]/hl7:text
Item: (atcdabrr_other_NarrativeTextReference)
-->
    <rule context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]/hl7:text" id="d413329e60-false-d413349e0">
        <extends rule="ED"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_other_NarrativeTextReference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(atcdabrr_other_NarrativeTextReference): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(atcdabrr_other_NarrativeTextReference): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.1
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]/hl7:text/hl7:reference[not(@nullFlavor)]
Item: (atcdabrr_other_NarrativeTextReference)
-->
    <rule context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]/hl7:text/hl7:reference[not(@nullFlavor)]" id="d413329e61-false-d413367e0">
        <extends rule="TEL"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_other_NarrativeTextReference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="@value">(atcdabrr_other_NarrativeTextReference): Attribut @value MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="starts-with(@value,'#')">(atcdabrr_other_NarrativeTextReference): The @value attribute content MUST conform to the format '#xxx', where xxx is the ID of the corresponding 'content'-element.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.14
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]/hl7:setId[not(@nullFlavor)]
Item: (atcdabbr_entry_externalDocument)
-->
    <rule context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]/hl7:setId[not(@nullFlavor)]" id="d245561e4252-false-d413378e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_externalDocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.14
Context: *[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]/hl7:versionNumber[not(@nullFlavor)]
Item: (atcdabbr_entry_externalDocument)
-->
    <rule context="*[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]/hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]/hl7:versionNumber[not(@nullFlavor)]" id="d245561e4258-false-d413385e0">
        <extends rule="INT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_externalDocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:INT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.14" test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(atcdabbr_entry_externalDocument): @value ist keine gültige INT Zahl <value-of select="@value"/>
        </assert>
    </rule>
</pattern>