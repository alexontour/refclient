<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.2.5
Name: Impfrelevante Erkrankungen - kodiert
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.2.5-2019-05-20T082055">
    <title>Impfrelevante Erkrankungen - kodiert</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]
Item: (eimpf_section_ImpfrelevanteErkrankungen)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]
Item: (eimpf_section_ImpfrelevanteErkrankungen)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]" id="d245561e2976-false-d373399e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="string(@classCode) = ('DOCSECT') or not(@classCode)">(eimpf_section_ImpfrelevanteErkrankungen): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="string(@moodCode) = ('EVN') or not(@moodCode)">(eimpf_section_ImpfrelevanteErkrankungen): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5']) &gt;= 1">(eimpf_section_ImpfrelevanteErkrankungen): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5']) &lt;= 1">(eimpf_section_ImpfrelevanteErkrankungen): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']) &gt;= 1">(eimpf_section_ImpfrelevanteErkrankungen): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']) &lt;= 1">(eimpf_section_ImpfrelevanteErkrankungen): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(eimpf_section_ImpfrelevanteErkrankungen): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="count(hl7:code[(@code = '11348-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(eimpf_section_ImpfrelevanteErkrankungen): Element hl7:code[(@code = '11348-0' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="count(hl7:code[(@code = '11348-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(eimpf_section_ImpfrelevanteErkrankungen): Element hl7:code[(@code = '11348-0' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(eimpf_section_ImpfrelevanteErkrankungen): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(eimpf_section_ImpfrelevanteErkrankungen): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(eimpf_section_ImpfrelevanteErkrankungen): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(eimpf_section_ImpfrelevanteErkrankungen): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.8'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2']]]) &gt;= 1">(eimpf_section_ImpfrelevanteErkrankungen): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.8'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2']]] ist mandatory [min 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5']
Item: (eimpf_section_ImpfrelevanteErkrankungen)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5']" id="d245561e2979-false-d373578e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_section_ImpfrelevanteErkrankungen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="string(@root) = ('1.2.40.0.34.6.0.11.2.5')">(eimpf_section_ImpfrelevanteErkrankungen): Der Wert von root MUSS '1.2.40.0.34.6.0.11.2.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']
Item: (eimpf_section_ImpfrelevanteErkrankungen)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']" id="d245561e2983-false-d373592e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_section_ImpfrelevanteErkrankungen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.3.8')">(eimpf_section_ImpfrelevanteErkrankungen): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.3.8' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]/hl7:id[not(@nullFlavor)]
Item: (eimpf_section_ImpfrelevanteErkrankungen)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]/hl7:id[not(@nullFlavor)]" id="d245561e2987-false-d373603e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_section_ImpfrelevanteErkrankungen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]/hl7:code[(@code = '11348-0' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (eimpf_section_ImpfrelevanteErkrankungen)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]/hl7:code[(@code = '11348-0' and @codeSystem = '2.16.840.1.113883.6.1')]" id="d245561e2990-false-d373613e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_section_ImpfrelevanteErkrankungen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="string(@code) = ('11348-0')">(eimpf_section_ImpfrelevanteErkrankungen): Der Wert von code MUSS '11348-0' sein. Gefunden: "<value-of select="@code"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="not(@code) or string-length(@code)&gt;0">(eimpf_section_ImpfrelevanteErkrankungen): Attribute @code MUSS vom Datentyp 'st' sein  - '<value-of select="@code"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="string(@codeSystem) = ('2.16.840.1.113883.6.1')">(eimpf_section_ImpfrelevanteErkrankungen): Der Wert von codeSystem MUSS '2.16.840.1.113883.6.1' sein. Gefunden: "<value-of select="@codeSystem"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="string(@codeSystemName) = ('LOINC')">(eimpf_section_ImpfrelevanteErkrankungen): Der Wert von codeSystemName MUSS 'LOINC' sein. Gefunden: "<value-of select="@codeSystemName"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="not(@codeSystemName) or string-length(@codeSystemName)&gt;0">(eimpf_section_ImpfrelevanteErkrankungen): Attribute @codeSystemName MUSS vom Datentyp 'st' sein  - '<value-of select="@codeSystemName"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="string(@displayName) = ('HISTORY OF PAST ILLNESS')">(eimpf_section_ImpfrelevanteErkrankungen): Der Wert von displayName MUSS 'HISTORY OF PAST ILLNESS' sein. Gefunden: "<value-of select="@displayName"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="not(@displayName) or string-length(@displayName)&gt;0">(eimpf_section_ImpfrelevanteErkrankungen): Attribute @displayName MUSS vom Datentyp 'st' sein  - '<value-of select="@displayName"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]/hl7:title[not(@nullFlavor)]
Item: (eimpf_section_ImpfrelevanteErkrankungen)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]/hl7:title[not(@nullFlavor)]" id="d245561e2995-false-d373645e0">
        <extends rule="ST"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_section_ImpfrelevanteErkrankungen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="text()='Impfrelevante Erkrankungen'">(eimpf_section_ImpfrelevanteErkrankungen): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Impfrelevante Erkrankungen'' sein. Gefunden: "<value-of select="."/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]/hl7:text[not(@nullFlavor)]
Item: (eimpf_section_ImpfrelevanteErkrankungen)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]/hl7:text[not(@nullFlavor)]" id="d245561e3000-false-d373658e0">
        <extends rule="SD.TEXT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_section_ImpfrelevanteErkrankungen): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.8'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2']]]
Item: (eimpf_section_ImpfrelevanteErkrankungen)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.8'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="string(@typeCode) = ('DRIV')">(eimpf_section_ImpfrelevanteErkrankungen): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(eimpf_section_ImpfrelevanteErkrankungen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.5
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]
Item: (eimpf_section_ImpfrelevanteErkrankungen)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="string(@typeCode) = ('COMP') or not(@typeCode)">(eimpf_section_ImpfrelevanteErkrankungen): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.5" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(eimpf_section_ImpfrelevanteErkrankungen): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>
</pattern>