# API Documentation: "cda"

Microservice endpoint: `/api/v1/cda`

Handles all actions related to cda documents of ELGA. Every cda document type have their own child.  

## generate "Update Immunisierungsstatus" [`POST`]

- Endpoint: `/immunizationrecord`
- Content-Type: `application/json`
- Response: xml

Generates a CDA document of the class "Update Immunisierungsstatus"

### JSON Object Structure Request

- `userId` *(String)* *(required)* - id for whom the cda document is created
- `patient` *(Object)* *(required)* - patient data  
  - `ssno` *(String)* *(required)* - social security number of the patient
  - `givenname` *(String)* *(required)* - given name of the patient
  - `familyname` *(String)* *(optional)* - last name of the patient
  - `prefix`*(String)* *(optional)* - prefixes of the patient like academic titles (Dr., Mag., ...)
  - `suffix` *(String)* *(optional)* - suffixes of the patient like acadmeic titles (MSC, MBA, ...)
  - `birthdate`*(String)* *(optional)* - date of birth of the patient
  - `gender` *(String)* *(required)* - gender of the patient. Possible values are `"M"`, `"F"`, `"UN"`
  - `localpatientid` *(String)* *(required)* - id of the patient in the local system
  - `address` *(Object)* *(optional)* - address of the patient  
    - `streetname` *(Object)* *(required)* - street name
    - `housenumber` *(Object)* *(required)* - house number
    - `city` *(Object)* *(required)* - city
    - `postalcode` *(Object)* *(required)* - postal code  
    - `country` *(Object)* *(optional)* - country. The default value is Austria, if it is not given.
  - `telecoms` *(Array)* *(optional)* - contact details of the patient
  - `birthplace` *(Object)* *(optional)* - birthplace of the patient
    - `streetname` *(Object)* *(required)* - street name of the birthplace
    - `housenumber` *(Object)* *(required)* - house number of the birthplace
    - `city` *(Object)* *(required)* - city of the birthplace
    - `postalcode` *(Object)* *(required)* - postal code of the birthplace
    - `country` *(Object)* *(optional)* - country of the birthplace. The default value is Austria, if it is not given.
  - `guardians`*(Array)* *(optional)* - Legal representative (e.g. adult representative). The legal representative can be either a person or an organization.
- `authors` *(Array)* *(required)* - auhtors of the document
- `legalauthenticator`*(Object)* *(required)* - main and legal signature. Information about the first author will be used as default value.  
- `dataenterer`*(Object)* *(optional)* - Typist, medical documentation assistant, etc.
- `custodian`*(Object)* *(required)* - Custodian of the document. Information about the organization of the first author will be used as default value.  
- `start` *(String)* *(optional)* - start of the vaccination in the format yyyy-MM-dd. `"start"` and `"stop"` must not have the same date.
- `stop`*(String)* *(optional)* - end of the vaccination in the format yyyy-MM-dd. `"start"` and `"stop"` must not have the same date.
- `version` *(int)* *(optional)* - default value for the version is 1, so you only need to specify the version if you want to update an existing document
- `setid` *(String)* *(optional)* - default value for the setid is a generated value, so you only need to specify the setid if you want to update an existing document. This means you must use the setid of the document to be updated.  
- `parentdocument` *(String)* *(optional)* - Previous document
  - `id` *(String)* *(required)* - document id of the previous document
  - `root`*(String)* *(optional)* - OID of the id. The default value is the OID of the organization of the user who generates the CDA.  
  - `authorityname`*(String)* *(optional)* - name of the body assigning the id
- `patientcontact` *(Object)* *(optional)* - details about the patient contact
  - `id`*(Object)* *(optional)* - Identification element for recording the number of encounter
  - `code`*(String)* *(required)* - encounter code. Default value is patient conatct for ambulatory.  
  - `start`*(String)* *(required)* - start time of patient contact in format yyyy-MM-dd
  - `stop`*(String)* *(required)* - stop time of patient contact in format yyyy-MM-dd
  - `responsibleparty`*(Object)* *(required)* - responsible person and organization in whose area of responsibility the patient contact took place.
- `immunizations` *(Array)* *(required)* - all performed and documented vaccinations.
- `exposurerisks` *(Array)* *(optional)* - documents the affiliation to special groups of persons
- `relevantdiseases` *(Array)* *(optional)* - vaccine-related diseases
- `antibodydetermination` *(Array)* *(optional)* - collection of documented antibody determinations
- `recommendation` *(Array)* *(optional)* - collection of documented vaccination recommendations

#### JSON Object telecom

- `mail` *(String)* *(optional)* - mail address of the patient
  - `phone` *(String)* *(optional)* - phone number of the patient
  - `usage` *(String)* *(optional)* - usage of the specified contact. Possible values: `"H"`, `"WP"`, `"AS"`,`"EC"`, `"MC"`, `"PG"`, `"TMP"` (actual values can be find under <https://termpub.gesundheit.gv.at> in the Value Set ELGA_TelecomAddressUse)

#### JSON Object organization as guardian

- `organizationname` *(String)* *(required)* - name of the guardian organization
- `address` *(Object)* *(optional)* - address of the guardian organization  
  - `streetname` *(Object)* *(required)* - street name
  - `housenumber` *(Object)* *(required)* - house number
  - `city` *(Object)* *(required)* - city
  - `postalcode` *(Object)* *(required)* - postal code  
  - `country` *(Object)* *(optional)* - country. The default value is Austria, if it is not given.
- `telecoms` *(Array)* *(optional)* - contact details of the guardian

#### JSON Object person as guardian

- `givenname` *(String)* *(required)* - given name of the guardian
- `familyname` *(String)* *(required)* - last name of the guardian
- `prefix` *(String)* *(optional)* - prefix of the guardian
- `suffix` *(String)* *(optional)* - suffix of the guardian
- `address` *(Object)* *(optional)* - address of the guardian  
  - `streetname` *(Object)* *(required)* - street name  
  - `housenumber` *(Object)* *(required)* - house number
  - `city` *(Object)* *(required)* - city
  - `postalcode` *(Object)* *(required)* - postal code  
  - `country` *(Object)* *(optional)* - country. The default value is Austria, if it is not given.
- `telecoms` *(Array)* *(optional)* - contact details of the guardian

#### JSON Object author

- `time` *(String)* *(required)* - the time at which the document was written. The time must be formatted as ISO8601 (yyyy-MM-dd). The default value is the current time.  
- `givenname` *(String)* *(required)* - given name of the author
- `familyname` *(String)* *(required)* - last name of the author
- `prefix`*(String)* *(optional)* - prefixes of the author like academic titles (Dr., Mag., ...)
- `suffix` *(String)* *(optional)* - suffixes of the author like acadmeic titles (MSC, MBA, ...)
- `functioncode` *(String)* *(optional)* - information on the subject of the author ("Sonderfach" according to the "Ausbildungsordnung"). This attribute is available as String or as Object
- `functioncode` *(Object)* *(optional)* - information on the subject of the author ("Sonderfach" according to the "Ausbildungsordnung")
  - `code` *(String)* *(optional)* - code of the subject
  - `codesystem` *(String)* *(optional)* - codesystem of the subject
  - `displayname` *(String)* *(optional)* - displayname of the subject
- `organization` *(String)* *(required)* - organization on whose behalf the author of the document has written the documentation  
  - `name` *(String)* *(required)* - name of the organization. The default value is "Ordination `"givenname"` `"familyname"`"
  - `address` *(Object)* *(required)* - address of the organization  
    - `streetname` *(Object)* *(required)* - street name
    - `housenumber` *(Object)* *(required)* - house number
    - `city` *(Object)* *(required)* - city
    - `postalcode` *(Object)* *(required)* - postal code  
    - `country` *(Object)* *(optional)* - country. The default value is Austria, if it is not given.
  - `telecoms` *(Array)* *(optional)* - contact details of the organization

#### JSON Object immunization

- `id` *(String)* *(required)* - id of the single vaccination, it should be generated by the software of the GDA
- `date` *(String)* *(optional)* - the date and time when vaccination was carried out
- `drug` *(String)* *(optional)* - vaccine product
  - `code` *(String)* *(required)* - pzn or historic vaccine. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_Impfstoffe_VS and eImpf_HistorischeImpfstoffe_VS
  - `name` *(String)* *(optional)* - Trade name of the vaccine registered by the manufacturer. Possible values are available under <https://termpub.gesundheit.gv.at> in the code systems "ASP-Liste Liste der humanen Arzneispezialitäten" in the column "Bezeichnung_Arzneispezialitaet_Zulassung".  
  - `lotnumber` *(String)* *(optional)* - lot number of the proprietary medicinal product which was administered
  - `ingredients` *(Array)* *(optional)* - ingredients of the vaccine.
  - `manufacturer`*(Object)* *(optional)* - Manufacturer of the vaccine (medicinal product)
    - `ids`*(Array)* *(optional)* - ids of the manufacturer  
    - `name` *(String)* *(required)* - name of the manufacturer
    - `telecoms` *(Array)* *(optional)* - contact details of the manufacturer
    - `address` *(Object)* *(optional)* - address of the manufacturer
      - `streetname` *(Object)* *(required)* - street name
      - `housenumber` *(Object)* *(required)* - house number
      - `city` *(Object)* *(required)* - city
      - `postalcode` *(Object)* *(required)* - postal code  
      - `country` *(Object)* *(optional)* - country. The default value is Austria, if it is not given.
- `dose`*(String)* *(optional)* - dosage or amount of the vaccine administered
  - `unit`*(String)* *(optional)* - unit of the amount  
  - `quantity` *(String)* *(required)* - amount of the vaccine  
- `schedule` *(String)* *(required)* - details about the vaccination scheme.  
  - `scheme`*(String)* *(optional)* - vaccination scheme. It is required if the scheme differs from the default scheme. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_Impfschema_VS)
  - `immunizationdose` *(String)* *(required)* - information which vaccination or partial vaccination it was. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_Impfdosis_VS
- `targets` *(Array)* *(required)* - String array with vaccination protection against specific disease or pathogen. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_ImmunizationTarget_VS
- `reason` *(String)* *(optional)* - code for the billability. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_Impfgrund_VS
- `expirationdate` *(String)* *(optional)* - expiration date of the vaccine in the format yyyy-MM-dd
- `voucher`*(Object)* *(optional)* - Identification mark of a vaccination voucher (if vaccination voucher booklets are available). It is only allowed for actual vaccinations and not for Addendums
  - `id` *(String)* *(required)* - voucher code
  - `root` *(String)* *(required)* - OID of the body issuing the vaccination voucher e.g. "Land Steiermark"
- `originalreport`*(String)* *(optional)* - reference to the underlying finding with which this immunization was stored by GDA.
  - `id`*(String)* *(required)* - id of the document
  - `cdacode` *(String)* *(optional)* - code of the cda document. It is required if the original report is a cda document
  - `setid` *(String)* *(optional)* -  set id of the cda document. It is required if the original report is a cda document
    - `id` *(String)* *(required)* - id value of the set id
    - `root` *(String)* *(optional)* - code system of the set id e.g. oid. Default value is the oid of the author
    - `authorityname`*(String)* *(optional)* - authority name of the set id. Default value is the organization name of the author
  - `version` *(String)* *(optional)* - version of the cda document. It is required if the original report is a cda document
  - `author` *(String)* *(required)* - name of the author, e.g. Dr. Alexander Mustermann.  
  - `title` *(String)* *(required)* - title of the orginal report
  - `authortime` *(String)* *(required)* - creation time of the original report
- `approvaldate` *(String)* *(required)* - approval date of the immunization
- `dataprocessor`*(String)* *(optional)* - The person or device that documents data for the vaccination record. It is only relevant for supplementation. It is only allowed for Addendums (Nachtragungen)
  - `ids`*(String)* *(required)* - id of the organisation of the dataprocessor e.g. oid from the GDA
  - `recorddate` *(String)* *(optional)* - Date and time when the vaccination was entered in the electronic immunization record, i.e. documented or modified.
  - `givenname` *(String)* *(optional)* - given name of the dataprocessor. Either name or device must be specified
  - `familyname` *(String)* *(optional)* - last name of the dataprocessor. Either name or device must be specified
  - `prefix`*(String)* *(optional)* - prefixes of the dataprocessor like academic titles (Dr., Mag., ...)
  - `suffix` *(String)* *(optional)* - suffixes of the dataprocessor like acadmeic titles (MSC, MBA, ...)
  - `device` *(String)* *(optional)* - device that documents data for the vaccination record. Either name or device must be specified
    - `softwarename` *(String)* *(required)* - name of the data generating software.
    - `modelname` *(String)* *(required)* - Model name of the data generating device
  - `address` *(Object)* *(optional)* - address of the organization of the dataprocessor
    - `streetname` *(Object)* *(required)* - street name
    - `housenumber` *(Object)* *(required)* - house number
    - `city` *(Object)* *(required)* - city
    - `postalcode` *(Object)* *(required)* - postal code  
    - `country` *(Object)* *(optional)* - country. The default value is Austria, if it is not given.
  - `telecoms` *(Array)* *(optional)* - contact details of the dataprocessor
- `performer`*(Object)* *(optional)* - The person who carries out the vaccination, e.g. a physician or a midwife or DGKP in the transferred area of activity. If the details of performer was not given like name or organization, the data of the author will be used as default values. Only the function code have no default value.  
  - `functioncode`*(String)**(required) - role of the vaccinating person. Possible values can be find under <https://termpub.gesundheit.gv.at> in the value set eImpf_Impfrollen_VS
  - `localauthorid`*(String)* *(required)* - id of the performer in the local system
  - `givenname` *(String)* *(required)* - given name of the performer
  - `familyname` *(String)* *(required)* - last name of the performer
  - `prefix`*(String)* *(optional)* - prefixes of the performer like academic titles (Dr., Mag., ...)
  - `suffix` *(String)* *(optional)* - suffixes of the performer like acadmeic titles (MSC, MBA, ...)
  - `address` *(Object)* *(optional)* - address of the performer  
    - `streetname` *(Object)* *(required)* - street name
    - `housenumber` *(Object)* *(required)* - house number
    - `city` *(Object)* *(required)* - city
    - `postalcode` *(Object)* *(required)* - postal code  
    - `country` *(Object)* *(optional)* - country. The default value is Austria, if it is not given.
  - `telecoms` *(Array)* *(optional)* - contact details of the performer
  - `organization` *(String)* *(optional)* - organization on whose behalf the performer of the document carries out the vaccination
    - `name` *(String)* *(required)* - name of the organization. The default value is "Ordination `"givenname"` `"familyname"`
    - `address` *(Object)* *(required)* - address of the organization  
      - `streetname` *(Object)* *(required)* - street name
      - `housenumber` *(Object)* *(required)* - house number
      - `city` *(Object)* *(required)* - city
      - `postalcode` *(Object)* *(required)* - postal code  
      - `country` *(Object)* *(optional)* - country. The default value is Austria, if it is not given.
    - `telecoms` *(Array)* *(optional)* - contact details of the organization
- `responsiblephysician`*(Object)* *(optional)* - The person who is responsible for the vaccination and its documentation. This object has the same structure like authors. If the responsible phsyician is not given the details form the first author will be used as default values.
- `translations` *(Array)* *(optional)* - translations of the immunization into different languages

#### JSON Object relevantdisease

- `code` *(String)* *(required)* - value of the relevant disease. Possible values can be find under <https://termpub.gesundheit.gv.at> in the value set eImpf_ImpfrelevanteErkrankung_VS
- `id` *(String)* *(required)* - id of the relevant disease
- `active` *(boolean)* *(required)* - information whether the disease is still relevant  
- `start`*(String)* *(required)* - start of the disease
- `stop`*(String)* *(optional)* - end of the disease. It is only required, if the attribute `"active"` is false.  
- `originalreport`*(String)* *(optional)* - reference to the underlying finding with which this vaccie-relevant disease was originally stored by the GDA.  
  - `id`*(String)* *(required)* - id of the document
  - `cdacode` *(String)* *(optional)* - code of the cda document. It is required if the original report is a cda document
  - `setid` *(String)* *(optional)* -  set id of the cda document. It is required if the original report is a cda document
    - `id` *(String)* *(required)* - id value of the set id
    - `root` *(String)* *(optional)* - code system of the set id e.g. oid. Default value is the oid of the author
    - `authorityname`*(String)* *(optional)* - authority name of the set id. Default value is the organization name of the author
  - `version` *(String)* *(optional)* - version of the cda document. It is required if the original report is a cda document
  - `author` *(String)* *(required)* - name of the author, e.g. Dr. Alexander Mustermann.  
  - `title` *(String)* *(required)* - title of the original report
  - `authortime` *(String)* *(required)* - creation time of the original report
- `comments` *(Array)* *(optional)* - remarks in free text for the purpose of entering evidence of the relevant disease, e.g. preliminary or laboratory results with titre.  
- `translations` *(Array)* *(optional)* - translations of the relevant disease into different languages

#### JSON Object exposurerisks

- `id` *(String)* *(required)* - id of the exposure risk
- `authortime` *(String)* *(required)* - time when the exposure risk was documented in the format yyyy-MM-dd
- `author` *(String)* *(optional)* - author of the risk
- `active` *(boolean)* *(required)* - information whether the risk is still relevant  
- `start`*(String)* *(required)* - start of existing risk
- `stop`*(String)* *(optional)* - end of existing risk. It is only required, if the attribute `"active"` is false.  
- `risk`*(String)* *(optional)* - membership of a group of persons with exposure risk
  - `id`*(String)* *(required)* - id of the risk
  - `start` *(String)* *(required)* - time in which the exposure risk was or is existent.  
  - `code` *(String)* *(optional)* -  code of the risk. Possible values can be find under <https://termpub.gesundheit.gv.at> in the Value Sets eImpf_SpecialSituationIndication_VS.  
- `originalreport`*(String)* *(optional)* - reference to the underlying finding with which this exposure risk was originally stored by GDA.  
  - `id`*(String)* *(required)* - id of the document
  - `cdacode` *(String)* *(optional)* - code of the cda document. It is required if the original report is a cda document
  - `setid` *(String)* *(optional)* -  set id of the cda document. It is required if the original report is a cda document
    - `id` *(String)* *(required)* - id value of the set id
    - `root` *(String)* *(optional)* - code system of the set id e.g. oid. Default value is the oid of the author
    - `authorityname`*(String)* *(optional)* - authority name of the set id. Default value is the organization name of the author
  - `version` *(String)* *(optional)* - version of the cda document. It is required if the original report is a cda document
  - `author` *(String)* *(required)* - name of the author, e.g. Dr. Alexander Mustermann.  
  - `title` *(String)* *(required)* - title of the original report
  - `authortime` *(String)* *(required)* - creation time of the original report
- `translations` *(Array)* *(optional)* - translations of the exposure risks into different languages

#### JSON Object antibodydetermination

- `start`*(String)* *(optional)* - start time of the contained tests
- `stop`*(String)* *(optional)* - time of completion of the contained tests
- `code`*(String)* *(required)* - unique code of the results group. Possible values can be find under <https://termpub.gesundheit.gv.at> in the Value Sets eImpf_Antikoerperbestimmung_VS.  
- `laboratorytests`*(Array)* *(optional)* - results of the laboratory test
- `author`*(Object)* *(optional)* - The person who is responsible for the documentation. The default value are the first author of the whole CDA document.
- `originalreport`*(String)* *(optional)* - reference to the underlying finding with which this lab report was originally stored by GDA.  
  - `id`*(String)* *(required)* - id of the document
  - `cdacode` *(String)* *(optional)* - code of the cda document. It is required if the original report is a cda document
  - `setid` *(String)* *(optional)* -  set id of the cda document. It is required if the original report is a cda document
    - `id` *(String)* *(required)* - id value of the set id
    - `root` *(String)* *(optional)* - code system of the set id e.g. oid. Default value is the oid of the author
    - `authorityname`*(String)* *(optional)* - authority name of the set id. Default value is the organization name of the author
  - `version` *(String)* *(optional)* - version of the cda document. It is required if the original report is a cda document
  - `author` *(String)* *(required)* - name of the author, e.g. Dr. Alexander Mustermann.  
  - `title` *(String)* *(required)* - title of the original report
  - `authortime` *(String)* *(required)* - creation time of the original report
- `translations` *(Array)* *(optional)* - translations of the antibody determination into different languages

#### JSON Object laboratorytests

- `id`*(String)* *(optional)* - identification of the laboratory test
- `determination`*(String)* *(required)* - Coding of the analysis / test. Possible values can be find under <https://termpub.gesundheit.gv.at> in the Value Sets eImpf_Antikoerperbestimmung_VS.  
- `validationtime`*(String)* *(optional)* - time of validation in format yyyy-MM-dd
- `sampletime`*(Array)* *(required)* - Medically relevant date and time. Usually the date and time the specimen was taken. Time in fomat of yyyy-MM-dd
- `finishedtime`*(String)* *(optional)* - time of completion of the contained tests. Time in fomat of yyyy-MM-dd.
- `aborted`*(boolean)* *(required)* - true, if the test has been cancelled
- `interpretation` *(String)* *(optional)* - coded evaluation of the result. Possible values: `"POS"` (For immunization sufficient antibodies are detectable), `"NEG"` (There are NOT enough antibodies detectable for immunization), `"IND"` (Limit value antibody level)
- `validationperson` *(String)* *(optional)* - Validating person  
  - `givenname` *(String)* *(required)* - given name of the validating person
  - `familyname` *(String)* *(required)* - last name of the validating person
  - `prefix`*(String)* *(optional)* - prefixes of the validating person like academic titles (Dr., Mag., ...)
  - `suffix` *(String)* *(optional)* - suffixes of the validating person like acadmeic titles (MSC, MBA, ...)
  - `ids` *(Array)* *(required)* - id of the validating person in the local system
  - `address` *(Object)* *(optional)* - address of the validating person  
    - `streetname` *(Object)* *(required)* - street name
    - `housenumber` *(Object)* *(required)* - house number
    - `city` *(Object)* *(required)* - city
    - `postalcode` *(Object)* *(required)* - postal code  
    - `country` *(Object)* *(optional)* - country. The default value is Austria, if it is not given.
  - `telecoms` *(Array)* *(optional)* - contact details of the validating person
- `laboratories` *(Array)* *(optional)* - external laboratories that performed the test
- `comments` *(Array)* *(optional)* - remarks in free text for the purpose of entering evidence of the antibody determination
- `labvalues`*(Object)* *(required)* - Result of the analysis coded according to the data type. The structure must be used as described in the section labvalues.
- `observationrange` *(Array)* *(optional)* - Several reference ranges can be specified. These must be distinguished with the interpreatation code.  
 Either `"highvalue"` and `"lowvalue"` or `"denominator"` and `"inclusive"` have to be specified.  
  
#### JSON Object labvalues

- `denominator` *(int)* *(optional)* - specification of the titre as a ratio, e.g. 1:32. In this example, 32 should be entered in the field `"denominator"`
- `value` *(double | int | boolean | String | Code)* *(optional)* - specification of the titre as single value. There are different available datatypes for the value, which could be used.  
- `highvalue` *(int)* *(optional)* - specification of the titre as interval. It is the high value of the interval
- `lowvalue` *(int)* *(optional)* - specification of the titre as interval. It is the low value of the interval
- `unit` *(String)* *(optional)* - unit of the value

#### JSON Object observationrange

- `highvalue` *(int)* *(optional)* - specification of the titre limit as interval. It is the high value of the interval
- `lowvalue` *(int)* *(optional)* - specification of the titre limit as interval. It is the low value of the interval
- `denominator` *(int)* *(optional)* - specification of the titre limit value as a ratio, e.g. 1:>=32. In this example, 32 should be entered in the field `"denominator"`
- `numerator`*(int)* *(optional)* - specification of the titre limit value as a ratio, e.g. 1:>=32. In this example, 1 should be entered in the field `"numerator"`. The default value is 1.  
- `inclusive` *(boolean)* +(optional)* - true if it should include the denominator (>=) and false if it should exclude the denominator (>)
- `interpretation`*(String)* *(optional)* - coded evaluation of the result. Possible values: `"POS"` (For immunization sufficient antibodies are detectable), `"NEG"` (There are NOT enough antibodies detectable for immunization), `"IND"` (Limit value antibody level). The default value is `"POS"` for the first array entry.

#### JSON Object recommendation

- `start`*(String)* *(optional)* - start of the vaccination recommendation in the format yyyy-MM-dd
- `stop`*(String)* *(optional)* - end of the vaccination recommendation in the format yyyy-MM-dd
- `id`*(Object)* *(required)* - unique id of the vaccination recommencation.
- `drug` *(String)* *(optional)* - used vaccine product
  - `code` *(String)* *(required)* - pzn or historic vaccine of the product. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_Impfstoffe_VS and eImpf_HistorischeImpfstoffe_VS
  - `name` *(String)* *(optional)* - Trade name of the vaccine registered by the manufacturer. Possible values are available under <https://termpub.gesundheit.gv.at> in the code systems "ASP-Liste Liste der humanen Arzneispezialitäten" in the column "Bezeichnung_Arzneispezialitaet_Zulassung".  
  - `ingredients` *(Array)* *(optional)* - ingredients of the vaccine.
  - `organization`*(Object)* *(optional)* - Manufacturer of the vaccine (medicinal product)
    - `ids`*(Array)* *(optional)* - ids of the manufacturer  
    - `name` *(String)* *(required)* - name of the manufacturer
    - `telecoms` *(Array)* *(optional)* - contact details of the manufacturer
    - `address` *(Object)* *(optional)* - address of the manufacturer
      - `streetname` *(Object)* *(required)* - street name
      - `housenumber` *(Object)* *(required)* - house number
      - `city` *(Object)* *(required)* - city
      - `postalcode` *(Object)* *(required)* - postal code  
      - `country` *(Object)* *(optional)* - country. The default value is Austria, if it is not given.
- `schedule` *(String)* *(required)* - details about the vaccination scheme.  
  - `scheme`*(String)* *(optional)* - vaccination scheme. It is required if the scheme differs from the default scheme. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_Impfschema_VS
  - `immunizationdose` *(String)* *(optional)* - information which vaccination or partial vaccination is recommended. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_Impfdosis_VS
- `targets` *(Array)* *(required)* - String array with vaccination protection against specific disease or pathogen. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_ImmunizationTarget_VS)
- `author`*(Object)* *(required)* - person or system that generates the recommendation. The default value are the first author of the whole CDA document.
- `originalreport`*(String)* *(optional)* - reference to the underlying finding with which this recommendation was originally stored by GDA.  
  - `id`*(Object)* *(required)* - id of the document
  - `cdacode` *(String)* *(optional)* - code of the cda document. It is required if the original report is a cda document
  - `setid` *(String)* *(optional)* -  set id of the cda document. It is required if the original report is a cda document
    - `id` *(String)* *(required)* - id value of the set id
    - `root` *(String)* *(optional)* - code system of the set id e.g. oid. Default value is the oid of the author
    - `authorityname`*(String)* *(optional)* - authority name of the set id. Default value is the organization name of the author
  - `version` *(String)* *(optional)* - version of the cda document. It is required if the original report is a cda document
  - `author` *(String)* *(required)* - name of the author, e.g. Dr. Alexander Mustermann.  
  - `title` *(String)* *(required)* - title of the original report
  - `authortime` *(String)* *(required)* - creation time of the orginal report
- `immunizationplan`*(String)* *(optional)* - reference to the vaccination plan on which the recommendation is based, technical information, documentation like the national immunization plan
  - `id`*(Object)* *(required)* - id of the immunization plan.
    - `id` *(Object)* *(required)* - id of the immunization plan. In the case of the Austrian national vaccination plan the version of the immunization plan must be structured in the format YYYY.versionNumber. e.g. 2019.1
    - `root` *(Object)* *(required)* - root of the immunization plan. In the case of the Austrian national vaccination plan it must be 1.2.40.0.34.7.20  
  - `setid` *(String)* *(optional)* -  set id of the immunization plan
    - `id` *(String)* *(required)* - id value of the set id
    - `root` *(String)* *(optional)* - code system of the set id e.g. oid. Default value is the oid of the author
    - `authorityname`*(String)* *(optional)* - authority name of the set id. Default value is the organization name of the author
  - `version` *(String)* *(optional)* - version of the immunization plan. e.g. 1
  - `author` *(String)* *(required)* - name of the author, e.g. Dr. Alexander Mustermann.  
  - `title` *(String)* *(required)* - title of the immunization plan
  - `authortime` *(String)* *(required)* - creation time of the immunization plan
- `translations` *(Array)* *(optional)* - translations of the recommendation into different languages
- `comments` *(Array)* *(optional)* - free text to justify a vaccination recommendation given by the vaccinator, e.g. with reference to the result of an antibody determination (vaccination titre).

#### JSON Object Code

- `code` *(String)* *(required)* - code
- `codesystem` *(String)* *(required)* - codesystem
- `codesystemname` *(String)* *(required)* - codesystemname
- `displayname`*(String)* *(optional)* - displayname of the code

#### JSON Object comment

- `text` *(String)* *(required)* - text of the comment
- `authortime` *(String)* *(required)* - time when the comment was written in the format yyyy-MM-dd
- `authors` *(Array)* *(optional)* -  authors of the comment
- `informants`*(Array)* *(optional)* - information sources of the comment

#### JSON Object ingredients

- `code` *(Object)* *(optional)* -  ATC code of the ingredient from prescribing information. Possible values can be find under <https://termpub.gesundheit.gv.at> in the Value Sets ELGA_Wirkstoffe_AGES_VS oder ELGA_whoATC_VS.
- `name`*(String)* *(optional)* - name of the ingredient

#### JSON Object informant

- `id`*(String)* *(optional)* - id of the informant
- `givenname` *(String)* *(required)* - given name of the informant
- `familyname` *(String)* *(required)* - last name of the informant
- `prefix`*(String)* *(optional)* - prefixes of the informant like academic titles (Dr., Mag., ...)
- `suffix` *(String)* *(optional)* - suffixes of the informant like acadmeic titles (MSC, MBA, ...)
- `relationship` *(String)* *(optional)* - relationship of the informant to the patient. Possible values can be find under <https://termpub.gesundheit.gv.at> in the Value Sets ELGA_PersonalRelationship. It is required if the informant is no GDA.  
- `authorspeciality`*(String)* *(optional)* - subject of the author speciality . Possible values can be find under <https://termpub.gesundheit.gv.at> in the Value Sets ELGA_AuthorSpeciality.  
- `addresses` *(Array)* *(optional)* - addresses of the informant  
  - `streetname` *(Object)* *(required)* - street name
  - `housenumber` *(Object)* *(required)* - house number
  - `city` *(Object)* *(required)* - city
  - `postalcode` *(Object)* *(required)* - postal code  
  - `country` *(Object)* *(optional)* - country. The default value is Austria, if it is not given.
- `telecoms` *(Array)* *(optional)* - contact details of the informant
- `organization` *(String)* *(optional)* - organization on whose behalf the informant has informed the author
  - `ids`*(Array)* *(optional)* - ids of the organization like GDA OID.  
  - `name` *(String)* *(required)* - name of the organization.
  - `address` *(Object)* *(required)* - address of the organization  
    - `streetname` *(Object)* *(required)* - street name
    - `housenumber` *(Object)* *(required)* - house number
    - `city` *(Object)* *(required)* - city
    - `postalcode` *(Object)* *(required)* - postal code  
    - `country` *(Object)* *(optional)* - country. The default value is Austria, if it is not given.
  - `telecoms` *(Array)* *(optional)* - contact details of the organization

#### JSON Object id

- `id` *(String)* *(required)* - extension of the id  
- `root` *(String)* *(required)* - root of the id e.g. the OID of the GDA
- `authorityname` *(boolean)* *(optional)* - name of the root e.g. Ordination Dr. Musterärztin  

#### JSON Object translation

- `authors`*(Array)* *(optional)* - authors of the translation
- `authortime` *(String)* *(required)* - time when the translation was created in the format yyyy-MM-dd
- `id` *(String)* *(optional)* - id of the translation
- `title`*(String)* *(required)* - translated title  
- `text` *(String)* *(required)* - translated text
- `language` *(String)* *(required)* - language of the translation. Possible values can be find under <https://termpub.gesundheit.gv.at> in the Value Sets ELGA_HumanLanguage.

**Example:**

```JSON
{
    "patient": {
        "ssno": "1002120289",
        "givenname": "Max",
        "familyname": "Musterpatient",
        "prefix": "Dipl.-Ing.",
        "suffix": "BSc",
        "birthdate": "1989-02-12",
        "gender": "M",
        "address": {
            "streetname": "Gartenstraße",
            "housenumber": "25",
            "city": "Graz",
            "postalcode": "8020"
        },
        "localpatientid": "70000",
        "telecoms": [
            {
                "mail": "test@musterpatient.at",
                "phone": "036055343445",
                "usage": "H"
            }
        ],
        "birthplace": {
            "streetname": "Willhelmstraße",
            "housenumber": "2",
            "city": "München",
            "postalcode": "34534",
            "country": "GER"
        },
        "guardians": [
            {
                "organizationname": "Jugendamt",
                "address": {
                    "streetname": "Hausbergstraße",
                    "housenumber": "25",
                    "city": "Graz",
                    "postalcode": "8020"
                },
                "telecoms": [
                    {
                        "mail": "jugendamt@graz.at",
                        "phone": "03603344345",
                        "usage": "WP"
                    }
                ]
            },
            {
                "givenname": "Helga",
                "familyname": "Muster",
                "prefix": "Dr.",
                "address": {
                    "streetname": "Harrachgasse",
                    "housenumber": "6",
                    "city": "Graz",
                    "postalcode": "8010"
                },
                "telecoms": [
                    {
                        "mail": "helga.muster@provider.at",
                        "phone": "0630120212",
                        "usage": "H"
                    }
                ]
            }
        ]
    },
    "version": 2,
    "setid": "94428710-b43e-03ac-0670-84dca29bdea6_20200219200121",
    "authors": [
        {
            "time": "",
            "givenname": "Helga",
            "familyname": "Musterärztin",
            "prefix": "Dr.",
            "suffix": "MBA",
            "functioncode": "100",
            "organization": {
                "address": {
                    "streetname": "Testgasse",
                    "housenumber": "83",
                    "city": "Graz",
                    "postalcode": "8010"
                },
                "telecoms": [
                    {
                        "mail": "ordination@musterärztin.at",
                        "phone": "0360554345",
                        "usage": "WP"
                    }
                ]
            }
        }
    ],
    "relevantdiseases": [
        {
            "code": "712986001",
            "id": "1121212",
            "active": false,
            "start": "2019-11-13",
            "stop": "2020-02-19",
            "originalreport": {
                "id": "10",
                "cdacode": "11369-6",
                "setid": {
                    "id": "1234534"
                },
                "version": 2,
                "author": "Mustermann Alexander",
                "title": "Befund 2019",
                "authortime": "2020-01-01"
            },
            "comments": [
                {
                    "text": "durch Vorbefund",
                    "authortime": "2020-01-12",
                    "authors": [
                        {
                            "givenname": "Helga",
                            "familyname": "Gruber",
                            "prefix": "Dr.",
                            "functioncode": {
                                "code": "F027",
                                "codesystem": "1.2.3.4",
                                "displayname": "Kinder- und Jugendheilkunde"
                            },
                            "organization": {
                                "address": {
                                    "streetname": "Testgasse",
                                    "housenumber": "83",
                                    "city": "Graz",
                                    "postalcode": "8010"
                                },
                                "telecoms": [
                                    {
                                        "mail": "ordination@musterärztin.at",
                                        "phone": "0360554345",
                                        "usage": "WP"
                                    }
                                ]
                            }
                        }
                    ],
                    "informants": [
                        {
                            "givenname": "Helga",
                            "familyname": "Gruber",
                            "prefix": "Dr.",
                            "relationship": "SELF",
                            "addresses": [
                                {
                                    "streetname": "Testgasse",
                                    "housenumber": "83",
                                    "city": "Graz",
                                    "postalcode": "8010"
                                }
                            ],
                            "telecoms": [
                                {
                                    "mail": "ordination@musterärztin.at",
                                    "phone": "0360554345",
                                    "usage": "WP"
                                }
                            ]
                        },
                        {
                            "givenname": "Inge",
                            "familyname": "Huber",
                            "prefix": "Dr.",
                            "authorspeciality": "104",
                            "addresses": [
                                {
                                    "streetname": "Testgasse",
                                    "housenumber": "83",
                                    "city": "Graz",
                                    "postalcode": "8010"
                                }
                            ],
                            "telecoms": [
                                {
                                    "mail": "ordination@musterärztin.at",
                                    "phone": "0360554345",
                                    "usage": "WP"
                                }
                            ]
                        }
                    ]
                }
            ],
            "translations": [
                {
                    "id": {
                        "id": "123",
                        "root": "1.2.3.4",
                        "authorityname": "Übersetzung 123"
                    },
                    "title": "diseases",
                    "text": "text",
                    "language": "en",
                    "authors": [
                        {
                            "time": "2020-02-28",
                            "givenname": "Astrid",
                            "familyname": "Lindgren",
                            "organization": {
                                "name": "Übersetzungsfirma",
                                "address": {
                                    "streetname": "Testgasse",
                                    "housenumber": "83",
                                    "city": "Graz",
                                    "postalcode": "8010"
                                },
                                "telecoms": [
                                    {
                                        "mail": "astrid@provider.at",
                                        "phone": "0360554345",
                                        "usage": "WP"
                                    }
                                ]
                            }
                        }
                    ]
                }
            ]
        }
    ],
    "start": "2020-02-11",
    "stop": "2020-02-12",
    "exposurerisks": [
        {
            "active": true,
            "start": "2020-01-31",
            "stop": "",
            "authortime": "2020-02-12",
            "author": {
                "givenname": "Helga",
                "familyname": "Musterärztin",
                "prefix": "Dr.",
                "organization": {
                    "address": {
                        "streetname": "Testgasse",
                        "housenumber": "83",
                        "city": "Graz",
                        "postalcode": "8010"
                    }
                }
            },
            "risk": {
                "id": {
                    "id": "12123",
                    "root": "123123",
                    "authorityname": "Ordination Dr. Achleitner"
                },
                "start": "2020-01-31",
                "code": "224627004"
            },
            "originalreport": {
                "setid": {
                    "id": "12212323",
                    "root": "1.2.3.4.5"
                },
                "id": {
                    "id": "12212",
                    "root": "1.2.35.62"
                },
                "version": 1,
                "cdacode": "11369-6",
                "author": "Dr. Auer Christian",
                "authortime": "2020-01-31",
                "title": "Immunisierungsstatus"
            }
        },
        {
            "active": false,
            "start": "2020-02-11",
            "stop": "2020-02-21",
            "authortime": "2020-02-22",
            "risk": {
                "id": "12345",
                "start": "2020-02-11",
                "code": "14745005"
            }
        }
    ],
    "immunizations": [
        {
            "id": "123",
            "date": "2020-02-07",
            "drug": {
                "code": "0514986",
                "text": "Packungsangaben",
                "pharmno": "12345",
                "lotnumber": "12314234"
            },
            "dose": {
                "unit": "mL",
                "quantity": 100
            },
            "schedule": {
                "scheme": "SCHEM19",
                "immunizationdose": "D1"
            },
            "targets": [
                "90043005"
            ],
            "reason": "IG2",
            "originalreport": {
                "id": "10",
                "cdacode": "11369-6",
                "setid": {
                    "id": "1234534"
                },
                "author": "Mustermann Alexander",
                "title": "Befund 2019",
                "authortime": "2020-01-01"
            },
            "expirationdate": "2025-12-20",
            "approvaldate": "2020-02-17",
            "dataprocessor": {
                "recorddate": "2020-02-12",
                "ids": [
                    {
                        "id": "3"
                    }
                ],
                "device": {
                    "softwarename": "ArztIS",
                    "modelname": "8"
                }
            },
            "performer": {
                "functioncode": "100"
            }
        },
        {
            "id": "124",
            "date": "2020-02-07",
            "drug": {
                "code": "0514986",
                "text": "Packungsangaben",
                "pharmno": "12345",
                "lotnumber": "12314234"
            },
            "dose": {
                "unit": "mL",
                "quantity": 100
            },
            "schedule": {
                "scheme": "14745005",
                "immunizationdose": "D1"
            },
            "targets": [
                "90043005"
            ],
            "reason": "IG2",
            "voucher": {
                "id": "1223",
                "root": "1.2.4.5"
            },
            "expirationdate": "2025-12-20",
            "approvaldate": "2020-02-17"
        }
    ],
    "recommendation": [
        {
            "active": true,
            "start": "2000-01-01",
            "stop": "",
            "author": {
                "time": "2020-02-24",
                "givenname": "Helga",
                "familyname": "Musterärztin",
                "prefix": "Dr.",
                "organization": {
                    "address": {
                        "streetname": "Testgasse",
                        "housenumber": "83",
                        "city": "Graz",
                        "postalcode": "8010"
                    }
                }
            },
            "drug": {
                "code": "0514986",
                "text": "Packungsangaben",
                "pharmno": "12345",
                "lotnumber": "12314234"
            },
            "schedule": {
                "scheme": "14745005",
                "immunizationdose": "G1"
            },
            "targets": [
                "90043005"
            ],
            "id": {
                "id": "",
                "root": ""
            }
        }
    ],
    "antibodydetermination": [
        {
            "start": "2020-03-01",
            "stop": "2020-03-05",
            "code": "56844000",
            "laboratorytests": [
                {
                    "id": "1",
                    "determination": "56844000",
                    "validationtime": "2020-03-03",
                    "sampletime": "2020-03-02",
                    "finishedtime": "2020-03-05",
                    "aborted": false,
                    "interpretation": "IND",
                    "validationperson": {
                        "address": {
                            "housenumber": "109",
                            "streetname": "Laborstraße",
                            "city": "Wien",
                            "postalcode": "1020"
                        },
                        "ids": [
                            {
                                "id": "1.10.234.34.123.234",
                                "authorityname": "GDA-Index"
                            }
                        ],
                        "telecoms": [
                            {
                                "mail": "labor@provider.at",
                                "phone": "01212323409234",
                                "usage": "WP"
                            }
                        ],
                        "givenname": "Herbert",
                        "familyname": "Strohmayer",
                        "prefix": "Mag."
                    },
                    "laboratories": [
                        {
                            "address": {
                                "housenumber": "109",
                                "streetname": "Laborstraße",
                                "city": "Wien",
                                "postalcode": "1020"
                            },
                            "ids": [
                                {
                                    "id": "1.10.234.34.123.234",
                                    "authorityname": "GDA-Index"
                                }
                            ],
                            "telecoms": [
                                {
                                    "mail": "labor@provider.at",
                                    "phone": "01212323409234",
                                    "usage": "WP"
                                }
                            ],
                            "givenname": "Helga",
                            "familyname": "Gruber",
                            "prefix": "Dr.",
                            "functioncode": {
                                "code": "F027",
                                "codesystem": "1.2.3.4",
                                "displayname": "Kinder- und Jugendheilkunde"
                            }
                        }
                    ],
                    "comments": [
                        {
                            "text": "durch Vorbefund",
                            "authortime": "2020-01-12",
                            "authors": [
                                {
                                    "device": {
                                        "softwarename": "labrequest",
                                        "modelname": "v21.4.2"
                                    },
                                    "organization": {
                                        "address": {
                                            "streetname": "Testgasse",
                                            "housenumber": "83",
                                            "city": "Graz",
                                            "postalcode": "8010"
                                        },
                                        "telecoms": [
                                            {
                                                "mail": "ordination@musterärztin.at",
                                                "phone": "0360554345",
                                                "usage": "WP"
                                            }
                                        ]
                                    }
                                }
                            ],
                            "informants": [
                                {
                                    "givenname": "Helga",
                                    "familyname": "Gruber",
                                    "prefix": "Dr.",
                                    "relationship": "SELF",
                                    "addresses": [
                                        {
                                            "streetname": "Testgasse",
                                            "housenumber": "83",
                                            "city": "Graz",
                                            "postalcode": "8010"
                                        }
                                    ],
                                    "telecoms": [
                                        {
                                            "mail": "ordination@musterärztin.at",
                                            "phone": "0360554345",
                                            "usage": "WP"
                                        }
                                    ],
                                    "organization": {
                                        "name": "Ordination Dr. Gruber",
                                        "ids": [
                                            {
                                                "id": "10.1239.2345.34324.234"
                                            }
                                        ],
                                        "addresses": {
                                            "streetname": "Testgasse",
                                            "housenumber": "83",
                                            "city": "Graz",
                                            "postalcode": "8010"
                                        },
                                        "telecoms": [
                                            {
                                                "mail": "ordination@musterärztin.at",
                                                "phone": "0360554345",
                                                "usage": "WP"
                                            }
                                        ]
                                    }
                                },
                                {
                                    "givenname": "Inge",
                                    "familyname": "Huber",
                                    "prefix": "Dr.",
                                    "authorspeciality": "104",
                                    "addresses": [
                                        {
                                            "streetname": "Testgasse",
                                            "housenumber": "83",
                                            "city": "Graz",
                                            "postalcode": "8010"
                                        }
                                    ],
                                    "telecoms": [
                                        {
                                            "mail": "ordination@musterärztin.at",
                                            "phone": "0360554345",
                                            "usage": "WP"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "labvalues": {
                        "value": 12,
                        "highvalue": "",
                        "lowvalue": "",
                        "unit": "mL"
                    },
                    "observationrange": {
                        "denominator": 12,
                        "inclusive": true
                    }
                }
            ],
            "originalreport": {},
            "translations": [
                {}
            ]
        }
    ]
}
```
