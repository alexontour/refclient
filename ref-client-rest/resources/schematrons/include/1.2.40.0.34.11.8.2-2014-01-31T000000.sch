<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.8.2
Name: eMedikation Abgabe
Description: Template Spezieller Implementierungsleitfaden ELGA eMedikation Abgabe
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.8.2-2014-01-31T000000">
   <title>eMedikation Abgabe</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]
Item: (eMedikationAbgabe)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]"
         id="d20e45127-false-d354735e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.2']) &gt;= 1">(eMedikationAbgabe): Element hl7:templateId[@root = '1.2.40.0.34.11.8.2'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.2']) &lt;= 1">(eMedikationAbgabe): Element hl7:templateId[@root = '1.2.40.0.34.11.8.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3']) &gt;= 1">(eMedikationAbgabe): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3']) &lt;= 1">(eMedikationAbgabe): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1']) &gt;= 1">(eMedikationAbgabe): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1']) &lt;= 1">(eMedikationAbgabe): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']) &gt;= 1">(eMedikationAbgabe): Element hl7:templateId[@root = '1.2.40.0.34.11.8.0.3'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']) &lt;= 1">(eMedikationAbgabe): Element hl7:templateId[@root = '1.2.40.0.34.11.8.0.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.1']) &gt;= 1">(eMedikationAbgabe): Element hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.1']) &lt;= 1">(eMedikationAbgabe): Element hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:code[(@code = '60593-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(eMedikationAbgabe): Element hl7:code[(@code = '60593-1' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:code[(@code = '60593-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(eMedikationAbgabe): Element hl7:code[(@code = '60593-1' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(eMedikationAbgabe): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(eMedikationAbgabe): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(eMedikationAbgabe): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(eMedikationAbgabe): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]) &gt;= 1">(eMedikationAbgabe): Element hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]) &lt;= 1">(eMedikationAbgabe): Element hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:languageCode[@code = 'de-AT']) &gt;= 1">(eMedikationAbgabe): Element hl7:languageCode[@code = 'de-AT'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:languageCode[@code = 'de-AT']) &lt;= 1">(eMedikationAbgabe): Element hl7:languageCode[@code = 'de-AT'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:setId[not(@nullFlavor)]) &gt;= 1">(eMedikationAbgabe): Element hl7:setId[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:setId[not(@nullFlavor)]) &lt;= 1">(eMedikationAbgabe): Element hl7:setId[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:versionNumber[not(@nullFlavor)]) &gt;= 1">(eMedikationAbgabe): Element hl7:versionNumber[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:versionNumber[not(@nullFlavor)]) &lt;= 1">(eMedikationAbgabe): Element hl7:versionNumber[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &gt;= 1">(eMedikationAbgabe): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &lt;= 1">(eMedikationAbgabe): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:author[not(@nullFlavor)][hl7:assignedAuthor]) &gt;= 1">(eMedikationAbgabe): Element hl7:author[not(@nullFlavor)][hl7:assignedAuthor] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &gt;= 1">(eMedikationAbgabe): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &lt;= 1">(eMedikationAbgabe): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:dataEnterer) = 0">(eMedikationAbgabe): Element hl7:dataEnterer DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:informationRecipient) = 0">(eMedikationAbgabe): Element hl7:informationRecipient DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:authenticator) = 0">(eMedikationAbgabe): Element hl7:authenticator DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]) &gt;= 1">(eMedikationAbgabe): Element hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]) &lt;= 1">(eMedikationAbgabe): Element hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:participants) = 0">(eMedikationAbgabe): Element hl7:participants DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:inFulfillmentOf) = 0">(eMedikationAbgabe): Element hl7:inFulfillmentOf DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:documentationOf) = 0">(eMedikationAbgabe): Element hl7:documentationOf DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]) &lt;= 1">(eMedikationAbgabe): Element hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:authorization) = 0">(eMedikationAbgabe): Element hl7:authorization DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:componentOf) = 0">(eMedikationAbgabe): Element hl7:componentOf DARF NICHT vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:templateId[@root = '1.2.40.0.34.11.8.2']
Item: (eMedikationAbgabe)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:templateId[@root = '1.2.40.0.34.11.8.2']"
         id="d20e45138-false-d355036e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eMedikationAbgabe): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.8.2')">(eMedikationAbgabe): Der Wert von root MUSS '1.2.40.0.34.11.8.2' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3']
Item: (eMedikationAbgabe)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3']"
         id="d20e45147-false-d355051e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eMedikationAbgabe): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.9.1.1.3')">(eMedikationAbgabe): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.9.1.1.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1']
Item: (eMedikationAbgabe)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1']"
         id="d20e45155-false-d355066e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eMedikationAbgabe): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="string(@root) = ('1.3.6.1.4.1.19376.1.5.3.1.1.1')">(eMedikationAbgabe): Der Wert von root MUSS '1.3.6.1.4.1.19376.1.5.3.1.1.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']
Item: (eMedikationAbgabe)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']"
         id="d20e45163-false-d355081e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eMedikationAbgabe): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.8.0.3')">(eMedikationAbgabe): Der Wert von root MUSS '1.2.40.0.34.11.8.0.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.1']
Item: (eMedikationAbgabe)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.1']"
         id="d20e45171-false-d355096e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eMedikationAbgabe): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="string(@root) = ('1.2.40.0.10.1.4.3.4.2.1')">(eMedikationAbgabe): Der Wert von root MUSS '1.2.40.0.10.1.4.3.4.2.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="@extension">(eMedikationAbgabe): Attribut @extension MUSS vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="string(@assigningAuthorityName) = ('e-MedAT') or not(@assigningAuthorityName)">(eMedikationAbgabe): Der Wert von assigningAuthorityName MUSS 'e-MedAT' sein. Gefunden: "<value-of select="@assigningAuthorityName"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:code[(@code = '60593-1' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (eMedikationAbgabe)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:code[(@code = '60593-1' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d20e45180-false-d355118e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eMedikationAbgabe): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="@nullFlavor or (@code='60593-1' and @codeSystem='2.16.840.1.113883.6.1' and @displayName='Medication dispensed.extended Document')">(eMedikationAbgabe): Der Elementinhalt MUSS einer von 'code '60593-1' codeSystem '2.16.840.1.113883.6.1' displayName='Medication dispensed.extended Document'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:title[not(@nullFlavor)]
Item: (eMedikationAbgabe)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:title[not(@nullFlavor)]"
         id="d20e45190-false-d355134e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(eMedikationAbgabe): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ST" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="text()='Abgabe'">(eMedikationAbgabe): Der Elementinhalt von 'hl7:title[not(@nullFlavor)]' MUSS ''Abgabe'' sein. Gefunden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90008
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (CDeffectiveTime)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d355135e41-false-d355149e0">
      <extends rule="TS.AT.TZ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90008-2016-07-21T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDeffectiveTime): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90008-2016-07-21T000000.html"
              test="not(*)">(CDeffectiveTime): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90009
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]
Item: (CDconfidentialityCode)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]"
         id="d355150e38-false-d355164e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90009-2013-11-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDconfidentialityCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90009-2013-11-07T000000.html"
              test="@nullFlavor or (@code='N' and @codeSystem='2.16.840.1.113883.5.25' and @displayName='normal')">(CDconfidentialityCode): Der Elementinhalt MUSS einer von 'code 'N' codeSystem '2.16.840.1.113883.5.25' displayName='normal'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90010
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:languageCode[@code = 'de-AT']
Item: (CDlanguageCode)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:languageCode[@code = 'de-AT']"
         id="d355165e33-false-d355182e0">
      <extends rule="CS.LANG"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90010-2013-11-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDlanguageCode): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90010-2013-11-07T000000.html"
              test="@nullFlavor or (@code='de-AT')">(CDlanguageCode): Der Elementinhalt MUSS einer von 'code 'de-AT'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90007
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:setId[not(@nullFlavor)]
Item: (CDsetIdversionNumber)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:setId[not(@nullFlavor)]"
         id="d355183e60-false-d355199e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90007-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDsetIdversionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90007
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:versionNumber[not(@nullFlavor)]
Item: (CDsetIdversionNumber)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:versionNumber[not(@nullFlavor)]"
         id="d355183e88-false-d355209e0">
      <extends rule="INT.NONNEG"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90007-2015-09-18T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDsetIdversionNumber): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:INT" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90007-2015-09-18T000000.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(CDsetIdversionNumber): @value ist keine gültige INT Zahl <value-of select="@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]"
         id="d355210e294-false-d355226e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="string(@typeCode) = ('RCT') or not(@typeCode)">(HeaderRecordTarget): Der Wert von typeCode MUSS 'RCT' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(HeaderRecordTarget): Der Wert von contextControlCode MUSS 'OP' sein. Gefunden: "<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:patientRole) &gt;= 1">(HeaderRecordTarget): Element hl7:patientRole ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:patientRole) &lt;= 1">(HeaderRecordTarget): Element hl7:patientRole kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole"
         id="d355210e317-false-d355255e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="string(@classCode) = ('PAT') or not(@classCode)">(HeaderRecordTarget): Der Wert von classCode MUSS 'PAT' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="string-length(hl7:id[1]/@root)&gt;0">(HeaderRecordTarget):  patientRole id[1] MUSS als lokale Patienten ID vom System vorhanden sein</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="hl7:id[2]/@root = '1.2.40.0.10.1.4.3.1' or hl7:id[2]/@nullFlavor='NI' or hl7:id[2]/@nullFlavor='UNK'">(HeaderRecordTarget):  patientRole id[2] MUSS Sozialversicherungsnummer des Patienten sein (1.2.40.0.10.1.4.3.1) oder @nullFlavor 'NI' oder 'UNK' ist angegeben</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:id) &gt;= 2">(HeaderRecordTarget): Element hl7:id ist required [min 2x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderRecordTarget): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]) &lt;= 1">(HeaderRecordTarget): Element hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:id
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:id"
         id="d355210e346-false-d355294e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr"
         id="d355210e410-false-d355304e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="hl7:streetAddressLine or (hl7:streetName and hl7:houseNumber)">(HeaderRecordTarget): Granularitätsstufen Adresse beachten: streetAddressLine oder streetName+houseNumber</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:streetAddressLine) &lt;= 1">(HeaderRecordTarget): Element hl7:streetAddressLine kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:streetName) &lt;= 1">(HeaderRecordTarget): Element hl7:streetName kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(HeaderRecordTarget): Element hl7:houseNumber kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:postalCode[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:postalCode[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:postalCode[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:postalCode[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:city[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:city[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:city[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:city[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:state) &lt;= 1">(HeaderRecordTarget): Element hl7:state kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:country[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:country[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:country[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:country[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(HeaderRecordTarget): Element hl7:additionalLocator kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:streetAddressLine
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:streetName
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:houseNumber
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:postalCode[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:city[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:state
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:country[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/hl7:additionalLocator
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom"
         id="d355210e442-false-d355433e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d355210e454-false-d355449e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(HeaderRecordTarget): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderRecordTarget): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(HeaderRecordTarget): Element hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(HeaderRecordTarget): Element hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:birthTime) &gt;= 1">(HeaderRecordTarget): Element hl7:birthTime ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:birthTime) &lt;= 1">(HeaderRecordTarget): Element hl7:birthTime kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(HeaderRecordTarget): Element hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(HeaderRecordTarget): Element hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:raceCode) = 0">(HeaderRecordTarget): Element hl7:raceCode DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:ethnicGroupCode) = 0">(HeaderRecordTarget): Element hl7:ethnicGroupCode DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:birthplace[hl7:place]) &lt;= 1">(HeaderRecordTarget): Element hl7:birthplace[hl7:place] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]"
         id="d355210e460-false-d355542e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:given[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:given[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:family[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:family[not(@nullFlavor)] ist mandatory [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:prefix
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:given[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:family[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/hl7:suffix
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d355210e487-false-d355607e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(HeaderRecordTarget): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.4 ELGA_AdministrativeGender (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(HeaderRecordTarget): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.40.0.34.10.4 ELGA_AdministrativeGender (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime"
         id="d355210e504-false-d355629e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="not(*)">(HeaderRecordTarget): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d355210e527-false-d355645e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(HeaderRecordTarget): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.11 ELGA_MaritalStatus (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(HeaderRecordTarget): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.40.0.34.10.11 ELGA_MaritalStatus (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d355210e537-false-d355670e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(HeaderRecordTarget): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.18 ELGA_ReligiousAffiliation (DYNAMIC)' sein.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(HeaderRecordTarget): Der fehlende Wert '<value-of select="@nullFlavor"/>' für @code MUSS gewählt werden aus dem Set gültiger null flavors für dieses Attribut oder denen assoziiert mit Value Set 1.2.40.0.34.10.18 ELGA_ReligiousAffiliation (DYNAMIC).</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:raceCode
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:ethnicGroupCode
Item: (HeaderRecordTarget)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian"
         id="d355210e577-false-d355708e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderRecordTarget): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:guardianPerson | hl7:guardianOrganization)"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="$elmcount &gt;= 1">(HeaderRecordTarget): Auswahl (hl7:guardianPerson  oder  hl7:guardianOrganization) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="$elmcount &lt;= 1">(HeaderRecordTarget): Auswahl (hl7:guardianPerson  oder  hl7:guardianOrganization) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:guardianPerson) &lt;= 1">(HeaderRecordTarget): Element hl7:guardianPerson kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:guardianOrganization) &lt;= 1">(HeaderRecordTarget): Element hl7:guardianOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:addr
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:addr"
         id="d355210e582-false-d355750e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:telecom
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:telecom"
         id="d355210e594-false-d355760e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson"
         id="d355210e610-false-d355770e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson/hl7:name[not(@nullFlavor)]"
         id="d355210e617-false-d355786e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization"
         id="d355210e626-false-d355796e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization/hl7:name[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization/hl7:name[not(@nullFlavor)]"
         id="d355210e633-false-d355812e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]"
         id="d355210e642-false-d355822e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:place[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:place[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:place[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:place[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]"
         id="d355210e649-false-d355838e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:addr[not(@nullFlavor)]) &gt;= 1">(HeaderRecordTarget): Element hl7:addr[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="count(hl7:addr[not(@nullFlavor)]) &lt;= 1">(HeaderRecordTarget): Element hl7:addr[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]
Item: (HeaderRecordTarget)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]"
         id="d355210e651-false-d355854e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRecordTarget): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90017
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication"
         id="d355855e47-false-d355865e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="count(hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]) &lt;= 1">(LanguageCommunication): Element hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="count(hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(LanguageCommunication): Element hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="count(hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(LanguageCommunication): Element hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="count(hl7:preferenceInd) &lt;= 1">(LanguageCommunication): Element hl7:preferenceInd kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90017
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]"
         id="d355855e55-false-d355909e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LanguageCommunication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/concept[@code = $theCode] or completeCodeSystem)">(LanguageCommunication): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.173 ELGA_HumanLanguage (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90017
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d355855e65-false-d355932e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LanguageCommunication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(LanguageCommunication): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.175 ELGA_LanguageAbilityMode (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90017
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d355855e83-false-d355955e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LanguageCommunication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(LanguageCommunication): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.174 ELGA_ProficiencyLevelCode (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90017
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:preferenceInd
Item: (LanguageCommunication)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/hl7:preferenceInd"
         id="d355855e104-false-d355975e0">
      <extends rule="BL"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LanguageCommunication): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:BL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]"
         id="d355976e217-false-d355989e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="string(@typeCode) = ('AUT') or not(@typeCode)">(HeaderAuthor): Der Wert von typeCode MUSS 'AUT' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(HeaderAuthor): Der Wert von contextControlCode MUSS 'OP' sein. Gefunden: "<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:functionCode) &lt;= 1">(HeaderAuthor): Element hl7:functionCode kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:time) &gt;= 1">(HeaderAuthor): Element hl7:time ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:time) &lt;= 1">(HeaderAuthor): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:assignedAuthor[hl7:representedOrganization]) &gt;= 1">(HeaderAuthor): Element hl7:assignedAuthor[hl7:representedOrganization] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:assignedAuthor[hl7:representedOrganization]) &lt;= 1">(HeaderAuthor): Element hl7:assignedAuthor[hl7:representedOrganization] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:functionCode
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:functionCode"
         id="d355976e228-false-d356030e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:time
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:time"
         id="d355976e248-false-d356040e0">
      <extends rule="TS.AT.TZ"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="not(*)">(HeaderAuthor): <value-of select="local-name()"/> with datatype TS.AT.TZ, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]"
         id="d355976e292-false-d356056e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(HeaderAuthor): Der Wert von classCode MUSS 'ASSIGNED' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:id) &gt;= 1">(HeaderAuthor): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(HeaderAuthor): Element hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] kommt zu häufig vor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:assignedPerson | hl7:assignedAuthoringDevice)"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="$elmcount &gt;= 1">(HeaderAuthor): Auswahl (hl7:assignedPerson  oder  hl7:assignedAuthoringDevice) enthält nicht genügend Elemente [min 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="$elmcount &lt;= 1">(HeaderAuthor): Auswahl (hl7:assignedPerson  oder  hl7:assignedAuthoringDevice) enthält zu viele Elemente [max 1x]</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:assignedPerson) &lt;= 1">(HeaderAuthor): Element hl7:assignedPerson kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:assignedAuthoringDevice) &lt;= 1">(HeaderAuthor): Element hl7:assignedAuthoringDevice kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:representedOrganization[not(@nullFlavor)]) &gt;= 1">(HeaderAuthor): Element hl7:representedOrganization[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:representedOrganization[not(@nullFlavor)]) &lt;= 1">(HeaderAuthor): Element hl7:representedOrganization[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:id
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:id"
         id="d355976e314-false-d356123e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d355976e404-false-d356136e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CE" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="@nullFlavor or exists(doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(HeaderAuthor): Der Elementinhalt MUSS einer von '1.2.40.0.34.10.6 ELGA_AuthorSpeciality (DYNAMIC)' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:telecom
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:telecom"
         id="d355976e434-false-d356156e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson"
         id="d355976e448-false-d356169e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(HeaderAuthor): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderAuthor): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderAuthor): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderAuthor): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson/hl7:name[not(@nullFlavor)]"
         id="d356166e53-false-d356199e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice"
         id="d355976e462-false-d356209e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="string(@classCode) = ('DEV') or not(@classCode)">(HeaderAuthor): Der Wert von classCode MUSS 'DEV' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderAuthor): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:manufacturerModelName) &gt;= 1">(HeaderAuthor): Element hl7:manufacturerModelName ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:manufacturerModelName) &lt;= 1">(HeaderAuthor): Element hl7:manufacturerModelName kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:softwareName) &gt;= 1">(HeaderAuthor): Element hl7:softwareName ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:softwareName) &lt;= 1">(HeaderAuthor): Element hl7:softwareName kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:manufacturerModelName
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:manufacturerModelName"
         id="d355976e468-false-d356241e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:softwareName
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/hl7:softwareName"
         id="d355976e479-false-d356251e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:SC" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]"
         id="d355976e492-false-d356261e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(HeaderAuthor): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderAuthor): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderAuthor): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderAuthor): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
         id="d355976e515-false-d356293e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d355976e567-false-d356303e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:telecom
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:telecom"
         id="d355976e569-false-d356313e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr
Item: (HeaderAuthor)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/hl7:addr"
         id="d355976e572-false-d356323e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderAuthor): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:custodian[hl7:assignedCustodian]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:custodian[hl7:assignedCustodian]"
         id="d356324e113-false-d356334e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="string(@typeCode) = ('CST') or not(@typeCode)">(HeaderCustodian): Der Wert von typeCode MUSS 'CST' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]) &gt;= 1">(HeaderCustodian): Element hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]) &lt;= 1">(HeaderCustodian): Element hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]"
         id="d356324e125-false-d356354e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(HeaderCustodian): Der Wert von classCode MUSS 'ASSIGNED' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]) &gt;= 1">(HeaderCustodian): Element hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]) &lt;= 1">(HeaderCustodian): Element hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]"
         id="d356324e129-false-d356374e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(HeaderCustodian): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(HeaderCustodian): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:id) &gt;= 1">(HeaderCustodian): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:id) &lt;= 1">(HeaderCustodian): Element hl7:id kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(HeaderCustodian): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(HeaderCustodian): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:telecom) &lt;= 1">(HeaderCustodian): Element hl7:telecom kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:addr[not(@nullFlavor)]) &gt;= 1">(HeaderCustodian): Element hl7:addr[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="count(hl7:addr[not(@nullFlavor)]) &lt;= 1">(HeaderCustodian): Element hl7:addr[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:id
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:id"
         id="d356324e135-false-d356420e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderCustodian): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:name[not(@nullFlavor)]
Item: (HeaderCustodian)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:telecom
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:telecom"
         id="d356324e190-false-d356438e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderCustodian): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20004
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:addr[not(@nullFlavor)]
Item: (HeaderCustodian)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/hl7:addr[not(@nullFlavor)]"
         id="d356324e199-false-d356448e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderCustodian): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:dataEnterer
Item: (eMedikationAbgabe)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:informationRecipient
Item: (eMedikationAbgabe)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:authenticator
Item: (eMedikationAbgabe)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20006
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]"
         id="d356476e120-false-d356491e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="string(@typeCode) = ('LA') or not(@typeCode)">(HeaderLegalAuthenticator): Der Wert von typeCode MUSS 'LA' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:time) &gt;= 1">(HeaderLegalAuthenticator): Element hl7:time ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:time) &lt;= 1">(HeaderLegalAuthenticator): Element hl7:time kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:signatureCode[@code = 'S']) &gt;= 1">(HeaderLegalAuthenticator): Element hl7:signatureCode[@code = 'S'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:signatureCode[@code = 'S']) &lt;= 1">(HeaderLegalAuthenticator): Element hl7:signatureCode[@code = 'S'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &gt;= 1">(HeaderLegalAuthenticator): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]) &lt;= 1">(HeaderLegalAuthenticator): Element hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20006
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:time
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:time"
         id="d356476e129-false-d356535e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderLegalAuthenticator): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="not(*)">(HeaderLegalAuthenticator): <value-of select="local-name()"/> with datatype TS.DATE.MIN, SHOULD NOT have child elements.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20006
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:signatureCode[@code = 'S']
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:signatureCode[@code = 'S']"
         id="d356476e152-false-d356549e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderLegalAuthenticator): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="@nullFlavor or (@code='S')">(HeaderLegalAuthenticator): Der Elementinhalt MUSS einer von 'code 'S'' sein.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20006
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]
Item: (HeaderLegalAuthenticator)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]"
         id="d356476e162-false-d356572e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:id) &gt;= 1">(HeaderLegalAuthenticator): Element hl7:id ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:addr) &lt;= 1">(HeaderLegalAuthenticator): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &gt;= 1">(HeaderLegalAuthenticator): Element hl7:assignedPerson[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:assignedPerson[not(@nullFlavor)]) &lt;= 1">(HeaderLegalAuthenticator): Element hl7:assignedPerson[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(HeaderLegalAuthenticator): Element hl7:representedOrganization kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:id"
         id="d356609e22-false-d356617e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:addr"
         id="d356609e37-false-d356627e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:telecom"
         id="d356609e53-false-d356637e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AssignedEntityElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]"
         id="d356609e68-false-d356650e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(AssignedEntityElements): Der Wert von classCode MUSS 'PSN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(AssignedEntityElements): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(AssignedEntityElements): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(AssignedEntityElements): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90001
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]
Item: (PersonElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
         id="d356647e53-false-d356680e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90001-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PersonElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:PN" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90003
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization
Item: (AssignedEntityElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization"
         id="d356609e78-false-d356693e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(AssignedEntityElements): Der Wert von classCode MUSS 'ORG' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(AssignedEntityElements): Der Wert von determinerCode MUSS 'INSTANCE' sein. Gefunden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(AssignedEntityElements): Element hl7:name[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(AssignedEntityElements): Element hl7:name[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="count(hl7:addr) &lt;= 1">(AssignedEntityElements): Element hl7:addr kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:id"
         id="d356690e38-false-d356734e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:name[not(@nullFlavor)]"
         id="d356690e40-false-d356744e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:ON" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:telecom"
         id="d356690e43-false-d356754e0">
      <extends rule="TEL.AT"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:TEL" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.90002
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr
Item: (OrganizationElements)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/hl7:addr"
         id="d356690e45-false-d356764e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90002-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(OrganizationElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:AD" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:participants
Item: (eMedikationAbgabe)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:inFulfillmentOf
Item: (eMedikationAbgabe)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:documentationOf
Item: (eMedikationAbgabe)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.20011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]
Item: (HeaderRelatedDocument)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]"
         id="d356792e24-false-d356799e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="string(@typeCode) = ('RPLC')">(HeaderRelatedDocument): Der Wert von typeCode MUSS 'RPLC' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="count(hl7:parentDocument[not(@nullFlavor)]) &gt;= 1">(HeaderRelatedDocument): Element hl7:parentDocument[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="count(hl7:parentDocument[not(@nullFlavor)]) &lt;= 1">(HeaderRelatedDocument): Element hl7:parentDocument[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]
Item: (HeaderRelatedDocument)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]"
         id="d356792e39-false-d356819e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="string(@classCode) = ('DOCCLIN') or not(@classCode)">(HeaderRelatedDocument): Der Wert von classCode MUSS 'DOCCLIN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(HeaderRelatedDocument): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(HeaderRelatedDocument): Element hl7:id[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(HeaderRelatedDocument): Element hl7:id[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.20011
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (HeaderRelatedDocument)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
         id="d356792e50-false-d356843e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeaderRelatedDocument): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:authorization
Item: (eMedikationAbgabe)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:componentOf
Item: (eMedikationAbgabe)
-->

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:component
Item: (eMedikationAbgabe)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:component"
         id="d20e45236-false-d356896e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(eMedikationAbgabe): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(eMedikationAbgabe): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:component/hl7:structuredBody[hl7:component]
Item: (eMedikationAbgabe)
-->

   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:component/hl7:structuredBody[hl7:component]"
         id="d20e45242-false-d356968e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="string(@classCode) = ('DOCBODY') or not(@classCode)">(eMedikationAbgabe): Der Wert von classCode MUSS 'DOCBODY' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(eMedikationAbgabe): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]) &gt;= 1">(eMedikationAbgabe): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]] ist required [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="count(hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]) &lt;= 1">(eMedikationAbgabe): Element hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]] kommt zu häufig vor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 1.2.40.0.34.11.8.2
Context: *[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]
Item: (eMedikationAbgabe)
-->
   <rule context="*[hl7:templateId[@root = '1.2.40.0.34.11.8.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] and hl7:templateId[@root = '1.2.40.0.34.11.8.0.3']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.8.2.2.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.2.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.8']]]">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(eMedikationAbgabe): Der Wert von typeCode MUSS 'COMP' sein. Gefunden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.8.2-2014-01-31T000000.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(eMedikationAbgabe): Der Wert von contextConductionInd MUSS 'true' sein. Gefunden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
