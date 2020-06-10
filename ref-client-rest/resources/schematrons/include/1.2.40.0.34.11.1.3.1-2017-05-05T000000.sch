<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.1.3.1
Name: Eingebettetes Objekt Entry
Description: Achtung: Grafiken mit Transparenz (z.B: bei GIF oder PNG möglich) können zu schweren Problemen bei der Wiedergabe oder Konvertierung zu PDF/A-1 führen und sind daher NICHT ERLAUBT
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.11.1.3.1-2017-05-05T000000">
    <title>Eingebettetes Objekt Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.1
Context: *[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]
Item: (EingebettetesObjektEntry)
-->
    <rule context="*[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]" id="d133e5-false-d2103e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.1.3.1" test="count(hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]) &gt;= 1">(EingebettetesObjektEntry): Element hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.1.3.1" test="count(hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]) &lt;= 1">(EingebettetesObjektEntry): Element hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.1
Context: *[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]
Item: (EingebettetesObjektEntry)
-->
    <rule context="*[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]" id="d133e17-false-d2119e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.1.3.1" test="string(@classCode) = ('OBS')">(EingebettetesObjektEntry): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.1.3.1" test="string(@moodCode) = ('EVN')">(EingebettetesObjektEntry): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.1.3.1" test="@ID">(EingebettetesObjektEntry): Attribut @ID MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.1.3.1" test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']) &gt;= 1">(EingebettetesObjektEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.1.3.1" test="count(hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']) &lt;= 1">(EingebettetesObjektEntry): Element hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.1.3.1" test="count(hl7:value[not(@nullFlavor)]) &gt;= 1">(EingebettetesObjektEntry): Element hl7:value[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.1.3.1" test="count(hl7:value[not(@nullFlavor)]) &lt;= 1">(EingebettetesObjektEntry): Element hl7:value[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.1
Context: *[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']
Item: (EingebettetesObjektEntry)
-->
    <rule context="*[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']" id="d133e28-false-d2155e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.1.3.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EingebettetesObjektEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.1.3.1" test="string(@root) = ('1.2.40.0.34.11.1.3.1')">(EingebettetesObjektEntry): Der Wert von root MUSS '1.2.40.0.34.11.1.3.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.1.3.1
Context: *[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/hl7:value[not(@nullFlavor)]
Item: (EingebettetesObjektEntry)
-->
    <rule context="*[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/hl7:value[not(@nullFlavor)]" id="d133e30-false-d2168e0">
        <extends rule="ED"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.1.3.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EingebettetesObjektEntry): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.1.3.1" test="@mediaType">(EingebettetesObjektEntry): Attribut @mediaType MUSS vorkommen.</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@mediaType),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.1.3.1" test="not(@mediaType) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.10.42-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(EingebettetesObjektEntry): Der Wert von mediaType MUSS gewählt werden aus Value Set '1.2.40.0.34.10.42' ELGA_Medientyp (DYNAMIC).</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.1.3.1" test="string(@representation) = ('B64')">(EingebettetesObjektEntry): Der Wert von representation MUSS 'B64' sein. Gefunden: "<value-of select="@representation"/>"</assert>
    </rule>
</pattern>