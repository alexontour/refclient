<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.4.3.4
Name: Laborergebnisse aktiv (Laboratory Observation Active)
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.11.4.3.4-2017-02-23T000000">
    <title>Laborergebnisse aktiv (Laboratory Observation Active)</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]
Item: (LaboratoryObservationActive)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.11.4.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]
Item: (LaboratoryObservationActive)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]" id="d133e573-false-d2706e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="string(@classCode) = ('OBS')">(LaboratoryObservationActive): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="string(@moodCode) = ('EVN')">(LaboratoryObservationActive): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="count(hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']) &gt;= 1">(LaboratoryObservationActive): Element hl7:templateId[@root = '1.2.40.0.34.11.4.3.4'] ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="count(hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']) &lt;= 1">(LaboratoryObservationActive): Element hl7:templateId[@root = '1.2.40.0.34.11.4.3.4'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="count(hl7:id) &lt;= 1">(LaboratoryObservationActive): Element hl7:id kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.44-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.44-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(LaboratoryObservationActive): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.44-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.44-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.44-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.44-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(LaboratoryObservationActive): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.44-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.44-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="count(hl7:text) &lt;= 1">(LaboratoryObservationActive): Element hl7:text kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="count(hl7:statusCode[@code = 'active']) &gt;= 1">(LaboratoryObservationActive): Element hl7:statusCode[@code = 'active'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="count(hl7:statusCode[@code = 'active']) &lt;= 1">(LaboratoryObservationActive): Element hl7:statusCode[@code = 'active'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="count(hl7:effectiveTime) &gt;= 1">(LaboratoryObservationActive): Element hl7:effectiveTime ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="count(hl7:effectiveTime) &lt;= 1">(LaboratoryObservationActive): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="count(hl7:value[@nullFlavor = 'NAV']) &gt;= 1">(LaboratoryObservationActive): Element hl7:value[@nullFlavor = 'NAV'] ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="count(hl7:value[@nullFlavor = 'NAV']) &lt;= 1">(LaboratoryObservationActive): Element hl7:value[@nullFlavor = 'NAV'] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]/hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']
Item: (LaboratoryObservationActive)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]/hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']" id="d133e576-false-d2779e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryObservationActive): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="string(@root) = ('1.2.40.0.34.11.4.3.4')">(LaboratoryObservationActive): Der Wert von root MUSS '1.2.40.0.34.11.4.3.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]/hl7:id
Item: (LaboratoryObservationActive)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]/hl7:id" id="d133e578-false-d2792e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryObservationActive): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.44-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.44-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (LaboratoryObservationActive)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.44-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.44-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]" id="d133e579-false-d2804e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryObservationActive): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theCode" value="@code"/>
        <let name="theCodeSystem" value="@codeSystem"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.44-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(LaboratoryObservationActive): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.44 ELGA_Laborparameter (DYNAMIC)' sein.</assert>
        <let name="theNullFlavor" value="@nullFlavor"/>
        <let name="validNullFlavorsFound" value="exists(doc('include/voc-1.2.40.0.34.10.44-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="not(@nullFlavor) or $validNullFlavorsFound">(LaboratoryObservationActive): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.40.0.34.10.44 ELGA_Laborparameter (DYNAMIC).</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="not(@nullFlavor) or not(@nullFlavor='OTH') or hl7:translation">(LaboratoryObservationActive): Wenn code/@nullFlavor=OTH dann MUSS entweder code/translation anwesend sein.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]/hl7:text
Item: (LaboratoryObservationActive)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]/hl7:text" id="d133e583-false-d2825e0">
        <extends rule="ED"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryObservationActive): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]/hl7:statusCode[@code = 'active']
Item: (LaboratoryObservationActive)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]/hl7:statusCode[@code = 'active']" id="d133e584-false-d2835e0">
        <extends rule="CS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryObservationActive): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="@nullFlavor or (@code='active')">(LaboratoryObservationActive): Der Elementinhalt MUSS einer von 'code 'active'' sein.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]/hl7:effectiveTime
Item: (LaboratoryObservationActive)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]/hl7:effectiveTime" id="d133e586-false-d2850e0">
        <extends rule="IVL_TS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryObservationActive): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.4.3.4
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]/hl7:value[@nullFlavor = 'NAV']
Item: (LaboratoryObservationActive)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.4.3.4']]/hl7:value[@nullFlavor = 'NAV']" id="d133e587-false-d2859e0">
        <extends rule="PQ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LaboratoryObservationActive): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(LaboratoryObservationActive): @value ist keine gültige PQ Zahl <value-of select="@value"/>
        </assert>
        <let name="theUnit" value="@unit"/>
        <let name="UCUMtest" value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
        <assert role="warning" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="$UCUMtest='OK' or string-length($UCUMtest)=0">(LaboratoryObservationActive): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.11.4.3.4" test="string(@nullFlavor) = ('NAV')">(LaboratoryObservationActive): Der Wert von nullFlavor MUSS 'NAV' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>
</pattern>