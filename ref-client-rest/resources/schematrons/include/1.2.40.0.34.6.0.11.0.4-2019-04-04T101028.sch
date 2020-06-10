<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.6.0.11.0.4
Name: Kompletter Immunisierungsstatus
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="template-1.2.40.0.34.6.0.11.0.4-2019-04-04T101028">
    <title>Kompletter Immunisierungsstatus</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->
    <rule context="/" id="d133e951-false-d45424e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]" id="d133e1047-false-d45968e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@classCode) = ('DOCCLIN') or not(@classCode)">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von classCode MUSS 'DOCCLIN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@moodCode) = ('EVN') or not(@moodCode)">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:realmCode[@code = 'AT']) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:realmCode[@code = 'AT'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:realmCode[@code = 'AT']) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:realmCode[@code = 'AT'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1']) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1']) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:templateId[@root = '1.2.40.0.34.7.19']) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:templateId[@root = '1.2.40.0.34.7.19'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:templateId[@root = '1.2.40.0.34.7.19']) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:templateId[@root = '1.2.40.0.34.7.19'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:templateId[@root='1.2.40.0.34.6.0.11.0.4'][not(@nullFlavor)]) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:templateId[@root='1.2.40.0.34.6.0.11.0.4'][not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:templateId[@root='1.2.40.0.34.6.0.11.0.4'][not(@nullFlavor)]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:templateId[@root='1.2.40.0.34.6.0.11.0.4'][not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019']) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019']) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:code[(@code = '11369-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:code[(@code = '11369-6' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:code[(@code = '11369-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:code[(@code = '11369-6' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:languageCode[@code = 'de-AT']) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:languageCode[@code = 'de-AT'] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:languageCode[@code = 'de-AT']) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:languageCode[@code = 'de-AT'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:setId[not(@nullFlavor)]) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:setId[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:setId[not(@nullFlavor)]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:setId[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:versionNumber[not(@nullFlavor)]) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:versionNumber[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:versionNumber[not(@nullFlavor)]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:versionNumber[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:author[not(@nullFlavor)][hl7:assignedAuthor]) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:author[not(@nullFlavor)][hl7:assignedAuthor] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:dataEnterer) = 0">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:dataEnterer DARF NICHT vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:informationRecipient) = 0">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:informationRecipient DARF NICHT vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:legalAuthenticator) = 0">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:legalAuthenticator DARF NICHT vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:authenticator) = 0">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:authenticator DARF NICHT vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:participant) = 0">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:participant DARF NICHT vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:inFulfillmentOf) = 0">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:inFulfillmentOf DARF NICHT vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]]) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:authorization) = 0">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:authorization DARF NICHT vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:componentOf) = 0">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:componentOf DARF NICHT vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:component[not(@nullFlavor)][hl7:structuredBody]) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:component[not(@nullFlavor)][hl7:structuredBody] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:component[not(@nullFlavor)][hl7:structuredBody]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:component[not(@nullFlavor)][hl7:structuredBody] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="matches(//processing-instruction('xml-stylesheet'), '[^\w]eimpf-stylesheet_v1.0.xsl[^\w]')">(eimpf_document_KompletterImmunisierungsstatus): (xml-processing-instr): Es muss ein xml-stylesheet-Prologattribut anwesend sein mit dem Wert für @href=eimpf-stylesheet_v1.0.xsl</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.10
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:realmCode[@code = 'AT']
Item: (atcdabbr_header_DocumentRealm)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:realmCode[@code = 'AT']" id="d46010e126-false-d46519e0">
        <extends rule="CS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.10" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_DocumentRealm): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.10" test="string(@code) = ('AT')">(atcdabbr_header_DocumentRealm): Der Wert von code MUSS 'AT' sein. Gefunden: "<value-of select="@code"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']" id="d133e1060-false-d46533e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_document_KompletterImmunisierungsstatus): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@root) = ('2.16.840.1.113883.1.3')">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von root MUSS '2.16.840.1.113883.1.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@extension) = ('POCD_HD000040')">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von extension MUSS 'POCD_HD000040' sein. Gefunden: "<value-of select="@extension"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="not(@extension) or string-length(@extension)&gt;0">(eimpf_document_KompletterImmunisierungsstatus): Attribute @extension MUSS vom Datentyp 'st' sein  - '<value-of select="@extension"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1']
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1']" id="d133e1065-false-d46554e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_document_KompletterImmunisierungsstatus): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@root) = ('1.2.40.0.34.6.0.11.0.1')">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von root MUSS '1.2.40.0.34.6.0.11.0.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:templateId[@root = '1.2.40.0.34.7.19']
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:templateId[@root = '1.2.40.0.34.7.19']" id="d133e1069-false-d46568e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_document_KompletterImmunisierungsstatus): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@root) = ('1.2.40.0.34.7.19')">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von root MUSS '1.2.40.0.34.7.19' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:templateId[@root='1.2.40.0.34.6.0.11.0.4'][not(@nullFlavor)]
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:templateId[@root='1.2.40.0.34.6.0.11.0.4'][not(@nullFlavor)]" id="d133e1073-false-d46579e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_document_KompletterImmunisierungsstatus): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@root) = ('1.2.40.0.34.6.0.11.0.4')">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von root MUSS '1.2.40.0.34.6.0.11.0.4' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019']
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019']" id="d133e1077-false-d46593e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_document_KompletterImmunisierungsstatus): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@extension) = ('XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019')">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von extension MUSS 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019' sein. Gefunden: "<value-of select="@extension"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="not(@extension) or string-length(@extension)&gt;0">(eimpf_document_KompletterImmunisierungsstatus): Attribute @extension MUSS vom Datentyp 'st' sein  - '<value-of select="@extension"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@root) = ('1.2.40.0.34.6.0.11.0.4.1')">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von root MUSS '1.2.40.0.34.6.0.11.0.4.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']" id="d133e1090-false-d46613e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_document_KompletterImmunisierungsstatus): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2')">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:id[not(@nullFlavor)]
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:id[not(@nullFlavor)]" id="d133e1094-false-d46626e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_document_KompletterImmunisierungsstatus): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:code[(@code = '11369-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:code[(@code = '11369-6' and @codeSystem = '2.16.840.1.113883.6.1')]" id="d133e1106-false-d46636e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_document_KompletterImmunisierungsstatus): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="@nullFlavor or (@code='11369-6' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='HISTORY OF IMMUNIZATIONS')">(eimpf_document_KompletterImmunisierungsstatus): Der Elementinhalt MUSS einer von 'code '11369-6' codeSystem '2.16.840.1.113883.6.1' displayName='HISTORY OF IMMUNIZATIONS'' sein.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:translation[(@code = '82593-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:translation[(@code = '82593-5' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:translation[(@code = '82593-5' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:translation[(@code = '82593-5' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:code[(@code = '11369-6' and @codeSystem = '2.16.840.1.113883.6.1')]/hl7:translation[(@code = '82593-5' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:code[(@code = '11369-6' and @codeSystem = '2.16.840.1.113883.6.1')]/hl7:translation[(@code = '82593-5' and @codeSystem = '2.16.840.1.113883.6.1')]" id="d133e1124-false-d46661e0">
        <extends rule="CD"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_document_KompletterImmunisierungsstatus): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@code) = ('82593-5')">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von code MUSS '82593-5' sein. Gefunden: "<value-of select="@code"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@codeSystem) = ('2.16.840.1.113883.6.1')">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von codeSystem MUSS '2.16.840.1.113883.6.1' sein. Gefunden: "<value-of select="@codeSystem"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@displayName) = ('Immunization summary report')">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von displayName MUSS 'Immunization summary report' sein. Gefunden: "<value-of select="@displayName"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="not(@displayName) or string-length(@displayName)&gt;0">(eimpf_document_KompletterImmunisierungsstatus): Attribute @displayName MUSS vom Datentyp 'st' sein  - '<value-of select="@displayName"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:title[not(@nullFlavor)]
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:title[not(@nullFlavor)]" id="d133e1133-false-d46685e0">
        <extends rule="ST"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eimpf_document_KompletterImmunisierungsstatus): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.11
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:effectiveTime
Item: (atcdabbr_header_DocumentEffectiveTime)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:effectiveTime" id="d46686e50-false-d46695e0">
        <extends rule="TS.AT.TZ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_DocumentEffectiveTime): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.11" test="not(*)">(atcdabbr_header_DocumentEffectiveTime): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.12
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]
Item: (atcdabbr_header_DocumentConfidentialityCode)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]" id="d46696e38-false-d46709e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.12" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_DocumentConfidentialityCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.12" test="@nullFlavor or (@code='N' and @codeSystem='2.16.840.1.113883.5.25' and @displayName='normal')">(atcdabbr_header_DocumentConfidentialityCode): Der Elementinhalt MUSS einer von 'code 'N' codeSystem '2.16.840.1.113883.5.25' displayName='normal'' sein.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.12" test="string(@codeSystemName) = ('HL7:Confidentiality')">(atcdabbr_header_DocumentConfidentialityCode): Der Wert von codeSystemName MUSS 'HL7:Confidentiality' sein. Gefunden: "<value-of select="@codeSystemName"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.12" test="not(@codeSystemName) or string-length(@codeSystemName)&gt;0">(atcdabbr_header_DocumentConfidentialityCode): Attribute @codeSystemName MUSS vom Datentyp 'st' sein  - '<value-of select="@codeSystemName"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.13
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:languageCode[@code = 'de-AT' or @nullFlavor]
Item: (atcdabbr_header_DocumentLanguage)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:languageCode[@code = 'de-AT' or @nullFlavor]" id="d46710e68-false-d46732e0">
        <extends rule="CS.LANG"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.13" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_DocumentLanguage): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.13" test="@nullFlavor or (@code='de-AT')">(atcdabbr_header_DocumentLanguage): Der Elementinhalt MUSS einer von 'code 'de-AT'' sein.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.15
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:setId
Item: (atcdabbr_header_DocumentSetIdAndVersionNumber)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:setId" id="d46733e72-false-d46748e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.15" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_DocumentSetIdAndVersionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.15
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:versionNumber
Item: (atcdabbr_header_DocumentSetIdAndVersionNumber)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:versionNumber" id="d46733e109-false-d46757e0">
        <extends rule="INT.NONNEG"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.15" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_DocumentSetIdAndVersionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:INT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.15" test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(atcdabbr_header_DocumentSetIdAndVersionNumber): @value ist keine gültige INT Zahl <value-of select="@value"/>
        </assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.15" test="@value">(atcdabbr_header_DocumentSetIdAndVersionNumber): Attribut @value MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.15" test="not(@value) or matches(string(@value), '^-?[1-9]\d*$|^+?\d*$')">(atcdabbr_header_DocumentSetIdAndVersionNumber): Attribute @value ist keine gültige int Zahl <value-of select="@value"/>
        </assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]" id="d46758e144-false-d46831e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="string(@typeCode) = ('RCT') or not(@typeCode)">(atcdabbr_header_RecordTarget_eImpfpass): Der Wert von typeCode MUSS 'RCT' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(atcdabbr_header_RecordTarget_eImpfpass): Der Wert von contextControlCode MUSS 'OP' sein. Gefunden: "<value-of select="@contextControlCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:patientRole[not(@nullFlavor)][hl7:patient]) &gt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:patientRole[not(@nullFlavor)][hl7:patient] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:patientRole[not(@nullFlavor)][hl7:patient]) &lt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:patientRole[not(@nullFlavor)][hl7:patient] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]" id="d46758e153-false-d46966e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="string(@classCode) = ('PAT') or not(@classCode)">(atcdabbr_header_RecordTarget_eImpfpass): Der Wert von classCode MUSS 'PAT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="not(hl7:id[1]/@nullFlavor)">(atcdabbr_header_RecordTarget_eImpfpass): Die Verwendung von id/@nullFlavor ist an dieser Stelle NICHT ERLAUBT.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="not(hl7:id[2]/@nullFlavor='UNK') or hl7:id[@root='1.2.40.0.10.2.1.1.149']">(atcdabbr_header_RecordTarget_eImpfpass): Wenn die SVNR mit nullFlavor 'UNK' angegeben wird, MUSS das bPK-GH strukturiert sein.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="not(hl7:id[2]/@nullFlavor) or (hl7:id[2][@nullFlavor='UNK'] or hl7:id[2][@nullFlavor='NI'])">(atcdabbr_header_RecordTarget_eImpfpass): Zugelassene nullFlavor sind "NI" und "UNK"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:id) &gt;= 2">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:id ist required [min 2x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:addr[not(@nullFlavor)]) &lt;= 2">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:addr[not(@nullFlavor)] kommt zu häufig vor [max 2x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:patient[not(@nullFlavor)]) &gt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:patient[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:patient[not(@nullFlavor)]) &lt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:patient[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:id
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:id" id="d46758e162-false-d47042e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_RecordTarget_eImpfpass): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:addr[not(@nullFlavor)]
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:addr[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:addr[not(@nullFlavor)]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:addr[not(@nullFlavor)]/hl7:streetAddressLine
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:addr[not(@nullFlavor)]/hl7:streetAddressLine">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:addr[not(@nullFlavor)]/hl7:streetName
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:addr[not(@nullFlavor)]/hl7:streetName">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:addr[not(@nullFlavor)]/hl7:houseNumber
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:addr[not(@nullFlavor)]/hl7:houseNumber">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:addr[not(@nullFlavor)]/hl7:postalCode[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:addr[not(@nullFlavor)]/hl7:postalCode[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:addr[not(@nullFlavor)]/hl7:city[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:addr[not(@nullFlavor)]/hl7:city[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:addr[not(@nullFlavor)]/hl7:state
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:addr[not(@nullFlavor)]/hl7:state">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:addr[not(@nullFlavor)]/hl7:country[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:addr[not(@nullFlavor)]/hl7:country[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="info" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="string-length(text()) = 3">(atcdabbr_other_AddressCompilation): Es wird EMPFOHLEN, den Staat im ISO 3 Ländercode anzugeben.</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:addr[not(@nullFlavor)]/hl7:additionalLocator
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:addr[not(@nullFlavor)]/hl7:additionalLocator">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:telecom[not(@nullFlavor)]
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:telecom[not(@nullFlavor)]" id="d46758e328-false-d47193e0">
        <extends rule="TEL.AT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_RecordTarget_eImpfpass): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="@value">(atcdabbr_header_RecordTarget_eImpfpass): Attribut @value MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="not(@value) or string(@value castable as xs:anyURI)">(atcdabbr_header_RecordTarget_eImpfpass): Attribute @value MUSS vom Datentyp 'url' sein  - '<value-of select="@value"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="not(@use) or (string-length(@use) &gt; 0 and not(matches(@use,'\s')))">(atcdabbr_header_RecordTarget_eImpfpass): Attribute @use MUSS vom Datentyp 'cs' sein  - '<value-of select="@use"/>'</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]">
        <extends rule="d48493e0-false-d48496e0"/>
        <let name="elmcount" value="count(hl7:administrativeGenderCode[not(@nullFlavor)] | hl7:administrativeGenderCode[@nullFlavor='UNK'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="$elmcount &gt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Auswahl (hl7:administrativeGenderCode[not(@nullFlavor)]  oder  hl7:administrativeGenderCode[@nullFlavor='UNK']) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="$elmcount &lt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Auswahl (hl7:administrativeGenderCode[not(@nullFlavor)]  oder  hl7:administrativeGenderCode[@nullFlavor='UNK']) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:administrativeGenderCode[not(@nullFlavor)]) &lt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:administrativeGenderCode[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:administrativeGenderCode[@nullFlavor='UNK']) &lt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:administrativeGenderCode[@nullFlavor='UNK'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:birthTime[not(@nullFlavor)]) &gt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:birthTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:birthTime[not(@nullFlavor)]) &lt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:birthTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:maritalStatusCode) = 0">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:maritalStatusCode DARF NICHT vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:religiousAffiliationCode) = 0">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:religiousAffiliationCode DARF NICHT vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:raceCode) = 0">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:raceCode DARF NICHT vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:ethnicGroupCode) = 0">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:ethnicGroupCode DARF NICHT vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:birthplace[hl7:place]) &lt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:birthplace[hl7:place] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:languageCommunication) = 0">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:languageCommunication DARF NICHT vorkommen.</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:administrativeGenderCode[not(@nullFlavor)]
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:administrativeGenderCode[not(@nullFlavor)]">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_RecordTarget_eImpfpass): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theCode" value="@code"/>
        <let name="theCodeSystem" value="@codeSystem"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(atcdabbr_header_RecordTarget_eImpfpass): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.4 ELGA_AdministrativeGender (DYNAMIC)' sein.</assert>
        <let name="theNullFlavor" value="@nullFlavor"/>
        <let name="validNullFlavorsFound" value="exists(doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="not(@nullFlavor) or $validNullFlavorsFound">(atcdabbr_header_RecordTarget_eImpfpass): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.40.0.34.10.4 ELGA_AdministrativeGender (DYNAMIC).</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="@displayName">(atcdabbr_header_RecordTarget_eImpfpass): Attribut @displayName MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="not(@displayName) or string-length(@displayName)&gt;0">(atcdabbr_header_RecordTarget_eImpfpass): Attribute @displayName MUSS vom Datentyp 'st' sein  - '<value-of select="@displayName"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="@code">(atcdabbr_header_RecordTarget_eImpfpass): Attribut @code MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="not(@code) or (string-length(@code) &gt; 0 and not(matches(@code,'\s')))">(atcdabbr_header_RecordTarget_eImpfpass): Attribute @code MUSS vom Datentyp 'cs' sein  - '<value-of select="@code"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="string(@codeSystem) = ('2.16.840.1.113883.5.1')">(atcdabbr_header_RecordTarget_eImpfpass): Der Wert von codeSystem MUSS '2.16.840.1.113883.5.1' sein. Gefunden: "<value-of select="@codeSystem"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="string(@codeSystemName) = ('HL7:AdministrativeGender') or not(@codeSystemName)">(atcdabbr_header_RecordTarget_eImpfpass): Der Wert von codeSystemName MUSS 'HL7:AdministrativeGender' sein. Gefunden: "<value-of select="@codeSystemName"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="not(@codeSystemName) or string-length(@codeSystemName)&gt;0">(atcdabbr_header_RecordTarget_eImpfpass): Attribute @codeSystemName MUSS vom Datentyp 'st' sein  - '<value-of select="@codeSystemName"/>'</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:administrativeGenderCode[@nullFlavor='UNK']
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:administrativeGenderCode[@nullFlavor='UNK']">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_RecordTarget_eImpfpass): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="string(@nullFlavor) = ('UNK')">(atcdabbr_header_RecordTarget_eImpfpass): Der Wert von nullFlavor MUSS 'UNK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthTime[not(@nullFlavor)]
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthTime[not(@nullFlavor)]">
        <extends rule="TS.DATE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_RecordTarget_eImpfpass): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="not(*)">(atcdabbr_header_RecordTarget_eImpfpass): <value-of select="local-name()"/> with datatype TS.DATE, SHOULD NOT have child elements.</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:maritalStatusCode
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:religiousAffiliationCode
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:raceCode
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:ethnicGroupCode
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="string(@classCode) = ('GUARD') or not(@classCode)">(atcdabbr_header_RecordTarget_eImpfpass): Der Wert von classCode MUSS 'GUARD' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:addr) &lt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
        <let name="elmcount" value="count(hl7:guardianPerson | hl7:guardianPerson | hl7:guardianOrganization)"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="$elmcount &gt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Auswahl (hl7:guardianPerson  oder  hl7:guardianPerson  oder  hl7:guardianOrganization) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="$elmcount &lt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Auswahl (hl7:guardianPerson  oder  hl7:guardianPerson  oder  hl7:guardianOrganization) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:guardianPerson) &lt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:guardianPerson kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:guardianPerson) &lt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:guardianPerson kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:guardianOrganization) &lt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:guardianOrganization kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:addr
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:addr
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:addr">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:addr/hl7:streetAddressLine
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:addr/hl7:streetAddressLine">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:addr/hl7:streetName
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:addr/hl7:streetName">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:addr/hl7:houseNumber
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:addr/hl7:houseNumber">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:addr/hl7:postalCode[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:addr/hl7:postalCode[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:addr/hl7:city[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:addr/hl7:city[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:addr/hl7:state
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:addr/hl7:state">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:addr/hl7:country[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:addr/hl7:country[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="info" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="string-length(text()) = 3">(atcdabbr_other_AddressCompilation): Es wird EMPFOHLEN, den Staat im ISO 3 Ländercode anzugeben.</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:addr/hl7:additionalLocator
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:addr/hl7:additionalLocator">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:telecom
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:telecom">
        <extends rule="TEL.AT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_RecordTarget_eImpfpass): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="@value">(atcdabbr_header_RecordTarget_eImpfpass): Attribut @value MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="not(@value) or string-length(@value)&gt;0">(atcdabbr_header_RecordTarget_eImpfpass): Attribute @value MUSS vom Datentyp 'st' sein  - '<value-of select="@value"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="not(@use) or string-length(@use) &gt; 0">(atcdabbr_header_RecordTarget_eImpfpass): Attribute @use MUSS vom Datentyp 'set_cs' sein  - '<value-of select="@use"/>'</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianPerson
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.12
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianPerson
Item: (atcdabbr_other_PersonNameCompilationG1M)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianPerson">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.12" test="string(@classCode) = ('PSN') or not(@classCode)">(atcdabbr_other_PersonNameCompilationG1M): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.12" test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(atcdabbr_other_PersonNameCompilationG1M): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.12" test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_PersonNameCompilationG1M): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.12" test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_PersonNameCompilationG1M): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.12
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]
Item: (atcdabbr_other_PersonNameCompilationG1M)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]">
        <extends rule="PN"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.12" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG1M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.12" test="not(@use) or (string-length(@use) &gt; 0 and not(matches(@use,'\s')))">(atcdabbr_other_PersonNameCompilationG1M): Attribute @use MUSS vom Datentyp 'cs' sein  - '<value-of select="@use"/>'</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianPerson
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianPerson
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianPerson">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="string(@classCode) = ('PSN') or not(@classCode)">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_PersonNameCompilationG2M): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_PersonNameCompilationG2M): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]">
        <extends rule="PN"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@use) or (string-length(@use) &gt; 0 and not(matches(@use,'\s')))">(atcdabbr_other_PersonNameCompilationG2M): Attribute @use MUSS vom Datentyp 'cs' sein  - '<value-of select="@use"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="count(hl7:family[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_PersonNameCompilationG2M): Element hl7:family[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="count(hl7:given[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_PersonNameCompilationG2M): Element hl7:given[not(@nullFlavor)] ist mandatory [min 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]/hl7:prefix
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]/hl7:prefix">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]/hl7:family[not(@nullFlavor)]
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]/hl7:family[not(@nullFlavor)]">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]/hl7:given[not(@nullFlavor)]
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]/hl7:given[not(@nullFlavor)]">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]/hl7:suffix
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]/hl7:suffix">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianOrganization
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.27
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianOrganization
Item: (atcdabbr_other_OrganizationNameCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianOrganization">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.27" test="string(@classCode) = ('ORG') or not(@classCode)">(atcdabbr_other_OrganizationNameCompilation): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.27" test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(atcdabbr_other_OrganizationNameCompilation): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.27" test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_OrganizationNameCompilation): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.27" test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_OrganizationNameCompilation): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.27
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianOrganization/hl7:name[not(@nullFlavor)]
Item: (atcdabbr_other_OrganizationNameCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:guardian/hl7:guardianOrganization/hl7:name[not(@nullFlavor)]">
        <extends rule="ON"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.27" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_OrganizationNameCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="string(@classCode) = ('BIRTHPL') or not(@classCode)">(atcdabbr_header_RecordTarget_eImpfpass): Der Wert von classCode MUSS 'BIRTHPL' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:place) &gt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:place ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:place) &lt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:place kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="string(@classCode) = ('PLC') or not(@classCode)">(atcdabbr_header_RecordTarget_eImpfpass): Der Wert von classCode MUSS 'PLC' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(atcdabbr_header_RecordTarget_eImpfpass): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
        <let name="elmcount" value="count(hl7:addr | hl7:addr)"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="$elmcount &gt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Auswahl (hl7:addr  oder  hl7:addr) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="$elmcount &lt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Auswahl (hl7:addr  oder  hl7:addr) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:addr) &lt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.31" test="count(hl7:addr) &lt;= 1">(atcdabbr_header_RecordTarget_eImpfpass): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.10
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr
Item: (atcdabbr_other_AddressCompilationMinimal)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.10" test="not(@use) or (string-length(@use) &gt; 0 and not(matches(@use,'\s')))">(atcdabbr_other_AddressCompilationMinimal): Attribute @use MUSS vom Datentyp 'cs' sein  - '<value-of select="@use"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.10" test="not(hl7:streetAddressLine and (hl7:streetName or hl7:houseNumber)) or ((hl7:streetAddressLine or (hl7:streetName and hl7:houseNumber)) and not((hl7:streetAddressLine and hl7:streetName and hl7:houseNumber) or (hl7:streetAddressLine and (hl7:streetName or hl7:houseNumber))))">(atcdabbr_other_AddressCompilationMinimal): Es muss entweder streetAddressLine oder streetName UND houseNumber angegeben werden.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.10" test="count(hl7:streetAddressLine) &lt;= 1">(atcdabbr_other_AddressCompilationMinimal): Element hl7:streetAddressLine kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.10" test="count(hl7:streetName) &lt;= 1">(atcdabbr_other_AddressCompilationMinimal): Element hl7:streetName kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.10" test="count(hl7:houseNumber) &lt;= 1">(atcdabbr_other_AddressCompilationMinimal): Element hl7:houseNumber kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.10" test="count(hl7:postalCode) &lt;= 1">(atcdabbr_other_AddressCompilationMinimal): Element hl7:postalCode kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.10" test="count(hl7:city) &lt;= 1">(atcdabbr_other_AddressCompilationMinimal): Element hl7:city kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.10" test="count(hl7:state) &lt;= 1">(atcdabbr_other_AddressCompilationMinimal): Element hl7:state kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.10" test="count(hl7:country) &lt;= 1">(atcdabbr_other_AddressCompilationMinimal): Element hl7:country kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.10" test="count(hl7:additionalLocator) &lt;= 1">(atcdabbr_other_AddressCompilationMinimal): Element hl7:additionalLocator kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.10
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:streetAddressLine
Item: (atcdabbr_other_AddressCompilationMinimal)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:streetAddressLine">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.10" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilationMinimal): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.10
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:streetName
Item: (atcdabbr_other_AddressCompilationMinimal)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:streetName">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.10" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilationMinimal): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.10
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:houseNumber
Item: (atcdabbr_other_AddressCompilationMinimal)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:houseNumber">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.10" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilationMinimal): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.10
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:postalCode
Item: (atcdabbr_other_AddressCompilationMinimal)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:postalCode">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.10" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilationMinimal): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.10
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:city
Item: (atcdabbr_other_AddressCompilationMinimal)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:city">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.10" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilationMinimal): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.10
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:state
Item: (atcdabbr_other_AddressCompilationMinimal)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:state">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.10" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilationMinimal): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.10
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:country
Item: (atcdabbr_other_AddressCompilationMinimal)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:country">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.10" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilationMinimal): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="info" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.10" test="string-length(text()) = 3">(atcdabbr_other_AddressCompilationMinimal): content length = 3 characters</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.10
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:additionalLocator
Item: (atcdabbr_other_AddressCompilationMinimal)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:additionalLocator">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.10" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilationMinimal): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:streetAddressLine
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:streetAddressLine">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:streetName
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:streetName">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:houseNumber
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:houseNumber">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:postalCode[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:postalCode[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:city[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:city[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:state
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:state">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:country[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:country[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="info" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="string-length(text()) = 3">(atcdabbr_other_AddressCompilation): Es wird EMPFOHLEN, den Staat im ISO 3 Ländercode anzugeben.</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:additionalLocator
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:birthplace[hl7:place]/hl7:place/hl7:addr/hl7:additionalLocator">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.31
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:languageCommunication
Item: (atcdabbr_header_RecordTarget_eImpfpass)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule id="d48493e0-false-d48496e0" abstract="true">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="string(@classCode) = ('PSN') or not(@classCode)">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_PersonNameCompilationG2M): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_PersonNameCompilationG2M): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]">
        <extends rule="PN"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@use) or (string-length(@use) &gt; 0 and not(matches(@use,'\s')))">(atcdabbr_other_PersonNameCompilationG2M): Attribute @use MUSS vom Datentyp 'cs' sein  - '<value-of select="@use"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="count(hl7:family[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_PersonNameCompilationG2M): Element hl7:family[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="count(hl7:given[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_PersonNameCompilationG2M): Element hl7:given[not(@nullFlavor)] ist mandatory [min 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]/hl7:prefix
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]/hl7:prefix">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]/hl7:family[not(@nullFlavor)]
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]/hl7:family[not(@nullFlavor)]">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]/hl7:given[not(@nullFlavor)]
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]/hl7:given[not(@nullFlavor)]">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]/hl7:suffix
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]/hl7:patientRole[not(@nullFlavor)][hl7:patient]/hl7:patient[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]/hl7:suffix">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]
Item: (atcdabbr_header_Author)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]" id="d47259e986-false-d48665e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="string(@typeCode) = ('AUT') or not(@typeCode)">(atcdabbr_header_Author): Der Wert von typeCode MUSS 'AUT' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(atcdabbr_header_Author): Der Wert von contextControlCode MUSS 'OP' sein. Gefunden: "<value-of select="@contextControlCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="count(hl7:functionCode) &lt;= 1">(atcdabbr_header_Author): Element hl7:functionCode kommt zu häufig vor [max 1x].</assert>
        <let name="elmcount" value="count(hl7:time[not(@nullFlavor)] | hl7:time[@nullFlavor='UNK'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="$elmcount &gt;= 1">(atcdabbr_header_Author): Auswahl (hl7:time[not(@nullFlavor)]  oder  hl7:time[@nullFlavor='UNK']) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="$elmcount &lt;= 1">(atcdabbr_header_Author): Auswahl (hl7:time[not(@nullFlavor)]  oder  hl7:time[@nullFlavor='UNK']) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="count(hl7:time[not(@nullFlavor)]) &lt;= 1">(atcdabbr_header_Author): Element hl7:time[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="count(hl7:time[@nullFlavor='UNK']) &lt;= 1">(atcdabbr_header_Author): Element hl7:time[@nullFlavor='UNK'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="count(hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]) &gt;= 1">(atcdabbr_header_Author): Element hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="count(hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]) &lt;= 1">(atcdabbr_header_Author): Element hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:functionCode
Item: (atcdabbr_header_Author)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:functionCode" id="d47259e997-false-d48735e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_Author): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="@code">(atcdabbr_header_Author): Attribut @code MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="not(@code) or (string-length(@code) &gt; 0 and not(matches(@code,'\s')))">(atcdabbr_header_Author): Attribute @code MUSS vom Datentyp 'cs' sein  - '<value-of select="@code"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="@codeSystem">(atcdabbr_header_Author): Attribut @codeSystem MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="not(@codeSystem) or matches(@codeSystem,'^[0-2](\.(0|[1-9]\d*))*$')">(atcdabbr_header_Author): Attribute @codeSystem MUSS vom Datentyp 'oid' sein  - '<value-of select="@codeSystem"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="@displayName">(atcdabbr_header_Author): Attribut @displayName MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="not(@displayName) or string-length(@displayName)&gt;0">(atcdabbr_header_Author): Attribute @displayName MUSS vom Datentyp 'st' sein  - '<value-of select="@displayName"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:time[not(@nullFlavor)]
Item: (atcdabbr_header_Author)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:time[not(@nullFlavor)]" id="d47259e1025-false-d48758e0">
        <extends rule="TS.AT.TZ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_Author): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="not(*)">(atcdabbr_header_Author): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:time[@nullFlavor='UNK']
Item: (atcdabbr_header_Author)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:time[@nullFlavor='UNK']" id="d47259e1027-false-d48768e0">
        <extends rule="TS.AT.TZ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_Author): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="not(*)">(atcdabbr_header_Author): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="string(@nullFlavor) = ('UNK')">(atcdabbr_header_Author): Der Wert von nullFlavor MUSS 'UNK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]
Item: (atcdabbr_header_Author)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]" id="d47259e1034-false-d48809e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(atcdabbr_header_Author): Der Wert von classCode MUSS 'ASSIGNED' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="count(hl7:telecom)&lt;2 or (count(hl7:telecom) = count(hl7:telecom[@use]))">(atcdabbr_header_Author): Das Attribut telecom/@use MUSS bei allen telecom Elementen strukturiert sein.</assert>
        <let name="elmcount" value="count(hl7:id[not(@nullFlavor)] | hl7:id[@nullFlavor='NI'] | hl7:id[@nullFlavor='UNK'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="$elmcount &gt;= 1">(atcdabbr_header_Author): Auswahl (hl7:id[not(@nullFlavor)]  oder  hl7:id[@nullFlavor='NI']  oder  hl7:id[@nullFlavor='UNK']) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="count(hl7:id[@nullFlavor='NI']) &lt;= 1">(atcdabbr_header_Author): Element hl7:id[@nullFlavor='NI'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="count(hl7:id[@nullFlavor='UNK']) &lt;= 1">(atcdabbr_header_Author): Element hl7:id[@nullFlavor='UNK'] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(atcdabbr_header_Author): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] kommt zu häufig vor [max 1x].</assert>
        <let name="elmcount" value="count(hl7:assignedPerson | hl7:assignedAuthoringDevice)"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="$elmcount &gt;= 1">(atcdabbr_header_Author): Auswahl (hl7:assignedPerson  oder  hl7:assignedAuthoringDevice) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="$elmcount &lt;= 1">(atcdabbr_header_Author): Auswahl (hl7:assignedPerson  oder  hl7:assignedAuthoringDevice) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="count(hl7:assignedPerson) &lt;= 1">(atcdabbr_header_Author): Element hl7:assignedPerson kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="count(hl7:assignedAuthoringDevice) &lt;= 1">(atcdabbr_header_Author): Element hl7:assignedAuthoringDevice kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="count(hl7:representedOrganization[not(@nullFlavor)]) &gt;= 1">(atcdabbr_header_Author): Element hl7:representedOrganization[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="count(hl7:representedOrganization[not(@nullFlavor)]) &lt;= 1">(atcdabbr_header_Author): Element hl7:representedOrganization[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:id[not(@nullFlavor)]
Item: (atcdabbr_header_Author)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:id[not(@nullFlavor)]" id="d47259e1049-false-d48908e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_Author): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:id[@nullFlavor='NI']
Item: (atcdabbr_header_Author)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:id[@nullFlavor='NI']" id="d47259e1061-false-d48915e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_Author): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="string(@nullFlavor) = ('NI')">(atcdabbr_header_Author): Der Wert von nullFlavor MUSS 'NI' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:id[@nullFlavor='UNK']
Item: (atcdabbr_header_Author)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:id[@nullFlavor='UNK']" id="d47259e1066-false-d48926e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_Author): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="string(@nullFlavor) = ('UNK')">(atcdabbr_header_Author): Der Wert von nullFlavor MUSS 'UNK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (atcdabbr_header_Author)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]" id="d47259e1087-false-d48942e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_Author): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theCode" value="@code"/>
        <let name="theCodeSystem" value="@codeSystem"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(atcdabbr_header_Author): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.6 ELGA_AuthorSpeciality (DYNAMIC)' sein.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="@codeSystem">(atcdabbr_header_Author): Attribut @codeSystem MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="not(@codeSystem) or matches(@codeSystem,'^[0-2](\.(0|[1-9]\d*))*$')">(atcdabbr_header_Author): Attribute @codeSystem MUSS vom Datentyp 'oid' sein  - '<value-of select="@codeSystem"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="@displayName">(atcdabbr_header_Author): Attribut @displayName MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="not(@displayName) or string-length(@displayName)&gt;0">(atcdabbr_header_Author): Attribute @displayName MUSS vom Datentyp 'st' sein  - '<value-of select="@displayName"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="@code">(atcdabbr_header_Author): Attribut @code MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="not(@code) or (string-length(@code) &gt; 0 and not(matches(@code,'\s')))">(atcdabbr_header_Author): Attribute @code MUSS vom Datentyp 'cs' sein  - '<value-of select="@code"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:telecom[not(@nullFlavor)]
Item: (atcdabbr_header_Author)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:telecom[not(@nullFlavor)]" id="d47259e1106-false-d48974e0">
        <extends rule="TEL.AT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_Author): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="@value">(atcdabbr_header_Author): Attribut @value MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="not(@value) or string-length(@value)&gt;0">(atcdabbr_header_Author): Attribute @value MUSS vom Datentyp 'st' sein  - '<value-of select="@value"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.2" test="not(@use) or string-length(@use) &gt; 0">(atcdabbr_header_Author): Attribute @use MUSS vom Datentyp 'set_cs' sein  - '<value-of select="@use"/>'</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson
Item: (atcdabbr_header_Author)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="string(@classCode) = ('PSN') or not(@classCode)">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_PersonNameCompilationG2M): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_PersonNameCompilationG2M): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]">
        <extends rule="PN"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@use) or (string-length(@use) &gt; 0 and not(matches(@use,'\s')))">(atcdabbr_other_PersonNameCompilationG2M): Attribute @use MUSS vom Datentyp 'cs' sein  - '<value-of select="@use"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="count(hl7:family[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_PersonNameCompilationG2M): Element hl7:family[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="count(hl7:given[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_PersonNameCompilationG2M): Element hl7:given[not(@nullFlavor)] ist mandatory [min 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:prefix
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:prefix">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:family[not(@nullFlavor)]
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:family[not(@nullFlavor)]">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:given[not(@nullFlavor)]
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:given[not(@nullFlavor)]">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.11
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:suffix
Item: (atcdabbr_other_PersonNameCompilationG2M)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]/hl7:suffix">
        <extends rule="ENXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_PersonNameCompilationG2M): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ENXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="theAttValue" value="distinct-values(tokenize(normalize-space(@qualifier),'\s'))"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.11" test="not(@qualifier) or empty($theAttValue[not(. = (doc('include/voc-1.2.40.0.34.6.0.10.8-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(atcdabbr_other_PersonNameCompilationG2M): Der Wert von qualifier MUSS gewählt werden aus Value Set '1.2.40.0.34.6.0.10.8' ELGA_EntityNamePartQualifier_VS (DYNAMIC).</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice
Item: (atcdabbr_header_Author)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.18
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice
Item: (atcdabbr_other_DeviceCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="string(@classCode) = ('DEV') or not(@classCode)">(atcdabbr_other_DeviceCompilation): Der Wert von classCode MUSS 'DEV' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(atcdabbr_other_DeviceCompilation): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="count(hl7:manufacturerModelName[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_DeviceCompilation): Element hl7:manufacturerModelName[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="count(hl7:manufacturerModelName[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_DeviceCompilation): Element hl7:manufacturerModelName[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="count(hl7:softwareName[not(@nullFlavor)]) &gt;= 1">(atcdabbr_other_DeviceCompilation): Element hl7:softwareName[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="count(hl7:softwareName[not(@nullFlavor)]) &lt;= 1">(atcdabbr_other_DeviceCompilation): Element hl7:softwareName[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.18
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:manufacturerModelName[not(@nullFlavor)]
Item: (atcdabbr_other_DeviceCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:manufacturerModelName[not(@nullFlavor)]">
        <extends rule="SC"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_DeviceCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.18
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:softwareName[not(@nullFlavor)]
Item: (atcdabbr_other_DeviceCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:softwareName[not(@nullFlavor)]">
        <extends rule="SC"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.18" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_DeviceCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]
Item: (atcdabbr_header_Author)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.5
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]
Item: (atcdabbr_other_OrganizationCompilationWithIdName)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (atcdabbr_other_OrganizationCompilationWithIdName)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_OrganizationCompilationWithIdName): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.5
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (atcdabbr_other_OrganizationCompilationWithIdName)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]">
        <extends rule="ON"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_OrganizationCompilationWithIdName): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.5
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:telecom[not(@nullFlavor)]
Item: (atcdabbr_other_OrganizationCompilationWithIdName)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:telecom[not(@nullFlavor)]">
        <extends rule="TEL.AT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.5" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_OrganizationCompilationWithIdName): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.5" test="@value">(atcdabbr_other_OrganizationCompilationWithIdName): Attribut @value MUSS vorkommen.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.5" test="not(@value) or string-length(@value)&gt;0">(atcdabbr_other_OrganizationCompilationWithIdName): Attribute @value MUSS vom Datentyp 'st' sein  - '<value-of select="@value"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.5" test="not(@use) or string-length(@use) &gt; 0">(atcdabbr_other_OrganizationCompilationWithIdName): Attribute @use MUSS vom Datentyp 'set_cs' sein  - '<value-of select="@use"/>'</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.5
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]
Item: (atcdabbr_other_OrganizationCompilationWithIdName)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:streetAddressLine
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:streetAddressLine">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:streetName
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:streetName">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:houseNumber
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:houseNumber">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:postalCode[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:postalCode[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:city[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:city[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:state
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:state">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:country[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:country[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="info" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="string-length(text()) = 3">(atcdabbr_other_AddressCompilation): Es wird EMPFOHLEN, den Staat im ISO 3 Ländercode anzugeben.</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:additionalLocator
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:author[not(@nullFlavor)][hl7:assignedAuthor]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:additionalLocator">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:dataEnterer
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]
Item: (atcdabbr_header_Custodian)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]" id="d49462e48-false-d49479e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.4" test="string(@typeCode) = ('CST') or not(@typeCode)">(atcdabbr_header_Custodian): Der Wert von typeCode MUSS 'CST' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.4" test="count(hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]) &gt;= 1">(atcdabbr_header_Custodian): Element hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.4" test="count(hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]) &lt;= 1">(atcdabbr_header_Custodian): Element hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]
Item: (atcdabbr_header_Custodian)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]" id="d49462e55-false-d49520e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.4" test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(atcdabbr_header_Custodian): Der Wert von classCode MUSS 'ASSIGNED' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.4" test="count(hl7:representedCustodianOrganization[not(@nullFlavor)]) &gt;= 1">(atcdabbr_header_Custodian): Element hl7:representedCustodianOrganization[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.4" test="count(hl7:representedCustodianOrganization[not(@nullFlavor)]) &lt;= 1">(atcdabbr_header_Custodian): Element hl7:representedCustodianOrganization[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]
Item: (atcdabbr_header_Custodian)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]" id="d49462e59-false-d49561e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.4" test="string(@classCode) = ('ORG') or not(@classCode)">(atcdabbr_header_Custodian): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.4" test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(atcdabbr_header_Custodian): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.4" test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(atcdabbr_header_Custodian): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.4" test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(atcdabbr_header_Custodian): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.4" test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(atcdabbr_header_Custodian): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.4" test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(atcdabbr_header_Custodian): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.4" test="count(hl7:telecom[not(@nullFlavor)]) &lt;= 1">(atcdabbr_header_Custodian): Element hl7:telecom[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.4" test="count(hl7:addr[not(@nullFlavor)]) &gt;= 1">(atcdabbr_header_Custodian): Element hl7:addr[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.4" test="count(hl7:addr[not(@nullFlavor)]) &lt;= 1">(atcdabbr_header_Custodian): Element hl7:addr[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (atcdabbr_header_Custodian)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]" id="d49462e65-false-d49615e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_Custodian): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (atcdabbr_header_Custodian)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]" id="d49462e71-false-d49624e0">
        <extends rule="ON"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_Custodian): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:telecom[not(@nullFlavor)]
Item: (atcdabbr_header_Custodian)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:telecom[not(@nullFlavor)]" id="d49462e77-false-d49631e0">
        <extends rule="TEL.AT"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.4" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_Custodian): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]
Item: (atcdabbr_header_Custodian)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:streetAddressLine
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:streetAddressLine">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:streetName
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:streetName">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:houseNumber
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:houseNumber">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:postalCode[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:postalCode[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:city[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:city[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:state
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:state">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:country[not(@nullFlavor)]
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:country[not(@nullFlavor)]">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="info" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="string-length(text()) = 3">(atcdabbr_other_AddressCompilation): Es wird EMPFOHLEN, den Staat im ISO 3 Ländercode anzugeben.</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.9.25
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:additionalLocator
Item: (atcdabbr_other_AddressCompilation)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]/hl7:additionalLocator">
        <extends rule="ADXP"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.9.25" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_other_AddressCompilation): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ADXP" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:informationRecipient
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:legalAuthenticator
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:authenticator
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:participant
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:inFulfillmentOf
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.32
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]]
Item: (atcdabbr_header_DocumentationOfServiceEvent_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]]" id="d49827e92-false-d49834e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="string(@typeCode) = ('DOC') or not(@typeCode)">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Der Wert von typeCode MUSS 'DOC' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="count(hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]) &gt;= 1">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Element hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="count(hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]) &lt;= 1">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Element hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.32
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]
Item: (atcdabbr_header_DocumentationOfServiceEvent_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]" id="d49827e101-false-d49855e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="string(@classCode) = ('PCPR')">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Der Wert von classCode MUSS 'PCPR' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="string(@moodCode) = ('EVN') or not(@moodCode)">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="count(hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Element hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="count(hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Element hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="count(hl7:performer) = 0">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Element hl7:performer DARF NICHT vorkommen.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.32
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (atcdabbr_header_DocumentationOfServiceEvent_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]" id="d49827e112-false-d49894e0">
        <extends rule="CE"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="string(@code) = ('41000179103')">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Der Wert von code MUSS '41000179103' sein. Gefunden: "<value-of select="@code"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="string(@codeSystem) = ('2.16.840.1.113883.6.96')">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Der Wert von codeSystem MUSS '2.16.840.1.113883.6.96' sein. Gefunden: "<value-of select="@codeSystem"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="string(@codeSystemName) = ('SNOMED CT')">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Der Wert von codeSystemName MUSS 'SNOMED CT' sein. Gefunden: "<value-of select="@codeSystemName"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="not(@codeSystemName) or string-length(@codeSystemName)&gt;0">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Attribute @codeSystemName MUSS vom Datentyp 'st' sein  - '<value-of select="@codeSystemName"/>'</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="string(@displayName) = ('Immunization record (record artifact)')">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Der Wert von displayName MUSS 'Immunization record (record artifact)' sein. Gefunden: "<value-of select="@displayName"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="not(@displayName) or string-length(@displayName)&gt;0">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Attribute @displayName MUSS vom Datentyp 'st' sein  - '<value-of select="@displayName"/>'</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.32
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:effectiveTime[not(@nullFlavor)]
Item: (atcdabbr_header_DocumentationOfServiceEvent_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:effectiveTime[not(@nullFlavor)]" id="d49827e133-false-d49924e0">
        <extends rule="IVL_TS"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:IVL_TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <let name="elmcount" value="count(hl7:low[not(@nullFlavor)] | hl7:low[@nullFlavor='UNK'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="$elmcount &gt;= 1">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Auswahl (hl7:low[not(@nullFlavor)]  oder  hl7:low[@nullFlavor='UNK']) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="$elmcount &lt;= 1">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Auswahl (hl7:low[not(@nullFlavor)]  oder  hl7:low[@nullFlavor='UNK']) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="count(hl7:low[not(@nullFlavor)]) &lt;= 1">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Element hl7:low[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="count(hl7:low[@nullFlavor='UNK']) &lt;= 1">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Element hl7:low[@nullFlavor='UNK'] kommt zu häufig vor [max 1x].</assert>
        <let name="elmcount" value="count(hl7:high[not(@nullFlavor)] | hl7:high[@nullFlavor='UNK'])"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="$elmcount &gt;= 1">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Auswahl (hl7:high[not(@nullFlavor)]  oder  hl7:high[@nullFlavor='UNK']) enthält nicht genügend Elemente [min 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="$elmcount &lt;= 1">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Auswahl (hl7:high[not(@nullFlavor)]  oder  hl7:high[@nullFlavor='UNK']) enthält zu viele Elemente [max 1x]</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="count(hl7:high[not(@nullFlavor)]) &lt;= 1">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Element hl7:high[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="count(hl7:high[@nullFlavor='UNK']) &lt;= 1">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Element hl7:high[@nullFlavor='UNK'] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.32
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]
Item: (atcdabbr_header_DocumentationOfServiceEvent_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[not(@nullFlavor)]" id="d49827e178-false-d49964e0">
        <extends rule="TS.AT.TZ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="not(*)">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.32
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[@nullFlavor='UNK']
Item: (atcdabbr_header_DocumentationOfServiceEvent_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:low[@nullFlavor='UNK']" id="d49827e207-false-d49974e0">
        <extends rule="TS.AT.TZ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="not(*)">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="string(@nullFlavor) = ('UNK')">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Der Wert von nullFlavor MUSS 'UNK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.32
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]
Item: (atcdabbr_header_DocumentationOfServiceEvent_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[not(@nullFlavor)]" id="d49827e218-false-d49988e0">
        <extends rule="TS.AT.TZ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="not(*)">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.32
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[@nullFlavor='UNK']
Item: (atcdabbr_header_DocumentationOfServiceEvent_eImpfpass)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:effectiveTime[not(@nullFlavor)]/hl7:high[@nullFlavor='UNK']" id="d49827e248-false-d49998e0">
        <extends rule="TS.AT.TZ"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="not(*)">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.32" test="string(@nullFlavor) = ('UNK')">(atcdabbr_header_DocumentationOfServiceEvent_eImpfpass): Der Wert von nullFlavor MUSS 'UNK' sein. Gefunden: "<value-of select="@nullFlavor"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.32
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:serviceEvent[hl7:code[(@code = '41000179103' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:performer
Item: (atcdabbr_header_DocumentationOfServiceEvent_eImpfpass)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.14
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]
Item: (atcdabbr_header_DocumentReplacementRelatedDocument)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]" id="d50016e19-false-d50022e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.14" test="string(@typeCode) = ('RPLC')">(atcdabbr_header_DocumentReplacementRelatedDocument): Der Wert von typeCode MUSS 'RPLC' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.14" test="count(hl7:parentDocument[not(@nullFlavor)]) &gt;= 1">(atcdabbr_header_DocumentReplacementRelatedDocument): Element hl7:parentDocument[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.14" test="count(hl7:parentDocument[not(@nullFlavor)]) &lt;= 1">(atcdabbr_header_DocumentReplacementRelatedDocument): Element hl7:parentDocument[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.14
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]
Item: (atcdabbr_header_DocumentReplacementRelatedDocument)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]" id="d50016e54-false-d50041e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.14" test="string(@classCode) = ('DOCCLIN') or not(@classCode)">(atcdabbr_header_DocumentReplacementRelatedDocument): Der Wert von classCode MUSS 'DOCCLIN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.14" test="string(@moodCode) = ('EVN') or not(@moodCode)">(atcdabbr_header_DocumentReplacementRelatedDocument): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.14" test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(atcdabbr_header_DocumentReplacementRelatedDocument): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.14" test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(atcdabbr_header_DocumentReplacementRelatedDocument): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.1.14
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (atcdabbr_header_DocumentReplacementRelatedDocument)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]" id="d50016e60-false-d50064e0">
        <extends rule="II"/>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.1.14" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(atcdabbr_header_DocumentReplacementRelatedDocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:authorization
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:componentOf
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->

<!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:component[not(@nullFlavor)][hl7:structuredBody]
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:component[not(@nullFlavor)][hl7:structuredBody]" id="d133e1194-false-d50233e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@typeCode) = ('COMP') or not(@typeCode)">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:structuredBody[not(@nullFlavor)]) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:structuredBody[not(@nullFlavor)] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:structuredBody[not(@nullFlavor)]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:structuredBody[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
    </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:component[not(@nullFlavor)][hl7:structuredBody]/hl7:structuredBody[not(@nullFlavor)]
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:component[not(@nullFlavor)][hl7:structuredBody]/hl7:structuredBody[not(@nullFlavor)]" id="d133e1197-false-d50548e0">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@classCode) = ('DOCBODY') or not(@classCode)">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von classCode MUSS 'DOCBODY' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@moodCode) = ('EVN') or not(@moodCode)">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]] ist mandatory [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]] kommt zu häufig vor [max 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]) &gt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]] ist required [min 1x].</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]) &lt;= 1">(eimpf_document_KompletterImmunisierungsstatus): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]] kommt zu häufig vor [max 1x].</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:component[not(@nullFlavor)][hl7:structuredBody]/hl7:structuredBody[not(@nullFlavor)]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:component[not(@nullFlavor)][hl7:structuredBody]/hl7:structuredBody[not(@nullFlavor)]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.1'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@typeCode) = ('COMP') or not(@typeCode)">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:component[not(@nullFlavor)][hl7:structuredBody]/hl7:structuredBody[not(@nullFlavor)]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:component[not(@nullFlavor)][hl7:structuredBody]/hl7:structuredBody[not(@nullFlavor)]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.4'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.11'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.6']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@typeCode) = ('COMP') or not(@typeCode)">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:component[not(@nullFlavor)][hl7:structuredBody]/hl7:structuredBody[not(@nullFlavor)]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:component[not(@nullFlavor)][hl7:structuredBody]/hl7:structuredBody[not(@nullFlavor)]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.8']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@typeCode) = ('COMP') or not(@typeCode)">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:component[not(@nullFlavor)][hl7:structuredBody]/hl7:structuredBody[not(@nullFlavor)]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:component[not(@nullFlavor)][hl7:structuredBody]/hl7:structuredBody[not(@nullFlavor)]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.3.3.2.1']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@typeCode) = ('COMP') or not(@typeCode)">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.6.0.11.0.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:component[not(@nullFlavor)][hl7:structuredBody]/hl7:structuredBody[not(@nullFlavor)]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]
Item: (eimpf_document_KompletterImmunisierungsstatus)
-->
    <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.1'] and hl7:templateId[@root = '1.2.40.0.34.7.19'] and hl7:templateId[@root = '1.2.40.0.34.6.0.11.0.4.1'][@extension = 'XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2']]/hl7:component[not(@nullFlavor)][hl7:structuredBody]/hl7:structuredBody[not(@nullFlavor)]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.6.0.11.2.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.23']]]">
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@typeCode) = ('COMP') or not(@typeCode)">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
        <assert role="error" see="http://art-decor.org/art-decor/decor-templates--elgaimpf-?id=1.2.40.0.34.6.0.11.0.4" test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(eimpf_document_KompletterImmunisierungsstatus): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
    </rule>
</pattern>