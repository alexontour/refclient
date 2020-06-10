<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.3.3
Name: Immunization Recommendation Entry
Description: 
             Enthält die Dokumentation einer einzelnen Impfempfehlung (die geplante einzelne Gabe eines Impfstoffes). 
             Impfempfehlungen können von einem Arzt stammen oder automatisiert von einem Regelwerk erstellt werden. 
             Impfempfehlungen können sich auf ein bestimmtes Produkt und sollten sich auf ein bestimmtes Impfschema beziehen. 
        
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.3.3-2019-04-25T103018">
    <title>Immunization Recommendation Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]" id="d133e6704-false-d145302e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="string(@classCode) = ('SBADM')">(atcdabbr_entry_ImmunizationRecommendation): Der Wert von classCode MUSS 'SBADM' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="string(@moodCode) = ('PRP')">(atcdabbr_entry_ImmunizationRecommendation): Der Wert von moodCode MUSS 'PRP' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="string(@negationInd) = ('false')">(atcdabbr_entry_ImmunizationRecommendation): Der Wert von negationInd MUSS 'false' sein. Gefunden: "<value-of select="@negationInd"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="not(/hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.2']) or hl7:code[@code='IMMUNIZ']">(atcdabbr_entry_ImmunizationRecommendation): Die Attribute code/@code = "IMMUNIZ"; code/@codeSystem = "2.16.840.1.113883.5.4" MÜSSEN vorhanden sein.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']) &gt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']) &lt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:templateId[@root='2.16.840.1.113883.10.20.1.25'][not(@nullFlavor)]) &gt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:templateId[@root='2.16.840.1.113883.10.20.1.25'][not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:templateId[@root='2.16.840.1.113883.10.20.1.25'][not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:templateId[@root='2.16.840.1.113883.10.20.1.25'][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:templateId[@root='1.3.6.1.4.1.19376.1.5.3.1.4.12.2'][not(@nullFlavor)]) &gt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:templateId[@root='1.3.6.1.4.1.19376.1.5.3.1.4.12.2'][not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:templateId[@root='1.3.6.1.4.1.19376.1.5.3.1.4.12.2'][not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:templateId[@root='1.3.6.1.4.1.19376.1.5.3.1.4.12.2'][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or (@code = 'IMMUNIZ' and @codeSystem = '2.16.840.1.113883.5.4')]) &gt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or (@code = 'IMMUNIZ' and @codeSystem = '2.16.840.1.113883.5.4')] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or (@code = 'IMMUNIZ' and @codeSystem = '2.16.840.1.113883.5.4')]) &lt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or (@code = 'IMMUNIZ' and @codeSystem = '2.16.840.1.113883.5.4')] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:text) &gt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:text ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:text) &lt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:text kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:statusCode[@code = 'active']) &gt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:statusCode[@code = 'active'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:statusCode[@code = 'active']) &lt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:statusCode[@code = 'active'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:effectiveTime) &lt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:effectiveTime kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:routeCode[@nullFlavor = 'NA']) &gt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:routeCode[@nullFlavor = 'NA'] ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:routeCode[@nullFlavor = 'NA']) &lt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:routeCode[@nullFlavor = 'NA'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:doseQuantity[not(hl7:low|hl7:high)]) &gt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:doseQuantity[not(hl7:low|hl7:high)] ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:doseQuantity[not(hl7:low|hl7:high)]) &lt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:doseQuantity[not(hl7:low|hl7:high)] kommt zu häufig vor [max 1x].</assert>
        <let name="elmcount" value="count(hl7:consumable[hl7:manufacturedProduct/hl7:templateId[@root='1.2.40.0.34.6.0.11.9.32']] | hl7:consumable[hl7:manufacturedProduct/hl7:templateId[@root='1.2.40.0.34.6.0.11.9.31']])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="$elmcount &gt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Auswahl (hl7:consumable[hl7:manufacturedProduct/hl7:templateId[@root='1.2.40.0.34.6.0.11.9.32']]  oder  hl7:consumable[hl7:manufacturedProduct/hl7:templateId[@root='1.2.40.0.34.6.0.11.9.31']]) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="$elmcount &lt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Auswahl (hl7:consumable[hl7:manufacturedProduct/hl7:templateId[@root='1.2.40.0.34.6.0.11.9.32']]  oder  hl7:consumable[hl7:manufacturedProduct/hl7:templateId[@root='1.2.40.0.34.6.0.11.9.31']]) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:consumable[hl7:manufacturedProduct/hl7:templateId[@root='1.2.40.0.34.6.0.11.9.32']]) &lt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:consumable[hl7:manufacturedProduct/hl7:templateId[@root='1.2.40.0.34.6.0.11.9.32']] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:consumable[hl7:manufacturedProduct/hl7:templateId[@root='1.2.40.0.34.6.0.11.9.31']]) &lt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:consumable[hl7:manufacturedProduct/hl7:templateId[@root='1.2.40.0.34.6.0.11.9.31']] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:author[not(@nullFlavor)][hl7:assignedAuthor]) &gt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:author[not(@nullFlavor)][hl7:assignedAuthor] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:author[not(@nullFlavor)][hl7:assignedAuthor]) &lt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:author[not(@nullFlavor)][hl7:assignedAuthor] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.2']]]) &gt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.2']]] ist mandatory [min 1x].</assert>
        <let name="elmcount" value="count(hl7:reference[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]] | hl7:reference[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="$elmcount &lt;= 2">(atcdabbr_entry_ImmunizationRecommendation): Auswahl (hl7:reference[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]  oder  hl7:reference[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]) enthält zu viele Elemente [max 2x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:reference[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]) &lt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:reference[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:reference[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]) &lt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:reference[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:precondition[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]) &gt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:precondition[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="count(hl7:precondition[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]) &lt;= 1">(atcdabbr_entry_ImmunizationRecommendation): Element hl7:precondition[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']" id="d133e6753-false-d145619e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationRecommendation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="string(@root) = ('1.2.40.0.34.6.0.11.3.3')">(atcdabbr_entry_ImmunizationRecommendation): Der Wert von root MUSS '1.2.40.0.34.6.0.11.3.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:templateId[@root='2.16.840.1.113883.10.20.1.25'][not(@nullFlavor)]
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:templateId[@root='2.16.840.1.113883.10.20.1.25'][not(@nullFlavor)]" id="d133e6761-false-d145630e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationRecommendation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="string(@root) = ('2.16.840.1.113883.10.20.1.25')">(atcdabbr_entry_ImmunizationRecommendation): Der Wert von root MUSS '2.16.840.1.113883.10.20.1.25' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:templateId[@root='1.3.6.1.4.1.19376.1.5.3.1.4.12.2'][not(@nullFlavor)]
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:templateId[@root='1.3.6.1.4.1.19376.1.5.3.1.4.12.2'][not(@nullFlavor)]" id="d133e6769-false-d145641e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationRecommendation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.4.12.2')">(atcdabbr_entry_ImmunizationRecommendation): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.4.12.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:id[not(@nullFlavor)]
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:id[not(@nullFlavor)]" id="d133e6777-false-d145654e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationRecommendation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or (@code = 'IMMUNIZ' and @codeSystem = '2.16.840.1.113883.5.4')]
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or (@code = 'IMMUNIZ' and @codeSystem = '2.16.840.1.113883.5.4')]" id="d133e6788-false-d145666e0">
        <extends rule="CD"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationRecommendation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theCode" value="@code"/>
        <let name="theCodeSystem" value="@codeSystem"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="@nullFlavor or (@code='IMMUNIZ' and @codeSystem='2.16.840.1.113883.5.4') or exists(doc('include/voc-1.2.40.0.34.6.0.10.3-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(atcdabbr_entry_ImmunizationRecommendation): Der Elementinhalt MUSS einer von 'code 'IMMUNIZ' codeSystem '2.16.840.1.113883.5.4' oder 1.2.40.0.34.6.0.10.3 eImpf_SpecialCaseVaccination_VS (DYNAMIC)' sein.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="@code">(atcdabbr_entry_ImmunizationRecommendation): Attribut @code MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="not(@code) or (string-length(@code) &gt; 0 and not(matches(@code,'\s')))">(atcdabbr_entry_ImmunizationRecommendation): Attribute @code MUSS vom Datentyp 'cs' sein  - '<value-of select="@code"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="@codeSystem">(atcdabbr_entry_ImmunizationRecommendation): Attribut @codeSystem MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="not(@codeSystem) or matches(@codeSystem,'^[0-2](\.(0|[1-9]\d*))*$')">(atcdabbr_entry_ImmunizationRecommendation): Attribute @codeSystem MUSS vom Datentyp 'oid' sein  - '<value-of select="@codeSystem"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="not(@codeSystemName) or string-length(@codeSystemName)&gt;0">(atcdabbr_entry_ImmunizationRecommendation): Attribute @codeSystemName MUSS vom Datentyp 'st' sein  - '<value-of select="@codeSystemName"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="not(@displayName) or string-length(@displayName)&gt;0">(atcdabbr_entry_ImmunizationRecommendation): Attribute @displayName MUSS vom Datentyp 'st' sein  - '<value-of select="@displayName"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.1
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:text
Item: (atcdabrr_other_NarrativeTextReference)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:text" id="d145667e72-false-d145704e0">
        <extends rule="ED"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_other_NarrativeTextReference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(atcdabrr_other_NarrativeTextReference): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(atcdabrr_other_NarrativeTextReference): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.1
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:text/hl7:reference[not(@nullFlavor)]
Item: (atcdabrr_other_NarrativeTextReference)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:text/hl7:reference[not(@nullFlavor)]" id="d145667e73-false-d145722e0">
        <extends rule="TEL"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_other_NarrativeTextReference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="@value">(atcdabrr_other_NarrativeTextReference): Attribut @value MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="starts-with(@value,'#')">(atcdabrr_other_NarrativeTextReference): The @value attribute content MUST conform to the format '#xxx', where xxx is the ID of the corresponding 'content'-element.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:statusCode[@code = 'active']
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:statusCode[@code = 'active']" id="d133e6832-false-d145736e0">
        <extends rule="CS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationRecommendation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="string(@code) = ('active')">(atcdabbr_entry_ImmunizationRecommendation): Der Wert von code MUSS 'active' sein. Gefunden: "<value-of select="@code"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:effectiveTime
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.15
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:effectiveTime
Item: (atcdabbr_other_TimeIntervalInformationMinimal)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:effectiveTime">
        <let name="elmcount" value="count(hl7:low[@value] | hl7:low[@nullFlavor='UNK'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="$elmcount &gt;= 1">(atcdabbr_other_TimeIntervalInformationMinimal): Auswahl (hl7:low[@value]  oder  hl7:low[@nullFlavor='UNK']) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="$elmcount &lt;= 1">(atcdabbr_other_TimeIntervalInformationMinimal): Auswahl (hl7:low[@value]  oder  hl7:low[@nullFlavor='UNK']) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="count(hl7:low[@value]) &lt;= 1">(atcdabbr_other_TimeIntervalInformationMinimal): Element hl7:low[@value] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="count(hl7:low[@nullFlavor='UNK']) &lt;= 1">(atcdabbr_other_TimeIntervalInformationMinimal): Element hl7:low[@nullFlavor='UNK'] kommt zu häufig vor [max 1x].</assert>
        <let name="elmcount" value="count(hl7:high[@value] | hl7:high[@nullFlavor='UNK'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="$elmcount &gt;= 1">(atcdabbr_other_TimeIntervalInformationMinimal): Auswahl (hl7:high[@value]  oder  hl7:high[@nullFlavor='UNK']) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="$elmcount &lt;= 1">(atcdabbr_other_TimeIntervalInformationMinimal): Auswahl (hl7:high[@value]  oder  hl7:high[@nullFlavor='UNK']) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="count(hl7:high[@value]) &lt;= 1">(atcdabbr_other_TimeIntervalInformationMinimal): Element hl7:high[@value] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="count(hl7:high[@nullFlavor='UNK']) &lt;= 1">(atcdabbr_other_TimeIntervalInformationMinimal): Element hl7:high[@nullFlavor='UNK'] kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.15
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:effectiveTime/hl7:low[@value]
Item: (atcdabbr_other_TimeIntervalInformationMinimal)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:effectiveTime/hl7:low[@value]">
        <extends rule="TS.AT.TZ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_TimeIntervalInformationMinimal): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="not(*)">(atcdabbr_other_TimeIntervalInformationMinimal): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.15
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:effectiveTime/hl7:low[@nullFlavor='UNK']
Item: (atcdabbr_other_TimeIntervalInformationMinimal)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:effectiveTime/hl7:low[@nullFlavor='UNK']">
        <extends rule="TS.AT.TZ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_TimeIntervalInformationMinimal): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="not(*)">(atcdabbr_other_TimeIntervalInformationMinimal): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="string(@nullFlavor) = ('UNK')">(atcdabbr_other_TimeIntervalInformationMinimal): Der Wert von nullFlavor MUSS 'UNK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.15
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:effectiveTime/hl7:high[@value]
Item: (atcdabbr_other_TimeIntervalInformationMinimal)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:effectiveTime/hl7:high[@value]">
        <extends rule="TS.AT.TZ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_TimeIntervalInformationMinimal): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="not(*)">(atcdabbr_other_TimeIntervalInformationMinimal): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.15
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:effectiveTime/hl7:high[@nullFlavor='UNK']
Item: (atcdabbr_other_TimeIntervalInformationMinimal)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:effectiveTime/hl7:high[@nullFlavor='UNK']">
        <extends rule="TS.AT.TZ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_TimeIntervalInformationMinimal): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="not(*)">(atcdabbr_other_TimeIntervalInformationMinimal): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.15" test="string(@nullFlavor) = ('UNK')">(atcdabbr_other_TimeIntervalInformationMinimal): Der Wert von nullFlavor MUSS 'UNK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:routeCode[@nullFlavor = 'NA']
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:routeCode[@nullFlavor = 'NA']" id="d133e6846-false-d145854e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationRecommendation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="string(@nullFlavor) = ('NA')">(atcdabbr_entry_ImmunizationRecommendation): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:approachSiteCode[@nullFlavor = 'NA']
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:approachSiteCode[@nullFlavor = 'NA']" id="d133e6859-false-d145867e0">
        <extends rule="CD"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationRecommendation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="string(@nullFlavor) = ('NA')">(atcdabbr_entry_ImmunizationRecommendation): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:doseQuantity[not(hl7:low|hl7:high)]
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:doseQuantity[not(hl7:low|hl7:high)]" id="d133e6875-false-d145878e0">
        <extends rule="IVL_PQ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_entry_ImmunizationRecommendation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="not(hl7:low/@value) or matches(string(hl7:low/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(atcdabbr_entry_ImmunizationRecommendation): value/low @value ist keine gültige PQ Zahl<value-of select="hl7:low/@value"/>
        </assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="not(hl7:high/@value) or matches(string(hl7:high/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(atcdabbr_entry_ImmunizationRecommendation): value/high @value ist keine gültige PQ Zahl<value-of select="hl7:high/@value"/>
        </assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="not(hl7:center/@value) or matches(string(hl7:center/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(atcdabbr_entry_ImmunizationRecommendation): value/center @value ist keine gültige PQ Zahl<value-of select="hl7:center/@value"/>
        </assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="string(@nullFlavor) = ('NA')">(atcdabbr_entry_ImmunizationRecommendation): Der Wert von nullFlavor MUSS 'NA' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:consumable[hl7:manufacturedProduct/hl7:templateId[@root='1.2.40.0.34.6.0.11.9.32']]
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:consumable[hl7:manufacturedProduct/hl7:templateId[@root='1.2.40.0.34.6.0.11.9.32']]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="string(@typeCode) = ('CSM')">(atcdabbr_entry_ImmunizationRecommendation): Der Wert von typeCode MUSS 'CSM' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:consumable[hl7:manufacturedProduct/hl7:templateId[@root='1.2.40.0.34.6.0.11.9.31']]
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:consumable[hl7:manufacturedProduct/hl7:templateId[@root='1.2.40.0.34.6.0.11.9.31']]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="string(@typeCode) = ('CSM')">(atcdabbr_entry_ImmunizationRecommendation): Der Wert von typeCode MUSS 'CSM' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.8
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]
Item: (atcdabbr_other_AuthorBody_eImpfpass)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="string(@typeCode) = ('AUT') or not(@typeCode)">(atcdabbr_other_AuthorBody_eImpfpass): Der Wert von typeCode MUSS 'AUT' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(atcdabbr_other_AuthorBody_eImpfpass): Der Wert von contextControlCode MUSS 'OP' sein. Gefunden: "<value-of select="@contextControlCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="not(/hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.2'] and not( ancestor::*/hl7:participant/hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.14'])) or hl7:time[not(@nullFlavor)]">(atcdabbr_other_AuthorBody_eImpfpass): time/@nullFlavor ist NICHT ERLAUBT.</assert>
        <let name="elmcount" value="count(hl7:time[not(@nullFlavor)] | hl7:time[@nullFlavor='UNK'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="$elmcount &gt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Auswahl (hl7:time[not(@nullFlavor)]  oder  hl7:time[@nullFlavor='UNK']) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="$elmcount &lt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Auswahl (hl7:time[not(@nullFlavor)]  oder  hl7:time[@nullFlavor='UNK']) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="count(hl7:time[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Element hl7:time[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="count(hl7:time[@nullFlavor='UNK']) &lt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Element hl7:time[@nullFlavor='UNK'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="count(hl7:assignedAuthor) &gt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Element hl7:assignedAuthor ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="count(hl7:assignedAuthor) &lt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Element hl7:assignedAuthor kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.8
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:time[not(@nullFlavor)]
Item: (atcdabbr_other_AuthorBody_eImpfpass)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:time[not(@nullFlavor)]">
        <extends rule="TS.AT.TZ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AuthorBody_eImpfpass): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="not(*)">(atcdabbr_other_AuthorBody_eImpfpass): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.8
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:time[@nullFlavor='UNK']
Item: (atcdabbr_other_AuthorBody_eImpfpass)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:time[@nullFlavor='UNK']">
        <extends rule="TS.AT.TZ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AuthorBody_eImpfpass): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="not(*)">(atcdabbr_other_AuthorBody_eImpfpass): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="string(@nullFlavor) = ('UNK')">(atcdabbr_other_AuthorBody_eImpfpass): Der Wert von nullFlavor MUSS 'UNK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.8
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor
Item: (atcdabbr_other_AuthorBody_eImpfpass)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(atcdabbr_other_AuthorBody_eImpfpass): Der Wert von classCode MUSS 'ASSIGNED' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="not(/hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.2'] and not( ancestor::*/hl7:participant/hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.14'])) or hl7:id[not(@nullFlavor)]">(atcdabbr_other_AuthorBody_eImpfpass): id/@nullFlavor ist NICHT ERLAUBT.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="not(/hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.2'] and not( ancestor::*/hl7:participant/hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.14'])) or hl7:representedOrganization">(atcdabbr_other_AuthorBody_eImpfpass): Das Element representedOrganization MUSS strukturiert sein.</assert>
        <let name="elmcount" value="count(hl7:id[not(@nullFlavor)] | hl7:id[@nullFlavor='UNK'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="$elmcount &gt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Auswahl (hl7:id[not(@nullFlavor)]  oder  hl7:id[@nullFlavor='UNK']) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="count(hl7:id[@nullFlavor='UNK']) &lt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Element hl7:id[@nullFlavor='UNK'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="count(hl7:code[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Element hl7:code[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="count(hl7:addr[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Element hl7:addr[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <let name="elmcount" value="count(hl7:assignedPerson | hl7:assignedAuthoringDevice)"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="$elmcount &gt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Auswahl (hl7:assignedPerson  oder  hl7:assignedAuthoringDevice) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="$elmcount &lt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Auswahl (hl7:assignedPerson  oder  hl7:assignedAuthoringDevice) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="count(hl7:assignedPerson) &lt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Element hl7:assignedPerson kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="count(hl7:assignedAuthoringDevice) &lt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Element hl7:assignedAuthoringDevice kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="count(hl7:representedOrganization) &lt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.8
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:id[not(@nullFlavor)]
Item: (atcdabbr_other_AuthorBody_eImpfpass)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:id[not(@nullFlavor)]">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AuthorBody_eImpfpass): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.8
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:id[@nullFlavor='UNK']
Item: (atcdabbr_other_AuthorBody_eImpfpass)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:id[@nullFlavor='UNK']">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AuthorBody_eImpfpass): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="string(@nullFlavor) = ('UNK')">(atcdabbr_other_AuthorBody_eImpfpass): Der Wert von nullFlavor MUSS 'UNK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.8
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:code[not(@nullFlavor)]
Item: (atcdabbr_other_AuthorBody_eImpfpass)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:code[not(@nullFlavor)]">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AuthorBody_eImpfpass): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theCode" value="@code"/>
        <let name="theCodeSystem" value="@codeSystem"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(atcdabbr_other_AuthorBody_eImpfpass): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.6 ELGA_AuthorSpeciality (DYNAMIC)' sein.</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.8
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]
Item: (atcdabbr_other_AuthorBody_eImpfpass)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="not(@use) or (string-length(@use) &gt; 0 and not(matches(@use,'\s')))">(atcdabbr_other_AddressCompilation): Attribute @use MUSS vom Datentyp 'cs' sein  - '<value-of select="@use"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(hl7:streetAddressLine or (hl7:streetName and hl7:houseNumber)) and not(hl7:streetAddressLine and hl7:streetName and hl7:houseNumber)">(atcdabbr_other_AddressCompilation): Es muss entweder streetAddressLine oder streetName UND houseNumber angegeben werden.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:streetAddressLine) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:streetAddressLine kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:streetName) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:streetName kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:houseNumber) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:houseNumber kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:postalCode[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:postalCode[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:postalCode[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:postalCode[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:city[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:city[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:city[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:city[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:state) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:state kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:country[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:country[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:country[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:country[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:additionalLocator) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:additionalLocator kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]/hl7:streetAddressLine
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]/hl7:streetAddressLine">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]/hl7:streetName
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]/hl7:streetName">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]/hl7:houseNumber
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]/hl7:houseNumber">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]/hl7:postalCode[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]/hl7:postalCode[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]/hl7:city[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]/hl7:city[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]/hl7:state
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]/hl7:state">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]/hl7:country[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]/hl7:country[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="info" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="string-length(text()) = 3">(atcdabbr_other_AddressCompilation): Es wird EMPFOHLEN, den Staat im ISO 3 Ländercode anzugeben.</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]/hl7:additionalLocator
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr[not(@nullFlavor)]/hl7:additionalLocator">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.8
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:telecom[not(@nullFlavor)]
Item: (atcdabbr_other_AuthorBody_eImpfpass)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:telecom[not(@nullFlavor)]">
        <extends rule="TEL.AT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AuthorBody_eImpfpass): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="@value">(atcdabbr_other_AuthorBody_eImpfpass): Attribut @value MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="not(@value) or string-length(@value)&gt;0">(atcdabbr_other_AuthorBody_eImpfpass): Attribute @value MUSS vom Datentyp 'st' sein  - '<value-of select="@value"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="not(@use) or string-length(@use) &gt; 0">(atcdabbr_other_AuthorBody_eImpfpass): Attribute @use MUSS vom Datentyp 'set_cs' sein  - '<value-of select="@use"/>'</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.8
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson
Item: (atcdabbr_other_AuthorBody_eImpfpass)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="string(@classCode) = ('PSN') or not(@classCode)">(atcdabbr_other_AuthorBody_eImpfpass): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(atcdabbr_other_AuthorBody_eImpfpass): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
        <let name="elmcount" value="count(hl7:name[not(@nullFlavor)] | hl7:name[@nullFlavor='UNK'] | hl7:name[@nullFlavor='MSK'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="$elmcount &gt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Auswahl (hl7:name[not(@nullFlavor)]  oder  hl7:name[@nullFlavor='UNK']  oder  hl7:name[@nullFlavor='MSK']) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="$elmcount &lt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Auswahl (hl7:name[not(@nullFlavor)]  oder  hl7:name[@nullFlavor='UNK']  oder  hl7:name[@nullFlavor='MSK']) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="count(hl7:name[@nullFlavor='UNK']) &lt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Element hl7:name[@nullFlavor='UNK'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.8" test="count(hl7:name[@nullFlavor='MSK']) &lt;= 1">(atcdabbr_other_AuthorBody_eImpfpass): Element hl7:name[@nullFlavor='MSK'] kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson
Item: (atcdabbr_other_PersonNameCompilationG2)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name[not(@nullFlavor)]
Item: (atcdabbr_other_PersonNameCompilationG2)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name[not(@nullFlavor)]">
        <extends rule="PN"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.6" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.6" test="not(@use) or (string-length(@use) &gt; 0 and not(matches(@use,'\s')))">(atcdabbr_other_PersonNameCompilationG2): Attribute @use MUSS vom Datentyp 'cs' sein  - '<value-of select="@use"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.6" test="count(hl7:family[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_PersonNameCompilationG2): Element hl7:family[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.6" test="count(hl7:given[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_PersonNameCompilationG2): Element hl7:given[not(@nullFlavor)] ist mandatory [min 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:prefix
Item: (atcdabbr_other_PersonNameCompilationG2)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:prefix">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.6" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.6" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:family[not(@nullFlavor)]
Item: (atcdabbr_other_PersonNameCompilationG2)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:family[not(@nullFlavor)]">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.6" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.6" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:given[not(@nullFlavor)]
Item: (atcdabbr_other_PersonNameCompilationG2)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:given[not(@nullFlavor)]">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.6" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.6" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:suffix
Item: (atcdabbr_other_PersonNameCompilationG2)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:suffix">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.6" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.6" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name[@nullFlavor='UNK']
Item: (atcdabbr_other_PersonNameCompilationG2)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name[@nullFlavor='UNK']">
        <extends rule="PN"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.6" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.6" test="string(@nullFlavor) = ('UNK')">(atcdabbr_other_PersonNameCompilationG2): Der Wert von nullFlavor MUSS 'UNK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.6
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name[@nullFlavor='MSK']
Item: (atcdabbr_other_PersonNameCompilationG2)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name[@nullFlavor='MSK']">
        <extends rule="PN"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.6" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.6" test="string(@nullFlavor) = ('MSK')">(atcdabbr_other_PersonNameCompilationG2): Der Wert von nullFlavor MUSS 'MSK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.8
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedAuthoringDevice
Item: (atcdabbr_other_AuthorBody_eImpfpass)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.18
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedAuthoringDevice
Item: (atcdabbr_other_DeviceCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedAuthoringDevice">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="string(@classCode) = ('DEV') or not(@classCode)">(atcdabbr_other_DeviceCompilation): Der Wert von classCode MUSS 'DEV' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(atcdabbr_other_DeviceCompilation): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="count(hl7:manufacturerModelName[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_DeviceCompilation): Element hl7:manufacturerModelName[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="count(hl7:manufacturerModelName[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_DeviceCompilation): Element hl7:manufacturerModelName[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="count(hl7:softwareName[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_DeviceCompilation): Element hl7:softwareName[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="count(hl7:softwareName[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_DeviceCompilation): Element hl7:softwareName[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.18
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedAuthoringDevice/hl7:manufacturerModelName[not(@nullFlavor)]
Item: (atcdabbr_other_DeviceCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedAuthoringDevice/hl7:manufacturerModelName[not(@nullFlavor)]">
        <extends rule="SC"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_DeviceCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.18
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedAuthoringDevice/hl7:softwareName[not(@nullFlavor)]
Item: (atcdabbr_other_DeviceCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedAuthoringDevice/hl7:softwareName[not(@nullFlavor)]">
        <extends rule="SC"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_DeviceCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.8
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization
Item: (atcdabbr_other_AuthorBody_eImpfpass)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization">
        <extends rule="d146683e0-false-d146699e0"/>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.5
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization
Item: (atcdabbr_other_OrganizationCompilationWithIdName)
-->
    <rule id="d146683e0-false-d146699e0" abstract="true">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.5" test="string(@classCode) = ('ORG') or not(@classCode)">(atcdabbr_other_OrganizationCompilationWithIdName): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.5" test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(atcdabbr_other_OrganizationCompilationWithIdName): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.5" test="count(hl7:telecom)&lt;2 or (count(hl7:telecom) = count(hl7:telecom[@use]))">(atcdabbr_other_OrganizationCompilationWithIdName): Das Attribut telecom/@use MUSS bei allen telecom Elementen strukturiert sein.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.5" test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_OrganizationCompilationWithIdName): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.5" test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_OrganizationCompilationWithIdName): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.5" test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_OrganizationCompilationWithIdName): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.5" test="count(hl7:addr[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_OrganizationCompilationWithIdName): Element hl7:addr[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.5
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[not(@nullFlavor)]
Item: (atcdabbr_other_OrganizationCompilationWithIdName)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[not(@nullFlavor)]">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_OrganizationCompilationWithIdName): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.5
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (atcdabbr_other_OrganizationCompilationWithIdName)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:name[not(@nullFlavor)]">
        <extends rule="ON"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_OrganizationCompilationWithIdName): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.5
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[not(@nullFlavor)]
Item: (atcdabbr_other_OrganizationCompilationWithIdName)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[not(@nullFlavor)]">
        <extends rule="TEL.AT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_OrganizationCompilationWithIdName): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.5" test="@value">(atcdabbr_other_OrganizationCompilationWithIdName): Attribut @value MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.5" test="not(@value) or string-length(@value)&gt;0">(atcdabbr_other_OrganizationCompilationWithIdName): Attribute @value MUSS vom Datentyp 'st' sein  - '<value-of select="@value"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.5" test="not(@use) or string-length(@use) &gt; 0">(atcdabbr_other_OrganizationCompilationWithIdName): Attribute @use MUSS vom Datentyp 'set_cs' sein  - '<value-of select="@use"/>'</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.5
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]
Item: (atcdabbr_other_OrganizationCompilationWithIdName)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="not(@use) or (string-length(@use) &gt; 0 and not(matches(@use,'\s')))">(atcdabbr_other_AddressCompilation): Attribute @use MUSS vom Datentyp 'cs' sein  - '<value-of select="@use"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(hl7:streetAddressLine or (hl7:streetName and hl7:houseNumber)) and not(hl7:streetAddressLine and hl7:streetName and hl7:houseNumber)">(atcdabbr_other_AddressCompilation): Es muss entweder streetAddressLine oder streetName UND houseNumber angegeben werden.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:streetAddressLine) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:streetAddressLine kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:streetName) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:streetName kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:houseNumber) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:houseNumber kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:postalCode[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:postalCode[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:postalCode[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:postalCode[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:city[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:city[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:city[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:city[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:state) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:state kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:country[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:country[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:country[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:country[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="count(hl7:additionalLocator) &lt;= 1">(atcdabbr_other_AddressCompilation): Element hl7:additionalLocator kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]/hl7:streetAddressLine
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]/hl7:streetAddressLine">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]/hl7:streetName
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]/hl7:streetName">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]/hl7:houseNumber
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]/hl7:houseNumber">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]/hl7:postalCode[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]/hl7:postalCode[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]/hl7:city[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]/hl7:city[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]/hl7:state
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]/hl7:state">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]/hl7:country[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]/hl7:country[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="info" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="string-length(text()) = 3">(atcdabbr_other_AddressCompilation): Es wird EMPFOHLEN, den Staat im ISO 3 Ländercode anzugeben.</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]/hl7:additionalLocator
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr[not(@nullFlavor)]/hl7:additionalLocator">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.2']]]
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.2']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="string(@typeCode) = ('RSON')">(atcdabbr_entry_ImmunizationRecommendation): Der Wert von typeCode MUSS 'RSON' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(atcdabbr_entry_ImmunizationRecommendation): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.11'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.11'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="string(@typeCode) = ('RSON')">(atcdabbr_entry_ImmunizationRecommendation): Der Wert von typeCode MUSS 'RSON' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(atcdabbr_entry_ImmunizationRecommendation): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:reference[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:reference[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.22']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="string(@typeCode) = ('REFR')">(atcdabbr_entry_ImmunizationRecommendation): Der Wert von typeCode MUSS 'REFR' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:reference[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:reference[hl7:externalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.14']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="string(@typeCode) = ('REFR')">(atcdabbr_entry_ImmunizationRecommendation): Der Wert von typeCode MUSS 'REFR' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.3
Context: *[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:precondition[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]
Item: (atcdabbr_entry_ImmunizationRecommendation)
-->
    <rule context="*[hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]]/hl7:substanceAdministration[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.3']]/hl7:precondition[hl7:criterion[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.10']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.3" test="string(@typeCode) = ('PRCN') or not(@typeCode)">(atcdabbr_entry_ImmunizationRecommendation): Der Wert von typeCode MUSS 'PRCN' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
    </rule>
</pattern>