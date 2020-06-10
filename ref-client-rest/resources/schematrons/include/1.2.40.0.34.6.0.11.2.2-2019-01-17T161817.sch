<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.2.2
Name: Impfempfehlungen - kodiert
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.2.2-2019-01-17T161817">
    <title>Impfempfehlungen - kodiert</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]
Item: (atcdabrr_section_ImpfempfehlungenKodiert)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]
Item: (atcdabrr_section_ImpfempfehlungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]" id="d133e3656-false-d86908e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="string(@classCode) = ('DOCSECT') or not(@classCode)">(atcdabrr_section_ImpfempfehlungenKodiert): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="string(@moodCode) = ('EVN') or not(@moodCode)">(atcdabrr_section_ImpfempfehlungenKodiert): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2']) &gt;= 1">(atcdabrr_section_ImpfempfehlungenKodiert): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2']) &lt;= 1">(atcdabrr_section_ImpfempfehlungenKodiert): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6']) &gt;= 1">(atcdabrr_section_ImpfempfehlungenKodiert): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6']) &lt;= 1">(atcdabrr_section_ImpfempfehlungenKodiert): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']) &gt;= 1">(atcdabrr_section_ImpfempfehlungenKodiert): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']) &lt;= 1">(atcdabrr_section_ImpfempfehlungenKodiert): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(atcdabrr_section_ImpfempfehlungenKodiert): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="count(hl7:code[(@code = '18776-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(atcdabrr_section_ImpfempfehlungenKodiert): Element hl7:code[(@code = '18776-5' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="count(hl7:code[(@code = '18776-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(atcdabrr_section_ImpfempfehlungenKodiert): Element hl7:code[(@code = '18776-5' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(atcdabrr_section_ImpfempfehlungenKodiert): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(atcdabrr_section_ImpfempfehlungenKodiert): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(atcdabrr_section_ImpfempfehlungenKodiert): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(atcdabrr_section_ImpfempfehlungenKodiert): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="count(hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]) &gt;= 1">(atcdabrr_section_ImpfempfehlungenKodiert): Element hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]] ist mandatory [min 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2']
Item: (atcdabrr_section_ImpfempfehlungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2']" id="d133e3662-false-d87104e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ImpfempfehlungenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="string(@root) = ('1.2.40.0.34.6.0.11.2.2')">(atcdabrr_section_ImpfempfehlungenKodiert): Der Wert von root MUSS '1.2.40.0.34.6.0.11.2.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6']
Item: (atcdabrr_section_ImpfempfehlungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6']" id="d133e3670-false-d87118e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ImpfempfehlungenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="string(@root) = ('2.16.840.1.113883.10.20.1.6')">(atcdabrr_section_ImpfempfehlungenKodiert): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.6' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']
Item: (atcdabrr_section_ImpfempfehlungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']" id="d133e3678-false-d87132e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ImpfempfehlungenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.3.23')">(atcdabrr_section_ImpfempfehlungenKodiert): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.3.23' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:id[not(@nullFlavor)]
Item: (atcdabrr_section_ImpfempfehlungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:id[not(@nullFlavor)]" id="d133e3687-false-d87143e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ImpfempfehlungenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:code[(@code = '18776-5' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (atcdabrr_section_ImpfempfehlungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:code[(@code = '18776-5' and @codeSystem = '2.16.840.1.113883.6.1')]" id="d133e3693-false-d87153e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ImpfempfehlungenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="@nullFlavor or (@code='18776-5' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='TREATMENT PLAN')">(atcdabrr_section_ImpfempfehlungenKodiert): Der Elementinhalt MUSS einer von 'code '18776-5' codeSystem '2.16.840.1.113883.6.1' displayName='TREATMENT PLAN'' sein.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:title[not(@nullFlavor)]
Item: (atcdabrr_section_ImpfempfehlungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:title[not(@nullFlavor)]" id="d133e3701-false-d87168e0">
        <extends rule="ST"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ImpfempfehlungenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="text()='Impfempfehlungen'">(atcdabrr_section_ImpfempfehlungenKodiert): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Impfempfehlungen'' sein. Gefunden: "<value-of select="."/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:text[not(@nullFlavor)]
Item: (atcdabrr_section_ImpfempfehlungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:text[not(@nullFlavor)]" id="d133e3710-false-d87181e0">
        <extends rule="SD.TEXT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ImpfempfehlungenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]
Item: (atcdabrr_section_ImpfempfehlungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:entry[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="string(@typeCode) = ('DRIV')">(atcdabrr_section_ImpfempfehlungenKodiert): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(atcdabrr_section_ImpfempfehlungenKodiert): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.2
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]
Item: (atcdabrr_section_ImpfempfehlungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="string(@typeCode) = ('COMP') or not(@typeCode)">(atcdabrr_section_ImpfempfehlungenKodiert): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.2" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(atcdabrr_section_ImpfempfehlungenKodiert): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>
</pattern>