<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.10006
Name: ELGA CDA Dokument eMedikation Abgabe
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.10006-2013-12-16T000000">
   <title>ELGA CDA Dokument eMedikation Abgabe</title>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.10006
Context: hl7:ClinicalDocument
Item: (CDAAbgabe)
-->

   <rule context="hl7:ClinicalDocument" id="d20e7515-false-d110875e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="string(@classCode) = ('DOCCLIN') or not(@classCode)">(CDAAbgabe): Der Wert von classCode MUSS 'DOCCLIN' sein. Gefunden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(CDAAbgabe): Der Wert von moodCode MUSS 'EVN' sein. Gefunden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="matches(//processing-instruction('xml-stylesheet'), '[^\w]ELGA_Stylesheet_v1.0.xsl[^\w]')">(CDAAbgabe): (xml-processing-instr): Es muss ein xml-stylesheet-Prologattribut anwesend sein mit dem Wert für @href=ELGA_Stylesheet_v1.0.xsl .</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:realmCode[not(@nullFlavor)]) &gt;= 1">(CDAAbgabe): Element hl7:realmCode[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:realmCode[not(@nullFlavor)]) &lt;= 1">(CDAAbgabe): Element hl7:realmCode[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &gt;= 1">(CDAAbgabe): Element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &lt;= 1">(CDAAbgabe): Element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1']) &gt;= 1">(CDAAbgabe): Element hl7:templateId[@root = '1.2.40.0.34.11.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.1']) &lt;= 1">(CDAAbgabe): Element hl7:templateId[@root = '1.2.40.0.34.11.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.1.2']) &gt;= 1">(CDAAbgabe): Element hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.1.2'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.1.2']) &lt;= 1">(CDAAbgabe): Element hl7:templateId[@root = '1.2.40.0.10.1.4.3.4.1.1.2'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3']) &gt;= 1">(CDAAbgabe): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3']) &lt;= 1">(CDAAbgabe): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.9.1.1.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1']) &gt;= 1">(CDAAbgabe): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1']) &lt;= 1">(CDAAbgabe): Element hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.0.3']) &gt;= 1">(CDAAbgabe): Element hl7:templateId[@root = '1.2.40.0.34.11.2.0.3'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:templateId[@root = '1.2.40.0.34.11.2.0.3']) &lt;= 1">(CDAAbgabe): Element hl7:templateId[@root = '1.2.40.0.34.11.2.0.3'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.1']) &gt;= 1">(CDAAbgabe): Element hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.1'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.1']) &lt;= 1">(CDAAbgabe): Element hl7:id[@root = '1.2.40.0.10.1.4.3.4.2.1'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:code[(@code = '60593-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(CDAAbgabe): Element hl7:code[(@code = '60593-1' and @codeSystem = '2.16.840.1.113883.6.1')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:code[(@code = '60593-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(CDAAbgabe): Element hl7:code[(@code = '60593-1' and @codeSystem = '2.16.840.1.113883.6.1')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &gt;= 1">(CDAAbgabe): Element hl7:title[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:title[not(@nullFlavor)]) &lt;= 1">(CDAAbgabe): Element hl7:title[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(CDAAbgabe): Element hl7:effectiveTime[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(CDAAbgabe): Element hl7:effectiveTime[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]) &gt;= 1">(CDAAbgabe): Element hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')]) &lt;= 1">(CDAAbgabe): Element hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:languageCode[@code = 'de-AT']) &gt;= 1">(CDAAbgabe): Element hl7:languageCode[@code = 'de-AT'] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:languageCode[@code = 'de-AT']) &lt;= 1">(CDAAbgabe): Element hl7:languageCode[@code = 'de-AT'] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:setId[not(@nullFlavor)]) &gt;= 1">(CDAAbgabe): Element hl7:setId[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:setId[not(@nullFlavor)]) &lt;= 1">(CDAAbgabe): Element hl7:setId[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:versionNumber[not(@nullFlavor)]) &gt;= 1">(CDAAbgabe): Element hl7:versionNumber[not(@nullFlavor)] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:versionNumber[not(@nullFlavor)]) &lt;= 1">(CDAAbgabe): Element hl7:versionNumber[not(@nullFlavor)] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &gt;= 1">(CDAAbgabe): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][hl7:patientRole]) &lt;= 1">(CDAAbgabe): Element hl7:recordTarget[not(@nullFlavor)][hl7:patientRole] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:author[not(@nullFlavor)][hl7:assignedAuthor]) &gt;= 1">(CDAAbgabe): Element hl7:author[not(@nullFlavor)][hl7:assignedAuthor] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &gt;= 1">(CDAAbgabe): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian]) &lt;= 1">(CDAAbgabe): Element hl7:custodian[not(@nullFlavor)][hl7:assignedCustodian] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:dataEnterer) = 0">(CDAAbgabe): Element hl7:dataEnterer DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:informationRecipient) = 0">(CDAAbgabe): Element hl7:informationRecipient DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:authenticator) = 0">(CDAAbgabe): Element hl7:authenticator DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]) &gt;= 1">(CDAAbgabe): Element hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] ist mandatory [min 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]) &lt;= 1">(CDAAbgabe): Element hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] kommt zu häufig vor [max 1x].</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:participants) = 0">(CDAAbgabe): Element hl7:participants DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:relatedDocument) = 0">(CDAAbgabe): Element hl7:relatedDocument DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:inFulfillmentOf) = 0">(CDAAbgabe): Element hl7:inFulfillmentOf DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:documentationOf) = 0">(CDAAbgabe): Element hl7:documentationOf DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:authorization) = 0">(CDAAbgabe): Element hl7:authorization DARF NICHT vorkommen.</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10006-2013-12-16T000000.html"
              test="count(hl7:componentOf) = 0">(CDAAbgabe): Element hl7:componentOf DARF NICHT vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.10000
Context: hl7:ClinicalDocument/hl7:realmCode[not(@nullFlavor)]
Item: (FirstCDAHeaderElements)
-->

   <rule context="hl7:ClinicalDocument/hl7:realmCode[not(@nullFlavor)]"
         id="d110886e142-false-d111150e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(FirstCDAHeaderElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:CS" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="@code">(FirstCDAHeaderElements): Attribut @code MUSS vorkommen.</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.10000
Context: hl7:ClinicalDocument/hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']
Item: (FirstCDAHeaderElements)
-->

   <rule context="hl7:ClinicalDocument/hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']"
         id="d110886e160-false-d111165e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(FirstCDAHeaderElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="string(@root) = ('2.16.840.1.113883.1.3')">(FirstCDAHeaderElements): Der Wert von root MUSS '2.16.840.1.113883.1.3' sein. Gefunden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="string(@extension) = ('POCD_HD000040')">(FirstCDAHeaderElements): Der Wert von extension MUSS 'POCD_HD000040' sein. Gefunden: "<value-of select="@extension"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(FirstCDAHeaderElements): Attribute @extension MUSS vom Datentyp 'st' sein  - '<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 1.2.40.0.34.11.10000
Context: hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.11.1']
Item: (FirstCDAHeaderElements)
-->

   <rule context="hl7:ClinicalDocument/hl7:templateId[@root = '1.2.40.0.34.11.1']"
         id="d110886e177-false-d111187e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(FirstCDAHeaderElements): Wenn eine @xsi:type Instruktion anwesend ist MUSS diese den Wert "{urn:hl7-org:v3}:II" haben. Gefunden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10000-2011-12-19T000000.html"
              test="string(@root) = ('1.2.40.0.34.11.1')">(FirstCDAHeaderElements): Der Wert von root MUSS '1.2.40.0.34.11.1' sein. Gefunden: "<value-of select="@root"/>"</assert>
   </rule>
</pattern>
