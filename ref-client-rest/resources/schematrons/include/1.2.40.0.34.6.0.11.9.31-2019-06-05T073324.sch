<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.9.31
Name: Vaccine Product nicht angegeben
Description: Gibt an, dass kein Impfstoff angegeben wird oder werden kann.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.9.31-2019-06-05T073324">
    <title>Vaccine Product nicht angegeben</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.31
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]
Item: (atcdabbr_other_vaccineProductNichtAngegeben)
-->
    <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]" id="d245561e7209-false-d472719e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="count(hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]) &gt;= 1">(atcdabbr_other_vaccineProductNichtAngegeben): Element hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="count(hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]) &lt;= 1">(atcdabbr_other_vaccineProductNichtAngegeben): Element hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.31
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]
Item: (atcdabbr_other_vaccineProductNichtAngegeben)
-->
    <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]" id="d245561e7242-false-d472739e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="string(@classCode) = ('MANU') or not(@classCode)">(atcdabbr_other_vaccineProductNichtAngegeben): Der Wert von classCode MUSS 'MANU' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31']) &gt;= 1">(atcdabbr_other_vaccineProductNichtAngegeben): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31']) &lt;= 1">(atcdabbr_other_vaccineProductNichtAngegeben): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']) &gt;= 1">(atcdabbr_other_vaccineProductNichtAngegeben): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="count(hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']) &lt;= 1">(atcdabbr_other_vaccineProductNichtAngegeben): Element hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']) &gt;= 1">(atcdabbr_other_vaccineProductNichtAngegeben): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']) &lt;= 1">(atcdabbr_other_vaccineProductNichtAngegeben): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="count(hl7:manufacturedMaterial[not(@nullFlavor)][hl7:code[@nullFlavor = 'NA']]) &gt;= 1">(atcdabbr_other_vaccineProductNichtAngegeben): Element hl7:manufacturedMaterial[not(@nullFlavor)][hl7:code[@nullFlavor = 'NA']] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="count(hl7:manufacturedMaterial[not(@nullFlavor)][hl7:code[@nullFlavor = 'NA']]) &lt;= 1">(atcdabbr_other_vaccineProductNichtAngegeben): Element hl7:manufacturedMaterial[not(@nullFlavor)][hl7:code[@nullFlavor = 'NA']] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.31
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31']
Item: (atcdabbr_other_vaccineProductNichtAngegeben)
-->
    <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31']" id="d245561e7246-false-d472786e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_vaccineProductNichtAngegeben): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="string(@root) = ('1.2.40.0.34.6.0.11.9.31')">(atcdabbr_other_vaccineProductNichtAngegeben): Der Wert von root MUSS '1.2.40.0.34.6.0.11.9.31' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.31
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']
Item: (atcdabbr_other_vaccineProductNichtAngegeben)
-->
    <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]/hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53']" id="d245561e7254-false-d472800e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_vaccineProductNichtAngegeben): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="string(@root) = ('2.16.840.1.113883.10.20.1.53')">(atcdabbr_other_vaccineProductNichtAngegeben): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.53' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.31
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']
Item: (atcdabbr_other_vaccineProductNichtAngegeben)
-->
    <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']" id="d245561e7262-false-d472814e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_vaccineProductNichtAngegeben): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.7.2')">(atcdabbr_other_vaccineProductNichtAngegeben): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.7.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.31
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]/hl7:manufacturedMaterial[not(@nullFlavor)][hl7:code[@nullFlavor = 'NA']]
Item: (atcdabbr_other_vaccineProductNichtAngegeben)
-->
    <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]/hl7:manufacturedMaterial[not(@nullFlavor)][hl7:code[@nullFlavor = 'NA']]" id="d245561e7270-false-d472827e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="string(@classCode) = ('MMAT') or not(@classCode)">(atcdabbr_other_vaccineProductNichtAngegeben): Der Wert von classCode MUSS 'MMAT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="string(@determinerCode) = ('KIND') or not(@determinerCode)">(atcdabbr_other_vaccineProductNichtAngegeben): Der Wert von determinerCode MUSS 'KIND' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="count(hl7:code[@nullFlavor = 'NA']) &gt;= 1">(atcdabbr_other_vaccineProductNichtAngegeben): Element hl7:code[@nullFlavor = 'NA'] ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="count(hl7:code[@nullFlavor = 'NA']) &lt;= 1">(atcdabbr_other_vaccineProductNichtAngegeben): Element hl7:code[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.31
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]/hl7:manufacturedMaterial[not(@nullFlavor)][hl7:code[@nullFlavor = 'NA']]/hl7:code[@nullFlavor = 'NA']
Item: (atcdabbr_other_vaccineProductNichtAngegeben)
-->
    <rule context="*[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]/hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]/hl7:manufacturedMaterial[not(@nullFlavor)][hl7:code[@nullFlavor = 'NA']]/hl7:code[@nullFlavor = 'NA']" id="d245561e7276-false-d472850e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.31" test="string(@nullFlavor) = ('NA')">(atcdabbr_other_vaccineProductNichtAngegeben): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>
</pattern>