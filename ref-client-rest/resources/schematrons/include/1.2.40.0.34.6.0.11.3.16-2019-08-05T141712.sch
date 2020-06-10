<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.3.16
Name: Antikörper-Bestimmung Laboratory Observation Entry
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.3.16-2019-08-05T141712">
    <title>Antikörper-Bestimmung Laboratory Observation Entry</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]" id="d133e5546-false-d131385e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="string(@classCode) = ('OBS')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="string(@moodCode) = ('EVN')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="not(hl7:value/@nullFlavor)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Die Verwendung von value/@nullFlavor ist nicht erlaubt</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16']) &gt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16']) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']) &gt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:text) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:text kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:statusCode[@code = 'completed' or @code = 'aborted']) &gt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:statusCode[@code = 'completed' or @code = 'aborted'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:statusCode[@code = 'completed' or @code = 'aborted']) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:statusCode[@code = 'completed' or @code = 'aborted'] kommt zu häufig vor [max 1x].</assert>
        <let name="elmcount" value="count(hl7:effectiveTime[not(@nullFlavor)] | hl7:effectiveTime[@nullFlavor='UNK'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="$elmcount &gt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Auswahl (hl7:effectiveTime[not(@nullFlavor)]  oder  hl7:effectiveTime[@nullFlavor='UNK']) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="$elmcount &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Auswahl (hl7:effectiveTime[not(@nullFlavor)]  oder  hl7:effectiveTime[@nullFlavor='UNK']) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:effectiveTime[@nullFlavor='UNK']) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:effectiveTime[@nullFlavor='UNK'] kommt zu häufig vor [max 1x].</assert>
        <let name="elmcount" value="count(hl7:value[@xsi:type='PQ'] | hl7:value[@xsi:type='IVL_PQ'] | hl7:value[@xsi:type='INT'] | hl7:value[@xsi:type='IVL_INT'] | hl7:value[@xsi:type='BL'] | hl7:value[@xsi:type='ST'] | hl7:value[@xsi:type='CV'] | hl7:value[@xsi:type='TS'] | hl7:value[@xsi:type='CD'] | hl7:value[@xsi:type='RTO'] | hl7:value[@xsi:type='RTO_QTY_QTY'] | hl7:value[@xsi:type='RTO_PQ_PQ'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="$elmcount &gt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Auswahl (hl7:value[@xsi:type='PQ']  oder  hl7:value[@xsi:type='IVL_PQ']  oder  hl7:value[@xsi:type='INT']  oder  hl7:value[@xsi:type='IVL_INT']  oder  hl7:value[@xsi:type='BL']  oder  hl7:value[@xsi:type='ST']  oder  hl7:value[@xsi:type='CV']  oder  hl7:value[@xsi:type='TS']  oder  hl7:value[@xsi:type='CD']  oder  hl7:value[@xsi:type='RTO']  oder  hl7:value[@xsi:type='RTO_QTY_QTY']  oder  hl7:value[@xsi:type='RTO_PQ_PQ']) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="$elmcount &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Auswahl (hl7:value[@xsi:type='PQ']  oder  hl7:value[@xsi:type='IVL_PQ']  oder  hl7:value[@xsi:type='INT']  oder  hl7:value[@xsi:type='IVL_INT']  oder  hl7:value[@xsi:type='BL']  oder  hl7:value[@xsi:type='ST']  oder  hl7:value[@xsi:type='CV']  oder  hl7:value[@xsi:type='TS']  oder  hl7:value[@xsi:type='CD']  oder  hl7:value[@xsi:type='RTO']  oder  hl7:value[@xsi:type='RTO_QTY_QTY']  oder  hl7:value[@xsi:type='RTO_PQ_PQ']) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:value[@xsi:type='PQ']) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:value[@xsi:type='PQ'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:interpretationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:interpretationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16']
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16']" id="d133e5552-false-d131617e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="string(@root) = ('1.2.40.0.34.6.0.11.3.16')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Wert von root MUSS '1.2.40.0.34.6.0.11.3.16' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']" id="d133e5560-false-d131631e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="string(@root) = ('1.3.6.1.4.1.19376.1.3.1.6')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.1.6' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:id[not(@nullFlavor)]
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:id[not(@nullFlavor)]" id="d133e5568-false-d131642e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.6.0.10.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]" id="d133e5577-false-d131654e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theCode" value="@code"/>
        <let name="theCodeSystem" value="@codeSystem"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.6.0.10.13-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Elementinhalt MUSS einer von '1.2.40.0.34.6.0.10.13 eImpf_Antikoerperbestimmung_VS (DYNAMIC)' sein.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="not(@nullFlavor) or not(@nullFlavor='OTH') or hl7:translation">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn code/@nullFlavor=OTH dann MUSS code/translation anwesend sein.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:text
Item: (atcdabrr_other_NarrativeTextReference)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:text" id="d131655e54-false-d131674e0">
        <extends rule="ED"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_other_NarrativeTextReference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(atcdabrr_other_NarrativeTextReference): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(atcdabrr_other_NarrativeTextReference): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.1
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:text/hl7:reference[not(@nullFlavor)]
Item: (atcdabrr_other_NarrativeTextReference)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:text/hl7:reference[not(@nullFlavor)]" id="d131655e55-false-d131692e0">
        <extends rule="TEL"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabrr_other_NarrativeTextReference): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="@value">(atcdabrr_other_NarrativeTextReference): Attribut @value MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.1" test="starts-with(@value,'#')">(atcdabrr_other_NarrativeTextReference): The @value attribute content MUST conform to the format '#xxx', where xxx is the ID of the corresponding 'content'-element.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:statusCode[@code = 'completed' or @code = 'aborted']
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:statusCode[@code = 'completed' or @code = 'aborted']" id="d133e5598-false-d131706e0">
        <extends rule="CS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="@nullFlavor or (@code='completed') or (@code='aborted')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Elementinhalt MUSS einer von 'code 'completed' oder code 'aborted'' sein.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:effectiveTime[not(@nullFlavor)]" id="d133e5634-false-d131721e0">
        <extends rule="IVL_TS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="@value">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Attribut @value MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="not(@value) or matches(string(@value), '^[0-9]{4,14}')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Attribute @value MUSS vom Datentyp 'ts' sein  - '<value-of select="@value"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:effectiveTime[@nullFlavor='UNK']
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:effectiveTime[@nullFlavor='UNK']" id="d133e5644-false-d131734e0">
        <extends rule="IVL_TS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="string(@nullFlavor) = ('UNK')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Wert von nullFlavor MUSS 'UNK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='PQ']
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='PQ']" id="d133e5652-false-d131745e0">
        <extends rule="PQ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): @value ist keine gültige PQ Zahl <value-of select="@value"/>
        </assert>
        <let name="theUnit" value="@unit"/>
        <let name="UCUMtest" value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
        <assert role="warning" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="$UCUMtest='OK' or string-length($UCUMtest)=0">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:translation) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:translation kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='PQ']/hl7:translation
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='PQ']/hl7:translation" id="d133e5666-false-d131765e0">
        <extends rule="PQR"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQR' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQR" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='IVL_PQ']
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='IVL_PQ']" id="d133e5673-false-d131772e0">
        <extends rule="IVL_PQ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="not(hl7:low/@value) or matches(string(hl7:low/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): value/low @value ist keine gültige PQ Zahl<value-of select="hl7:low/@value"/>
        </assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="not(hl7:high/@value) or matches(string(hl7:high/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): value/high @value ist keine gültige PQ Zahl<value-of select="hl7:high/@value"/>
        </assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="not(hl7:center/@value) or matches(string(hl7:center/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): value/center @value ist keine gültige PQ Zahl<value-of select="hl7:center/@value"/>
        </assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='INT']
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='INT']" id="d133e5675-false-d131786e0">
        <extends rule="INT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:INT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): @value ist keine gültige INT Zahl <value-of select="@value"/>
        </assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='IVL_INT']
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='IVL_INT']" id="d133e5677-false-d131796e0">
        <extends rule="IVL_INT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_INT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='BL']
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='BL']" id="d133e5679-false-d131803e0">
        <extends rule="BL"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:BL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='ST']
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='ST']" id="d133e5682-false-d131810e0">
        <extends rule="ST"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='CV']
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='CV']" id="d133e5684-false-d131817e0">
        <extends rule="CV"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CV" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='TS']
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='TS']" id="d133e5686-false-d131824e0">
        <extends rule="TS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="not(*)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): <value-of select="local-name()"/> with datatype TS, SHOULD NOT have child elements.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='CD']
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='CD']" id="d133e5688-false-d131834e0">
        <extends rule="CD"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='RTO']
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='RTO']" id="d133e5690-false-d131841e0">
        <extends rule="RTO"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:RTO" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='RTO_QTY_QTY']
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='RTO_QTY_QTY']" id="d133e5703-false-d131848e0">
        <extends rule="RTO_QTY_QTY"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO_QTY_QTY' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:RTO_QTY_QTY" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='RTO_PQ_PQ']
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:value[@xsi:type='RTO_PQ_PQ']" id="d133e5706-false-d131855e0">
        <extends rule="RTO_PQ_PQ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO_PQ_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:RTO_PQ_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:interpretationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:interpretationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.13-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]" id="d133e5713-false-d131867e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theCode" value="@code"/>
        <let name="theCodeSystem" value="@codeSystem"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.13-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.13 ELGA_ObservationInterpretation (DYNAMIC)' sein.</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:performer[hl7:templateId[@root = '1.2.40.0.34.6.0.11.9.28'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.7']]
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]" id="d133e5743-false-d131936e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="string(@typeCode) = ('AUTHEN')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Wert von typeCode MUSS 'AUTHEN' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Wert von contextControlCode MUSS 'OP' sein. Gefunden: "<value-of select="@contextControlCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']) &gt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5'] ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:time) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:time kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:participantRole[hl7:playingEntity]) &gt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:participantRole[hl7:playingEntity] ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:participantRole[hl7:playingEntity]) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:participantRole[hl7:playingEntity] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']" id="d133e5754-false-d131975e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="string(@root) = ('1.3.6.1.4.1.19376.1.3.3.1.5')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.3.3.1.5' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:time
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:time" id="d133e5759-false-d131988e0">
        <extends rule="IVL_TS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:participantRole[hl7:playingEntity]
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:participantRole[hl7:playingEntity]" id="d133e5762-false-d131997e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="string(@classCode) = ('ROL') or not(@classCode)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Wert von classCode MUSS 'ROL' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:id) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:id kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:addr) &gt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:addr ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:addr) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:telecom) &gt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:telecom ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:playingEntity[not(@nullFlavor)]) &gt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:playingEntity[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:playingEntity[not(@nullFlavor)]) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:playingEntity[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:participantRole[hl7:playingEntity]/hl7:id
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:participantRole[hl7:playingEntity]/hl7:id" id="d133e5766-false-d132036e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:participantRole[hl7:playingEntity]/hl7:addr
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:participantRole[hl7:playingEntity]/hl7:addr" id="d133e5768-false-d132045e0">
        <extends rule="AD"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:participantRole[hl7:playingEntity]/hl7:telecom
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:participantRole[hl7:playingEntity]/hl7:telecom" id="d133e5770-false-d132054e0">
        <extends rule="TEL.AT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:participantRole[hl7:playingEntity]/hl7:playingEntity[not(@nullFlavor)]
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:participantRole[hl7:playingEntity]/hl7:playingEntity[not(@nullFlavor)]" id="d133e5772-false-d132063e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="string(@classCode) = ('ENT') or not(@classCode)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Wert von classCode MUSS 'ENT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:participantRole[hl7:playingEntity]/hl7:playingEntity[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:participant[hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.1.5']]/hl7:participantRole[hl7:playingEntity]/hl7:playingEntity[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]" id="d133e5778-false-d132086e0">
        <extends rule="PN"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.11'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:entryRelationship[hl7:act[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.11'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.40'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.2']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="string(@typeCode) = ('COMP')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]" id="d133e5790-false-d132181e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="string(@typeCode) = ('REFV')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Wert von typeCode MUSS 'REFV' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]) &gt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]" id="d133e5811-false-d132202e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="string(@classCode) = ('OBS')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Wert von classCode MUSS 'OBS' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="string(@moodCode) = ('EVN.CRT')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Wert von moodCode MUSS 'EVN.CRT' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:text[not(@nullFlavor)]) &gt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:text[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:text[not(@nullFlavor)]) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:text[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <let name="elmcount" value="count(hl7:value[@xsi:type='IVL_PQ'] | hl7:value[@xsi:type='RTO'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="$elmcount &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Auswahl (hl7:value[@xsi:type='IVL_PQ']  oder  hl7:value[@xsi:type='RTO']) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:value[@xsi:type='IVL_PQ']) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:value[@xsi:type='IVL_PQ'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:value[@xsi:type='RTO']) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:value[@xsi:type='RTO'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]) &gt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:text[not(@nullFlavor)]
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:text[not(@nullFlavor)]" id="d133e5817-false-d132245e0">
        <extends rule="ED"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ED" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:reference[not(@nullFlavor)]) &gt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:reference[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:reference[not(@nullFlavor)]) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:reference[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:text[not(@nullFlavor)]/hl7:reference[not(@nullFlavor)]" id="d133e5819-false-d132263e0">
        <extends rule="TEL"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:value[@xsi:type='IVL_PQ']
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:value[@xsi:type='IVL_PQ']" id="d133e5824-false-d132270e0">
        <extends rule="IVL_PQ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="not(hl7:low/@value) or matches(string(hl7:low/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): value/low @value ist keine gültige PQ Zahl<value-of select="hl7:low/@value"/>
        </assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="not(hl7:high/@value) or matches(string(hl7:high/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): value/high @value ist keine gültige PQ Zahl<value-of select="hl7:high/@value"/>
        </assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="not(hl7:center/@value) or matches(string(hl7:center/@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): value/center @value ist keine gültige PQ Zahl<value-of select="hl7:center/@value"/>
        </assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:low) &gt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:low ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:low) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:low kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:high) &gt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:high ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:high) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:high kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:value[@xsi:type='IVL_PQ']/hl7:low
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:value[@xsi:type='IVL_PQ']/hl7:low" id="d133e5826-false-d132302e0">
        <extends rule="PQ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): @value ist keine gültige PQ Zahl <value-of select="@value"/>
        </assert>
        <let name="theUnit" value="@unit"/>
        <let name="UCUMtest" value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
        <assert role="warning" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="$UCUMtest='OK' or string-length($UCUMtest)=0">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:value[@xsi:type='IVL_PQ']/hl7:high
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:value[@xsi:type='IVL_PQ']/hl7:high" id="d133e5828-false-d132316e0">
        <extends rule="PQ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PQ" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): @value ist keine gültige PQ Zahl <value-of select="@value"/>
        </assert>
        <let name="theUnit" value="@unit"/>
        <let name="UCUMtest" value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
        <assert role="warning" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="$UCUMtest='OK' or string-length($UCUMtest)=0">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): value/@unit (PQ) MUSS eine gültige UCUM-Einheit sein (<value-of select="$UCUMtest"/>).</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:value[@xsi:type='RTO']
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:value[@xsi:type='RTO']" id="d133e5831-false-d132328e0">
        <extends rule="RTO"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:RTO" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:numerator[not(@nullFlavor)]) &gt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:numerator[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:numerator[not(@nullFlavor)]) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:numerator[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:denominator) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:denominator kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:value[@xsi:type='RTO']/hl7:numerator[not(@nullFlavor)]
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:value[@xsi:type='RTO']/hl7:numerator[not(@nullFlavor)]" id="d133e5833-false-d132352e0">
        <extends rule="INT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:INT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): @value ist keine gültige INT Zahl <value-of select="@value"/>
        </assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="string(@value) = ('1')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Wert von value MUSS '1' sein. Gefunden: "<value-of select="@value"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:value[@xsi:type='RTO']/hl7:denominator
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:value[@xsi:type='RTO']/hl7:denominator" id="d133e5838-false-d132367e0">
        <extends rule="IVL_INT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_INT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:low) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:low kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="count(hl7:high) &lt;= 1">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Element hl7:high kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:value[@xsi:type='RTO']/hl7:denominator/hl7:low
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:value[@xsi:type='RTO']/hl7:denominator/hl7:low" id="d133e5840-false-d132389e0">
        <extends rule="IVXB_INT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVXB_INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVXB_INT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:value[@xsi:type='RTO']/hl7:denominator/hl7:high
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:value[@xsi:type='RTO']/hl7:denominator/hl7:high" id="d133e5842-false-d132398e0">
        <extends rule="IVXB_INT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVXB_INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVXB_INT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.3.16
Context: *[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]
Item: (eimpf_entry_AntikoerperBestimmungLaboratoryObservation)
-->
    <rule context="*[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.6.0.11.3.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.1.6']]/hl7:referenceRange[@typeCode = 'REFV'][hl7:observationRange[@classCode = 'OBS'][@moodCode = 'EVN.CRT']]/hl7:observationRange[hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]]/hl7:interpretationCode[not(@nullFlavor)][not(@nullFlavor)]" id="d133e5847-false-d132405e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.3.16" test="@nullFlavor or (@code='POS' and @codeSystem='2.16.840.1.113883.5.83')">(eimpf_entry_AntikoerperBestimmungLaboratoryObservation): Der Elementinhalt MUSS einer von 'code 'POS' codeSystem '2.16.840.1.113883.5.83'' sein.</assert>
    </rule>
</pattern>