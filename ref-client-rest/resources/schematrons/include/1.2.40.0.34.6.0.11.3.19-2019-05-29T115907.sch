<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.3.19
Name: Eingebettetes Objekt Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.3.19-2019-05-29T115907">
    <title>Eingebettetes Objekt Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.19
Context: *[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]]
Item: (atcdabbr_entry_EingebettetesObjektEntry)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.19
Context: *[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]
Item: (atcdabbr_entry_EingebettetesObjektEntry)
-->
    <rule context="*[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]" id="d133e5925-false-d140085e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.19" test="string(@classCode) = ('OBS')">(atcdabbr_entry_EingebettetesObjektEntry): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.19" test="string(@moodCode) = ('EVN')">(atcdabbr_entry_EingebettetesObjektEntry): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.19" test="@ID">(atcdabbr_entry_EingebettetesObjektEntry): Attribut @ID MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.19" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']) &gt;= 1">(atcdabbr_entry_EingebettetesObjektEntry): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.19" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']) &lt;= 1">(atcdabbr_entry_EingebettetesObjektEntry): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.19" test="count(hl7:value[not(@nullFlavor)]) &gt;= 1">(atcdabbr_entry_EingebettetesObjektEntry): Element hl7:value[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.19" test="count(hl7:value[not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_EingebettetesObjektEntry): Element hl7:value[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.19
Context: *[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']
Item: (atcdabbr_entry_EingebettetesObjektEntry)
-->
    <rule context="*[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']" id="d133e5937-false-d140121e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.19" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_EingebettetesObjektEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.19" test="string(@root) = ('1.2.40.0.34.6.0.11.3.19')">(atcdabbr_entry_EingebettetesObjektEntry): Der Wert von root MUSS '1.2.40.0.34.6.0.11.3.19' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.19
Context: *[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]/hl7:value[not(@nullFlavor)]
Item: (atcdabbr_entry_EingebettetesObjektEntry)
-->
    <rule context="*[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.19']]/hl7:value[not(@nullFlavor)]" id="d133e5939-false-d140134e0">
        <extends rule="ED"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.19" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_EingebettetesObjektEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.19" test="@mediaType">(atcdabbr_entry_EingebettetesObjektEntry): Attribut @mediaType MUSS vorkommen.</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@mediaType),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.19" test="not(@mediaType) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.10.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_entry_EingebettetesObjektEntry): Der Wert von mediaType MUSS gewählt werden aus Value Set '1.2.40.0.34.10.42' ELGA_Medientyp (DYNAMIC).</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.19" test="string(@representation) = ('B64')">(atcdabbr_entry_EingebettetesObjektEntry): Der Wert von representation MUSS 'B64' sein. Gefunden: "<value-of select="@representation"/>"</assert>
    </rule>
</pattern>