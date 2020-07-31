<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.2.1
Name: Impfungen - kodiert
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.2.1-2017-03-11T183841">
    <title>Impfungen - kodiert</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]
Item: (atcdabrr_section_ImpfungenKodiert)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]
Item: (atcdabrr_section_ImpfungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]" id="d245561e2732-false-d351497e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="string(@classCode) = ('DOCSECT') or not(@classCode)">(atcdabrr_section_ImpfungenKodiert): Der Wert von classCode MUSS 'DOCSECT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="string(@moodCode) = ('EVN') or not(@moodCode)">(atcdabrr_section_ImpfungenKodiert): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1']) &gt;= 1">(atcdabrr_section_ImpfungenKodiert): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1']) &lt;= 1">(atcdabrr_section_ImpfungenKodiert): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6']) &gt;= 1">(atcdabrr_section_ImpfungenKodiert): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6']) &lt;= 1">(atcdabrr_section_ImpfungenKodiert): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']) &gt;= 1">(atcdabrr_section_ImpfungenKodiert): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']) &lt;= 1">(atcdabrr_section_ImpfungenKodiert): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(atcdabrr_section_ImpfungenKodiert): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="count(hl7:code[(@code = '11369-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(atcdabrr_section_ImpfungenKodiert): Element hl7:code[(@code = '11369-6' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="count(hl7:code[(@code = '11369-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(atcdabrr_section_ImpfungenKodiert): Element hl7:code[(@code = '11369-6' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(atcdabrr_section_ImpfungenKodiert): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(atcdabrr_section_ImpfungenKodiert): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(atcdabrr_section_ImpfungenKodiert): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(atcdabrr_section_ImpfungenKodiert): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <let name="elmcount" value="count(hl7:entry[hl7:substanceAdministration/hl7:templateId[@root='1.2.40.0.34.6.0.11.3.1']] | hl7:entry[hl7:substanceAdministration/hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="$elmcount &gt;= 1">(atcdabrr_section_ImpfungenKodiert): Auswahl (hl7:entry[hl7:substanceAdministration/hl7:templateId[@root='1.2.40.0.34.6.0.11.3.1']]  oder  hl7:entry[hl7:substanceAdministration/hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="count(hl7:entry[hl7:substanceAdministration/hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]) &lt;= 1">(atcdabrr_section_ImpfungenKodiert): Element hl7:entry[hl7:substanceAdministration/hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1']
Item: (atcdabrr_section_ImpfungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1']" id="d245561e2735-false-d351643e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ImpfungenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="string(@root) = ('1.2.40.0.34.6.0.11.2.1')">(atcdabrr_section_ImpfungenKodiert): Der Wert von root MUSS '1.2.40.0.34.6.0.11.2.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6']
Item: (atcdabrr_section_ImpfungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6']" id="d245561e2739-false-d351657e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ImpfungenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="string(@root) = ('2.16.840.1.113883.10.20.1.6')">(atcdabrr_section_ImpfungenKodiert): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.6' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']
Item: (atcdabrr_section_ImpfungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']" id="d245561e2743-false-d351671e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ImpfungenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.3.23')">(atcdabrr_section_ImpfungenKodiert): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.3.23' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:id[not(@nullFlavor)]
Item: (atcdabrr_section_ImpfungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:id[not(@nullFlavor)]" id="d245561e2747-false-d351682e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ImpfungenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:code[(@code = '11369-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (atcdabrr_section_ImpfungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:code[(@code = '11369-6' and @codeSystem = '2.16.840.1.113883.6.1')]" id="d245561e2750-false-d351692e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ImpfungenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="@nullFlavor or (@code='11369-6' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='HISTORY OF IMMUNIZATIONS')">(atcdabrr_section_ImpfungenKodiert): Der Elementinhalt MUSS einer von 'code '11369-6' codeSystem '2.16.840.1.113883.6.1' displayName='HISTORY OF IMMUNIZATIONS'' sein.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:title[not(@nullFlavor)]
Item: (atcdabrr_section_ImpfungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:title[not(@nullFlavor)]" id="d245561e2754-false-d351707e0">
        <extends rule="ST"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ImpfungenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="text()='Impfungen'">(atcdabrr_section_ImpfungenKodiert): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Impfungen'' sein. Gefunden: "<value-of select="."/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:text[not(@nullFlavor)]
Item: (atcdabrr_section_ImpfungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:text[not(@nullFlavor)]" id="d245561e2759-false-d351720e0">
        <extends rule="SD.TEXT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_section_ImpfungenKodiert): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SD.TEXT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:entry[hl7:substanceAdministration/hl7:templateId[@root='1.2.40.0.34.6.0.11.3.1']]
Item: (atcdabrr_section_ImpfungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:entry[hl7:substanceAdministration/hl7:templateId[@root='1.2.40.0.34.6.0.11.3.1']]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="string(@typeCode) = ('DRIV')">(atcdabrr_section_ImpfungenKodiert): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(atcdabrr_section_ImpfungenKodiert): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:entry[hl7:substanceAdministration/hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]
Item: (atcdabrr_section_ImpfungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:entry[hl7:substanceAdministration/hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="string(@typeCode) = ('DRIV')">(atcdabrr_section_ImpfungenKodiert): Der Wert von typeCode MUSS 'DRIV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(atcdabrr_section_ImpfungenKodiert): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.2.1
Context: *[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]
Item: (atcdabrr_section_ImpfungenKodiert)
-->
    <rule context="*[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.8']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="string(@typeCode) = ('COMP') or not(@typeCode)">(atcdabrr_section_ImpfungenKodiert): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.2.1" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(atcdabrr_section_ImpfungenKodiert): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>
</pattern>