<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.3.28
Name: Immunization Entry Impfung nicht angegeben
Description: Dokumentiert, dass keine Impfung verabreicht wurde. Dieses Entry wird weder im Stylesheet angzeigt  noch in der zentralen e-Impfpass-Anwengung gespeichert  - ist aber für IHE PCC-Konformität notwendig.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.3.28-2019-08-13T125909">
    <title>Immunization Entry Impfung nicht angegeben</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.28
Context: *[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]
Item: (atcdabbr_entry_ImmunizationImpfungNichtAngegeben)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.28
Context: *[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]
Item: (atcdabbr_entry_ImmunizationImpfungNichtAngegeben)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]" id="d245561e5061-false-d446005e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="string(@classCode) = ('SBADM')">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Der Wert von classCode MUSS 'SBADM' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="string(@moodCode) = ('EVN')">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="string(@negationInd) = ('false')">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Der Wert von negationInd MUSS 'false' sein. Gefunden: "<value-of select="@negationInd"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28'][not(@nullFlavor)]) &gt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28'][not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28'][not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28'][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:templateId[@root='2.16.840.1.113883.10.20.1.24'][not(@nullFlavor)]) &gt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:templateId[@root='2.16.840.1.113883.10.20.1.24'][not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:templateId[@root='2.16.840.1.113883.10.20.1.24'][not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:templateId[@root='2.16.840.1.113883.10.20.1.24'][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:templateId[@root='1.3.6.1.4.1.19376.1.5.3.1.4.12'][not(@nullFlavor)]) &gt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:templateId[@root='1.3.6.1.4.1.19376.1.5.3.1.4.12'][not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:templateId[@root='1.3.6.1.4.1.19376.1.5.3.1.4.12'][not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:templateId[@root='1.3.6.1.4.1.19376.1.5.3.1.4.12'][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:code[(@code = '90351000119108' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:code[(@code = '90351000119108' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:code[(@code = '90351000119108' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:code[(@code = '90351000119108' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:text) &lt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:text kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:statusCode[@code = 'completed'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:statusCode[@code = 'completed'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:effectiveTime[@nullFlavor = 'UNK']) &gt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:effectiveTime[@nullFlavor = 'UNK'] ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:effectiveTime[@nullFlavor = 'UNK']) &lt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:effectiveTime[@nullFlavor = 'UNK'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:routeCode[@nullFlavor = 'NA']) &gt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:routeCode[@nullFlavor = 'NA'] ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:routeCode[@nullFlavor = 'NA']) &lt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:routeCode[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:approachSiteCode[@nullFlavor = 'NA']) &gt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:approachSiteCode[@nullFlavor = 'NA'] ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:approachSiteCode[@nullFlavor = 'NA']) &lt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:approachSiteCode[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]) &gt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="count(hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]) &lt;= 1">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Element hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.28
Context: *[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28'][not(@nullFlavor)]
Item: (atcdabbr_entry_ImmunizationImpfungNichtAngegeben)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28'][not(@nullFlavor)]" id="d245561e5067-false-d446117e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="string(@root) = ('1.2.40.0.34.6.0.11.3.28')">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Der Wert von root MUSS '1.2.40.0.34.6.0.11.3.28' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.28
Context: *[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:templateId[@root='2.16.840.1.113883.10.20.1.24'][not(@nullFlavor)]
Item: (atcdabbr_entry_ImmunizationImpfungNichtAngegeben)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:templateId[@root='2.16.840.1.113883.10.20.1.24'][not(@nullFlavor)]" id="d245561e5072-false-d446128e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="string(@root) = ('2.16.840.1.113883.10.20.1.24')">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.24' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.28
Context: *[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:templateId[@root='1.3.6.1.4.1.19376.1.5.3.1.4.12'][not(@nullFlavor)]
Item: (atcdabbr_entry_ImmunizationImpfungNichtAngegeben)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:templateId[@root='1.3.6.1.4.1.19376.1.5.3.1.4.12'][not(@nullFlavor)]" id="d245561e5077-false-d446139e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.12')">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.12' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.28
Context: *[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:id[not(@nullFlavor)]
Item: (atcdabbr_entry_ImmunizationImpfungNichtAngegeben)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:id[not(@nullFlavor)]" id="d245561e5082-false-d446152e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="@root">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Attribut @root MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="not(@root) or matches(@root,'^[0-2](\.(0|[1-9]\d*))*$') or matches(@root,'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$') or matches(@root,'^[A-Za-z][A-Za-z\d\-]*$')">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Attribute @root MUSS vom Datentyp 'uid' sein  - '<value-of select="@root"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="not(@extension) or string-length(@extension)&gt;0">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Attribute @extension MUSS vom Datentyp 'st' sein  - '<value-of select="@extension"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.28
Context: *[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:code[(@code = '90351000119108' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (atcdabbr_entry_ImmunizationImpfungNichtAngegeben)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:code[(@code = '90351000119108' and @codeSystem = '2.16.840.1.113883.6.96')]" id="d245561e5089-false-d446171e0">
        <extends rule="CD"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="string(@code) = ('90351000119108')">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Der Wert von code MUSS '90351000119108' sein. Gefunden: "<value-of select="@code"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="string(@codeSystem) = ('2.16.840.1.113883.6.96')">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Der Wert von codeSystem MUSS '2.16.840.1.113883.6.96' sein. Gefunden: "<value-of select="@codeSystem"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="string(@codeSystemName) = ('SNOMED CT')">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Der Wert von codeSystemName MUSS 'SNOMED CT' sein. Gefunden: "<value-of select="@codeSystemName"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="not(@codeSystemName) or string-length(@codeSystemName)&gt;0">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Attribute @codeSystemName MUSS vom Datentyp 'st' sein  - '<value-of select="@codeSystemName"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="string(@displayName) = ('Vaccination not done (situation)')">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Der Wert von displayName MUSS 'Vaccination not done (situation)' sein. Gefunden: "<value-of select="@displayName"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="not(@displayName) or string-length(@displayName)&gt;0">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Attribute @displayName MUSS vom Datentyp 'st' sein  - '<value-of select="@displayName"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.1
Context: *[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:text
Item: (atcdabrr_other_NarrativeTextReference)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:text" id="d446172e72-false-d446202e0">
        <extends rule="ED"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_other_NarrativeTextReference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(atcdabrr_other_NarrativeTextReference): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(atcdabrr_other_NarrativeTextReference): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.1
Context: *[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:text/hl7:reference[not(@nullFlavor)]
Item: (atcdabrr_other_NarrativeTextReference)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:text/hl7:reference[not(@nullFlavor)]" id="d446172e73-false-d446220e0">
        <extends rule="TEL"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_other_NarrativeTextReference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="@value">(atcdabrr_other_NarrativeTextReference): Attribut @value MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="starts-with(@value,'#')">(atcdabrr_other_NarrativeTextReference): The @value attribute content MUST conform to the format '#xxx', where xxx is the ID of the corresponding 'content'-element.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.28
Context: *[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:statusCode[@code = 'completed']
Item: (atcdabbr_entry_ImmunizationImpfungNichtAngegeben)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:statusCode[@code = 'completed']" id="d245561e5098-false-d446234e0">
        <extends rule="CS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="string(@code) = ('completed')">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Der Wert von code MUSS 'completed' sein. Gefunden: "<value-of select="@code"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.28
Context: *[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:effectiveTime[@nullFlavor = 'UNK']
Item: (atcdabbr_entry_ImmunizationImpfungNichtAngegeben)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:effectiveTime[@nullFlavor = 'UNK']" id="d245561e5102-false-d446247e0">
        <extends rule="TS.AT.TZ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="not(*)">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="string(@nullFlavor) = ('UNK')">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Der Wert von nullFlavor MUSS 'UNK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.28
Context: *[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:routeCode[@nullFlavor = 'NA']
Item: (atcdabbr_entry_ImmunizationImpfungNichtAngegeben)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:routeCode[@nullFlavor = 'NA']" id="d245561e5108-false-d446263e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="string(@nullFlavor) = ('NA')">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.28
Context: *[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:approachSiteCode[@nullFlavor = 'NA']
Item: (atcdabbr_entry_ImmunizationImpfungNichtAngegeben)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:approachSiteCode[@nullFlavor = 'NA']" id="d245561e5120-false-d446276e0">
        <extends rule="CD"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="string(@nullFlavor) = ('NA')">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.28
Context: *[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]
Item: (atcdabbr_entry_ImmunizationImpfungNichtAngegeben)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]]/hl7:substanceAdministration[hl7:templateId[@root='1.2.40.0.34.6.0.11.3.28']]/hl7:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.31'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.53'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.7.2']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.28" test="string(@typeCode) = ('CSM')">(atcdabbr_entry_ImmunizationImpfungNichtAngegeben): Der Wert von typeCode MUSS 'CSM' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
    </rule>
</pattern>