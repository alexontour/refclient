# API Documentation: "cda"

Microservice endpoint: `/api/v1/Composition`

Handles all actions related to cda documents of ELGA. Every cda document type have their own child.  

## generate "Update Immunisierungsstatus" [`POST`]

- Content-Type: `application/json`
- Headers: `Authorization`
- Response: xml

Generates a CDA document of the class "Update Immunisierungsstatus". Implemented according to following documentation <https://www.hl7.org/fhir/documents.html>.

### JSON Object Structure Request

- `resourceType` *(String)* - type of resource here it is always `"Bundle"`
- `type` *(String)* - type of bundle. This must be `"document"`
- `identifier` *(Object)* *(optional)* - unique ID of document. If this is not given, it will be generated automatically. Structure described at <http://hl7.org/fhir/R4/datatypes.html#Identifier>.
- `entry` *(Array)* - details about document. All different resources have to be added and reference each other. There must be at least one resource composition, patient, practitionerRole, practitioner, organization and immunization. The patient resource must be referenced by composition.

#### JSON Object composition entry

- `resource` *(Object)* - composition (<http://hl7.org/fhir/R4/composition.html>)
  - `resourceType` *(String)* *(required)* - type of resource here it is always `"Composition"`
  - `type` *(Object)* *(required)* -  type of document. Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>. For Update Immunizationstates code value is `"87273-9"`
  - `category` *(Object)* *(required)* -  class of document. Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>. For Update Immunizationstates code value is `"11369-6"`
  - `title` *(String)* *(required)* - human readable title of document
  - `status` *(String)* *(required)* - status of document. It must be `"final"`
  - `date` *(String)* *(required)* - creation time of document
  - `language` *(String)* *(optional)* - language of document. Default value is `"de-AT"`
  - `subject` *(Object)* *(required)* - reference to patient data. Structure described at <https://www.hl7.org/fhir/references.html#Reference>.
  - `author` *(Array)* *(required)* - reference to author. Structure described at <https://www.hl7.org/fhir/references.html#Reference>.
  - `custodian` *(Object)* *(required)* - reference to custodian of the document. Information about the organization of the first author will be used as default value. Structure described at <https://www.hl7.org/fhir/references.html#Reference>.  
  - `attester` *(Array)* *(required)* - references to main and legal signature and others. Structure described at <https://www.hl7.org/fhir/references.html#Reference>. At least one legal authenticator is required.
    - `mode` *(Strng)* *(required)* - type of authenticator. Possible values: `"legal"` and `"professional"`
    - `time` *(Strng)* *(optional)* - time when the document was signed
    - `party` *(Object)* *(optional)* - reference to practioner role. Structure described at <https://www.hl7.org/fhir/references.html#Reference>.
  - `relatesTo` *(Array)* *(optional)* - Previous document.
    - `code` *(Object)* *(optional)* - code of relationship. It is always `"replace"`, if it is used
    - `targetIdentifier` *(Object)* *(required)* - identifier of previous document. Structure described at <http://hl7.org/fhir/R4/datatypes.html#Identifier>
  - `event` *(Array)* *(optional)* - vaccination is documented
    - `period` *(Object)* *(optional)* - period of vaccination. Structure described at <http://hl7.org/fhir/R4/datatypes.html#Period>. `"start"` and `"end"` must not have the same date. The format of the start and end have to be yyyy-MM-dd.
  - `extension` *(Array)* *(optional)* - extension for version number. Default value for the version is 1, so you only need to specify the version if you want to update an existing document
    - `url` *(String)* *(required)* - fix value for the version number extension is `http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber`
    - `valueInteger` *(int)* *(required)* - version number to use
  - `identifier` *(Object)* *(optional)* - default value for the setid is a generated value, so you only need to specify the setid if you want to update an existing document. This means you must use the setid of the document to be updated. Structure described at <http://hl7.org/fhir/R4/datatypes.html#Identifier>.
  - `section` *(Array)* *(required)* - sections of document like immunizations. At least one section is required, which includes immunization. All other sections are optional.
    - `entry` *(Array)* *(required)* - reference to immunization is required. Optional are references to immunization recommendation and observations.

#### JSON Object patient

- `resource` *(Object)* - patient (<http://hl7.org/fhir/R4/patient.html>)
  - `resourceType` *(String)* *(required)* - type of resource here it is always `"Patient"`
  - `id` *(String)* *(required)* - id of the patient resource to reference on in the composition
  - `identifier` *(Array)* *(required)* - identifiers of patient
  - `name` *(Array)* *(required)* - name of patient
    - `given` *(String)* *(optional)* - given name of patient
    - `family` *(String)* *(optional)* - last name of patient
    - `prefix`*(String)* *(optional)* - prefixes of patient like academic titles (Dr., Mag., ...)
    - `suffix` *(String)* *(optional)* - suffixes of patient like acadmeic titles (MSC, MBA, ...)
  - `birthDate`*(String)* *(required)* - date of birth of patient
  - `gender` *(String)* *(required)* - gender of patient. Possible values are `"male"`, `"femlae"`, `"unknown"` and `"other"`
  - `address` *(Array)* *(optional)* - addresses of patient  
    - `use` *(String)* *(required)* - usage of address
    - `line` *(String)* *(required)* - street name and house number of address
    - `city` *(String)* *(required)* - city
    - `postalCode` *(String)* *(required)* - postal code  
    - `state` *(String)* *(required)* - state
    - `country` *(String)* *(optional)* - country. The default value is Austria, if it is not given.
  - `telecom` *(Array)* *(optional)* - contact details of the patient
    - `system` *(String)* *(required)* - type of contact details
    - `value` *(String)* *(required)* - contact details
    - `use` *(String)* *(required)* - useage of contact details
  - `contact`*(Array)* *(optional)* - Legal representative (e.g. adult representative). The legal representative can be either a person or an organization.
    - `name` *(Object)* *(optional)* - name of the guardian. Structure described at <http://hl7.org/fhir/R4/datatypes.html#HumanName>
    - `organization` *(Object)* *(optional)* - reference to organization
    - `telecom` *(Array)* *(optional)* - contact details for guardian. Structure described at <http://hl7.org/fhir/R4/datatypes.html#ContactPoint>
    - `address` *(Object)* *(optional)* - address of guardian.

#### JSON Object practitioner role

- `resource` *(Object)* - practitioner role (<http://hl7.org/fhir/R4/practitionerrole.html>)
  - `resourceType` *(String)* *(required)* - type of resource here it is always `"PractitionerRole"`
  - `id` *(String)* *(required)* - id of the practitioner role resource to reference on in the composition
  - `code` *(Array)* *(optional)* - information on the subject of the author ("Sonderfach" according to the "Ausbildungsordnung"). Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>.
  - `speciality` *(Array)* *(optional)* - specialty of the practitioner. Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>.
  - `organization` *(Object)* *(required)* - reference to organization on whose behalf the author of the document has written the documentation
  - `practitioner` *(Object)* *(required)* - reference to practitioner
  - `identifier` *(Array)* *(required)* - id of practitioner

#### JSON Object practitioner

- `resource` *(Object)* - practitioner (<http://hl7.org/fhir/R4/practitioner.html>)
  - `resourceType` *(String)* *(required)* - type of resource here it is always `"Practitioner"`
  - `id` *(String)* *(required)* - id of the practitioner role resource to reference on in the practitioner role
  - `name` *(Array)* *(required)* - name of practitioner
    - `given` *(String)* *(required)* - given name of the practitioner
    - `family` *(String)* *(required)* - last name of the practitioner
    - `prefix`*(String)* *(optional)* - prefixes of the practitioner like academic titles (Dr., Mag., ...)
    - `suffix` *(String)* *(optional)* - suffixes of the practitioner like acadmeic titles (MSC, MBA, ...)
  - `address` *(Array)* *(optional)* - addresses of practitioner
    - `use` *(String)* *(required)* - usage of address
    - `line` *(String)* *(required)* - street name and house number of address
    - `city` *(String)* *(required)* - city
    - `postalCode` *(String)* *(required)* - postal code  
    - `state` *(String)* *(required)* - state
    - `country` *(String)* *(optional)* - country. The default value is Austria, if it is not given.
  - `telecom` *(Array)* *(optional)* - contact detail of practitioner. Structure described at <http://hl7.org/fhir/R4/datatypes.html#ContactPoint>

#### JSON Object organization

- `resource` *(Object)* - organization (<http://hl7.org/fhir/R4/organization.html>)
  - `resourceType` *(String)* *(required)* - type of resource here it is always `"Organization"`
  - `id` *(String)* *(required)* - id of the practitioner role resource to reference from other resources
  - `identifier` *(Array)* *(optional)* - identifiers of organization. Structure described at <http://hl7.org/fhir/R4/datatypes.html#Identifier>. If this is the identifier for the organization of the author, it must be the OID of GDA-Index.
  - `name` *(String)* *(required)* - name of the organization. The default value is "Ordination `"given"` `"family"`"
  - `address` *(Object)* *(required)* - address of the organization  
    - `use` *(String)* *(required)* - usage of address
    - `line` *(String)* *(required)* - street name and house number of address
    - `city` *(String)* *(required)* - city
    - `postalCode` *(String)* *(required)* - postal code  
    - `state` *(String)* *(required)* - state
    - `country` *(String)* *(optional)* - country. The default value is Austria, if it is not given.
  - `telecom` *(Array)* *(optional)* - contact details of the organization. Structure described at <http://hl7.org/fhir/R4/datatypes.html#ContactPoint>

#### JSON Object immunization

- `resource` *(Object)* - performed and documented vaccination.(<http://hl7.org/fhir/R4/immunization.html>)
  - `resourceType` *(String)* *(required)* - type of resource here it is always `"Immunization"`
  - `id` *(String)* *(required)* - id of immunization resource to reference from other resources
  - `identifier` *(String)* *(required)* - id of single vaccination, it should be generated by the software of the GDA
  - `status` *(String)* *(required)* - status of vaccination. It must be `"completed"`.
  - `occurrenceDateTime` *(String)* *(optional)* - the date and time when vaccination was carried out
  - `vaccineCode` *(Object)* *(optional)* - pzn or historic vaccine. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_Impfstoffe_VS and eImpf_HistorischeImpfstoffe_VS. Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>
  - `lotNumber` *(String)* *(required)* - lot number of the proprietary medicinal product which was administered
  - `manufacturer`*(Object)* *(optional)* - reference to organization, which manufactured of the vaccine (medicinal product)
  - `doseQuantity`*(Object)* *(optional)* - dosage or amount of the vaccine administered. Structure described at <http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity>
    - `value` *(String)* *(required)* - amount of vaccine  
  - `protocolApplied` *(Object)* *(required)* - details about the vaccination
    - `series`*(String)* *(optional)* - vaccination scheme. It is required if the scheme differs from the default scheme. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_Impfschema_VS)
    - `doseNumberString` *(String)* *(required)* - information which vaccination or partial vaccination it was. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_Impfdosis_VS
    - `authority`*(Object)* *(required)* - reference to practitioner, who is responsible for the vaccination and its documentation. This object has the same structure like authors. If the responsible phsyician is not given the details form the first author will be used as default values. Structure described at <https://www.hl7.org/fhir/references.html#Reference>
    - `targetDisease` *(Array)* *(optional)* - codes for target diseases. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_ImmunizationTarget_VS. Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>
  - `reasonCode` *(Object)* *(optional)* - code for the billability. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_Impfgrund_VS. Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>
  - `expirationDate` *(String)* *(optional)* - expiration date of the vaccine in the format yyyy-MM-dd
  - `programEligibility`*(Object)* *(optional)* - Identification mark of a vaccination voucher (if vaccination voucher booklets are available). It is only allowed for actual vaccinations and not for Addendums. Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>
    - `code` *(String)* *(required)* - voucher code
    - `system` *(String)* *(required)* - OID of the body issuing the vaccination voucher e.g. "Land Steiermark"
  - `reportOrigin`*(String)* *(optional)* - reference to underlying finding with which this immunization was stored by GDA. Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>
  - `recorded` *(String)* *(required)* - approval date of immunization. Time of release of the documentation.
  - `performer`*(Array)* *(required)* - The person who carries out the vaccination, e.g. a physician or a midwife or DGKP in the transferred area of activity. If the details of performer was not given like name or organization, the data of the author will be used as default values. Only the function code have no default value.  
    - `function`*(Object)**(required) - role of vaccinating person. Possible values can be find under <https://termpub.gesundheit.gv.at> in the value set eImpf_Impfrollen_VS. Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>
    - `actor`*(Object)* *(required)* - reference to performer. Structure described at <https://www.hl7.org/fhir/references.html#Reference>. Referenced resource must be PractitionerRole

#### JSON Object immunization recommendation

- `resource` *(Object)* - vaccination recommendation.(<https://www.hl7.org/fhir/immunizationrecommendation.html>)
  - `resourceType` *(String)* *(required)* - type of resource here it is always `"ImmunizationRecommendation"`
  - `id` *(String)* *(required)* - id of immunization recommendation resource to reference from other resources
  - `identifier` *(String)* *(required)* - unique id of vaccination recommendation
  - `date` *(String)* *(requiree)* - the date and time when recommendation was created
  - `authority` *(Object)* *(optional)* - reference to responsible organization, who generates recommendation. Structure described at <https://www.hl7.org/fhir/references.html#Reference>
  - `patient` *(Object)* *(required)* - reference to patient. Structure described at <https://www.hl7.org/fhir/patient.html>
  - `recommendation` *(Array)* *(required)* - vaccine administration recommendations. At least one recommencation must be included.
    - `vaccineCode` *(Object)* *(optional)* - pzn or historic vaccine. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_Impfstoffe_VS and eImpf_HistorischeImpfstoffe_VS. Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>
    - `series`*(String)* *(optional)* - vaccination scheme. It is required if the scheme differs from the default scheme. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_Impfschema_VS)
    - `doseNumberString` *(String)* *(optional)* - information which vaccination or partial vaccination it was. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_Impfdosis_VS
    - `targetDisease` *(Object)* *(optional)* - String array with vaccination protection against specific disease or pathogen. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_ImmunizationTarget_VS. Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>
    - `forecastStatus` *(Object)* *(required)* - vaccine recommendation status. Possible values are available under <https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=eImpf_SpecialCaseVaccination_VS>. Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>
    - `dateCriterion` *(Array)* *(optional)* - recommended date
      - `code` *(Object)* *(required)* - type of date. Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>. Possible values are `"recommended"`
      - `value` *(String)* *(required)* - recommended date. Period covered by the vaccination recommendation.

#### JSON Object observation for relevant disease

- `resource` *(Object)* - observation.(<https://www.hl7.org/fhir/observation.html>)
  - `resourceType` *(String)* *(required)* - type of resource here it is always `"Observation"`
  - `id` *(String)* *(required)* - id of observation resource to reference from other resources
  - `identifier` *(String)* *(required)* - unique id of relevante disease
  - `status` *(String)* *(required)* - information whether the disease is still relevant
  - `effectivePeriod` *(Object)* *(required)* - start and end of disease. End of disease is only needed if attribute `status` is `"final"`. Structure described at <https://www.hl7.org/fhir/datatypes.html#Period>
  - `category` *(Object)* *(optional)* - type of observation. For relevant disease it must be `"exam"`
  - `code` *(Object)* *(required)* - type of observation. This it must be `"11348-0"` (history of past illness)
  - `note` *(Object)* *(optional)* - remarks in free text for the purpose of entering evidence of relevant disease, e.g. preliminary or laboratory results with titre. Structure described at <https://www.hl7.org/fhir/datatypes.html#Annotation>
  - `performer` *(Object)* *(optional)* - reference to responsible physician, who documents relevant disease. Structure described at <https://www.hl7.org/fhir/references.html#Reference>
  - `derivedFrom` *(Object)* *(optional)* - reference to DocumentReference of the original documentation. Structure described at <https://www.hl7.org/fhir/references.html#Reference>

#### JSON Object observation for exposure risks

- `resource` *(Object)* - observation.(<https://www.hl7.org/fhir/observation.html>)
  - `resourceType` *(String)* *(required)* - type of resource here it is always `"Observation"`
  - `id` *(String)* *(required)* - id of observation resource to reference from other resources
  - `identifier` *(String)* *(required)* - unique id of exposure risk
  - `status` *(String)* *(required)* - information whether risk is still relevant
  - `effectivePeriod` *(Object)* *(required)* - start and end of risk. End of risk is only needed if attribute `status` is `"final"`. Structure described at <https://www.hl7.org/fhir/datatypes.html#Period>
  
  - `category` *(Object)* *(optional)* - type of observation. For relevant disease it must be `"exam"`
  - `type` *(Object)* *(required)* - type of observation. This it must be `"11339-9"` (history of major illnesses and injuries)
  - `note` *(Object)* *(optional)* - remarks in free text for the purpose of entering evidence of relevant disease, e.g. preliminary or laboratory results with titre. Structure described at <https://www.hl7.org/fhir/datatypes.html#Annotation>

**Example:**

```JSON
{
    "resourceType": "Bundle", //fix value
    "type": "document", //fix value
    "identifier": {
        "value": "44929e4e-048e-03fc-be6b-108f72287c59_20200221092703",
        "system": "1.2.40.0.34.99.3.2.1046167" // default value is the OID of organization, which is authorized
    },
    "entry": [
        {
            "resource": {
                "resourceType": "Composition", //fix value
                "type": [
                    {
                        "code": "87273-9" //fix value for update immunization state
                    }
                ],
                "category": [
                    {
                        "code": "11369-6" //fix value for immunization state
                    }
                ],
                "title": "Update Immunisierungsstatus", //fix value
                "status": "final", //fix value
                "date": "2020-05-10T12:30:02Z",
                "subject": {
                    "reference": "Patient/1",
                    "type": "Patient" //fix value
                },
                "author": [
                    {
                        "reference": "PractitionerRole/2",
                        "type": "PractitionerRole" //fix value
                    }
                ],
                "custodian": {
                    "reference": "Organization/1",
                    "type": "Organization" //fix value
                },
                "attester": [
                    {
                        "mode": "legal", //fix value
                        "time": "2020-05-10T10:30:02Z",
                        "party": {
                            "reference": "PractitionerRole/2",
                            "type": "PractitionerRole" //fix value
                        }
                    }
                ],
                "extension": [
                  {
                     "url": "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber",
                     "valueInteger": 1
                  }
                ],
                "event": [
                    {
                        "period": {
                            "start": "2020-05-09",
                            "end": "2020-05-10"
                        }
                    }
                ],
                "section": [
                    {
                        "entry": [
                            {
                                "reference": "Immunization/1",
                                "type": "Immunization" //fix value
                            }
                        ]
                    }
                ]
            }
        },
        {
            "resource": {
                "resourceType": "Patient", //fix value
                "id": "1",
                "identifier": [
                    {
                        "value": "1001210995",
                        "system": "1.2.40.0.10.1.4.3.1"
                    },
                    {
                        "value": "124", //internal id
                        "system": "1.2.40.0.34.99.3.2.1046167" //oid of system
                    }
                ],
                "name": [
                    {
                        "given": "Max",
                        "family": "Musterpatient"
                    }
                ],
                "birthDate": "1995-09-21",
                "gender": "male",
                "address": [
                    {
                        "line": "Testgasse 35",
                        "city": "Graz",
                        "postalCode": "8020",
                        "state": "STMK",
                        "country": "AUT"
                    }
                ],
                "telecom": [
                    {
                        "system": "phone",
                        "value": "03168899521",
                        "use": "home"
                    }
                ]
            }
        },
        {
            "resource": {
                "resourceType": "PractitionerRole", //fix value
                "id": "2",
                "identifier": [
                    {
                        "value": "1",
                        "system": "1.2.40.0.34.99.3.2.1046167"
                    }
                ],
                "organization": {
                    "reference": "Organization/1",
                    "type": "Organization" //fix value
                },
                "practitioner": {
                    "reference": "Practitioner/1",
                    "type": "Practitioner" //fix value
                }
            }
        },
        {
            "resource": {
                "resourceType": "Practitioner", //fix value
                "id": "1",
                "name": [
                    {
                        "given": "Helga",
                        "family": "Musterärztin",
                        "prefix": "Dr."
                    }
                ],
                "address": [
                    {
                        "line": "Ernst-Melchior-Gasse 22",
                        "city": "Wien",
                        "postalCode": "1020",
                        "state": "W",
                        "country": "AUT"
                    }
                ],
                "telecom": [
                    {
                        "system": "phone",
                        "value": "0154168899521",
                        "use": "work"
                    }
                ]
            }
        },
        {
            "resource": {
                "resourceType": "Organization", //fix value
                "id": "1",
                "identifier": [ // value must be the OID of organization, which is authorized
                    {
                        "system": "1.2.40.0.34.99.3.2.1046167"
                    }
                ],
                "name": "Ordination Dr. Musterärztin",
                "address": [
                    {
                        "line": "Ernst-Melchior-Gasse 22",
                        "city": "Wien",
                        "postalCode": "1020",
                        "state": "W",
                        "country": "AUT"
                    }
                ],
                "telecom": [
                    {
                        "system": "phone",
                        "value": "0154168899521",
                        "use": "work"
                    }
                ]
            }
        },
        {
            "resource": {
                "resourceType": "Immunization", //fix value
                "id": "1",
                "identifier": [
                    {
                        "system": "1.2.40.0.34.99.3.2.1046167", // default value is the OID of organization, which is authorized
                        "value": "1"
                    }
                ],
                "status": "completed", //fix value
                "occurrenceDateTime": "2020-05-09",
                "vaccineCode": [
                    {
                        "coding": [
                            {
                                "code": "0515738" //PZN of vaccination
                            }
                        ]
                    }
                ],
                "lotNumber": "12345", // "Chargennummer"
                "protocolApplied": {
                    "series": "SCHEMA003", //schema
                    "doseNumberString": "D1", //vaccination part
                    "authority": { //practitioner, which is responsible for vaccination
                        "reference": "PractitionerRole/2",
                        "type": "PractitionerRole"
                    }, 
                    "targetDisease": [
                       {
                            "coding": [
                                {
                                    "code": "836403007", //general practitioner
                                    "system": "2.16.840.1.113883.6.96", 
                                    "display": "Frühsommer-Meningoencephalitis Impfstoff"
                                }
                            ]
                        }
                    ]
                },
                "expirationDate": "2025-04-30",
                "programEligibility": {
                    "code": "1234", //voucher code
                    "system": "" //OID of Land Steiermark for example
                },
                "recorded": "2020-05-09",
                "performer": [
                    {
                        "function": [
                            {
                                "coding": [
                                    {
                                        "code": "100", //general practitioner
                                        "system": "1.2.40.0.34.5.2"
                                    }
                                ]
                            }
                        ],
                        "actor": { //practitioner, who performed vaccination
                            "reference": "PractitionerRole/2",
                            "type": "PractitionerRole" //fix value
                        }
                    }
                ]
            }
        }
    ]
}
```
