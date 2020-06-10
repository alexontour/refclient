<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.10002
Name: ELGA CDA Dokument Entlassung Pflege
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.10002-2013-11-07T000000-closed">
   <title>ELGA CDA Dokument Entlassung Pflege</title>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/*[not(@xsi:nil = 'true')][not(self::hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']])]"
         id="d20e7238-true-d64009e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10002-2013-11-07T000000.html"
              test="not(.)">(CDAEntlassbriefPflege)/d20e7238-true-d64009e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']] (rule-reference: d20e7238-true-d64009e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/*[not(@xsi:nil = 'true')][not(self::hl7:realmCode[not(@nullFlavor)] | self::hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] | self::hl7:templateId[@root = '1.2.40.0.34.11.1'] | self::hl7:templateId[@root = '1.2.40.0.34.11.3'] | self::hl7:templateId[@root = '1.2.40.0.34.11.3.0.1'] | self::hl7:templateId[@root = '1.2.40.0.34.11.3.0.2'] | self::hl7:templateId[@root = '1.2.40.0.34.11.3.0.3'] | self::hl7:id[not(@nullFlavor)] | self::hl7:code[(@code = '34745-0' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:effectiveTime[not(@nullFlavor)] | self::hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] | self::hl7:languageCode[@code = 'de-AT'] | self::hl7:setId[not(@nullFlavor)] | self::hl7:versionNumber[not(@nullFlavor)] | self::hl7:recordTarget[hl7:patientRole] | self::hl7:author[hl7:assignedAuthor] | self::hl7:dataEnterer[hl7:assignedEntity] | self::hl7:custodian[hl7:assignedCustodian] | self::hl7:informationRecipient[hl7:intendedRecipient] | self::hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] | self::hl7:authenticator[hl7:signatureCode[@code = 'S']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']] | self::hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']] | self::hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]] | self::hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument] | self::hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]] | self::hl7:component)]"
         id="d20e7246-true-d64586e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10002-2013-11-07T000000.html"
              test="not(.)">(CDAEntlassbriefPflege)/d20e7246-true-d64586e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:realmCode[not(@nullFlavor)] | hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] | hl7:templateId[@root = '1.2.40.0.34.11.1'] | hl7:templateId[@root = '1.2.40.0.34.11.3'] | hl7:templateId[@root = '1.2.40.0.34.11.3.0.1'] | hl7:templateId[@root = '1.2.40.0.34.11.3.0.2'] | hl7:templateId[@root = '1.2.40.0.34.11.3.0.3'] | hl7:id[not(@nullFlavor)] | hl7:code[(@code = '34745-0' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:effectiveTime[not(@nullFlavor)] | hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] | hl7:languageCode[@code = 'de-AT'] | hl7:setId[not(@nullFlavor)] | hl7:versionNumber[not(@nullFlavor)] | hl7:recordTarget[hl7:patientRole] | hl7:author[hl7:assignedAuthor] | hl7:dataEnterer[hl7:assignedEntity] | hl7:custodian[hl7:assignedCustodian] | hl7:informationRecipient[hl7:intendedRecipient] | hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] | hl7:authenticator[hl7:signatureCode[@code = 'S']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']] | hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']] | hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]] | hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument] | hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]] | hl7:component (rule-reference: d20e7246-true-d64586e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/*[not(@xsi:nil = 'true')][not(self::hl7:patientRole)]"
         id="d64710e4-true-d64730e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d64710e4-true-d64730e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:patientRole (rule-reference: d64710e4-true-d64730e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d64710e23-true-d64773e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d64710e23-true-d64773e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d64710e23-true-d64773e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetAddressLine | self::hl7:streetName | self::hl7:houseNumber | self::hl7:postalCode | self::hl7:city | self::hl7:state | self::hl7:country | self::hl7:additionalLocator)]"
         id="d64710e70-true-d64827e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d64710e70-true-d64827e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:streetAddressLine | hl7:streetName | hl7:houseNumber | hl7:postalCode | hl7:city | hl7:state | hl7:country | hl7:additionalLocator (rule-reference: d64710e70-true-d64827e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)] | self::hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:birthTime | self::hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:raceCode | self::hl7:ethnicGroupCode | self::hl7:guardian | self::hl7:birthplace[hl7:place] | self::hl7:languageCommunication)]"
         id="d64710e150-true-d64954e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d64710e150-true-d64954e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] | hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | hl7:birthTime | hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | hl7:raceCode | hl7:ethnicGroupCode | hl7:guardian | hl7:birthplace[hl7:place] | hl7:languageCommunication (rule-reference: d64710e150-true-d64954e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:prefix | self::hl7:given[not(@nullFlavor)] | self::hl7:family[not(@nullFlavor)] | self::hl7:suffix)]"
         id="d64710e173-true-d64983e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d64710e173-true-d64983e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:prefix | hl7:given[not(@nullFlavor)] | hl7:family[not(@nullFlavor)] | hl7:suffix (rule-reference: d64710e173-true-d64983e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/*[not(@xsi:nil = 'true')][not(self::hl7:addr | self::hl7:telecom | self::hl7:guardianPerson | self::hl7:guardianOrganization)]"
         id="d64710e263-true-d65065e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d64710e263-true-d65065e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:addr | hl7:telecom | hl7:guardianPerson | hl7:guardianOrganization (rule-reference: d64710e263-true-d65065e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d64710e316-true-d65089e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d64710e316-true-d65089e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d64710e316-true-d65089e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d64710e321-true-d65108e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d64710e321-true-d65108e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d64710e321-true-d65108e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/*[not(@xsi:nil = 'true')][not(self::hl7:place[not(@nullFlavor)])]"
         id="d64710e330-true-d65127e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d64710e330-true-d65127e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:place[not(@nullFlavor)] (rule-reference: d64710e330-true-d65127e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:addr[not(@nullFlavor)])]"
         id="d64710e346-true-d65141e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20014-2017-03-27T000000.html"
              test="not(.)">(HeaderRecordTargetPflege)/d64710e346-true-d65141e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:addr[not(@nullFlavor)] (rule-reference: d64710e346-true-d65141e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/*[not(@xsi:nil = 'true')][not(self::hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor] | self::hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:preferenceInd)]"
         id="d65150e36-true-d65195e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="not(.)">(LanguageCommunication)/d65150e36-true-d65195e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor] | hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:preferenceInd (rule-reference: d65150e36-true-d65195e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/*[not(@xsi:nil = 'true')][not(self::hl7:functionCode | self::hl7:time | self::hl7:assignedAuthor[hl7:representedOrganization])]"
         id="d65230e206-true-d65261e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="not(.)">(HeaderAuthor)/d65230e206-true-d65261e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:functionCode | hl7:time | hl7:assignedAuthor[hl7:representedOrganization] (rule-reference: d65230e206-true-d65261e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:assignedPerson | self::hl7:assignedAuthoringDevice | self::hl7:representedOrganization[not(@nullFlavor)])]"
         id="d65230e281-true-d65315e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="not(.)">(HeaderAuthor)/d65230e281-true-d65315e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:telecom | hl7:assignedPerson | hl7:assignedAuthoringDevice | hl7:representedOrganization[not(@nullFlavor)] (rule-reference: d65230e281-true-d65315e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d65230e437-true-d65348e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="not(.)">(HeaderAuthor)/d65230e437-true-d65348e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d65230e437-true-d65348e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturerModelName | self::hl7:softwareName)]"
         id="d65230e451-true-d65374e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="not(.)">(HeaderAuthor)/d65230e451-true-d65374e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:manufacturerModelName | hl7:softwareName (rule-reference: d65230e451-true-d65374e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)] | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d65230e481-true-d65413e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="not(.)">(HeaderAuthor)/d65230e481-true-d65413e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id[not(@nullFlavor)] | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d65230e481-true-d65413e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:assignedEntity[hl7:assignedPerson])]"
         id="d65439e50-true-d65477e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20003-2013-02-10T000000.html"
              test="not(.)">(HeaderDataEnterer)/d65439e50-true-d65477e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:time | hl7:assignedEntity[hl7:assignedPerson] (rule-reference: d65439e50-true-d65477e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:assignedPerson[not(@nullFlavor)] | self::hl7:representedOrganization)]"
         id="d65439e72-true-d65515e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20003-2013-02-10T000000.html"
              test="not(.)">(HeaderDataEnterer)/d65439e72-true-d65515e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:assignedPerson[not(@nullFlavor)] | hl7:representedOrganization (rule-reference: d65439e72-true-d65515e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d65519e54-true-d65547e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d65519e54-true-d65547e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d65519e54-true-d65547e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d65519e64-true-d65575e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d65519e64-true-d65575e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d65519e64-true-d65575e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:custodian[hl7:assignedCustodian]/*[not(@xsi:nil = 'true')][not(self::hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization])]"
         id="d65603e102-true-d65615e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="not(.)">(HeaderCustodian)/d65603e102-true-d65615e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization] (rule-reference: d65603e102-true-d65615e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name])]"
         id="d65603e114-true-d65629e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="not(.)">(HeaderCustodian)/d65603e114-true-d65629e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name] (rule-reference: d65603e114-true-d65629e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr[not(@nullFlavor)])]"
         id="d65603e118-true-d65658e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="not(.)">(HeaderCustodian)/d65603e118-true-d65658e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr[not(@nullFlavor)] (rule-reference: d65603e118-true-d65658e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/*[not(@xsi:nil = 'true')][not(self::hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient])]"
         id="d65684e133-true-d65711e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="not(.)">(HeaderInformationRecipient)/d65684e133-true-d65711e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient] (rule-reference: d65684e133-true-d65711e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:informationRecipient[not(@nullFlavor)] | self::hl7:receivedOrganization)]"
         id="d65684e166-true-d65749e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="not(.)">(HeaderInformationRecipient)/d65684e166-true-d65749e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:informationRecipient[not(@nullFlavor)] | hl7:receivedOrganization (rule-reference: d65684e166-true-d65749e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:informationRecipient[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d65684e235-true-d65769e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="not(.)">(HeaderInformationRecipient)/d65684e235-true-d65769e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d65684e235-true-d65769e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d65684e259-true-d65797e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="not(.)">(HeaderInformationRecipient)/d65684e259-true-d65797e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d65684e259-true-d65797e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:signatureCode[@code = 'S'] | self::hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson])]"
         id="d65825e116-true-d65871e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="not(.)">(HeaderLegalAuthenticator)/d65825e116-true-d65871e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:time | hl7:signatureCode[@code = 'S'] | hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] (rule-reference: d65825e116-true-d65871e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:assignedPerson[not(@nullFlavor)] | self::hl7:representedOrganization)]"
         id="d65825e158-true-d65915e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="not(.)">(HeaderLegalAuthenticator)/d65825e158-true-d65915e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:assignedPerson[not(@nullFlavor)] | hl7:representedOrganization (rule-reference: d65825e158-true-d65915e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d65919e54-true-d65947e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d65919e54-true-d65947e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d65919e54-true-d65947e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d65919e64-true-d65975e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d65919e64-true-d65975e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d65919e64-true-d65975e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:signatureCode[@code = 'S'] | self::hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson])]"
         id="d66003e156-true-d66049e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="not(.)">(HeaderAuthenticator)/d66003e156-true-d66049e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:time | hl7:signatureCode[@code = 'S'] | hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] (rule-reference: d66003e156-true-d66049e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:assignedPerson[not(@nullFlavor)] | self::hl7:representedOrganization)]"
         id="d66003e191-true-d66093e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="not(.)">(HeaderAuthenticator)/d66003e191-true-d66093e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:assignedPerson[not(@nullFlavor)] | hl7:representedOrganization (rule-reference: d66003e191-true-d66093e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d66097e54-true-d66125e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d66097e54-true-d66125e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d66097e54-true-d66125e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d66097e64-true-d66153e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d66097e64-true-d66153e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d66097e64-true-d66153e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.1'] | self::hl7:time | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson])]"
         id="d66181e107-true-d66213e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="not(.)">(HeaderParticipantAnsprechpartner)/d66181e107-true-d66213e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.1'] | hl7:time | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] (rule-reference: d66181e107-true-d66213e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:addr | self::hl7:telecom[not(@nullFlavor)] | self::hl7:associatedPerson[not(@nullFlavor)] | self::hl7:scopingOrganization)]"
         id="d66181e126-true-d66267e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="not(.)">(HeaderParticipantAnsprechpartner)/d66181e126-true-d66267e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:addr | hl7:telecom[not(@nullFlavor)] | hl7:associatedPerson[not(@nullFlavor)] | hl7:scopingOrganization (rule-reference: d66181e126-true-d66267e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d66181e174-true-d66292e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="not(.)">(HeaderParticipantAnsprechpartner)/d66181e174-true-d66292e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d66181e174-true-d66292e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d66181e188-true-d66320e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="not(.)">(HeaderParticipantAnsprechpartner)/d66181e188-true-d66320e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d66181e188-true-d66320e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.2'] | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson])]"
         id="d66348e83-true-d66375e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantRefArzt)/d66348e83-true-d66375e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.2'] | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] (rule-reference: d66348e83-true-d66375e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:associatedPerson | self::hl7:scopingOrganization)]"
         id="d66348e119-true-d66429e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantRefArzt)/d66348e119-true-d66429e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:associatedPerson | hl7:scopingOrganization (rule-reference: d66348e119-true-d66429e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d66348e212-true-d66459e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantRefArzt)/d66348e212-true-d66459e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d66348e212-true-d66459e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d66348e226-true-d66487e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantRefArzt)/d66348e226-true-d66487e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d66348e226-true-d66487e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.3'] | self::hl7:functionCode[(@code = 'PCP' and @codeSystem = '2.16.840.1.113883.5.88')] | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson])]"
         id="d66515e87-true-d66549e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantHausarzt)/d66515e87-true-d66549e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.3'] | hl7:functionCode[(@code = 'PCP' and @codeSystem = '2.16.840.1.113883.5.88')] | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] (rule-reference: d66515e87-true-d66549e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:associatedPerson[not(@nullFlavor)] | self::hl7:scopingOrganization)]"
         id="d66515e123-true-d66609e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantHausarzt)/d66515e123-true-d66609e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:associatedPerson[not(@nullFlavor)] | hl7:scopingOrganization (rule-reference: d66515e123-true-d66609e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d66515e222-true-d66639e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantHausarzt)/d66515e222-true-d66639e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d66515e222-true-d66639e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d66515e241-true-d66667e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantHausarzt)/d66515e241-true-d66667e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d66515e241-true-d66667e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.4'] | self::hl7:time | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson])]"
         id="d66695e55-true-d66727e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="not(.)">(HeaderParticipantNotfallkontakt)/d66695e55-true-d66727e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.4'] | hl7:time | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson] (rule-reference: d66695e55-true-d66727e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom | self::hl7:associatedPerson[not(@nullFlavor)] | self::hl7:scopingOrganization)]"
         id="d66695e106-true-d66792e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="not(.)">(HeaderParticipantNotfallkontakt)/d66695e106-true-d66792e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom | hl7:associatedPerson[not(@nullFlavor)] | hl7:scopingOrganization (rule-reference: d66695e106-true-d66792e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d66695e188-true-d66825e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="not(.)">(HeaderParticipantNotfallkontakt)/d66695e188-true-d66825e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d66695e188-true-d66825e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d66695e207-true-d66853e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="not(.)">(HeaderParticipantNotfallkontakt)/d66695e207-true-d66853e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d66695e207-true-d66853e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.5'] | self::hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]])]"
         id="d66881e39-true-d66914e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="not(.)">(HeaderParticipantAngehoerige)/d66881e39-true-d66914e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.5'] | hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] (rule-reference: d66881e39-true-d66914e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | self::hl7:addr | self::hl7:telecom | self::hl7:associatedPerson[not(@nullFlavor)] | self::hl7:scopingOrganization)]"
         id="d66881e56-true-d66977e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="not(.)">(HeaderParticipantAngehoerige)/d66881e56-true-d66977e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | hl7:addr | hl7:telecom | hl7:associatedPerson[not(@nullFlavor)] | hl7:scopingOrganization (rule-reference: d66881e56-true-d66977e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:associatedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d66881e127-true-d67010e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="not(.)">(HeaderParticipantAngehoerige)/d66881e127-true-d67010e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d66881e127-true-d67010e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d66881e139-true-d67038e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="not(.)">(HeaderParticipantAngehoerige)/d66881e139-true-d67038e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d66881e139-true-d67038e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.6'] | self::hl7:time | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization])]"
         id="d67066e170-true-d67098e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="not(.)">(HeaderParticipantVersicherung)/d67066e170-true-d67098e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.6'] | hl7:time | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization] (rule-reference: d67066e170-true-d67098e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom | self::hl7:associatedPerson | self::hl7:scopingOrganization)]"
         id="d67066e204-true-d67168e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="not(.)">(HeaderParticipantVersicherung)/d67066e204-true-d67168e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom | hl7:associatedPerson | hl7:scopingOrganization (rule-reference: d67066e204-true-d67168e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d67066e338-true-d67206e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="not(.)">(HeaderParticipantVersicherung)/d67066e338-true-d67206e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d67066e338-true-d67206e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d67066e355-true-d67234e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="not(.)">(HeaderParticipantVersicherung)/d67066e355-true-d67234e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d67066e355-true-d67234e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.7'] | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization])]"
         id="d67262e70-true-d67285e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantBetreuorg)/d67262e70-true-d67285e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.7'] | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization] (rule-reference: d67262e70-true-d67285e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:scopingOrganization[not(@nullFlavor)])]"
         id="d67262e87-true-d67313e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantBetreuorg)/d67262e87-true-d67313e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:scopingOrganization[not(@nullFlavor)] (rule-reference: d67262e87-true-d67313e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d67262e99-true-d67334e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantBetreuorg)/d67262e99-true-d67334e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d67262e99-true-d67334e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.8'] | self::hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson])]"
         id="d67362e57-true-d67400e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="not(.)">(HeaderParticipantConsultant)/d67362e57-true-d67400e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.8'] | hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] (rule-reference: d67362e57-true-d67400e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:addr | self::hl7:telecom | self::hl7:associatedPerson[not(@nullFlavor)] | self::hl7:scopingOrganization)]"
         id="d67362e103-true-d67457e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="not(.)">(HeaderParticipantConsultant)/d67362e103-true-d67457e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:addr | hl7:telecom | hl7:associatedPerson[not(@nullFlavor)] | hl7:scopingOrganization (rule-reference: d67362e103-true-d67457e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d67362e147-true-d67482e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="not(.)">(HeaderParticipantConsultant)/d67362e147-true-d67482e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d67362e147-true-d67482e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d67362e166-true-d67510e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="not(.)">(HeaderParticipantConsultant)/d67362e166-true-d67510e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d67362e166-true-d67510e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/*[not(@xsi:nil = 'true')][not(self::hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO'])]"
         id="d67538e24-true-d67550e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20009-2011-12-19T000000.html"
              test="not(.)">(HeaderInFulfillmentOf)/d67538e24-true-d67550e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO'] (rule-reference: d67538e24-true-d67550e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)])]"
         id="d67538e33-true-d67564e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20009-2011-12-19T000000.html"
              test="not(.)">(HeaderInFulfillmentOf)/d67538e33-true-d67564e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id[not(@nullFlavor)] (rule-reference: d67538e33-true-d67564e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/*[not(@xsi:nil = 'true')][not(self::hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]])]"
         id="d64609e144-true-d67586e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e144-true-d67586e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]] (rule-reference: d64609e144-true-d67586e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/*[not(@xsi:nil = 'true')][not(self::hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor] | self::hl7:effectiveTime[not(@nullFlavor)] | self::hl7:performer)]"
         id="d64609e146-true-d67613e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e146-true-d67613e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor] | hl7:effectiveTime[not(@nullFlavor)] | hl7:performer (rule-reference: d64609e146-true-d67613e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]]/hl7:serviceEvent[hl7:code[(@code = 'GDLSTATAUF' and @codeSystem = '1.2.40.0.34.5.21') or @nullFlavor]]/hl7:effectiveTime[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:low[not(@nullFlavor)] | self::hl7:high[not(@nullFlavor)])]"
         id="d64609e155-true-d67638e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e155-true-d67638e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:low[not(@nullFlavor)] | hl7:high[not(@nullFlavor)] (rule-reference: d64609e155-true-d67638e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/*[not(@xsi:nil = 'true')][not(self::hl7:parentDocument[not(@nullFlavor)])]"
         id="d67659e20-true-d67671e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="not(.)">(HeaderRelatedDocument)/d67659e20-true-d67671e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:parentDocument[not(@nullFlavor)] (rule-reference: d67659e20-true-d67671e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)])]"
         id="d67659e35-true-d67685e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="not(.)">(HeaderRelatedDocument)/d67659e35-true-d67685e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id[not(@nullFlavor)] (rule-reference: d67659e35-true-d67685e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/*[not(@xsi:nil = 'true')][not(self::hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]])]"
         id="d64609e168-true-d67734e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e168-true-d67734e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]] (rule-reference: d64609e168-true-d67734e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')] | self::hl7:effectiveTime[not(@nullFlavor)] | self::hl7:responsibleParty[hl7:assignedEntity] | self::hl7:location[hl7:healthCareFacility])]"
         id="d64609e170-true-d67793e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e170-true-d67793e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')] | hl7:effectiveTime[not(@nullFlavor)] | hl7:responsibleParty[hl7:assignedEntity] | hl7:location[hl7:healthCareFacility] (rule-reference: d64609e170-true-d67793e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d64609e174-true-d67813e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e174-true-d67813e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:originalText (rule-reference: d64609e174-true-d67813e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:effectiveTime[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:low[not(@nullFlavor)] | self::hl7:high[not(@nullFlavor)])]"
         id="d64609e183-true-d67837e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e183-true-d67837e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:low[not(@nullFlavor)] | hl7:high[not(@nullFlavor)] (rule-reference: d64609e183-true-d67837e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/*[not(@xsi:nil = 'true')][not(self::hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson])]"
         id="d64609e190-true-d67882e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e190-true-d67882e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] (rule-reference: d64609e190-true-d67882e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:assignedPerson[not(@nullFlavor)] | self::hl7:representedOrganization)]"
         id="d64609e192-true-d67915e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e192-true-d67915e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:assignedPerson[not(@nullFlavor)] | hl7:representedOrganization (rule-reference: d64609e192-true-d67915e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d67919e54-true-d67947e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d67919e54-true-d67947e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d67919e54-true-d67947e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d67919e64-true-d67975e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d67919e64-true-d67975e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d67919e64-true-d67975e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:location[hl7:healthCareFacility]/*[not(@xsi:nil = 'true')][not(self::hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization])]"
         id="d68001e7-true-d68013e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="not(.)">(EncounterLocation2)/d68001e7-true-d68013e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization] (rule-reference: d68001e7-true-d68013e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:serviceProviderOrganization[not(@nullFlavor)])]"
         id="d68001e24-true-d68027e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="not(.)">(EncounterLocation2)/d68001e24-true-d68027e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:serviceProviderOrganization[not(@nullFlavor)] (rule-reference: d68001e24-true-d68027e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:encompassingEncounter[hl7:code[(@code = 'IMP' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d68001e46-true-d68056e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90011-2014-03-24T000000.html"
              test="not(.)">(EncounterLocation2)/d68001e46-true-d68056e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d68001e46-true-d68056e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/*[not(@xsi:nil = 'true')][not(self::hl7:nonXMLBody | self::hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']] | self::hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])])]"
         id="d64609e203-true-d68259e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e203-true-d68259e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:nonXMLBody | hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']] | hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])] (rule-reference: d64609e203-true-d68259e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:nonXMLBody/*[not(@xsi:nil = 'true')][not(self::hl7:text)]"
         id="d64609e214-true-d68273e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e214-true-d68273e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:text (rule-reference: d64609e214-true-d68273e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:component[hl7:section])]"
         id="d64609e226-true-d68312e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e226-true-d68312e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:component[hl7:section] (rule-reference: d64609e226-true-d68312e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/*[not(@xsi:nil = 'true')][not(self::hl7:section[not(@nullFlavor)][hl7:text])]"
         id="d64609e235-true-d68359e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e235-true-d68359e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[not(@nullFlavor)][hl7:text] (rule-reference: d64609e235-true-d68359e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId | self::hl7:id | self::hl7:code | self::hl7:title | self::hl7:text | self::hl7:author[not(@nullFlavor)] | self::hl7:author[@nullFlavor] | self::hl7:entry)]"
         id="d64609e241-true-d68395e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e241-true-d68395e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId | hl7:id | hl7:code | hl7:title | hl7:text | hl7:author[not(@nullFlavor)] | hl7:author[@nullFlavor] | hl7:entry (rule-reference: d64609e241-true-d68395e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:functionCode | self::hl7:time | self::hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization])]"
         id="d68428e208-true-d68462e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="not(.)">(AuthorElements)/d68428e208-true-d68462e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:functionCode | hl7:time | hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization] (rule-reference: d68428e208-true-d68462e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:assignedPerson | self::hl7:assignedAuthoringDevice | self::hl7:representedOrganization[not(@nullFlavor)])]"
         id="d68428e281-true-d68523e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="not(.)">(AuthorElements)/d68428e281-true-d68523e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:telecom | hl7:assignedPerson | hl7:assignedAuthoringDevice | hl7:representedOrganization[not(@nullFlavor)] (rule-reference: d68428e281-true-d68523e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d68428e384-true-d68556e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="not(.)">(AuthorElements)/d68428e384-true-d68556e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d68428e384-true-d68556e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:assignedAuthoringDevice/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturerModelName | self::hl7:softwareName)]"
         id="d68428e398-true-d68582e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="not(.)">(AuthorElements)/d68428e398-true-d68582e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:manufacturerModelName | hl7:softwareName (rule-reference: d68428e398-true-d68582e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[not(@nullFlavor)]/hl7:assignedAuthor[not(@nullFlavor)][hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d68428e428-true-d68613e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="not(.)">(AuthorElements)/d68428e428-true-d68613e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d68428e428-true-d68613e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:time[@nullFlavor = 'NA'] | self::hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']])]"
         id="d68428e435-true-d68652e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="not(.)">(AuthorElements)/d68428e435-true-d68652e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:time[@nullFlavor = 'NA'] | hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']] (rule-reference: d68428e435-true-d68652e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1']]/hl7:component[hl7:section]/hl7:section[not(@nullFlavor)][hl7:text]/hl7:author[@nullFlavor]/hl7:assignedAuthor[@nullFlavor = 'NA'][hl7:id[@nullFlavor = 'NA']]/*[not(@xsi:nil = 'true')][not(self::hl7:id[@nullFlavor = 'NA'])]"
         id="d68428e460-true-d68671e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90004-2015-02-17T000000.html"
              test="not(.)">(AuthorElements)/d68428e460-true-d68671e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id[@nullFlavor = 'NA'] (rule-reference: d68428e460-true-d68671e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/*[not(@xsi:nil = 'true')][not(self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]] | self::hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6'] | self::hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7'] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]] | self::hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.16'] | self::hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.17'] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]])]"
         id="d64609e248-true-d69096e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e248-true-d69096e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]] | hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6'] | hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7'] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]] | hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.16'] | hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.17'] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]] (rule-reference: d64609e248-true-d69096e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']])]"
         id="d64609e257-true-d69125e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e257-true-d69125e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']] (rule-reference: d64609e257-true-d69125e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.1'] | self::hl7:code[(@code = 'BRIEFT' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]])]"
         id="d69101e8-true-d69175e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d69101e8-true-d69175e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.1'] | hl7:code[(@code = 'BRIEFT' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]] (rule-reference: d69101e8-true-d69175e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']])]"
         id="d69101e52-true-d69217e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d69101e52-true-d69217e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']] (rule-reference: d69101e52-true-d69217e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.2'] | self::hl7:value[not(@nullFlavor)])]"
         id="d69202e9-true-d69239e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d69202e9-true-d69239e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.2'] | hl7:value[not(@nullFlavor)] (rule-reference: d69202e9-true-d69239e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']])]"
         id="d64609e266-true-d69278e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e266-true-d69278e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']] (rule-reference: d64609e266-true-d69278e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.1'] | self::hl7:code[(@code = 'PFDIAG' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry)]"
         id="d69255e11-true-d69311e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d69255e11-true-d69311e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.1'] | hl7:code[(@code = 'PFDIAG' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry (rule-reference: d69255e11-true-d69311e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']])]"
         id="d64609e276-true-d69381e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e276-true-d69381e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']] (rule-reference: d64609e276-true-d69381e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.2'] | self::hl7:code[(@code = 'PFDIAG' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]])]"
         id="d69345e11-true-d69439e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d69345e11-true-d69439e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.2'] | hl7:code[(@code = 'PFDIAG' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]] (rule-reference: d69345e11-true-d69439e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']])]"
         id="d69345e20-true-d69504e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d69345e20-true-d69504e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']] (rule-reference: d69345e20-true-d69504e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] | self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] | self::hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27'] | self::hl7:id | self::hl7:code[@nullFlavor = 'NA'] | self::hl7:statusCode[@code = 'active' or @code = 'suspended' or @code = 'completed' or @code = 'aborted'] | self::hl7:effectiveTime[hl7:low] | self::hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]])]"
         id="d69468e5-true-d69595e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d69468e5-true-d69595e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] | hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] | hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27'] | hl7:id | hl7:code[@nullFlavor = 'NA'] | hl7:statusCode[@code = 'active' or @code = 'suspended' or @code = 'completed' or @code = 'aborted'] | hl7:effectiveTime[hl7:low] | hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]] (rule-reference: d69468e5-true-d69595e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:effectiveTime[hl7:low]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:high)]"
         id="d69468e55-true-d69660e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d69468e55-true-d69660e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:low | hl7:high (rule-reference: d69468e55-true-d69660e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']])]"
         id="d69468e63-true-d69696e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d69468e63-true-d69696e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']] (rule-reference: d69468e63-true-d69696e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] | self::hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28'] | self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | self::hl7:text[not(@nullFlavor)] | self::hl7:statusCode[@code = 'completed'] | self::hl7:effectiveTime[not(@nullFlavor)] | self::hl7:value)]"
         id="d69675e11-true-d69767e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d69675e11-true-d69767e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] | hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28'] | hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | hl7:text[not(@nullFlavor)] | hl7:statusCode[@code = 'completed'] | hl7:effectiveTime[not(@nullFlavor)] | hl7:value (rule-reference: d69675e11-true-d69767e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d69675e78-true-d69807e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d69675e78-true-d69807e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:originalText (rule-reference: d69675e78-true-d69807e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:text[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:reference[not(@nullFlavor)])]"
         id="d69675e117-true-d69826e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d69675e117-true-d69826e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:reference[not(@nullFlavor)] (rule-reference: d69675e117-true-d69826e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/*[not(@xsi:nil = 'true')][not(self::hl7:originalText[not(@nullFlavor)] | self::hl7:qualifier[hl7:name[@code='7']] | self::hl7:qualifier[hl7:name[@code='8']] | self::hl7:translation)]"
         id="d69675e145-true-d69863e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d69675e145-true-d69863e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:originalText[not(@nullFlavor)] | hl7:qualifier[hl7:name[@code='7']] | hl7:qualifier[hl7:name[@code='8']] | hl7:translation (rule-reference: d69675e145-true-d69863e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:qualifier[hl7:name[@code='7']]/*[not(@xsi:nil = 'true')][not(self::hl7:name[(@code = '7' and @codeSystem = '2.16.840.1.113883.3.7.1.0')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d69675e220-true-d69893e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d69675e220-true-d69893e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[(@code = '7' and @codeSystem = '2.16.840.1.113883.3.7.1.0')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.176-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d69675e220-true-d69893e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.2']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.1'] and hl7:templateId[@root = '1.2.40.0.34.11.1.3.5'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.1'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.27']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.5'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.28']]/hl7:value/hl7:qualifier[hl7:name[@code='8']]/*[not(@xsi:nil = 'true')][not(self::hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.168-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)])]"
         id="d69675e247-true-d69932e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d69675e247-true-d69932e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[(@code = '8' and @codeSystem = '2.16.840.1.113883.3.7.1.0')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.168-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] (rule-reference: d69675e247-true-d69932e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']])]"
         id="d64609e288-true-d69991e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e288-true-d69991e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']] (rule-reference: d64609e288-true-d69991e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.3'] | self::hl7:code[(@code = 'PFMOB' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d69956e8-true-d70044e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d69956e8-true-d70044e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.3'] | hl7:code[(@code = 'PFMOB' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d69956e8-true-d70044e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d70070e4-true-d70088e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d70070e4-true-d70088e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d70070e4-true-d70088e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d70073e8-true-d70122e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d70073e8-true-d70122e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d70073e8-true-d70122e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d70070e11-true-d70164e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d70070e11-true-d70164e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d70070e11-true-d70164e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.3']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d70149e8-true-d70198e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d70149e8-true-d70198e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d70149e8-true-d70198e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']])]"
         id="d64609e295-true-d70260e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e295-true-d70260e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']] (rule-reference: d64609e295-true-d70260e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.4'] | self::hl7:code[(@code = 'PFKLEI' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d70225e8-true-d70313e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d70225e8-true-d70313e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.4'] | hl7:code[(@code = 'PFKLEI' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d70225e8-true-d70313e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d70339e4-true-d70357e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d70339e4-true-d70357e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d70339e4-true-d70357e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d70342e8-true-d70391e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d70342e8-true-d70391e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d70342e8-true-d70391e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d70339e11-true-d70433e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d70339e11-true-d70433e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d70339e11-true-d70433e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.4']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d70418e8-true-d70467e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d70418e8-true-d70467e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d70418e8-true-d70467e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']])]"
         id="d64609e302-true-d70529e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e302-true-d70529e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']] (rule-reference: d64609e302-true-d70529e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.5'] | self::hl7:code[(@code = 'PFERN' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d70494e8-true-d70582e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d70494e8-true-d70582e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.5'] | hl7:code[(@code = 'PFERN' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d70494e8-true-d70582e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d70608e4-true-d70626e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d70608e4-true-d70626e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d70608e4-true-d70626e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d70611e8-true-d70660e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d70611e8-true-d70660e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d70611e8-true-d70660e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d70608e11-true-d70702e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d70608e11-true-d70702e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d70608e11-true-d70702e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.5']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d70687e8-true-d70736e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d70687e8-true-d70736e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d70687e8-true-d70736e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']])]"
         id="d64609e309-true-d70798e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e309-true-d70798e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']] (rule-reference: d64609e309-true-d70798e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.6'] | self::hl7:code[(@code = 'PFAUS' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d70763e8-true-d70851e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d70763e8-true-d70851e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.6'] | hl7:code[(@code = 'PFAUS' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d70763e8-true-d70851e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d70877e4-true-d70895e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d70877e4-true-d70895e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d70877e4-true-d70895e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d70880e8-true-d70929e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d70880e8-true-d70929e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d70880e8-true-d70929e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d70877e11-true-d70971e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d70877e11-true-d70971e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d70877e11-true-d70971e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.6']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d70956e8-true-d71005e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d70956e8-true-d71005e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d70956e8-true-d71005e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']])]"
         id="d64609e316-true-d71067e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e316-true-d71067e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']] (rule-reference: d64609e316-true-d71067e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.7'] | self::hl7:code[(@code = 'PFHAUT' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d71032e8-true-d71120e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d71032e8-true-d71120e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.7'] | hl7:code[(@code = 'PFHAUT' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d71032e8-true-d71120e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d71146e4-true-d71164e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d71146e4-true-d71164e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d71146e4-true-d71164e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d71149e8-true-d71198e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d71149e8-true-d71198e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d71149e8-true-d71198e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d71146e11-true-d71240e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d71146e11-true-d71240e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d71146e11-true-d71240e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.7']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d71225e8-true-d71274e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d71225e8-true-d71274e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d71225e8-true-d71274e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']])]"
         id="d64609e323-true-d71336e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e323-true-d71336e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']] (rule-reference: d64609e323-true-d71336e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.8'] | self::hl7:code[(@code = 'PFATM' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d71301e8-true-d71389e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d71301e8-true-d71389e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.8'] | hl7:code[(@code = 'PFATM' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d71301e8-true-d71389e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d71415e4-true-d71433e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d71415e4-true-d71433e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d71415e4-true-d71433e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d71418e8-true-d71467e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d71418e8-true-d71467e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d71418e8-true-d71467e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d71415e11-true-d71509e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d71415e11-true-d71509e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d71415e11-true-d71509e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.8']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d71494e8-true-d71543e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d71494e8-true-d71543e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d71494e8-true-d71543e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']])]"
         id="d64609e331-true-d71605e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e331-true-d71605e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']] (rule-reference: d64609e331-true-d71605e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.9'] | self::hl7:code[(@code = 'PFSCHL' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d71570e8-true-d71658e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d71570e8-true-d71658e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.9'] | hl7:code[(@code = 'PFSCHL' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d71570e8-true-d71658e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d71684e4-true-d71702e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d71684e4-true-d71702e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d71684e4-true-d71702e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d71687e8-true-d71736e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d71687e8-true-d71736e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d71687e8-true-d71736e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d71684e11-true-d71778e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d71684e11-true-d71778e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d71684e11-true-d71778e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.9']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d71763e8-true-d71812e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d71763e8-true-d71812e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d71763e8-true-d71812e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']])]"
         id="d64609e338-true-d71877e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e338-true-d71877e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']] (rule-reference: d64609e338-true-d71877e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4'] | self::hl7:code[(@code = '38212-7' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d71839e8-true-d71938e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d71839e8-true-d71938e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4'] | hl7:code[(@code = '38212-7' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d71839e8-true-d71938e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d71970e4-true-d71988e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d71970e4-true-d71988e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d71970e4-true-d71988e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d71973e8-true-d72022e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d71973e8-true-d72022e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d71973e8-true-d72022e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d71970e11-true-d72064e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d71970e11-true-d72064e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d71970e11-true-d72064e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.10'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.20.2.4']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d72049e8-true-d72098e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d72049e8-true-d72098e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d72049e8-true-d72098e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']])]"
         id="d64609e345-true-d72160e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e345-true-d72160e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']] (rule-reference: d64609e345-true-d72160e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.11'] | self::hl7:code[(@code = 'PFORIE' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d72125e8-true-d72213e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d72125e8-true-d72213e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.11'] | hl7:code[(@code = 'PFORIE' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d72125e8-true-d72213e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d72239e4-true-d72257e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d72239e4-true-d72257e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d72239e4-true-d72257e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d72242e8-true-d72291e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d72242e8-true-d72291e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d72242e8-true-d72291e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d72239e11-true-d72333e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d72239e11-true-d72333e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d72239e11-true-d72333e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.11']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d72318e8-true-d72367e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d72318e8-true-d72367e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d72318e8-true-d72367e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']])]"
         id="d64609e352-true-d72429e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e352-true-d72429e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']] (rule-reference: d64609e352-true-d72429e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.12'] | self::hl7:code[(@code = 'PFSOZV' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d72394e8-true-d72482e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d72394e8-true-d72482e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.12'] | hl7:code[(@code = 'PFSOZV' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d72394e8-true-d72482e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d72508e4-true-d72526e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d72508e4-true-d72526e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d72508e4-true-d72526e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d72511e8-true-d72560e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d72511e8-true-d72560e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d72511e8-true-d72560e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d72508e11-true-d72602e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d72508e11-true-d72602e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d72508e11-true-d72602e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.12']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d72587e8-true-d72636e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d72587e8-true-d72636e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d72587e8-true-d72636e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']])]"
         id="d64609e359-true-d72698e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e359-true-d72698e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']] (rule-reference: d64609e359-true-d72698e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.13'] | self::hl7:code[(@code = 'PFKOMM' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d72663e8-true-d72751e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d72663e8-true-d72751e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.13'] | hl7:code[(@code = 'PFKOMM' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d72663e8-true-d72751e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d72777e4-true-d72795e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d72777e4-true-d72795e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d72777e4-true-d72795e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d72780e8-true-d72829e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d72780e8-true-d72829e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d72780e8-true-d72829e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d72777e11-true-d72871e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d72777e11-true-d72871e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d72777e11-true-d72871e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.13']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d72856e8-true-d72905e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d72856e8-true-d72905e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d72856e8-true-d72905e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']])]"
         id="d64609e366-true-d72967e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e366-true-d72967e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']] (rule-reference: d64609e366-true-d72967e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.14'] | self::hl7:code[(@code = 'PFROLL' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d72932e8-true-d73020e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d72932e8-true-d73020e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.14'] | hl7:code[(@code = 'PFROLL' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d72932e8-true-d73020e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d73046e4-true-d73064e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d73046e4-true-d73064e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d73046e4-true-d73064e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d73049e8-true-d73098e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d73049e8-true-d73098e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d73049e8-true-d73098e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d73046e11-true-d73140e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d73046e11-true-d73140e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d73046e11-true-d73140e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.14']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d73125e8-true-d73174e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d73125e8-true-d73174e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d73125e8-true-d73174e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6']/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']])]"
         id="d64609e376-true-d73223e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e376-true-d73223e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']] (rule-reference: d64609e376-true-d73223e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.6']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] | self::hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16'] | self::hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text | self::hl7:entry)]"
         id="d73201e11-true-d73272e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d73201e11-true-d73272e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.6'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] | hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16'] | hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text | hl7:entry (rule-reference: d73201e11-true-d73272e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']])]"
         id="d64609e386-true-d73352e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e386-true-d73352e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']] (rule-reference: d64609e386-true-d73352e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] | self::hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16'] | self::hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text | self::hl7:entry[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]])]"
         id="d73318e11-true-d73435e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d73318e11-true-d73435e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] | hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16'] | hl7:code[(@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text | hl7:entry[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]] (rule-reference: d73318e11-true-d73435e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']])]"
         id="d73318e41-true-d73515e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d73318e41-true-d73515e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']] (rule-reference: d73318e41-true-d73515e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] | self::hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] | self::hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1'] | self::hl7:id | self::hl7:code[(@code = '46680005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:statusCode[@code = 'completed'] | self::hl7:effectiveTime | self::hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]])]"
         id="d73482e13-true-d73602e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d73482e13-true-d73602e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] | hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] | hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1'] | hl7:id | hl7:code[(@code = '46680005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:statusCode[@code = 'completed'] | hl7:effectiveTime | hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]] (rule-reference: d73482e13-true-d73602e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']])]"
         id="d73482e119-true-d73677e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d73482e119-true-d73677e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']] (rule-reference: d73482e119-true-d73677e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] | self::hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31'] | self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | self::hl7:text[not(@nullFlavor)] | self::hl7:statusCode[@code = 'completed'] | self::hl7:effectiveTime | self::hl7:value[not(@nullFlavor)])]"
         id="d73653e7-true-d73756e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d73653e7-true-d73756e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] | hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31'] | hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | hl7:text[not(@nullFlavor)] | hl7:statusCode[@code = 'completed'] | hl7:effectiveTime | hl7:value[not(@nullFlavor)] (rule-reference: d73653e7-true-d73756e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText[not(@nullFlavor)])]"
         id="d73653e64-true-d73802e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d73653e64-true-d73802e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:originalText[not(@nullFlavor)] (rule-reference: d73653e64-true-d73802e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.1.2.7']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.7'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.5.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.25'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.16']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]]/hl7:organizer[hl7:templateId[@root = '1.2.40.0.34.11.1.3.3'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.32'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.35'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.1']]/hl7:component[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.1.3.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.4.13.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.31']]/hl7:text[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:reference[not(@nullFlavor)])]"
         id="d73653e101-true-d73821e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d73653e101-true-d73821e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:reference[not(@nullFlavor)] (rule-reference: d73653e101-true-d73821e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']])]"
         id="d64609e397-true-d73876e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e397-true-d73876e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']] (rule-reference: d64609e397-true-d73876e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.18'] | self::hl7:code[(@code = 'PFMEDBEH' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d73847e8-true-d73937e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d73847e8-true-d73937e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.18'] | hl7:code[(@code = 'PFMEDBEH' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d73847e8-true-d73937e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']])]"
         id="d73847e39-true-d73979e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d73847e39-true-d73979e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']] (rule-reference: d73847e39-true-d73979e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | self::hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title | self::hl7:text)]"
         id="d73968e1-true-d74013e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d73968e1-true-d74013e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.8'] | hl7:code[(@code = '51898-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title | hl7:text (rule-reference: d73968e1-true-d74013e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d73847e42-true-d74055e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d73847e42-true-d74055e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d73847e42-true-d74055e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.18']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d74044e1-true-d74089e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d74044e1-true-d74089e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d74044e1-true-d74089e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']])]"
         id="d64609e404-true-d74139e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e404-true-d74139e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']] (rule-reference: d64609e404-true-d74139e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.15'] | self::hl7:code[(@code = 'PFMED' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]])]"
         id="d74116e8-true-d74187e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d74116e8-true-d74187e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.15'] | hl7:code[(@code = 'PFMED' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]] (rule-reference: d74116e8-true-d74187e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']])]"
         id="d74116e33-true-d74229e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d74116e33-true-d74229e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']] (rule-reference: d74116e33-true-d74229e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.15']]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | self::hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d74218e1-true-d74263e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d74218e1-true-d74263e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.9'] | hl7:code[(@code = 'RES' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d74218e1-true-d74263e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']])]"
         id="d64609e411-true-d74305e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e411-true-d74305e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']] (rule-reference: d64609e411-true-d74305e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.5']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.5'] | self::hl7:code[(@code = 'ANM' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text)]"
         id="d74290e8-true-d74339e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d74290e8-true-d74339e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.5'] | hl7:code[(@code = 'ANM' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text (rule-reference: d74290e8-true-d74339e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.16']/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']])]"
         id="d64609e420-true-d74386e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e420-true-d74386e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']] (rule-reference: d64609e420-true-d74386e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.16']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32'] | self::hl7:code[(@code = '8650-4' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry)]"
         id="d74366e11-true-d74427e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d74366e11-true-d74427e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.16'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32'] | hl7:code[(@code = '8650-4' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry (rule-reference: d74366e11-true-d74427e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.17']/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']])]"
         id="d64609e430-true-d74491e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e430-true-d74491e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']] (rule-reference: d64609e430-true-d74491e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.17']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32'] | self::hl7:code[(@code = '8650-4' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]])]"
         id="d74467e11-true-d74543e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d74467e11-true-d74543e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32'] | hl7:code[(@code = '8650-4' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]] (rule-reference: d74467e11-true-d74543e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.17']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']])]"
         id="d74467e25-true-d74596e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d74467e25-true-d74596e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']] (rule-reference: d74467e25-true-d74596e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.17']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2'] | self::hl7:id[not(@nullFlavor)] | self::hl7:code[(@code = 'GEPLENTLDAT' and @codeSystem = '1.2.40.0.34.5.28')] | self::hl7:text[not(@nullFlavor)] | self::hl7:statusCode[@code = 'normal'] | self::hl7:effectiveTime[not(@nullFlavor)])]"
         id="d74578e5-true-d74650e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d74578e5-true-d74650e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2'] | hl7:id[not(@nullFlavor)] | hl7:code[(@code = 'GEPLENTLDAT' and @codeSystem = '1.2.40.0.34.5.28')] | hl7:text[not(@nullFlavor)] | hl7:statusCode[@code = 'normal'] | hl7:effectiveTime[not(@nullFlavor)] (rule-reference: d74578e5-true-d74650e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.17']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:code[(@code = 'GEPLENTLDAT' and @codeSystem = '1.2.40.0.34.5.28')]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d74578e39-true-d74682e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d74578e39-true-d74682e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:originalText (rule-reference: d74578e39-true-d74682e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.17']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:text[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:reference[not(@nullFlavor)])]"
         id="d74578e61-true-d74701e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d74578e61-true-d74701e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:reference[not(@nullFlavor)] (rule-reference: d74578e61-true-d74701e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section/hl7:templateId/@root='1.2.40.0.34.11.3.2.17']/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.3.2.17'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.32']]/hl7:entry[hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]]/hl7:act[hl7:templateId[@root = '1.2.40.0.34.11.3.3.2'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.1.10.4.2']]/hl7:effectiveTime[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:low[not(@nullFlavor)] | self::hl7:high[@nullFlavor = 'NI'])]"
         id="d74578e81-true-d74731e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d74578e81-true-d74731e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:low[not(@nullFlavor)] | hl7:high[@nullFlavor = 'NI'] (rule-reference: d74578e81-true-d74731e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']])]"
         id="d64609e441-true-d74767e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e441-true-d74767e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']] (rule-reference: d64609e441-true-d74767e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] and hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] | self::hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] | self::hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1'] | self::hl7:code | self::hl7:title | self::hl7:text)]"
         id="d74746e8-true-d74814e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d74746e8-true-d74814e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.4'] | hl7:templateId[@root = '1.3.6.1.4.1.19376.1.5.3.1.3.34'] | hl7:templateId[@root = '2.16.840.1.113883.10.20.1.1'] | hl7:code | hl7:title | hl7:text (rule-reference: d74746e8-true-d74814e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']])]"
         id="d64609e449-true-d74877e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e449-true-d74877e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']] (rule-reference: d64609e449-true-d74877e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.2'] | self::hl7:code[(@code = 'ABBEM' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]])]"
         id="d74853e8-true-d74927e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d74853e8-true-d74927e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.2'] | hl7:code[(@code = 'ABBEM' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] (rule-reference: d74853e8-true-d74927e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']])]"
         id="d74853e40-true-d74969e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d74853e40-true-d74969e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] (rule-reference: d74853e40-true-d74969e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | self::hl7:value[not(@nullFlavor)])]"
         id="d74958e1-true-d74991e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d74958e1-true-d74991e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | hl7:value[not(@nullFlavor)] (rule-reference: d74958e1-true-d74991e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']])]"
         id="d64609e456-true-d75031e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d64609e456-true-d75031e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']] (rule-reference: d64609e456-true-d75031e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.3'] | self::hl7:code[(@code = 'BEIL' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]])]"
         id="d75007e8-true-d75081e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d75007e8-true-d75081e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.3'] | hl7:code[(@code = 'BEIL' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] (rule-reference: d75007e8-true-d75081e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']])]"
         id="d75007e41-true-d75123e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d75007e41-true-d75123e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] (rule-reference: d75007e41-true-d75123e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.3']]/hl7:component/hl7:structuredBody[not(ancestor::*//hl7:templateId[@root='1.2.40.0.34.11.3.0.1'])]/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.3']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | self::hl7:value[not(@nullFlavor)])]"
         id="d75108e9-true-d75145e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.3-2015-12-11T000000.html"
              test="not(.)">(EntlassungsbriefPflege)/d75108e9-true-d75145e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | hl7:value[not(@nullFlavor)] (rule-reference: d75108e9-true-d75145e0)</assert>
   </rule>
</pattern>
