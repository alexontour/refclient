<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 1.2.40.0.34.11.10004
Name: ELGA CDA Dokument Befund Bildgebende Diagnostik
Description: 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-1.2.40.0.34.11.10004-2013-10-16T000000-closed">
   <title>ELGA CDA Dokument Befund Bildgebende Diagnostik</title>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/*[not(@xsi:nil = 'true')][not(self::hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']])]"
         id="d20e7374-true-d91553e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10004-2013-10-16T000000.html"
              test="not(.)">(CDABildiag)/d20e7374-true-d91553e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']] (rule-reference: d20e7374-true-d91553e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/*[not(@xsi:nil = 'true')][not(self::hl7:realmCode[not(@nullFlavor)] | self::hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] | self::hl7:templateId[@root = '1.2.40.0.34.11.1'] | self::hl7:templateId[@root = '1.2.40.0.34.11.5'] | self::hl7:templateId[@root='1.2.40.0.34.11.5.0.1'] | self::hl7:templateId[@root='1.2.40.0.34.11.5.0.3'] | self::hl7:id[not(@nullFlavor)] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.39-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | self::hl7:title[not(@nullFlavor)] | self::hl7:effectiveTime[not(@nullFlavor)] | self::hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] | self::hl7:languageCode[@code = 'de-AT'] | self::hl7:setId[not(@nullFlavor)] | self::hl7:versionNumber[not(@nullFlavor)] | self::hl7:recordTarget[hl7:patientRole] | self::hl7:author[hl7:assignedAuthor] | self::hl7:dataEnterer[hl7:assignedEntity] | self::hl7:custodian[hl7:assignedCustodian] | self::hl7:informationRecipient[hl7:intendedRecipient] | self::hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] | self::hl7:authenticator[hl7:signatureCode[@code = 'S']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']] | self::hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']] | self::hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']] | self::hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]] | self::hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument] | self::hl7:authorization | self::hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]] | self::hl7:component)]"
         id="d20e7382-true-d92059e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.10004-2013-10-16T000000.html"
              test="not(.)">(CDABildiag)/d20e7382-true-d92059e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:realmCode[not(@nullFlavor)] | hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] | hl7:templateId[@root = '1.2.40.0.34.11.1'] | hl7:templateId[@root = '1.2.40.0.34.11.5'] | hl7:templateId[@root='1.2.40.0.34.11.5.0.1'] | hl7:templateId[@root='1.2.40.0.34.11.5.0.3'] | hl7:id[not(@nullFlavor)] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.39-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | hl7:title[not(@nullFlavor)] | hl7:effectiveTime[not(@nullFlavor)] | hl7:confidentialityCode[(@code = 'N' and @codeSystem = '2.16.840.1.113883.5.25')] | hl7:languageCode[@code = 'de-AT'] | hl7:setId[not(@nullFlavor)] | hl7:versionNumber[not(@nullFlavor)] | hl7:recordTarget[hl7:patientRole] | hl7:author[hl7:assignedAuthor] | hl7:dataEnterer[hl7:assignedEntity] | hl7:custodian[hl7:assignedCustodian] | hl7:informationRecipient[hl7:intendedRecipient] | hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']] | hl7:authenticator[hl7:signatureCode[@code = 'S']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']] | hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']] | hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']] | hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]] | hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument] | hl7:authorization | hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]] | hl7:component (rule-reference: d20e7382-true-d92059e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:recordTarget[hl7:patientRole]/*[not(@xsi:nil = 'true')][not(self::hl7:patientRole)]"
         id="d92163e280-true-d92183e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="not(.)">(HeaderRecordTarget)/d92163e280-true-d92183e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:patientRole (rule-reference: d92163e280-true-d92183e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d92163e303-true-d92226e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="not(.)">(HeaderRecordTarget)/d92163e303-true-d92226e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d92163e303-true-d92226e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetAddressLine | self::hl7:streetName | self::hl7:houseNumber | self::hl7:postalCode[not(@nullFlavor)] | self::hl7:city[not(@nullFlavor)] | self::hl7:state | self::hl7:country[not(@nullFlavor)] | self::hl7:additionalLocator)]"
         id="d92163e396-true-d92280e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="not(.)">(HeaderRecordTarget)/d92163e396-true-d92280e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:streetAddressLine | hl7:streetName | hl7:houseNumber | hl7:postalCode[not(@nullFlavor)] | hl7:city[not(@nullFlavor)] | hl7:state | hl7:country[not(@nullFlavor)] | hl7:additionalLocator (rule-reference: d92163e396-true-d92280e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)] | self::hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:birthTime | self::hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:raceCode | self::hl7:ethnicGroupCode | self::hl7:guardian | self::hl7:birthplace[hl7:place] | self::hl7:languageCommunication)]"
         id="d92163e440-true-d92407e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="not(.)">(HeaderRecordTarget)/d92163e440-true-d92407e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] | hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | hl7:birthTime | hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.11-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | hl7:religiousAffiliationCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | hl7:raceCode | hl7:ethnicGroupCode | hl7:guardian | hl7:birthplace[hl7:place] | hl7:languageCommunication (rule-reference: d92163e440-true-d92407e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:prefix | self::hl7:given[not(@nullFlavor)] | self::hl7:family[not(@nullFlavor)] | self::hl7:suffix)]"
         id="d92163e446-true-d92436e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="not(.)">(HeaderRecordTarget)/d92163e446-true-d92436e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:prefix | hl7:given[not(@nullFlavor)] | hl7:family[not(@nullFlavor)] | hl7:suffix (rule-reference: d92163e446-true-d92436e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/*[not(@xsi:nil = 'true')][not(self::hl7:addr | self::hl7:telecom | self::hl7:guardianPerson | self::hl7:guardianOrganization)]"
         id="d92163e563-true-d92518e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="not(.)">(HeaderRecordTarget)/d92163e563-true-d92518e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:addr | hl7:telecom | hl7:guardianPerson | hl7:guardianOrganization (rule-reference: d92163e563-true-d92518e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d92163e596-true-d92542e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="not(.)">(HeaderRecordTarget)/d92163e596-true-d92542e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d92163e596-true-d92542e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d92163e612-true-d92561e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="not(.)">(HeaderRecordTarget)/d92163e612-true-d92561e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d92163e612-true-d92561e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/*[not(@xsi:nil = 'true')][not(self::hl7:place[not(@nullFlavor)])]"
         id="d92163e628-true-d92580e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="not(.)">(HeaderRecordTarget)/d92163e628-true-d92580e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:place[not(@nullFlavor)] (rule-reference: d92163e628-true-d92580e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthplace[hl7:place]/hl7:place[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:addr[not(@nullFlavor)])]"
         id="d92163e635-true-d92594e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20001-2017-07-20T000000.html"
              test="not(.)">(HeaderRecordTarget)/d92163e635-true-d92594e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:addr[not(@nullFlavor)] (rule-reference: d92163e635-true-d92594e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-1.2.40.0.34.10.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:languageCommunication/*[not(@xsi:nil = 'true')][not(self::hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor] | self::hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:preferenceInd)]"
         id="d92603e36-true-d92648e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90017-2017-03-27T000000.html"
              test="not(.)">(LanguageCommunication)/d92603e36-true-d92648e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:languageCode[@code = doc('include/voc-1.2.40.0.34.10.173-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor] | hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.175-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.174-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:preferenceInd (rule-reference: d92603e36-true-d92648e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:author[hl7:assignedAuthor]/*[not(@xsi:nil = 'true')][not(self::hl7:functionCode | self::hl7:time | self::hl7:assignedAuthor[hl7:representedOrganization])]"
         id="d92683e206-true-d92714e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="not(.)">(HeaderAuthor)/d92683e206-true-d92714e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:functionCode | hl7:time | hl7:assignedAuthor[hl7:representedOrganization] (rule-reference: d92683e206-true-d92714e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:assignedPerson | self::hl7:assignedAuthoringDevice | self::hl7:representedOrganization[not(@nullFlavor)])]"
         id="d92683e281-true-d92768e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="not(.)">(HeaderAuthor)/d92683e281-true-d92768e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:telecom | hl7:assignedPerson | hl7:assignedAuthoringDevice | hl7:representedOrganization[not(@nullFlavor)] (rule-reference: d92683e281-true-d92768e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d92683e437-true-d92801e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="not(.)">(HeaderAuthor)/d92683e437-true-d92801e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d92683e437-true-d92801e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:assignedAuthoringDevice/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturerModelName | self::hl7:softwareName)]"
         id="d92683e451-true-d92827e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="not(.)">(HeaderAuthor)/d92683e451-true-d92827e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:manufacturerModelName | hl7:softwareName (rule-reference: d92683e451-true-d92827e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor[hl7:representedOrganization]/hl7:representedOrganization[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)] | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d92683e481-true-d92866e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20002-2015-05-09T000000.html"
              test="not(.)">(HeaderAuthor)/d92683e481-true-d92866e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id[not(@nullFlavor)] | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d92683e481-true-d92866e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:dataEnterer[hl7:assignedEntity]/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:assignedEntity[hl7:assignedPerson])]"
         id="d92892e50-true-d92930e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20003-2013-02-10T000000.html"
              test="not(.)">(HeaderDataEnterer)/d92892e50-true-d92930e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:time | hl7:assignedEntity[hl7:assignedPerson] (rule-reference: d92892e50-true-d92930e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:assignedPerson[not(@nullFlavor)] | self::hl7:representedOrganization)]"
         id="d92892e72-true-d92968e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20003-2013-02-10T000000.html"
              test="not(.)">(HeaderDataEnterer)/d92892e72-true-d92968e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:assignedPerson[not(@nullFlavor)] | hl7:representedOrganization (rule-reference: d92892e72-true-d92968e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d92972e54-true-d93000e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d92972e54-true-d93000e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d92972e54-true-d93000e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:dataEnterer[hl7:assignedEntity]/hl7:assignedEntity[hl7:assignedPerson]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d92972e64-true-d93028e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d92972e64-true-d93028e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d92972e64-true-d93028e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:custodian[hl7:assignedCustodian]/*[not(@xsi:nil = 'true')][not(self::hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization])]"
         id="d93056e102-true-d93068e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="not(.)">(HeaderCustodian)/d93056e102-true-d93068e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization] (rule-reference: d93056e102-true-d93068e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name])]"
         id="d93056e114-true-d93082e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="not(.)">(HeaderCustodian)/d93056e114-true-d93082e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name] (rule-reference: d93056e114-true-d93082e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[not(@nullFlavor)][hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization[not(@nullFlavor)][hl7:name]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr[not(@nullFlavor)])]"
         id="d93056e118-true-d93111e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20004-2015-05-28T000000.html"
              test="not(.)">(HeaderCustodian)/d93056e118-true-d93111e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr[not(@nullFlavor)] (rule-reference: d93056e118-true-d93111e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:informationRecipient[hl7:intendedRecipient]/*[not(@xsi:nil = 'true')][not(self::hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient])]"
         id="d93137e133-true-d93164e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="not(.)">(HeaderInformationRecipient)/d93137e133-true-d93164e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient] (rule-reference: d93137e133-true-d93164e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:informationRecipient[not(@nullFlavor)] | self::hl7:receivedOrganization)]"
         id="d93137e166-true-d93202e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="not(.)">(HeaderInformationRecipient)/d93137e166-true-d93202e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:informationRecipient[not(@nullFlavor)] | hl7:receivedOrganization (rule-reference: d93137e166-true-d93202e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:informationRecipient[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d93137e235-true-d93222e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="not(.)">(HeaderInformationRecipient)/d93137e235-true-d93222e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d93137e235-true-d93222e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:informationRecipient[hl7:intendedRecipient]/hl7:intendedRecipient[not(@nullFlavor)][hl7:informationRecipient]/hl7:receivedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d93137e259-true-d93250e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20005-2011-12-19T000000.html"
              test="not(.)">(HeaderInformationRecipient)/d93137e259-true-d93250e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d93137e259-true-d93250e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:signatureCode[@code = 'S'] | self::hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson])]"
         id="d93278e116-true-d93324e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="not(.)">(HeaderLegalAuthenticator)/d93278e116-true-d93324e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:time | hl7:signatureCode[@code = 'S'] | hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] (rule-reference: d93278e116-true-d93324e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:assignedPerson[not(@nullFlavor)] | self::hl7:representedOrganization)]"
         id="d93278e158-true-d93368e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20006-2011-12-19T000000.html"
              test="not(.)">(HeaderLegalAuthenticator)/d93278e158-true-d93368e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:assignedPerson[not(@nullFlavor)] | hl7:representedOrganization (rule-reference: d93278e158-true-d93368e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d93372e54-true-d93400e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d93372e54-true-d93400e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d93372e54-true-d93400e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:legalAuthenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d93372e64-true-d93428e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d93372e64-true-d93428e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d93372e64-true-d93428e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:signatureCode[@code = 'S'] | self::hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson])]"
         id="d93456e156-true-d93502e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="not(.)">(HeaderAuthenticator)/d93456e156-true-d93502e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:time | hl7:signatureCode[@code = 'S'] | hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] (rule-reference: d93456e156-true-d93502e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:assignedPerson[not(@nullFlavor)] | self::hl7:representedOrganization)]"
         id="d93456e191-true-d93546e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20007-2011-12-19T000000.html"
              test="not(.)">(HeaderAuthenticator)/d93456e191-true-d93546e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:assignedPerson[not(@nullFlavor)] | hl7:representedOrganization (rule-reference: d93456e191-true-d93546e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d93550e54-true-d93578e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d93550e54-true-d93578e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d93550e54-true-d93578e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:authenticator[hl7:signatureCode[@code = 'S']]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d93550e64-true-d93606e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d93550e64-true-d93606e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d93550e64-true-d93606e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.1'] | self::hl7:time | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson])]"
         id="d93634e107-true-d93666e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="not(.)">(HeaderParticipantAnsprechpartner)/d93634e107-true-d93666e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.1'] | hl7:time | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] (rule-reference: d93634e107-true-d93666e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:addr | self::hl7:telecom[not(@nullFlavor)] | self::hl7:associatedPerson[not(@nullFlavor)] | self::hl7:scopingOrganization)]"
         id="d93634e126-true-d93720e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="not(.)">(HeaderParticipantAnsprechpartner)/d93634e126-true-d93720e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:addr | hl7:telecom[not(@nullFlavor)] | hl7:associatedPerson[not(@nullFlavor)] | hl7:scopingOrganization (rule-reference: d93634e126-true-d93720e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d93634e174-true-d93745e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="not(.)">(HeaderParticipantAnsprechpartner)/d93634e174-true-d93745e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d93634e174-true-d93745e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.1']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d93634e188-true-d93773e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.1-2014-03-25T000000.html"
              test="not(.)">(HeaderParticipantAnsprechpartner)/d93634e188-true-d93773e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d93634e188-true-d93773e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.2'] | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson])]"
         id="d93801e83-true-d93828e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantRefArzt)/d93801e83-true-d93828e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.2'] | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] (rule-reference: d93801e83-true-d93828e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:associatedPerson | self::hl7:scopingOrganization)]"
         id="d93801e119-true-d93882e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantRefArzt)/d93801e119-true-d93882e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:associatedPerson | hl7:scopingOrganization (rule-reference: d93801e119-true-d93882e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d93801e212-true-d93912e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantRefArzt)/d93801e212-true-d93912e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d93801e212-true-d93912e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.2']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d93801e226-true-d93940e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.2-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantRefArzt)/d93801e226-true-d93940e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d93801e226-true-d93940e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.3'] | self::hl7:functionCode[(@code = 'PCP' and @codeSystem = '2.16.840.1.113883.5.88')] | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson])]"
         id="d93968e87-true-d94002e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantHausarzt)/d93968e87-true-d94002e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.3'] | hl7:functionCode[(@code = 'PCP' and @codeSystem = '2.16.840.1.113883.5.88')] | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] (rule-reference: d93968e87-true-d94002e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:associatedPerson[not(@nullFlavor)] | self::hl7:scopingOrganization)]"
         id="d93968e123-true-d94062e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantHausarzt)/d93968e123-true-d94062e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:associatedPerson[not(@nullFlavor)] | hl7:scopingOrganization (rule-reference: d93968e123-true-d94062e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d93968e222-true-d94092e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantHausarzt)/d93968e222-true-d94092e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d93968e222-true-d94092e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.3']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d93968e241-true-d94120e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.3-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantHausarzt)/d93968e241-true-d94120e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d93968e241-true-d94120e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.4'] | self::hl7:time | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson])]"
         id="d94148e55-true-d94180e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="not(.)">(HeaderParticipantNotfallkontakt)/d94148e55-true-d94180e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.4'] | hl7:time | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson] (rule-reference: d94148e55-true-d94180e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom | self::hl7:associatedPerson[not(@nullFlavor)] | self::hl7:scopingOrganization)]"
         id="d94148e106-true-d94245e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="not(.)">(HeaderParticipantNotfallkontakt)/d94148e106-true-d94245e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom | hl7:associatedPerson[not(@nullFlavor)] | hl7:scopingOrganization (rule-reference: d94148e106-true-d94245e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d94148e188-true-d94278e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="not(.)">(HeaderParticipantNotfallkontakt)/d94148e188-true-d94278e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d94148e188-true-d94278e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.4']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'ECON'][hl7:associatedPerson]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d94148e207-true-d94306e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.4-2013-11-13T000000.html"
              test="not(.)">(HeaderParticipantNotfallkontakt)/d94148e207-true-d94306e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d94148e207-true-d94306e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.5'] | self::hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]])]"
         id="d94334e39-true-d94367e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="not(.)">(HeaderParticipantAngehoerige)/d94334e39-true-d94367e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.5'] | hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] (rule-reference: d94334e39-true-d94367e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | self::hl7:addr | self::hl7:telecom | self::hl7:associatedPerson[not(@nullFlavor)] | self::hl7:scopingOrganization)]"
         id="d94334e56-true-d94430e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="not(.)">(HeaderParticipantAngehoerige)/d94334e56-true-d94430e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | hl7:addr | hl7:telecom | hl7:associatedPerson[not(@nullFlavor)] | hl7:scopingOrganization (rule-reference: d94334e56-true-d94430e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:associatedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d94334e127-true-d94463e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="not(.)">(HeaderParticipantAngehoerige)/d94334e127-true-d94463e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d94334e127-true-d94463e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.5']]/hl7:associatedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d94334e139-true-d94491e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.5-2016-07-21T000000.html"
              test="not(.)">(HeaderParticipantAngehoerige)/d94334e139-true-d94491e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d94334e139-true-d94491e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.6'] | self::hl7:time | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization])]"
         id="d94519e170-true-d94551e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="not(.)">(HeaderParticipantVersicherung)/d94519e170-true-d94551e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.6'] | hl7:time | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization] (rule-reference: d94519e170-true-d94551e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom | self::hl7:associatedPerson | self::hl7:scopingOrganization)]"
         id="d94519e204-true-d94621e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="not(.)">(HeaderParticipantVersicherung)/d94519e204-true-d94621e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom | hl7:associatedPerson | hl7:scopingOrganization (rule-reference: d94519e204-true-d94621e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:associatedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d94519e338-true-d94659e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="not(.)">(HeaderParticipantVersicherung)/d94519e338-true-d94659e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d94519e338-true-d94659e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.6']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'POLHOLD'][hl7:scopingOrganization]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d94519e355-true-d94687e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.6-2015-11-25T000000.html"
              test="not(.)">(HeaderParticipantVersicherung)/d94519e355-true-d94687e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d94519e355-true-d94687e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.7'] | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization])]"
         id="d94715e70-true-d94738e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantBetreuorg)/d94715e70-true-d94738e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.7'] | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization] (rule-reference: d94715e70-true-d94738e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:scopingOrganization[not(@nullFlavor)])]"
         id="d94715e87-true-d94766e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantBetreuorg)/d94715e87-true-d94766e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:scopingOrganization[not(@nullFlavor)] (rule-reference: d94715e87-true-d94766e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.7']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'CAREGIVER'][hl7:scopingOrganization]/hl7:scopingOrganization[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d94715e99-true-d94787e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.7-2013-10-16T000000.html"
              test="not(.)">(HeaderParticipantBetreuorg)/d94715e99-true-d94787e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d94715e99-true-d94787e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.1.8'] | self::hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson])]"
         id="d94815e57-true-d94853e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="not(.)">(HeaderParticipantConsultant)/d94815e57-true-d94853e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.1.8'] | hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson] (rule-reference: d94815e57-true-d94853e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:addr | self::hl7:telecom | self::hl7:associatedPerson[not(@nullFlavor)] | self::hl7:scopingOrganization)]"
         id="d94815e103-true-d94910e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="not(.)">(HeaderParticipantConsultant)/d94815e103-true-d94910e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:addr | hl7:telecom | hl7:associatedPerson[not(@nullFlavor)] | hl7:scopingOrganization (rule-reference: d94815e103-true-d94910e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:associatedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d94815e147-true-d94935e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="not(.)">(HeaderParticipantConsultant)/d94815e147-true-d94935e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d94815e147-true-d94935e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:participant[hl7:templateId[@root='1.2.40.0.34.11.1.1.8']]/hl7:associatedEntity[not(@nullFlavor)][@classCode = 'PROV'][hl7:associatedPerson]/hl7:scopingOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d94815e166-true-d94963e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.1.1.8-2017-02-20T000000.html"
              test="not(.)">(HeaderParticipantConsultant)/d94815e166-true-d94963e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d94815e166-true-d94963e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/*[not(@xsi:nil = 'true')][not(self::hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO'])]"
         id="d94991e24-true-d95003e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20009-2011-12-19T000000.html"
              test="not(.)">(HeaderInFulfillmentOf)/d94991e24-true-d95003e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO'] (rule-reference: d94991e24-true-d95003e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:inFulfillmentOf[@typeCode = 'FLFS'][hl7:order[@classCode = 'ACT'][@moodCode = 'RQO']]/hl7:order[not(@nullFlavor)][@classCode = 'ACT'][@moodCode = 'RQO']/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)])]"
         id="d94991e33-true-d95017e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20009-2011-12-19T000000.html"
              test="not(.)">(HeaderInFulfillmentOf)/d94991e33-true-d95017e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id[not(@nullFlavor)] (rule-reference: d94991e33-true-d95017e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/*[not(@xsi:nil = 'true')][not(self::hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']])]"
         id="d92082e142-true-d95060e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e142-true-d95060e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']] (rule-reference: d92082e142-true-d95060e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/*[not(@xsi:nil = 'true')][not(self::hl7:code[@codeSystem = '1.2.40.0.34.5.38'] | self::hl7:effectiveTime[not(@nullFlavor)] | self::hl7:performer[@typeCode][hl7:assignedEntity])]"
         id="d92082e168-true-d95108e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e168-true-d95108e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:code[@codeSystem = '1.2.40.0.34.5.38'] | hl7:effectiveTime[not(@nullFlavor)] | hl7:performer[@typeCode][hl7:assignedEntity] (rule-reference: d92082e168-true-d95108e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:effectiveTime[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:low[not(@nullFlavor)] | self::hl7:high)]"
         id="d92082e244-true-d95133e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e244-true-d95133e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:low[not(@nullFlavor)] | hl7:high (rule-reference: d92082e244-true-d95133e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:performer[@typeCode][hl7:assignedEntity]/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson])]"
         id="d92082e254-true-d95183e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e254-true-d95183e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:time | hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] (rule-reference: d92082e254-true-d95183e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:performer[@typeCode][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:assignedPerson[not(@nullFlavor)] | self::hl7:representedOrganization)]"
         id="d92082e267-true-d95221e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e267-true-d95221e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:assignedPerson[not(@nullFlavor)] | hl7:representedOrganization (rule-reference: d92082e267-true-d95221e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:performer[@typeCode][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d95225e54-true-d95253e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d95225e54-true-d95253e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d95225e54-true-d95253e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]]/hl7:serviceEvent[hl7:code[@codeSystem = '1.2.40.0.34.5.38']]/hl7:performer[@typeCode][hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d95225e64-true-d95281e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d95225e64-true-d95281e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d95225e64-true-d95281e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/*[not(@xsi:nil = 'true')][not(self::hl7:parentDocument[not(@nullFlavor)])]"
         id="d95309e20-true-d95321e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="not(.)">(HeaderRelatedDocument)/d95309e20-true-d95321e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:parentDocument[not(@nullFlavor)] (rule-reference: d95309e20-true-d95321e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:relatedDocument[@typeCode = 'RPLC'][hl7:parentDocument]/hl7:parentDocument[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)])]"
         id="d95309e35-true-d95335e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20011-2014-12-06T000000.html"
              test="not(.)">(HeaderRelatedDocument)/d95309e35-true-d95335e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id[not(@nullFlavor)] (rule-reference: d95309e35-true-d95335e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/*[not(@xsi:nil = 'true')][not(self::hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]])]"
         id="d95355e138-true-d95403e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20013-2011-12-19T000000.html"
              test="not(.)">(HeaderEncompassingEncounter)/d95355e138-true-d95403e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] (rule-reference: d95355e138-true-d95403e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | self::hl7:effectiveTime[not(@nullFlavor)] | self::hl7:responsibleParty[hl7:assignedEntity] | self::hl7:location[hl7:healthCareFacility])]"
         id="d95355e147-true-d95468e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20013-2011-12-19T000000.html"
              test="not(.)">(HeaderEncompassingEncounter)/d95355e147-true-d95468e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | hl7:effectiveTime[not(@nullFlavor)] | hl7:responsibleParty[hl7:assignedEntity] | hl7:location[hl7:healthCareFacility] (rule-reference: d95355e147-true-d95468e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:effectiveTime[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:high)]"
         id="d95355e175-true-d95500e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20013-2011-12-19T000000.html"
              test="not(.)">(HeaderEncompassingEncounter)/d95355e175-true-d95500e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:low | hl7:high (rule-reference: d95355e175-true-d95500e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:responsibleParty[hl7:assignedEntity]/*[not(@xsi:nil = 'true')][not(self::hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson])]"
         id="d95355e191-true-d95545e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20013-2011-12-19T000000.html"
              test="not(.)">(HeaderEncompassingEncounter)/d95355e191-true-d95545e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson] (rule-reference: d95355e191-true-d95545e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom | self::hl7:assignedPerson[not(@nullFlavor)] | self::hl7:representedOrganization)]"
         id="d95355e199-true-d95578e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.20013-2011-12-19T000000.html"
              test="not(.)">(HeaderEncompassingEncounter)/d95355e199-true-d95578e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:addr | hl7:telecom | hl7:assignedPerson[not(@nullFlavor)] | hl7:representedOrganization (rule-reference: d95355e199-true-d95578e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:name[not(@nullFlavor)])]"
         id="d95582e54-true-d95610e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d95582e54-true-d95610e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[not(@nullFlavor)] (rule-reference: d95582e54-true-d95610e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:responsibleParty[hl7:assignedEntity]/hl7:assignedEntity[not(@nullFlavor)][hl7:assignedPerson]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:addr)]"
         id="d95582e64-true-d95638e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90003-2011-12-19T000000.html"
              test="not(.)">(AssignedEntityElements)/d95582e64-true-d95638e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:addr (rule-reference: d95582e64-true-d95638e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:location[hl7:healthCareFacility]/*[not(@xsi:nil = 'true')][not(self::hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization])]"
         id="d95664e9-true-d95676e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90006-2014-01-05T000000.html"
              test="not(.)">(EncounterLocation)/d95664e9-true-d95676e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization] (rule-reference: d95664e9-true-d95676e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:serviceProviderOrganization[not(@nullFlavor)])]"
         id="d95664e29-true-d95690e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90006-2014-01-05T000000.html"
              test="not(.)">(EncounterLocation)/d95664e29-true-d95690e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:serviceProviderOrganization[not(@nullFlavor)] (rule-reference: d95664e29-true-d95690e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:componentOf[hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:encompassingEncounter[hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:location[hl7:healthCareFacility]/hl7:healthCareFacility[not(@nullFlavor)][hl7:serviceProviderOrganization]/hl7:serviceProviderOrganization[not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:name[not(@nullFlavor)] | self::hl7:telecom[not(@nullFlavor)] | self::hl7:addr[not(@nullFlavor)])]"
         id="d95664e49-true-d95719e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.90006-2014-01-05T000000.html"
              test="not(.)">(EncounterLocation)/d95664e49-true-d95719e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id | hl7:name[not(@nullFlavor)] | hl7:telecom[not(@nullFlavor)] | hl7:addr[not(@nullFlavor)] (rule-reference: d95664e49-true-d95719e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/*[not(@xsi:nil = 'true')][not(self::hl7:structuredBody | self::hl7:nonXMLBody)]"
         id="d92082e282-true-d95934e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e282-true-d95934e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:structuredBody | hl7:nonXMLBody (rule-reference: d92082e282-true-d95934e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/*[not(@xsi:nil = 'true')][not(self::hl7:component[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.1']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.3']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.4']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.6']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.7']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.8']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.10']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.11']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.12']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.14']]] | self::hl7:component[hl7:section/hl7:code/@code='55113-5'] | self::hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]])]"
         id="d92082e293-true-d96332e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e293-true-d96332e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:component[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.1']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.3']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.4']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.6']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.7']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.8']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.10']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.11']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.12']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.14']]] | hl7:component[hl7:section/hl7:code/@code='55113-5'] | hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]] (rule-reference: d92082e293-true-d96332e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']])]"
         id="d92082e299-true-d96372e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e299-true-d96372e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']] (rule-reference: d92082e299-true-d96372e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1'] | self::hl7:code[(@code = '121181' and @codeSystem = '1.2.840.10008.2.16.4')] | self::hl7:title | self::hl7:text | self::hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]])]"
         id="d96337e8-true-d96432e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d96337e8-true-d96432e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1'] | hl7:code[(@code = '121181' and @codeSystem = '1.2.840.10008.2.16.4')] | hl7:title | hl7:text | hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]] (rule-reference: d96337e8-true-d96432e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]/hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']])]"
         id="d96337e44-true-d96488e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d96337e44-true-d96488e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']] (rule-reference: d96337e44-true-d96488e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]/hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6'] | self::hl7:id[not(@extension)] | self::hl7:code[(@code = '113014' and @codeSystem = '1.2.840.10008.2.16.4')] | self::hl7:text | self::hl7:effectiveTime | self::hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)])]"
         id="d96459e7-true-d96532e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d96459e7-true-d96532e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6'] | hl7:id[not(@extension)] | hl7:code[(@code = '113014' and @codeSystem = '1.2.840.10008.2.16.4')] | hl7:text | hl7:effectiveTime | hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)] (rule-reference: d96459e7-true-d96532e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]/hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]])]"
         id="d96459e59-true-d96582e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d96459e59-true-d96582e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]] (rule-reference: d96459e59-true-d96582e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]/hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@extension)] | self::hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')] | self::hl7:text | self::hl7:effectiveTime | self::hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]])]"
         id="d96571e1-true-d96629e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d96571e1-true-d96629e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:id[not(@extension)] | hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')] | hl7:text | hl7:effectiveTime | hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]] (rule-reference: d96571e1-true-d96629e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]/hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]/*[not(@xsi:nil = 'true')][not(self::hl7:qualifier[hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')]])]"
         id="d96571e41-true-d96651e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d96571e41-true-d96651e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:qualifier[hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')]] (rule-reference: d96571e41-true-d96651e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]/hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]/hl7:qualifier[hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')]]/*[not(@xsi:nil = 'true')][not(self::hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')] | self::hl7:value[@codeSystem = '1.2.840.10008.2.16.4'])]"
         id="d96571e45-true-d96675e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d96571e45-true-d96675e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:name[(@code = '121139' and @codeSystem = '1.2.840.10008.2.16.4')] | hl7:value[@codeSystem = '1.2.840.10008.2.16.4'] (rule-reference: d96571e45-true-d96675e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]/hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']])]"
         id="d96571e76-true-d96717e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d96571e76-true-d96717e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']] (rule-reference: d96571e76-true-d96717e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]/hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8'] | self::hl7:id[not(@extension)] | self::hl7:code[@codeSystem = '1.2.840.10008.2.6.1'] | self::hl7:text[hl7:reference] | self::hl7:effectiveTime)]"
         id="d96702e5-true-d96756e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d96702e5-true-d96756e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8'] | hl7:id[not(@extension)] | hl7:code[@codeSystem = '1.2.840.10008.2.6.1'] | hl7:text[hl7:reference] | hl7:effectiveTime (rule-reference: d96702e5-true-d96756e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.1.1']]/hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.6']]/hl7:entryRelationship[hl7:act[hl7:code[@code='113015']]][not(@nullFlavor)]/hl7:act[hl7:code[(@code = '113015' and @codeSystem = '1.2.840.10008.2.16.4')]]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.8']]/hl7:text[hl7:reference]/*[not(@xsi:nil = 'true')][not(self::hl7:reference[not(@nullFlavor)])]"
         id="d96702e60-true-d96787e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d96702e60-true-d96787e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:reference[not(@nullFlavor)] (rule-reference: d96702e60-true-d96787e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']])]"
         id="d92082e306-true-d96826e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e306-true-d96826e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']] (rule-reference: d92082e306-true-d96826e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.1'] | self::hl7:code[(@code = 'BRIEFT' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]])]"
         id="d96802e8-true-d96876e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d96802e8-true-d96876e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.1'] | hl7:code[(@code = 'BRIEFT' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]] (rule-reference: d96802e8-true-d96876e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']])]"
         id="d96802e52-true-d96918e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d96802e52-true-d96918e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']] (rule-reference: d96802e52-true-d96918e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.1']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.2']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.2'] | self::hl7:value[not(@nullFlavor)])]"
         id="d96903e9-true-d96940e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d96903e9-true-d96940e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.2'] | hl7:value[not(@nullFlavor)] (rule-reference: d96903e9-true-d96940e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.1']])]"
         id="d92082e313-true-d96980e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e313-true-d96980e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.1']] (rule-reference: d92082e313-true-d96980e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.5.2.1'] | self::hl7:code[(@code = '55115-0' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]])]"
         id="d96956e8-true-d97030e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d96956e8-true-d97030e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.5.2.1'] | hl7:code[(@code = '55115-0' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] (rule-reference: d96956e8-true-d97030e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.1']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']])]"
         id="d96956e37-true-d97072e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d96956e37-true-d97072e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] (rule-reference: d96956e37-true-d97072e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.1']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.1']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | self::hl7:value[not(@nullFlavor)])]"
         id="d97061e1-true-d97094e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d97061e1-true-d97094e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | hl7:value[not(@nullFlavor)] (rule-reference: d97061e1-true-d97094e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']])]"
         id="d92082e321-true-d97134e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e321-true-d97134e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']] (rule-reference: d92082e321-true-d97134e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.5.2.2'] | self::hl7:code[(@code = '11329-0' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]])]"
         id="d97110e8-true-d97184e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d97110e8-true-d97184e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.5.2.2'] | hl7:code[(@code = '11329-0' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] (rule-reference: d97110e8-true-d97184e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']])]"
         id="d97110e37-true-d97226e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d97110e37-true-d97226e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] (rule-reference: d97110e37-true-d97226e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.2']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | self::hl7:value[not(@nullFlavor)])]"
         id="d97215e1-true-d97248e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d97215e1-true-d97248e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | hl7:value[not(@nullFlavor)] (rule-reference: d97215e1-true-d97248e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.3']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.3']])]"
         id="d92082e328-true-d97288e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e328-true-d97288e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.3']] (rule-reference: d92082e328-true-d97288e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.3']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.5.2.3'] | self::hl7:code[(@code = '18785-6' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]])]"
         id="d97264e8-true-d97338e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d97264e8-true-d97338e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.5.2.3'] | hl7:code[(@code = '18785-6' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] (rule-reference: d97264e8-true-d97338e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.3']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']])]"
         id="d97264e31-true-d97380e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d97264e31-true-d97380e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] (rule-reference: d97264e31-true-d97380e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.3']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.3']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | self::hl7:value[not(@nullFlavor)])]"
         id="d97369e1-true-d97402e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d97369e1-true-d97402e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | hl7:value[not(@nullFlavor)] (rule-reference: d97369e1-true-d97402e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.4']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.4']])]"
         id="d92082e335-true-d97442e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e335-true-d97442e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.4']] (rule-reference: d92082e335-true-d97442e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.4']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.5.2.4'] | self::hl7:code[(@code = '55108-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]])]"
         id="d97418e8-true-d97492e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d97418e8-true-d97492e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.5.2.4'] | hl7:code[(@code = '55108-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] (rule-reference: d97418e8-true-d97492e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.4']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']])]"
         id="d97418e31-true-d97534e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d97418e31-true-d97534e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] (rule-reference: d97418e31-true-d97534e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.4']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.4']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | self::hl7:value[not(@nullFlavor)])]"
         id="d97523e1-true-d97556e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d97523e1-true-d97556e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | hl7:value[not(@nullFlavor)] (rule-reference: d97523e1-true-d97556e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']])]"
         id="d92082e342-true-d97595e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e342-true-d97595e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']] (rule-reference: d92082e342-true-d97595e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.5.2.5'] | self::hl7:code[(@code = '55111-9' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]])]"
         id="d97572e8-true-d97645e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d97572e8-true-d97645e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.5.2.5'] | hl7:code[(@code = '55111-9' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]] (rule-reference: d97572e8-true-d97645e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]/hl7:entry[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']])]"
         id="d97572e37-true-d97690e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d97572e37-true-d97690e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']] (rule-reference: d97572e37-true-d97690e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]/hl7:entry[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] | self::hl7:templateId[@root = '1.2.40.0.34.11.5.3.3'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.166-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | self::hl7:text[not(@nullFlavor)][hl7:reference] | self::hl7:statusCode[@code = 'completed'] | self::hl7:effectiveTime[not(@nullFlavor)] | self::hl7:value[not(@nullFlavor)])]"
         id="d97672e5-true-d97748e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d97672e5-true-d97748e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] | hl7:templateId[@root = '1.2.40.0.34.11.5.3.3'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-1.2.40.0.34.10.166-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | hl7:text[not(@nullFlavor)][hl7:reference] | hl7:statusCode[@code = 'completed'] | hl7:effectiveTime[not(@nullFlavor)] | hl7:value[not(@nullFlavor)] (rule-reference: d97672e5-true-d97748e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.5']]/hl7:entry[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.14'] and hl7:templateId[@root = '1.2.40.0.34.11.5.3.3']]/hl7:text[not(@nullFlavor)][hl7:reference]/*[not(@xsi:nil = 'true')][not(self::hl7:reference[not(@nullFlavor)])]"
         id="d97672e32-true-d97782e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d97672e32-true-d97782e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:reference[not(@nullFlavor)] (rule-reference: d97672e32-true-d97782e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.6']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.6']])]"
         id="d92082e349-true-d97832e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e349-true-d97832e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.6']] (rule-reference: d92082e349-true-d97832e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.6']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.5.2.6'] | self::hl7:code[(@code = '55114-3' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]])]"
         id="d97808e8-true-d97882e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d97808e8-true-d97882e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.5.2.6'] | hl7:code[(@code = '55114-3' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] (rule-reference: d97808e8-true-d97882e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.6']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']])]"
         id="d97808e31-true-d97924e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d97808e31-true-d97924e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] (rule-reference: d97808e31-true-d97924e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.6']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.6']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | self::hl7:value[not(@nullFlavor)])]"
         id="d97913e1-true-d97946e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d97913e1-true-d97946e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | hl7:value[not(@nullFlavor)] (rule-reference: d97913e1-true-d97946e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.7']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.7']])]"
         id="d92082e356-true-d97986e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e356-true-d97986e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.7']] (rule-reference: d92082e356-true-d97986e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.7']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.5.2.7'] | self::hl7:code[(@code = '18834-2' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]])]"
         id="d97962e8-true-d98036e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d97962e8-true-d98036e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.5.2.7'] | hl7:code[(@code = '18834-2' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] (rule-reference: d97962e8-true-d98036e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.7']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']])]"
         id="d97962e31-true-d98078e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d97962e31-true-d98078e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] (rule-reference: d97962e31-true-d98078e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.7']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.7']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | self::hl7:value[not(@nullFlavor)])]"
         id="d98067e1-true-d98100e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d98067e1-true-d98100e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | hl7:value[not(@nullFlavor)] (rule-reference: d98067e1-true-d98100e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.8']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.8']])]"
         id="d92082e364-true-d98140e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e364-true-d98140e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.8']] (rule-reference: d92082e364-true-d98140e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.8']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.5.2.8'] | self::hl7:code[(@code = '55109-3' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]])]"
         id="d98116e8-true-d98190e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d98116e8-true-d98190e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.5.2.8'] | hl7:code[(@code = '55109-3' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] (rule-reference: d98116e8-true-d98190e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.8']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']])]"
         id="d98116e31-true-d98232e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d98116e31-true-d98232e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] (rule-reference: d98116e31-true-d98232e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.8']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.8']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | self::hl7:value[not(@nullFlavor)])]"
         id="d98221e1-true-d98254e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d98221e1-true-d98254e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | hl7:value[not(@nullFlavor)] (rule-reference: d98221e1-true-d98254e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']])]"
         id="d92082e371-true-d98306e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e371-true-d98306e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']] (rule-reference: d92082e371-true-d98306e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.5.2.9'] | self::hl7:code[(@code = '18782-3' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]] | self::hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]] | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]])]"
         id="d98270e8-true-d98384e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d98270e8-true-d98384e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.5.2.9'] | hl7:code[(@code = '18782-3' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]] | hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]] | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] (rule-reference: d98270e8-true-d98384e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']])]"
         id="d98270e41-true-d98429e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d98270e41-true-d98429e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']] (rule-reference: d98270e41-true-d98429e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] | self::hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12'] | self::hl7:code[(@code = '121071' and @codeSystem = '1.2.840.10008.2.16.4')] | self::hl7:value[@xsi:type='PQ'] | self::hl7:value[@xsi:type='IVL_PQ'] | self::hl7:value[@xsi:type='INT'] | self::hl7:value[@xsi:type='IVL_INT'] | self::hl7:value[@xsi:type='BL'] | self::hl7:value[@xsi:type='ST'] | self::hl7:value[@xsi:type='CV'] | self::hl7:value[@xsi:type='TS'] | self::hl7:value[@xsi:type='RTO'] | self::hl7:value[@xsi:type='RTO_QTY_QTY'] | self::hl7:value[@xsi:type='RTO_PQ_PQ'] | self::hl7:value[@nullFlavor] | self::hl7:value[@xsi:type='CD'] | self::hl7:value[@xsi:type='ED'][not(@nullFlavor)])]"
         id="d98416e1-true-d98461e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d98416e1-true-d98461e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] | hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12'] | hl7:code[(@code = '121071' and @codeSystem = '1.2.840.10008.2.16.4')] | hl7:value[@xsi:type='PQ'] | hl7:value[@xsi:type='IVL_PQ'] | hl7:value[@xsi:type='INT'] | hl7:value[@xsi:type='IVL_INT'] | hl7:value[@xsi:type='BL'] | hl7:value[@xsi:type='ST'] | hl7:value[@xsi:type='CV'] | hl7:value[@xsi:type='TS'] | hl7:value[@xsi:type='RTO'] | hl7:value[@xsi:type='RTO_QTY_QTY'] | hl7:value[@xsi:type='RTO_PQ_PQ'] | hl7:value[@nullFlavor] | hl7:value[@xsi:type='CD'] | hl7:value[@xsi:type='ED'][not(@nullFlavor)] (rule-reference: d98416e1-true-d98461e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.2'] and hl7:templateId[@root = '2.16.840.1.113883.10.20.6.2.12']]/hl7:value[@xsi:type='ED'][not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:reference[not(@nullFlavor)])]"
         id="d98416e56-true-d98530e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d98416e56-true-d98530e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:reference[not(@nullFlavor)] (rule-reference: d98416e56-true-d98530e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']])]"
         id="d98270e43-true-d98555e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d98270e43-true-d98555e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']] (rule-reference: d98270e43-true-d98555e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.5.3.1'] | self::hl7:code[(@code = '36625-2' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)][hl7:reference] | self::hl7:statusCode[@code = 'completed'] | self::hl7:effectiveTime[not(@nullFlavor)] | self::hl7:value[@xsi:type='PQ'] | self::hl7:value[@xsi:type='IVL_PQ'] | self::hl7:value[@xsi:type='INT'] | self::hl7:value[@xsi:type='IVL_INT'] | self::hl7:value[@xsi:type='BL'] | self::hl7:value[@xsi:type='ST'] | self::hl7:value[@xsi:type='CV'] | self::hl7:value[@xsi:type='TS'] | self::hl7:value[@xsi:type='RTO'] | self::hl7:value[@xsi:type='RTO_QTY_QTY'] | self::hl7:value[@xsi:type='RTO_PQ_PQ'] | self::hl7:value[@nullFlavor] | self::hl7:value[@xsi:type='CD'][not(@nullFlavor)])]"
         id="d98544e1-true-d98596e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d98544e1-true-d98596e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.5.3.1'] | hl7:code[(@code = '36625-2' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)][hl7:reference] | hl7:statusCode[@code = 'completed'] | hl7:effectiveTime[not(@nullFlavor)] | hl7:value[@xsi:type='PQ'] | hl7:value[@xsi:type='IVL_PQ'] | hl7:value[@xsi:type='INT'] | hl7:value[@xsi:type='IVL_INT'] | hl7:value[@xsi:type='BL'] | hl7:value[@xsi:type='ST'] | hl7:value[@xsi:type='CV'] | hl7:value[@xsi:type='TS'] | hl7:value[@xsi:type='RTO'] | hl7:value[@xsi:type='RTO_QTY_QTY'] | hl7:value[@xsi:type='RTO_PQ_PQ'] | hl7:value[@nullFlavor] | hl7:value[@xsi:type='CD'][not(@nullFlavor)] (rule-reference: d98544e1-true-d98596e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/hl7:entry[hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]]/hl7:observation[hl7:templateId[@root = '1.2.40.0.34.11.5.3.1']]/hl7:text[not(@nullFlavor)][hl7:reference]/*[not(@xsi:nil = 'true')][not(self::hl7:reference[not(@nullFlavor)])]"
         id="d98544e17-true-d98622e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d98544e17-true-d98622e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:reference[not(@nullFlavor)] (rule-reference: d98544e17-true-d98622e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']])]"
         id="d98270e45-true-d98697e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d98270e45-true-d98697e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] (rule-reference: d98270e45-true-d98697e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.9']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | self::hl7:value[not(@nullFlavor)])]"
         id="d98686e1-true-d98719e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d98686e1-true-d98719e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | hl7:value[not(@nullFlavor)] (rule-reference: d98686e1-true-d98719e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.10']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.10']])]"
         id="d92082e378-true-d98759e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e378-true-d98759e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.10']] (rule-reference: d92082e378-true-d98759e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.10']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.5.2.10'] | self::hl7:code[(@code = '55112-7' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]])]"
         id="d98735e8-true-d98809e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d98735e8-true-d98809e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.5.2.10'] | hl7:code[(@code = '55112-7' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] (rule-reference: d98735e8-true-d98809e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.10']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']])]"
         id="d98735e31-true-d98851e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d98735e31-true-d98851e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] (rule-reference: d98735e31-true-d98851e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.10']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.10']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | self::hl7:value[not(@nullFlavor)])]"
         id="d98840e1-true-d98873e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d98840e1-true-d98873e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | hl7:value[not(@nullFlavor)] (rule-reference: d98840e1-true-d98873e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.11']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.11']])]"
         id="d92082e385-true-d98913e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e385-true-d98913e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.11']] (rule-reference: d92082e385-true-d98913e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.11']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.11']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.5.2.11'] | self::hl7:code[(@code = '19005-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]])]"
         id="d98889e8-true-d98963e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d98889e8-true-d98963e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.5.2.11'] | hl7:code[(@code = '19005-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] (rule-reference: d98889e8-true-d98963e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.11']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.11']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']])]"
         id="d98889e31-true-d99005e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d98889e31-true-d99005e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] (rule-reference: d98889e31-true-d99005e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.11']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.11']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | self::hl7:value[not(@nullFlavor)])]"
         id="d98994e1-true-d99027e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d98994e1-true-d99027e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | hl7:value[not(@nullFlavor)] (rule-reference: d98994e1-true-d99027e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.12']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.12']])]"
         id="d92082e392-true-d99067e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e392-true-d99067e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.12']] (rule-reference: d92082e392-true-d99067e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.12']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.12']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.5.2.12'] | self::hl7:code[(@code = '55110-1' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]])]"
         id="d99043e8-true-d99117e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d99043e8-true-d99117e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.5.2.12'] | hl7:code[(@code = '55110-1' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] (rule-reference: d99043e8-true-d99117e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.12']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.12']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']])]"
         id="d99043e31-true-d99159e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d99043e31-true-d99159e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] (rule-reference: d99043e31-true-d99159e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.12']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.12']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | self::hl7:value[not(@nullFlavor)])]"
         id="d99148e1-true-d99181e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d99148e1-true-d99181e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | hl7:value[not(@nullFlavor)] (rule-reference: d99148e1-true-d99181e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']])]"
         id="d92082e399-true-d99221e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e399-true-d99221e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']] (rule-reference: d92082e399-true-d99221e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.5.2.13'] | self::hl7:code[(@code = '18783-1' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]])]"
         id="d99197e8-true-d99271e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d99197e8-true-d99271e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.5.2.13'] | hl7:code[(@code = '18783-1' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] (rule-reference: d99197e8-true-d99271e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']])]"
         id="d99197e31-true-d99313e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d99197e31-true-d99313e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] (rule-reference: d99197e31-true-d99313e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.13']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | self::hl7:value[not(@nullFlavor)])]"
         id="d99302e1-true-d99335e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d99302e1-true-d99335e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | hl7:value[not(@nullFlavor)] (rule-reference: d99302e1-true-d99335e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.14']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.14']])]"
         id="d92082e407-true-d99375e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e407-true-d99375e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.14']] (rule-reference: d92082e407-true-d99375e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.14']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.5.2.14'] | self::hl7:code[(@code = '55107-7' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)] | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]])]"
         id="d99351e8-true-d99425e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d99351e8-true-d99425e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.5.2.14'] | hl7:code[(@code = '55107-7' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] (rule-reference: d99351e8-true-d99425e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.14']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']])]"
         id="d99351e31-true-d99467e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d99351e31-true-d99467e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] (rule-reference: d99351e31-true-d99467e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.14']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.5.2.14']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | self::hl7:value[not(@nullFlavor)])]"
         id="d99456e1-true-d99489e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d99456e1-true-d99489e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | hl7:value[not(@nullFlavor)] (rule-reference: d99456e1-true-d99489e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section/hl7:code/@code='55113-5']/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:code[(@code = '55113-5' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d92082e414-true-d99512e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e414-true-d99512e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:code[(@code = '55113-5' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d92082e414-true-d99512e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section/hl7:code/@code='55113-5']/hl7:section[hl7:code[(@code = '55113-5' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(@xsi:nil = 'true')][not(self::hl7:code[(@code = '55113-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:title[not(@nullFlavor)] | self::hl7:text[not(@nullFlavor)])]"
         id="d99516e4-true-d99541e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5.2.90005-2013-10-16T000000.html"
              test="not(.)">(Schluesselbilder)/d99516e4-true-d99541e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:code[(@code = '55113-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:title[not(@nullFlavor)] | hl7:text[not(@nullFlavor)] (rule-reference: d99516e4-true-d99541e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']])]"
         id="d92082e423-true-d99586e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e423-true-d99586e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']] (rule-reference: d92082e423-true-d99586e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.2.2'] | self::hl7:code[(@code = 'ABBEM' and @codeSystem = '1.2.40.0.34.5.40')] | self::hl7:title | self::hl7:text | self::hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]])]"
         id="d99562e8-true-d99636e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d99562e8-true-d99636e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.2.2'] | hl7:code[(@code = 'ABBEM' and @codeSystem = '1.2.40.0.34.5.40')] | hl7:title | hl7:text | hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]] (rule-reference: d99562e8-true-d99636e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']])]"
         id="d99562e40-true-d99678e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d99562e40-true-d99678e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']] (rule-reference: d99562e40-true-d99678e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:structuredBody/hl7:component[hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]]/hl7:section[hl7:templateId[@root = '1.2.40.0.34.11.1.2.2']]/hl7:entry[hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]]/hl7:observationMedia[hl7:templateId[@root = '1.2.40.0.34.11.1.3.1']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | self::hl7:value[not(@nullFlavor)])]"
         id="d99667e1-true-d99700e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d99667e1-true-d99700e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:templateId[@root = '1.2.40.0.34.11.1.3.1'] | hl7:value[not(@nullFlavor)] (rule-reference: d99667e1-true-d99700e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="true". Match context that we did not already match -->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '1.2.40.0.34.11.1'] and hl7:templateId[@root = '1.2.40.0.34.11.5']]/hl7:component/hl7:nonXMLBody/*[not(@xsi:nil = 'true')][not(self::hl7:text)]"
         id="d92082e431-true-d99725e0">
      <assert role="error"
              see="http://elga.art-decor.org/elga-html-20200130T133330/tmp-1.2.40.0.34.11.5-2015-09-24T000000.html"
              test="not(.)">(BefundBildgebendeDiagnostik)/d92082e431-true-d99725e0: '<value-of select="name(..)"/>' ist als geschlossen definiert und dieses Element '<name/>' ist nicht erlaubt oder nicht mit diesem Inhalt erlaubt. Dies kann templateId, code oder id betreffen. Erwartet:  hl7:text (rule-reference: d92082e431-true-d99725e0)</assert>
   </rule>
</pattern>
