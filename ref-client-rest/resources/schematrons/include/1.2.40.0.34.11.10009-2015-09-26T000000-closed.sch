<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.10009
Name: ELGA CDA Dokument Pflegesituationsberichts
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.10009-2015-09-26T000000-closed">
   <title>ELGA CDA Dokument Pflegesituationsberichts</title>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/*[not(@xsi:nil = 'true')][not(self::hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']])]"
         id="d20e7634-true-d128336e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="not(.)">(Pflegesituationsberichtdocument)/d20e7634-true-d128336e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']] (rule-reference: d20e7634-true-d128336e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/*[not(@xsi:nil = 'true')][not(self::hl7:realmCode[not(@nullFlavor)] | self::hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] | self::hl7:templateId[@root = '1.2.40.0.34.11.1'] | self::hl7:templateId[@root = '1.2.40.0.34.11.12'] | self::hl7:templateId[@root = '1.2.40.0.34.11.12.0.1'] | self::hl7:templateId[@root = '1.2.40.0.34.11.12.0.2'] | self::hl7:templateId[@root = '1.2.40.0.34.11.12.0.3'] | self::hl7:id[not(@nullFlavor)] | self::hl7:code[(@code = '28651-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:effectiveTime[not(@nullFlavor)] | self::hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] | self::hl7:languageCode[@code = 'de-AT'] | self::hl7:setId[not(@nullFlavor)] | self::hl7:versionNumber[not(@nullFlavor)] | self::hl7:recordTarget[hl7:patientRole] | self::hl7:author[hl7:assignedAuthor] | self::hl7:dataEnterer[hl7:assignedEntity] | self::hl7:custodian[hl7:assignedCustodian] | self::hl7:informationRecipient[hl7:intendedRecipient] | self::hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] | self::hl7:authenticator[hl7:signatureCode[@code = 'S']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']] | self::hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLPUB' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]] | self::hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument] | self::hl7:authorization | self::hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]] | self::hl7:component)]"
         id="d20e7642-true-d128899e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10009-2015-09-26T000000.html"
              test="not(.)">(Pflegesituationsberichtdocument)/d20e7642-true-d128899e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:realmCode[not(@nullFlavor)] | hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] | hl7:templateId[@root = '1.2.40.0.34.11.1'] | hl7:templateId[@root = '1.2.40.0.34.11.12'] | hl7:templateId[@root = '1.2.40.0.34.11.12.0.1'] | hl7:templateId[@root = '1.2.40.0.34.11.12.0.2'] | hl7:templateId[@root = '1.2.40.0.34.11.12.0.3'] | hl7:id[not(@nullFlavor)] | hl7:code[(@code = '28651-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:effectiveTime[not(@nullFlavor)] | hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] | hl7:languageCode[@code = 'de-AT'] | hl7:setId[not(@nullFlavor)] | hl7:versionNumber[not(@nullFlavor)] | hl7:recordTarget[hl7:patientRole] | hl7:author[hl7:assignedAuthor] | hl7:dataEnterer[hl7:assignedEntity] | hl7:custodian[hl7:assignedCustodian] | hl7:informationRecipient[hl7:intendedRecipient] | hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] | hl7:authenticator[hl7:signatureCode[@code = 'S']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']] | hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLPUB' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]] | hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument] | hl7:authorization | hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]] | hl7:component (rule-reference: d20e7642-true-d128899e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:recordTarget[hl7:patientRole]/*[not(@xsi:nil = 'true')][not(self::hl7:patientRole)]"
         id="d129023e4-true-d129043e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d129023e4-true-d129043e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:patientRole (rule-reference: d129023e4-true-d129043e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d129023e23-true-d129086e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d129023e23-true-d129086e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d129023e23-true-d129086e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetAddressLine | self::hl7:streetName | self::hl7:houseNumber | self::hl7:postalCode | self::hl7:city | self::hl7:state | self::hl7:country | self::hl7:additionalLocator)]"
         id="d129023e70-true-d129140e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d129023e70-true-d129140e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:streetAddressLine | hl7:streetName | hl7:houseNumber | hl7:postalCode | hl7:city | hl7:state | hl7:country | hl7:additionalLocator (rule-reference: d129023e70-true-d129140e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)] | self::hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:birthTime | self::hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:raceCode | self::hl7:ethnicGroupCode | self::hl7:guardian | self::hl7:birthplace[hl7:place] | self::hl7:languageCommunication)]"
         id="d129023e150-true-d129267e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d129023e150-true-d129267e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] | hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | hl7:birthTime | hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | hl7:raceCode | hl7:ethnicGroupCode | hl7:guardian | hl7:birthplace[hl7:place] | hl7:languageCommunication (rule-reference: d129023e150-true-d129267e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:prefix | self::hl7:given[not(@nullFlavor)] | self::hl7:family[not(@nullFlavor)] | self::hl7:suffix)]"
         id="d129023e173-true-d129296e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d129023e173-true-d129296e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:prefix | hl7:given[not(@nullFlavor)] | hl7:family[not(@nullFlavor)] | hl7:suffix (rule-reference: d129023e173-true-d129296e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/*[not(@xsi:nil = 'true')][not(self::hl7:addr | self::hl7:telecom | self::hl7:guardianPerson | self::hl7:guardianOrganization)]"
         id="d129023e263-true-d129378e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d129023e263-true-d129378e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:addr | hl7:telecom | hl7:guardianPerson | hl7:guardianOrganization (rule-reference: d129023e263-true-d129378e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d129023e316-true-d129402e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d129023e316-true-d129402e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d129023e316-true-d129402e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d129023e321-true-d129421e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d129023e321-true-d129421e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d129023e321-true-d129421e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/*[not(@xsi:nil = 'true')][not(self::hl7:place[not(@nullFlavor)])]"
         id="d129023e330-true-d129440e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d129023e330-true-d129440e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:place[not(@nullFlavor)] (rule-reference: d129023e330-true-d129440e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:addr[not(@nullFlavor)])]"
         id="d129023e346-true-d129454e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d129023e346-true-d129454e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:addr[not(@nullFlavor)] (rule-reference: d129023e346-true-d129454e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/*[not(@xsi:nil = 'true')][not(self::hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor] | self::hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:preferenceInd)]"
         id="d129463e36-true-d129508e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="not(.)">(LanguageCommunication)/d129463e36-true-d129508e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor] | hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:preferenceInd (rule-reference: d129463e36-true-d129508e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:author[hl7:assignedAuthor]/*[not(@xsi:nil = 'true')][not(self::hl7:functionCode | self::hl7:time | self::hl7:assignedAuthor[hl7:representedOrganization])]"
         id="d129543e206-true-d129574e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="not(.)">(HeaderAuthor)/d129543e206-true-d129574e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:functionCode | hl7:time | hl7:assignedAuthor[hl7:representedOrganization] (rule-reference: d129543e206-true-d129574e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:assignedPerson | self::hl7:assignedAuthoringDevice | self::hl7:representedOrganization[not(@nullFlavor)])]"
         id="d129543e281-true-d129628e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="not(.)">(HeaderAuthor)/d129543e281-true-d129628e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:telecom | hl7:assignedPerson | hl7:assignedAuthoringDevice | hl7:representedOrganization[not(@nullFlavor)] (rule-reference: d129543e281-true-d129628e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d129543e437-true-d129661e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="not(.)">(HeaderAuthor)/d129543e437-true-d129661e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d129543e437-true-d129661e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturerModelName | self::hl7:softwareName)]"
         id="d129543e451-true-d129687e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="not(.)">(HeaderAuthor)/d129543e451-true-d129687e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:manufacturerModelName | hl7:softwareName (rule-reference: d129543e451-true-d129687e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)] | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d129543e481-true-d129726e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="not(.)">(HeaderAuthor)/d129543e481-true-d129726e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id[not(@nullFlavor)] | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d129543e481-true-d129726e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:dataEnterer[hl7:assignedEntity]/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:assignedEntity[hl7:assignedPerson])]"
         id="d129752e50-true-d129790e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20003-2013-02-10T000000.html"
              test="not(.)">(HeaderDataEnterer)/d129752e50-true-d129790e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:time | hl7:assignedEntity[hl7:assignedPerson] (rule-reference: d129752e50-true-d129790e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:assignedPerson[not(@nullFlavor)] | self::hl7:representedOrganization)]"
         id="d129752e72-true-d129828e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20003-2013-02-10T000000.html"
              test="not(.)">(HeaderDataEnterer)/d129752e72-true-d129828e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:assignedPerson[not(@nullFlavor)] | hl7:representedOrganization (rule-reference: d129752e72-true-d129828e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d129832e54-true-d129860e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d129832e54-true-d129860e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d129832e54-true-d129860e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d129832e64-true-d129888e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d129832e64-true-d129888e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d129832e64-true-d129888e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:custodian[hl7:assignedCustodian]/*[not(@xsi:nil = 'true')][not(self::hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization])]"
         id="d129916e102-true-d129928e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="not(.)">(HeaderCustodian)/d129916e102-true-d129928e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization] (rule-reference: d129916e102-true-d129928e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name])]"
         id="d129916e114-true-d129942e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="not(.)">(HeaderCustodian)/d129916e114-true-d129942e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name] (rule-reference: d129916e114-true-d129942e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr[not(@nullFlavor)])]"
         id="d129916e118-true-d129971e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="not(.)">(HeaderCustodian)/d129916e118-true-d129971e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr[not(@nullFlavor)] (rule-reference: d129916e118-true-d129971e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:informationRecipient[hl7:intendedRecipient]/*[not(@xsi:nil = 'true')][not(self::hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient])]"
         id="d129997e133-true-d130024e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="not(.)">(HeaderInformationRecipient)/d129997e133-true-d130024e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient] (rule-reference: d129997e133-true-d130024e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:informationRecipient[not(@nullFlavor)] | self::hl7:receivedOrganization)]"
         id="d129997e166-true-d130062e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="not(.)">(HeaderInformationRecipient)/d129997e166-true-d130062e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:informationRecipient[not(@nullFlavor)] | hl7:receivedOrganization (rule-reference: d129997e166-true-d130062e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:informationRecipient[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d129997e235-true-d130082e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="not(.)">(HeaderInformationRecipient)/d129997e235-true-d130082e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d129997e235-true-d130082e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d129997e259-true-d130110e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="not(.)">(HeaderInformationRecipient)/d129997e259-true-d130110e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d129997e259-true-d130110e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:signatureCode[@code = 'S'] | self::hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson])]"
         id="d130138e116-true-d130184e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="not(.)">(HeaderLegalAuthenticator)/d130138e116-true-d130184e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:time | hl7:signatureCode[@code = 'S'] | hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] (rule-reference: d130138e116-true-d130184e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:assignedPerson[not(@nullFlavor)] | self::hl7:representedOrganization)]"
         id="d130138e158-true-d130228e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="not(.)">(HeaderLegalAuthenticator)/d130138e158-true-d130228e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:assignedPerson[not(@nullFlavor)] | hl7:representedOrganization (rule-reference: d130138e158-true-d130228e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d130232e54-true-d130260e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d130232e54-true-d130260e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d130232e54-true-d130260e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d130232e64-true-d130288e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d130232e64-true-d130288e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d130232e64-true-d130288e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:signatureCode[@code = 'S'] | self::hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson])]"
         id="d130316e156-true-d130362e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="not(.)">(HeaderAuthenticator)/d130316e156-true-d130362e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:time | hl7:signatureCode[@code = 'S'] | hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] (rule-reference: d130316e156-true-d130362e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:assignedPerson[not(@nullFlavor)] | self::hl7:representedOrganization)]"
         id="d130316e191-true-d130406e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="not(.)">(HeaderAuthenticator)/d130316e191-true-d130406e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:assignedPerson[not(@nullFlavor)] | hl7:representedOrganization (rule-reference: d130316e191-true-d130406e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d130410e54-true-d130438e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d130410e54-true-d130438e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d130410e54-true-d130438e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d130410e64-true-d130466e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d130410e64-true-d130466e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d130410e64-true-d130466e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.1'] | self::hl7:time | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson])]"
         id="d130494e107-true-d130526e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="not(.)">(HeaderParticipantAnsprechpartner)/d130494e107-true-d130526e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.1'] | hl7:time | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] (rule-reference: d130494e107-true-d130526e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:addr | self::hl7:telecom[not(@nullFlavor)] | self::hl7:associatedPerson[not(@nullFlavor)] | self::hl7:scopingOrganization)]"
         id="d130494e126-true-d130580e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="not(.)">(HeaderParticipantAnsprechpartner)/d130494e126-true-d130580e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:addr | hl7:telecom[not(@nullFlavor)] | hl7:associatedPerson[not(@nullFlavor)] | hl7:scopingOrganization (rule-reference: d130494e126-true-d130580e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d130494e174-true-d130605e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="not(.)">(HeaderParticipantAnsprechpartner)/d130494e174-true-d130605e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d130494e174-true-d130605e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d130494e188-true-d130633e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="not(.)">(HeaderParticipantAnsprechpartner)/d130494e188-true-d130633e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d130494e188-true-d130633e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.2'] | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson])]"
         id="d130661e83-true-d130688e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantRefArzt)/d130661e83-true-d130688e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.2'] | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] (rule-reference: d130661e83-true-d130688e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:associatedPerson | self::hl7:scopingOrganization)]"
         id="d130661e119-true-d130742e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantRefArzt)/d130661e119-true-d130742e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:associatedPerson | hl7:scopingOrganization (rule-reference: d130661e119-true-d130742e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d130661e212-true-d130772e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantRefArzt)/d130661e212-true-d130772e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d130661e212-true-d130772e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d130661e226-true-d130800e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantRefArzt)/d130661e226-true-d130800e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d130661e226-true-d130800e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.3'] | self::hl7:functionCode[(@code = 'PCP' and @codeSystem = '2.16.840.1.113883.5.88')] | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson])]"
         id="d130828e87-true-d130862e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantHausarzt)/d130828e87-true-d130862e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.3'] | hl7:functionCode[(@code = 'PCP' and @codeSystem = '2.16.840.1.113883.5.88')] | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] (rule-reference: d130828e87-true-d130862e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:associatedPerson[not(@nullFlavor)] | self::hl7:scopingOrganization)]"
         id="d130828e123-true-d130922e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantHausarzt)/d130828e123-true-d130922e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:associatedPerson[not(@nullFlavor)] | hl7:scopingOrganization (rule-reference: d130828e123-true-d130922e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d130828e222-true-d130952e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantHausarzt)/d130828e222-true-d130952e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d130828e222-true-d130952e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d130828e241-true-d130980e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantHausarzt)/d130828e241-true-d130980e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d130828e241-true-d130980e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.4'] | self::hl7:time | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson])]"
         id="d131008e55-true-d131040e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="not(.)">(HeaderParticipantNotfallkontakt)/d131008e55-true-d131040e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.4'] | hl7:time | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson] (rule-reference: d131008e55-true-d131040e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom | self::hl7:associatedPerson[not(@nullFlavor)] | self::hl7:scopingOrganization)]"
         id="d131008e106-true-d131105e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="not(.)">(HeaderParticipantNotfallkontakt)/d131008e106-true-d131105e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom | hl7:associatedPerson[not(@nullFlavor)] | hl7:scopingOrganization (rule-reference: d131008e106-true-d131105e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d131008e188-true-d131138e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="not(.)">(HeaderParticipantNotfallkontakt)/d131008e188-true-d131138e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d131008e188-true-d131138e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d131008e207-true-d131166e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="not(.)">(HeaderParticipantNotfallkontakt)/d131008e207-true-d131166e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d131008e207-true-d131166e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.5'] | self::hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]])]"
         id="d131194e39-true-d131227e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="not(.)">(HeaderParticipantAngehoerige)/d131194e39-true-d131227e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.5'] | hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] (rule-reference: d131194e39-true-d131227e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | self::hl7:addr | self::hl7:telecom | self::hl7:associatedPerson[not(@nullFlavor)] | self::hl7:scopingOrganization)]"
         id="d131194e56-true-d131290e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="not(.)">(HeaderParticipantAngehoerige)/d131194e56-true-d131290e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | hl7:addr | hl7:telecom | hl7:associatedPerson[not(@nullFlavor)] | hl7:scopingOrganization (rule-reference: d131194e56-true-d131290e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:associatedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d131194e127-true-d131323e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="not(.)">(HeaderParticipantAngehoerige)/d131194e127-true-d131323e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d131194e127-true-d131323e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d131194e139-true-d131351e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="not(.)">(HeaderParticipantAngehoerige)/d131194e139-true-d131351e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d131194e139-true-d131351e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.6'] | self::hl7:time | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization])]"
         id="d131379e170-true-d131411e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="not(.)">(HeaderParticipantVersicherung)/d131379e170-true-d131411e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.6'] | hl7:time | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization] (rule-reference: d131379e170-true-d131411e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom | self::hl7:associatedPerson | self::hl7:scopingOrganization)]"
         id="d131379e204-true-d131481e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="not(.)">(HeaderParticipantVersicherung)/d131379e204-true-d131481e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom | hl7:associatedPerson | hl7:scopingOrganization (rule-reference: d131379e204-true-d131481e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d131379e338-true-d131519e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="not(.)">(HeaderParticipantVersicherung)/d131379e338-true-d131519e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d131379e338-true-d131519e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d131379e355-true-d131547e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="not(.)">(HeaderParticipantVersicherung)/d131379e355-true-d131547e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d131379e355-true-d131547e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.7'] | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization])]"
         id="d131575e70-true-d131598e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantBetreuorg)/d131575e70-true-d131598e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.7'] | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization] (rule-reference: d131575e70-true-d131598e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:scopingOrganization[not(@nullFlavor)])]"
         id="d131575e87-true-d131626e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantBetreuorg)/d131575e87-true-d131626e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:scopingOrganization[not(@nullFlavor)] (rule-reference: d131575e87-true-d131626e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d131575e99-true-d131647e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantBetreuorg)/d131575e99-true-d131647e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d131575e99-true-d131647e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.8'] | self::hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson])]"
         id="d131675e57-true-d131713e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="not(.)">(HeaderParticipantConsultant)/d131675e57-true-d131713e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.8'] | hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] (rule-reference: d131675e57-true-d131713e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:addr | self::hl7:telecom | self::hl7:associatedPerson[not(@nullFlavor)] | self::hl7:scopingOrganization)]"
         id="d131675e103-true-d131770e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="not(.)">(HeaderParticipantConsultant)/d131675e103-true-d131770e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:addr | hl7:telecom | hl7:associatedPerson[not(@nullFlavor)] | hl7:scopingOrganization (rule-reference: d131675e103-true-d131770e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d131675e147-true-d131795e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="not(.)">(HeaderParticipantConsultant)/d131675e147-true-d131795e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d131675e147-true-d131795e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d131675e166-true-d131823e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="not(.)">(HeaderParticipantConsultant)/d131675e166-true-d131823e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d131675e166-true-d131823e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLPUB' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/*[not(@xsi:nil = 'true')][not(self::hl7:serviceEvent[hl7:code[(@code = 'GDLPUB' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]])]"
         id="d128922e138-true-d131862e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e138-true-d131862e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:serviceEvent[hl7:code[(@code = 'GDLPUB' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]] (rule-reference: d128922e138-true-d131862e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLPUB' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLPUB' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/*[not(@xsi:nil = 'true')][not(self::hl7:code[(@code = 'GDLPUB' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor] | self::hl7:effectiveTime[not(@nullFlavor)] | self::hl7:performer)]"
         id="d128922e176-true-d131889e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e176-true-d131889e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:code[(@code = 'GDLPUB' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor] | hl7:effectiveTime[not(@nullFlavor)] | hl7:performer (rule-reference: d128922e176-true-d131889e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLPUB' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLPUB' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:low[not(@nullFlavor)] | self::hl7:high)]"
         id="d128922e185-true-d131914e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e185-true-d131914e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:low[not(@nullFlavor)] | hl7:high (rule-reference: d128922e185-true-d131914e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/*[not(@xsi:nil = 'true')][not(self::hl7:parentDocument[not(@nullFlavor)])]"
         id="d131935e20-true-d131947e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="not(.)">(HeaderRelatedDocument)/d131935e20-true-d131947e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:parentDocument[not(@nullFlavor)] (rule-reference: d131935e20-true-d131947e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)])]"
         id="d131935e35-true-d131961e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="not(.)">(HeaderRelatedDocument)/d131935e35-true-d131961e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id[not(@nullFlavor)] (rule-reference: d131935e35-true-d131961e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/*[not(@xsi:nil = 'true')][not(self::hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]])]"
         id="d128922e204-true-d132025e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e204-true-d132025e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] (rule-reference: d128922e204-true-d132025e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:effectiveTime | self::hl7:responsibleParty[hl7:assignedEntity] | self::hl7:location[hl7:healthCareFacility])]"
         id="d128922e298-true-d132090e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e298-true-d132090e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:effectiveTime | hl7:responsibleParty[hl7:assignedEntity] | hl7:location[hl7:healthCareFacility] (rule-reference: d128922e298-true-d132090e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d128922e315-true-d132112e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e315-true-d132112e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:originalText (rule-reference: d128922e315-true-d132112e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:effectiveTime/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:high)]"
         id="d128922e327-true-d132136e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e327-true-d132136e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:low | hl7:high (rule-reference: d128922e327-true-d132136e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/*[not(@xsi:nil = 'true')][not(self::hl7:assignedEntity[hl7:assignedPerson])]"
         id="d128922e354-true-d132181e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e354-true-d132181e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:assignedEntity[hl7:assignedPerson] (rule-reference: d128922e354-true-d132181e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:assignedPerson[not(@nullFlavor)] | self::hl7:representedOrganization)]"
         id="d128922e356-true-d132214e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e356-true-d132214e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:assignedPerson[not(@nullFlavor)] | hl7:representedOrganization (rule-reference: d128922e356-true-d132214e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d132218e54-true-d132246e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d132218e54-true-d132246e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d132218e54-true-d132246e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d132218e64-true-d132274e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d132218e64-true-d132274e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d132218e64-true-d132274e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/*[not(@xsi:nil = 'true')][not(self::hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization])]"
         id="d132300e7-true-d132312e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="not(.)">(EncounterLocation2)/d132300e7-true-d132312e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization] (rule-reference: d132300e7-true-d132312e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:serviceProviderOrganization[not(@nullFlavor)])]"
         id="d132300e24-true-d132326e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="not(.)">(EncounterLocation2)/d132300e24-true-d132326e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:serviceProviderOrganization[not(@nullFlavor)] (rule-reference: d132300e24-true-d132326e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d132300e46-true-d132355e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="not(.)">(EncounterLocation2)/d132300e46-true-d132355e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d132300e46-true-d132355e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/*[not(@xsi:nil = 'true')][not(self::hl7:nonXMLBody | self::hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1']] | self::hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])])]"
         id="d128922e370-true-d132550e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e370-true-d132550e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:nonXMLBody | hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1']] | hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])] (rule-reference: d128922e370-true-d132550e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:nonXMLBody/*[not(@xsi:nil = 'true')][not(self::hl7:text)]"
         id="d128922e381-true-d132564e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e381-true-d132564e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:text (rule-reference: d128922e381-true-d132564e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:component[hl7:section])]"
         id="d128922e393-true-d132603e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e393-true-d132603e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:component[hl7:section] (rule-reference: d128922e393-true-d132603e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1']]/hl7:component[hl7:section]/*[not(@xsi:nil = 'true')][not(self::hl7:section[not(@nullFlavor)][hl7:text])]"
         id="d128922e402-true-d132650e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e402-true-d132650e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[not(@nullFlavor)][hl7:text] (rule-reference: d128922e402-true-d132650e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId | self::hl7:id | self::hl7:code | self::hl7:title | self::hl7:text | self::hl7:author[not(@nullFlavor)] | self::hl7:author[@nullFlavor] | self::hl7:entry)]"
         id="d128922e408-true-d132686e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e408-true-d132686e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId | hl7:id | hl7:code | hl7:title | hl7:text | hl7:author[not(@nullFlavor)] | hl7:author[@nullFlavor] | hl7:entry (rule-reference: d128922e408-true-d132686e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:functionCode | self::hl7:time | self::hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization])]"
         id="d132719e208-true-d132753e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="not(.)">(AuthorElements)/d132719e208-true-d132753e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:functionCode | hl7:time | hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization] (rule-reference: d132719e208-true-d132753e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:assignedPerson | self::hl7:assignedAuthoringDevice | self::hl7:representedOrganization[not(@nullFlavor)])]"
         id="d132719e281-true-d132814e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="not(.)">(AuthorElements)/d132719e281-true-d132814e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:telecom | hl7:assignedPerson | hl7:assignedAuthoringDevice | hl7:representedOrganization[not(@nullFlavor)] (rule-reference: d132719e281-true-d132814e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d132719e384-true-d132847e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="not(.)">(AuthorElements)/d132719e384-true-d132847e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d132719e384-true-d132847e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturerModelName | self::hl7:softwareName)]"
         id="d132719e398-true-d132873e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="not(.)">(AuthorElements)/d132719e398-true-d132873e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:manufacturerModelName | hl7:softwareName (rule-reference: d132719e398-true-d132873e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d132719e428-true-d132904e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="not(.)">(AuthorElements)/d132719e428-true-d132904e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d132719e428-true-d132904e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:time[@nullFlavor = 'NA'] | self::hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']])]"
         id="d132719e435-true-d132943e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="not(.)">(AuthorElements)/d132719e435-true-d132943e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:time[@nullFlavor = 'NA'] | hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']] (rule-reference: d132719e435-true-d132943e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]/hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']]/*[not(@xsi:nil = 'true')][not(self::hl7:id[@nullFlavor = 'NA'])]"
         id="d132719e460-true-d132962e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="not(.)">(AuthorElements)/d132719e460-true-d132962e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id[@nullFlavor = 'NA'] (rule-reference: d132719e460-true-d132962e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/*[not(@xsi:nil = 'true')][not(self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]] | self::hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6'] | self::hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7'] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]])]"
         id="d128922e415-true-d133398e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e415-true-d133398e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]] | hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6'] | hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7'] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]] (rule-reference: d128922e415-true-d133398e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']])]"
         id="d128922e424-true-d133427e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e424-true-d133427e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']] (rule-reference: d128922e424-true-d133427e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.1'] | self::hl7:code[(@code = 'BRIEFT' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]])]"
         id="d133403e8-true-d133477e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d133403e8-true-d133477e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.1'] | hl7:code[(@code = 'BRIEFT' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]] (rule-reference: d133403e8-true-d133477e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']])]"
         id="d133403e52-true-d133519e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d133403e52-true-d133519e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']] (rule-reference: d133403e52-true-d133519e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.2'] | self::hl7:value[not(@nullFlavor)])]"
         id="d133504e9-true-d133541e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d133504e9-true-d133541e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.2'] | hl7:value[not(@nullFlavor)] (rule-reference: d133504e9-true-d133541e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']])]"
         id="d128922e433-true-d133580e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e433-true-d133580e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']] (rule-reference: d128922e433-true-d133580e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.1'] | self::hl7:code[(@code = 'PFDIAG' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry)]"
         id="d133557e11-true-d133613e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d133557e11-true-d133613e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.1'] | hl7:code[(@code = 'PFDIAG' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry (rule-reference: d133557e11-true-d133613e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']])]"
         id="d128922e443-true-d133683e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e443-true-d133683e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']] (rule-reference: d128922e443-true-d133683e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.2'] | self::hl7:code[(@code = 'PFDIAG' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]])]"
         id="d133647e11-true-d133741e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d133647e11-true-d133741e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.2'] | hl7:code[(@code = 'PFDIAG' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]] (rule-reference: d133647e11-true-d133741e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']])]"
         id="d133647e20-true-d133806e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d133647e20-true-d133806e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']] (rule-reference: d133647e20-true-d133806e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] | self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] | self::hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27'] | self::hl7:id | self::hl7:code[@nullFlavor = 'NA'] | self::hl7:statusCode[@code = 'active' or @code = 'suspended' or @code = 'completed' or @code = 'aborted'] | self::hl7:effectiveTime[hl7:low] | self::hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]])]"
         id="d133770e5-true-d133897e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d133770e5-true-d133897e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] | hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] | hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27'] | hl7:id | hl7:code[@nullFlavor = 'NA'] | hl7:statusCode[@code = 'active' or @code = 'suspended' or @code = 'completed' or @code = 'aborted'] | hl7:effectiveTime[hl7:low] | hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]] (rule-reference: d133770e5-true-d133897e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:effectiveTime[hl7:low]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:high)]"
         id="d133770e55-true-d133962e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d133770e55-true-d133962e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:low | hl7:high (rule-reference: d133770e55-true-d133962e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']])]"
         id="d133770e63-true-d133998e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d133770e63-true-d133998e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']] (rule-reference: d133770e63-true-d133998e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] | self::hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28'] | self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | self::hl7:text[not(@nullFlavor)] | self::hl7:statusCode[@code = 'completed'] | self::hl7:effectiveTime[not(@nullFlavor)] | self::hl7:value)]"
         id="d133977e11-true-d134069e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d133977e11-true-d134069e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] | hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28'] | hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | hl7:text[not(@nullFlavor)] | hl7:statusCode[@code = 'completed'] | hl7:effectiveTime[not(@nullFlavor)] | hl7:value (rule-reference: d133977e11-true-d134069e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d133977e78-true-d134109e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d133977e78-true-d134109e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:originalText (rule-reference: d133977e78-true-d134109e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:text[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:reference[not(@nullFlavor)])]"
         id="d133977e117-true-d134128e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d133977e117-true-d134128e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:reference[not(@nullFlavor)] (rule-reference: d133977e117-true-d134128e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/*[not(@xsi:nil = 'true')][not(self::hl7:originalText[not(@nullFlavor)] | self::hl7:qualifier[hl7:name[@code='7']] | self::hl7:qualifier[hl7:name[@code='8']] | self::hl7:translation)]"
         id="d133977e145-true-d134165e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d133977e145-true-d134165e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:originalText[not(@nullFlavor)] | hl7:qualifier[hl7:name[@code='7']] | hl7:qualifier[hl7:name[@code='8']] | hl7:translation (rule-reference: d133977e145-true-d134165e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:qualifier[hl7:name[@code='7']]/*[not(@xsi:nil = 'true')][not(self::hl7:name[(@code = '7' and @codeSystem = '2.16.840.1.113883.3.7.1.0')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d133977e220-true-d134195e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d133977e220-true-d134195e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[(@code = '7' and @codeSystem = '2.16.840.1.113883.3.7.1.0')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d133977e220-true-d134195e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:qualifier[hl7:name[@code='8']]/*[not(@xsi:nil = 'true')][not(self::hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.168-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)])]"
         id="d133977e247-true-d134234e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d133977e247-true-d134234e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.168-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] (rule-reference: d133977e247-true-d134234e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']])]"
         id="d128922e455-true-d134293e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e455-true-d134293e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']] (rule-reference: d128922e455-true-d134293e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.3'] | self::hl7:code[(@code = 'PFMOB' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d134258e8-true-d134346e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d134258e8-true-d134346e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.3'] | hl7:code[(@code = 'PFMOB' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d134258e8-true-d134346e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d134372e4-true-d134390e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d134372e4-true-d134390e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d134372e4-true-d134390e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d134375e8-true-d134424e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d134375e8-true-d134424e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d134375e8-true-d134424e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d134372e11-true-d134466e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d134372e11-true-d134466e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d134372e11-true-d134466e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d134451e8-true-d134500e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d134451e8-true-d134500e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d134451e8-true-d134500e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']])]"
         id="d128922e462-true-d134562e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e462-true-d134562e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']] (rule-reference: d128922e462-true-d134562e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.4'] | self::hl7:code[(@code = 'PFKLEI' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d134527e8-true-d134615e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d134527e8-true-d134615e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.4'] | hl7:code[(@code = 'PFKLEI' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d134527e8-true-d134615e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d134641e4-true-d134659e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d134641e4-true-d134659e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d134641e4-true-d134659e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d134644e8-true-d134693e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d134644e8-true-d134693e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d134644e8-true-d134693e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d134641e11-true-d134735e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d134641e11-true-d134735e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d134641e11-true-d134735e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d134720e8-true-d134769e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d134720e8-true-d134769e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d134720e8-true-d134769e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']])]"
         id="d128922e469-true-d134831e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e469-true-d134831e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']] (rule-reference: d128922e469-true-d134831e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.5'] | self::hl7:code[(@code = 'PFERN' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d134796e8-true-d134884e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d134796e8-true-d134884e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.5'] | hl7:code[(@code = 'PFERN' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d134796e8-true-d134884e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d134910e4-true-d134928e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d134910e4-true-d134928e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d134910e4-true-d134928e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d134913e8-true-d134962e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d134913e8-true-d134962e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d134913e8-true-d134962e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d134910e11-true-d135004e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d134910e11-true-d135004e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d134910e11-true-d135004e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d134989e8-true-d135038e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d134989e8-true-d135038e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d134989e8-true-d135038e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']])]"
         id="d128922e476-true-d135100e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e476-true-d135100e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']] (rule-reference: d128922e476-true-d135100e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.6'] | self::hl7:code[(@code = 'PFAUS' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d135065e8-true-d135153e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d135065e8-true-d135153e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.6'] | hl7:code[(@code = 'PFAUS' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d135065e8-true-d135153e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d135179e4-true-d135197e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d135179e4-true-d135197e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d135179e4-true-d135197e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d135182e8-true-d135231e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d135182e8-true-d135231e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d135182e8-true-d135231e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d135179e11-true-d135273e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d135179e11-true-d135273e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d135179e11-true-d135273e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d135258e8-true-d135307e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d135258e8-true-d135307e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d135258e8-true-d135307e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']])]"
         id="d128922e483-true-d135369e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e483-true-d135369e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']] (rule-reference: d128922e483-true-d135369e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.7'] | self::hl7:code[(@code = 'PFHAUT' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d135334e8-true-d135422e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d135334e8-true-d135422e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.7'] | hl7:code[(@code = 'PFHAUT' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d135334e8-true-d135422e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d135448e4-true-d135466e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d135448e4-true-d135466e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d135448e4-true-d135466e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d135451e8-true-d135500e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d135451e8-true-d135500e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d135451e8-true-d135500e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d135448e11-true-d135542e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d135448e11-true-d135542e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d135448e11-true-d135542e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d135527e8-true-d135576e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d135527e8-true-d135576e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d135527e8-true-d135576e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']])]"
         id="d128922e490-true-d135638e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e490-true-d135638e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']] (rule-reference: d128922e490-true-d135638e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.8'] | self::hl7:code[(@code = 'PFATM' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d135603e8-true-d135691e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d135603e8-true-d135691e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.8'] | hl7:code[(@code = 'PFATM' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d135603e8-true-d135691e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d135717e4-true-d135735e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d135717e4-true-d135735e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d135717e4-true-d135735e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d135720e8-true-d135769e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d135720e8-true-d135769e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d135720e8-true-d135769e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d135717e11-true-d135811e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d135717e11-true-d135811e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d135717e11-true-d135811e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d135796e8-true-d135845e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d135796e8-true-d135845e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d135796e8-true-d135845e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']])]"
         id="d128922e498-true-d135907e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e498-true-d135907e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']] (rule-reference: d128922e498-true-d135907e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.9'] | self::hl7:code[(@code = 'PFSCHL' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d135872e8-true-d135960e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d135872e8-true-d135960e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.9'] | hl7:code[(@code = 'PFSCHL' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d135872e8-true-d135960e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d135986e4-true-d136004e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d135986e4-true-d136004e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d135986e4-true-d136004e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d135989e8-true-d136038e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d135989e8-true-d136038e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d135989e8-true-d136038e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d135986e11-true-d136080e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d135986e11-true-d136080e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d135986e11-true-d136080e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d136065e8-true-d136114e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d136065e8-true-d136114e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d136065e8-true-d136114e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']])]"
         id="d128922e505-true-d136179e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e505-true-d136179e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']] (rule-reference: d128922e505-true-d136179e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4'] | self::hl7:code[(@code = '38212-7' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d136141e8-true-d136240e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d136141e8-true-d136240e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4'] | hl7:code[(@code = '38212-7' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d136141e8-true-d136240e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d136272e4-true-d136290e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d136272e4-true-d136290e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d136272e4-true-d136290e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d136275e8-true-d136324e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d136275e8-true-d136324e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d136275e8-true-d136324e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d136272e11-true-d136366e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d136272e11-true-d136366e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d136272e11-true-d136366e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d136351e8-true-d136400e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d136351e8-true-d136400e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d136351e8-true-d136400e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']])]"
         id="d128922e512-true-d136462e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e512-true-d136462e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']] (rule-reference: d128922e512-true-d136462e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.11'] | self::hl7:code[(@code = 'PFORIE' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d136427e8-true-d136515e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d136427e8-true-d136515e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.11'] | hl7:code[(@code = 'PFORIE' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d136427e8-true-d136515e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d136541e4-true-d136559e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d136541e4-true-d136559e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d136541e4-true-d136559e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d136544e8-true-d136593e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d136544e8-true-d136593e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d136544e8-true-d136593e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d136541e11-true-d136635e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d136541e11-true-d136635e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d136541e11-true-d136635e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d136620e8-true-d136669e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d136620e8-true-d136669e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d136620e8-true-d136669e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']])]"
         id="d128922e519-true-d136731e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e519-true-d136731e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']] (rule-reference: d128922e519-true-d136731e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.12'] | self::hl7:code[(@code = 'PFSOZV' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d136696e8-true-d136784e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d136696e8-true-d136784e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.12'] | hl7:code[(@code = 'PFSOZV' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d136696e8-true-d136784e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d136810e4-true-d136828e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d136810e4-true-d136828e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d136810e4-true-d136828e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d136813e8-true-d136862e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d136813e8-true-d136862e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d136813e8-true-d136862e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d136810e11-true-d136904e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d136810e11-true-d136904e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d136810e11-true-d136904e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d136889e8-true-d136938e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d136889e8-true-d136938e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d136889e8-true-d136938e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']])]"
         id="d128922e526-true-d137000e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e526-true-d137000e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']] (rule-reference: d128922e526-true-d137000e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.13'] | self::hl7:code[(@code = 'PFKOMM' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d136965e8-true-d137053e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d136965e8-true-d137053e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.13'] | hl7:code[(@code = 'PFKOMM' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d136965e8-true-d137053e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d137079e4-true-d137097e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d137079e4-true-d137097e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d137079e4-true-d137097e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d137082e8-true-d137131e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d137082e8-true-d137131e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d137082e8-true-d137131e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d137079e11-true-d137173e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d137079e11-true-d137173e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d137079e11-true-d137173e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d137158e8-true-d137207e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d137158e8-true-d137207e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d137158e8-true-d137207e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']])]"
         id="d128922e533-true-d137269e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e533-true-d137269e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']] (rule-reference: d128922e533-true-d137269e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.14'] | self::hl7:code[(@code = 'PFROLL' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d137234e8-true-d137322e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d137234e8-true-d137322e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.14'] | hl7:code[(@code = 'PFROLL' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d137234e8-true-d137322e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d137348e4-true-d137366e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d137348e4-true-d137366e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d137348e4-true-d137366e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d137351e8-true-d137400e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d137351e8-true-d137400e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d137351e8-true-d137400e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d137348e11-true-d137442e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d137348e11-true-d137442e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d137348e11-true-d137442e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d137427e8-true-d137476e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d137427e8-true-d137476e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d137427e8-true-d137476e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6']/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']])]"
         id="d128922e543-true-d137525e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e543-true-d137525e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']] (rule-reference: d128922e543-true-d137525e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] | self::hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16'] | self::hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text | self::hl7:entry)]"
         id="d137503e11-true-d137574e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d137503e11-true-d137574e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] | hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16'] | hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text | hl7:entry (rule-reference: d137503e11-true-d137574e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']])]"
         id="d128922e553-true-d137654e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e553-true-d137654e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']] (rule-reference: d128922e553-true-d137654e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] | self::hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16'] | self::hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text | self::hl7:entry[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]])]"
         id="d137620e11-true-d137737e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d137620e11-true-d137737e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] | hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16'] | hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text | hl7:entry[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]] (rule-reference: d137620e11-true-d137737e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']])]"
         id="d137620e41-true-d137817e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d137620e41-true-d137817e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']] (rule-reference: d137620e41-true-d137817e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] | self::hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] | self::hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1'] | self::hl7:id | self::hl7:code[(@code = '46680005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:statusCode[@code = 'completed'] | self::hl7:effectiveTime | self::hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]])]"
         id="d137784e13-true-d137904e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d137784e13-true-d137904e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] | hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] | hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1'] | hl7:id | hl7:code[(@code = '46680005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:statusCode[@code = 'completed'] | hl7:effectiveTime | hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]] (rule-reference: d137784e13-true-d137904e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']])]"
         id="d137784e119-true-d137979e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d137784e119-true-d137979e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']] (rule-reference: d137784e119-true-d137979e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] | self::hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31'] | self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | self::hl7:text[not(@nullFlavor)] | self::hl7:statusCode[@code = 'completed'] | self::hl7:effectiveTime | self::hl7:value[not(@nullFlavor)])]"
         id="d137955e7-true-d138058e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d137955e7-true-d138058e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] | hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31'] | hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | hl7:text[not(@nullFlavor)] | hl7:statusCode[@code = 'completed'] | hl7:effectiveTime | hl7:value[not(@nullFlavor)] (rule-reference: d137955e7-true-d138058e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText[not(@nullFlavor)])]"
         id="d137955e64-true-d138104e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d137955e64-true-d138104e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:originalText[not(@nullFlavor)] (rule-reference: d137955e64-true-d138104e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:text[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:reference[not(@nullFlavor)])]"
         id="d137955e101-true-d138123e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d137955e101-true-d138123e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:reference[not(@nullFlavor)] (rule-reference: d137955e101-true-d138123e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']])]"
         id="d128922e564-true-d138178e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e564-true-d138178e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']] (rule-reference: d128922e564-true-d138178e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.18'] | self::hl7:code[(@code = 'PFMEDBEH' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d138149e8-true-d138239e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d138149e8-true-d138239e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.18'] | hl7:code[(@code = 'PFMEDBEH' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d138149e8-true-d138239e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d138149e39-true-d138281e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d138149e39-true-d138281e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d138149e39-true-d138281e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d138270e1-true-d138315e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d138270e1-true-d138315e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d138270e1-true-d138315e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d138149e42-true-d138357e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d138149e42-true-d138357e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d138149e42-true-d138357e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d138346e1-true-d138391e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d138346e1-true-d138391e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d138346e1-true-d138391e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']])]"
         id="d128922e571-true-d138441e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e571-true-d138441e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']] (rule-reference: d128922e571-true-d138441e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.15'] | self::hl7:code[(@code = 'PFMED' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d138418e8-true-d138489e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d138418e8-true-d138489e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.15'] | hl7:code[(@code = 'PFMED' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d138418e8-true-d138489e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d138418e33-true-d138531e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d138418e33-true-d138531e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d138418e33-true-d138531e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d138520e1-true-d138565e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d138520e1-true-d138565e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d138520e1-true-d138565e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']])]"
         id="d128922e578-true-d138607e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e578-true-d138607e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']] (rule-reference: d128922e578-true-d138607e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.5'] | self::hl7:code[(@code = 'ANM' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d138592e8-true-d138641e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d138592e8-true-d138641e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.5'] | hl7:code[(@code = 'ANM' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d138592e8-true-d138641e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']])]"
         id="d128922e585-true-d138683e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e585-true-d138683e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']] (rule-reference: d128922e585-true-d138683e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.12.2.2']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.12.2.2'] | self::hl7:code[(@code = 'PUBUMF' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)])]"
         id="d138668e8-true-d138717e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d138668e8-true-d138717e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.12.2.2'] | hl7:code[(@code = 'PUBUMF' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] (rule-reference: d138668e8-true-d138717e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']])]"
         id="d128922e592-true-d138765e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e592-true-d138765e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']] (rule-reference: d128922e592-true-d138765e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] | self::hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1'] | self::hl7:code | self::hl7:title | self::hl7:text)]"
         id="d138744e8-true-d138812e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d138744e8-true-d138812e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] | hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1'] | hl7:code | hl7:title | hl7:text (rule-reference: d138744e8-true-d138812e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']])]"
         id="d128922e600-true-d138875e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e600-true-d138875e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']] (rule-reference: d128922e600-true-d138875e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.2'] | self::hl7:code[(@code = 'ABBEM' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]])]"
         id="d138851e8-true-d138925e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d138851e8-true-d138925e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.2'] | hl7:code[(@code = 'ABBEM' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] (rule-reference: d138851e8-true-d138925e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']])]"
         id="d138851e40-true-d138967e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d138851e40-true-d138967e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] (rule-reference: d138851e40-true-d138967e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | self::hl7:value[not(@nullFlavor)])]"
         id="d138956e1-true-d138989e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d138956e1-true-d138989e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | hl7:value[not(@nullFlavor)] (rule-reference: d138956e1-true-d138989e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']])]"
         id="d128922e607-true-d139029e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d128922e607-true-d139029e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']] (rule-reference: d128922e607-true-d139029e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.3'] | self::hl7:code[(@code = 'BEIL' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]])]"
         id="d139005e8-true-d139079e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d139005e8-true-d139079e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.3'] | hl7:code[(@code = 'BEIL' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] (rule-reference: d139005e8-true-d139079e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']])]"
         id="d139005e41-true-d139121e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d139005e41-true-d139121e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] (rule-reference: d139005e41-true-d139121e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.12']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.12.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | self::hl7:value[not(@nullFlavor)])]"
         id="d139106e9-true-d139143e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.12-2015-09-18T000000.html"
              test="not(.)">(Pflegesituationsbericht)/d139106e9-true-d139143e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | hl7:value[not(@nullFlavor)] (rule-reference: d139106e9-true-d139143e0)</assert>
   </rule>
</pattern>
