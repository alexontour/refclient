<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.2.4
Name: Expositionsrisiko Personengruppen - kodiert
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.2.4-2019-04-24T141817">
    <title>Expositionsrisiko Personengruppen - kodiert</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]
Item: (atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]
Item: (atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]" id="d245561e2900-false-d368683e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="string(@classCode) = ('DOCSECT') or not(@classCode)">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="string(@moodCode) = ('EVN') or not(@moodCode)">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4']) &gt;= 1">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4']) &lt;= 1">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11']) &gt;= 1">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11']) &lt;= 1">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']) &gt;= 1">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']) &lt;= 1">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="count(hl7:code[(@code = '11450-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Element hl7:code[(@code = '11450-4' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="count(hl7:code[(@code = '11450-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Element hl7:code[(@code = '11450-4' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="count(hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.20'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2']]]) &gt;= 1">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Element hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.20'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2']]] ist mandatory [min 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4']
Item: (atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4']" id="d245561e2903-false-d368869e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="string(@root) = ('1.2.40.0.34.6.0.11.2.4')">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Der Wert von root MUSS '1.2.40.0.34.6.0.11.2.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11']
Item: (atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11']" id="d245561e2907-false-d368883e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="string(@root) = ('2.16.840.1.113883.10.20.1.11')">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.11' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']
Item: (atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']" id="d245561e2911-false-d368897e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.3.6')">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.3.6' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]/hl7:id[not(@nullFlavor)]
Item: (atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]/hl7:id[not(@nullFlavor)]" id="d245561e2915-false-d368908e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]/hl7:code[(@code = '11450-4' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]/hl7:code[(@code = '11450-4' and @codeSystem = '2.16.840.1.113883.6.1')]" id="d245561e2918-false-d368918e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="string(@code) = ('11450-4')">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Der Wert von code MUSS '11450-4' sein. Gefunden: "<value-of select="@code"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="not(@code) or string-length(@code)&gt;0">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Attribute @code MUSS vom Datentyp 'st' sein  - '<value-of select="@code"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="string(@codeSystem) = ('2.16.840.1.113883.6.1')">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Der Wert von codeSystem MUSS '2.16.840.1.113883.6.1' sein. Gefunden: "<value-of select="@codeSystem"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="string(@codeSystemName) = ('LOINC')">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Der Wert von codeSystemName MUSS 'LOINC' sein. Gefunden: "<value-of select="@codeSystemName"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="not(@codeSystemName) or string-length(@codeSystemName)&gt;0">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Attribute @codeSystemName MUSS vom Datentyp 'st' sein  - '<value-of select="@codeSystemName"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="string(@displayName) = ('PROBLEM LIST')">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Der Wert von displayName MUSS 'PROBLEM LIST' sein. Gefunden: "<value-of select="@displayName"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="not(@displayName) or string-length(@displayName)&gt;0">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Attribute @displayName MUSS vom Datentyp 'st' sein  - '<value-of select="@displayName"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]/hl7:title[not(@nullFlavor)]
Item: (atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]/hl7:title[not(@nullFlavor)]" id="d245561e2926-false-d368950e0">
        <extends rule="ST"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="text()='Spezielle Impfindikation'">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Spezielle Impfindikation'' sein. Gefunden: "<value-of select="."/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]/hl7:text[not(@nullFlavor)]
Item: (atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]/hl7:text[not(@nullFlavor)]" id="d245561e2932-false-d368963e0">
        <extends rule="SD.TEXT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.20'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2']]]
Item: (atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.20'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="string(@typeCode) = ('DRIV')">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.4
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]
Item: (atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="string(@typeCode) = ('COMP') or not(@typeCode)">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.4" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(atcdabrr_section_ExpositionsrisikoPersonengruppenKodiert): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>
</pattern>