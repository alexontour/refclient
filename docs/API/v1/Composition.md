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
    - `mode` *(Strng)* - type of authenticator. Possible values: `"legal"` and `"professional"`
    - `time` *(Strng)* - time when the document was signed
    - `party` *(Object)* - reference to practioner role. Structure described at <https://www.hl7.org/fhir/references.html#Reference>.
  - `relatesTo` *(Array)* *(optional)* - Previous document.
    - `code` *(Object)* *(optional)* - code of relationship. It is always `"replace"`, if it is used
    - `targetIdentifier` *(Object)* *(required)* - identifier of previous document. Structure described at <http://hl7.org/fhir/R4/datatypes.html#Identifier>
  - `event` *(Array)* *(optional)* - vaccination is documented
    - `period` *(Object)* *(optional)* - period of vaccination. Structure described at <http://hl7.org/fhir/R4/datatypes.html#Period>. `"start"` and `"end"` must not have the same date. The format of the start and end have to be yyyy-MM-dd.
  - `versionNumber` *(int)* *(optional)* - default value for the version is 1, so you only need to specify the version if you want to update an existing document
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
  - `birthDate`*(String)* *(optional)* - date of birth of patient
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
  - `period` *(String)* *(required)* - the time at which the document was written. The time must be formatted as ISO8601 (yyyy-MM-dd). The default value is the current time. Structure described at <http://hl7.org/fhir/R4/datatypes.html#Period>.
  - `code` *(Array)* *(optional)* - information on the subject of the author ("Sonderfach" according to the "Ausbildungsordnung"). Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>.
  - `speciality` *(Array)* *(optional)* - specialty of the practitioner. Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>.
  - `organization` *(String)* *(required)* - reference to organization on whose behalf the author of the document has written the documentation

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
  - `identifier` *(Array)* *(optional)* - identifiers of organization. Structure described at <http://hl7.org/fhir/R4/datatypes.html#Identifier>.
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
  - `vaccineCode` *(String)* *(optional)* - pzn or historic vaccine. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_Impfstoffe_VS and eImpf_HistorischeImpfstoffe_VS
  - `lotNumber` *(String)* *(required)* - lot number of the proprietary medicinal product which was administered
  - `manufacturer`*(Object)* *(optional)* - reference to organization, which manufactured of the vaccine (medicinal product)
  - `doseQuantity`*(Object)* *(optional)* - dosage or amount of the vaccine administered. Structure described at <http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity>
    - `unit`*(String)* *(optional)* - unit of the amount  
    - `value` *(String)* *(required)* - amount of the vaccine  
  - `protocolApplied` *(Object)* *(required)* - details about the vaccination
    - `series`*(String)* *(optional)* - vaccination scheme. It is required if the scheme differs from the default scheme. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_Impfschema_VS)
    - `doseNumberString` *(String)* *(required)* - information which vaccination or partial vaccination it was. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_Impfdosis_VS
    - `targetDiseases` *(Array)* *(required)* - String array with vaccination protection against specific disease or pathogen. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_ImmunizationTarget_VS. Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>
    - `authority`*(Object)* *(optional)* - reference to organization, which is responsible for the vaccination and its documentation. This object has the same structure like authors. If the responsible phsyician is not given the details form the first author will be used as default values.
  - `reasonCode` *(Object)* *(optional)* - code for the billability. Possible values are available under <https://termpub.gesundheit.gv.at> in the Value Set eImpf_Impfgrund_VS. Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>
  - `expirationDate` *(String)* *(optional)* - expiration date of the vaccine in the format yyyy-MM-dd
  - `programEligibility`*(Object)* *(optional)* - Identification mark of a vaccination voucher (if vaccination voucher booklets are available). It is only allowed for actual vaccinations and not for Addendums. Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>
    - `code` *(String)* *(required)* - voucher code
    - `system` *(String)* *(required)* - OID of the body issuing the vaccination voucher e.g. "Land Steiermark"
  - `reportOrigin`*(String)* *(optional)* - reference to underlying finding with which this immunization was stored by GDA. Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>
  - `recorded` *(String)* *(required)* - approval date of immunization
  - `performer`*(Array)* *(optional)* - The person who carries out the vaccination, e.g. a physician or a midwife or DGKP in the transferred area of activity. If the details of performer was not given like name or organization, the data of the author will be used as default values. Only the function code have no default value.  
    - `function`*(Object)**(required) - role of vaccinating person. Possible values can be find under <https://termpub.gesundheit.gv.at> in the value set eImpf_Impfrollen_VS. Structure described at <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>
    - `actor`*(Object)* *(required)* - reference to performer. Structure described at <https://www.hl7.org/fhir/references.html#Reference>. Please use id of local system.
      - `identifier` *(Object)* *(required)* - id of local system.

**Example:**

```JSON

```
