# API Documentation: "immunizationrecord"

Microservice endpoint: `/api/v1/DocumentReference`

Handles all actions related to documents in ELGA like eBefund, eMedikation and eImpfpass.

## Write a document [`POST`]

- Headers: `Authorization`
- Response: JSON-Object

Writes a document in ELGA area. Implemented according to <http://hl7.org/fhir/R4/documentreference.html>. The Response is implemtented according to <http://hl7.org/fhir/R4/bundle.html>.

### JSON Object Structure Request

- `resourceType` *(String)**(required)* - type of resource. It is in this case `"Bundle"`
- `meta` *(Object)* *(required)* - metadata about the resource
  - `profile` *(String)* *(required)* - Profiles this resource claims to conform to. In this case we needed `"http://ihe.net/fhir/StructureDefinition/IHE_MHD_Provide_Minimal_DocumentBundle"`
- `type` *(String)**(required)* - type of bundle. This must be `"transaction"` for writing documents to ELGA.
- `entry` *(Array)**(required)* - documents of bundle.

### JSON Object Structure entry

- `resource` *(Object)* *(required)* - document to write as <http://hl7.org/fhir/R4/documentreference.html>
  - `status` *(String)* *(required)* - status of document. Possible values: `"current"` and `"superseded"`
  - `context` *(Object)* *(required)* - context of document
    - `facilityType` *(Object)* *(required)* - document's healthcare facility code. Structure described under <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>
    - `practiceSetting` *(Object)* *(required)* - document's practice setting code. Structure described under <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>
  - `content`*(Object)* *(required)* - referenced document
    - `attachment` *(Object)* *(required)* - document
      - `contentType` *(String)* *(required)* - mime type of the document to upload. Possible values: `"application/fhir+json"` and `"application/xml"`
      - `data` *(String)* *(required)* - CDA document or JSON as base64 encoded stream of bytes
    - `format` *(Object)* *(required)* - document's format code. Structure described under <http://hl7.org/fhir/R4/datatypes.html#Coding>
  - `relatesTo` *(Array)* *(optional)* - relationship to other doucments. It must be filled in if the document should be updated, otherwise it is prohibited.
    - `code` *(String)* *(required)* - type of relationship. It must be `"replaces"`
    - `target` *(Object)* *(required)* - reference to parent document. Structure described under <http://hl7.org/fhir/R4/references.html#Reference>
      - `type` *(String)* *(required)* - type of reference. It must be `"DocumentReference"`
      - `identifier` *(Object)* *(required)* - id of parent document. Structure described under <http://hl7.org/fhir/R4/datatypes.html#Identifier>
  - `subject` *(Object)* *(required)* - patient for which the document should be written
    - `type` *(String)* *(required)* - type of reference. It must be `"Patient"`
    - `identifier` *(Object)* *(required)* - id of patient. Structure described under <http://hl7.org/fhir/R4/datatypes.html#Identifier>

**Example:**

```JSON

```

### JSON Object Structure response

- `resourceType` *(String)* - type of resource here it is always `"Bundle"`
- `type` *(String)* - type of bundle. This will be `"transaction-response"` for failed query.
- `timestamp` *(String)* - time when the bundle was created
- `entry` *(Array)* - information about response

#### Structure entry

- `response` *(Object)* - result of execution
  - `status` *(String)* - HTTP Response Status Code. 201 if the document was created successful. (<https://developer.mozilla.org/de/docs/Web/HTTP/Status>)
  - `outcome` *(Object)* - idetails about response. The structure is described under <https://www.hl7.org/fhir/operationoutcome.html>

**Example:**

```JSON

```

## Cancel document [`DELETE`]

- Parameters: `category` *(required)*, `patient.identifier` *(required)*, `identifier` *(required)*, `author.organization.name` *(required)*
- Headers: `Authorization`
- Response: JSON-Object

Cancels document with the identifier from ELGA.

### JSON Object Structure response

- `resourceType` *(String)* - type of resource here it is always `"Bundle"`
- `type` *(String)* - type of bundle. This will be `"transaction-response"` for failed query.
- `timestamp` *(String)* - time when the bundle was created
- `entry` *(Array)* - information about response

#### Structure entry

- `response` *(Object)* - result of execution
  - `status` *(String)* - HTTP Response Status Code. 201 if the document was created successful. (<https://developer.mozilla.org/de/docs/Web/HTTP/Status>)
  - `outcome` *(Object)* - idetails about response. The structure is described under <https://www.hl7.org/fhir/operationoutcome.html>

**Example:**

```JSON

```

## Query metadata of ELGA documents [`GET`]

- Parameters: `category` *(required)*, `patient.identifier` *(required)*, `status` *(required)*
- Headers: `Authorization`
- Response: JSON-Object

Queries the metadata of ELGA documents. Identifier must match the following pattern OID|ID. An example for an identifier search is the social security number 1.2.40.0.10.1.4.3.1|1001210995. Possible values for parameter status are `"current"` and `"superseded"`. Possible values for parameter category are the first level of <https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen>.

### JSON Object Structure successfull response

- `resourceType` *(String)* - type of resource here it is always `"Bundle"`
- `type` *(String)* - type of bundle. This will be `"searchset"` for successful query.
- `timestamp` *(String)* - time when the bundle was created
- `entry` *(Array)* - all found document metadata

#### Structure entry

- `resource` *(Object)* - found document metadata (<http://hl7.org/fhir/R4/documentreference.html>)
  - `meta` *(Object)* - metadata of the resource
    - `profile` *(String)* - used profile is here `"http://ihe.net/fhir/StructureDefinition/IHE_MHD_Provide_Comprehensive_DocumentBundle"`
  - `language` *(String)* - language of document
  - `text` *(String)* - comments of document
  - `masterIdentifier` *(Object)* - unique id of document. The structure is described under <http://hl7.org/fhir/R4/datatypes.html#Identifier>
  - `resourceType` *(String)* - type of resource, here it is always `"DocumentReference"`
  - `identifier` *(Array)* - identifier of document (entryUUID). The structure is described under <http://hl7.org/fhir/R4/datatypes.html#Identifier>
  - `status` *(String)* - status of document. Possible values: `"current"` and `"superseded"`
  - `category` *(Object)* - class code of document. Structure is described under <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>. Possible values for parameter category are the first level of <https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen>.
  - `type` *(Object)* - type of document. Structure is described under <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>. Possible values for parameter category are the second level of <https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen>.
  - `subject` *(Object)* - reference to patient
  - `author` *(Array)* - references to authors
  - `authenticator` *(Object)* - reference to legal authenticator
  - `date` *(String)* - time when the document was created
  - `description` *(String)* - title of document
  - `context` *(Object)* - context of document
    - `event` *(Array)* - service event code of document. Structure is described under <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>. Possible values for discharge letters are <https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_ServiceEventsEntlassbr_VS>, for laboratory reports <https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_ServiceEventsLabor>.
    - `period` *(Object)* - period of service. Structure is described under <http://hl7.org/fhir/R4/datatypes.html#Period>
    - `facilityType` *(Object)* - healthcarefacility codes of the physician/organization, which created the document. Structure is described under <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>. Possible values are available under <https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_HealthcareFacilityTypeCode>
    - `practiceSetting` *(Object)* - practice setting codes of the physician/organization, which created the document. Structure is described under <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>. Possible values are available under <https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_PracticeSetting_VS>
  - `relatesTo` *(Array)* - related documents
    - `code` *(String)* *(required)* - type of relationship. It must be `"replaces"`
    - `target` *(Object)* *(required)* - reference to parent document. Structure described under <http://hl7.org/fhir/R4/references.html#Reference>
      - `type` *(String)* *(required)* - type of reference. It must be `"DocumentReference"`
      - `identifier` *(Object)* *(required)* - id of parent document. Structure described under <http://hl7.org/fhir/R4/datatypes.html#Identifier>
  - `content` *(Object)* - information about document
    - `attachment` *(Object)* - information to access the document
      - `url` *(String)* - url to access the document
    - `format` *(Object)* - format code of document. Structure is described under <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>

**Example:**

```JSON

```

### JSON Object Structure error message as response

- `resourceType` *(String)* - type of resource here it is always `"Bundle"`
- `type` *(String)* - type of bundle. This will be `"transaction-response"` for failed query.
- `timestamp` *(String)* - time when the bundle was created
- `entry` *(Array)* - information about error

#### Structure entry

- `response` *(Object)* - result of execution
  - `status` *(String)* - HTTP Response Status Code like 401 for Unauthorized
  - `outcome` *(Object)* - idetails about error. The structure is described under <https://www.hl7.org/fhir/operationoutcome.html>

**Example:**

```JSON

```

## Query medication list or complete immunization state [`GET`]

- Parameters: `type` *(required)*, `patient.identifier` *(required)*, `status` *(required)*, `content.attachment.contentType` *(required)*
- Headers: `Authorization`
- Response: JSON-Object

Queries the ELGA medication list or the complete immunization record of one patient. Patient identifier must match the following pattern OID|ID. An example for an identifier search is the social security number 1.2.40.0.10.1.4.3.1|1001210995. Possible values for parameter status are `"current"` and `"superseded"`. Possible values for parameter type are `"82593-5"` for complete immunization state and `"56445-0"` for meciation list. Possible content types are `"application/fhir+xml"` and `"application/fhir+json"`.

### JSON Object Structure successfull response

- `resourceType` *(String)* - type of resource here it is always `"Bundle"`
- `type` *(String)* - type of bundle. This will be `"searchset"` for successful query.
- `timestamp` *(String)* - time when the bundle was created
- `entry` *(Array)* - found document

#### Structure entry

- `resource` *(Object)* - found document (<http://hl7.org/fhir/R4/documentreference.html>)
  - `content` *(Object)* - information about document
    - `attachment` *(Object)* - information to access the document
      - `contentType` *(String)* - content type of document
      - `data` *(String)* *(required)* - CDA document or JSON as base64 encoded stream of bytes

**Example:**

```JSON

```

### JSON Object Structure error message as response

- `resourceType` *(String)* - type of resource here it is always `"Bundle"`
- `type` *(String)* - type of bundle. This will be `"transaction-response"` for failed query.
- `timestamp` *(String)* - time when the bundle was created
- `entry` *(Array)* - information about error

#### Structure entry

- `response` *(Object)* - result of execution
  - `status` *(String)* - HTTP Response Status Code like 401 for Unauthorized
  - `outcome` *(Object)* - idetails about error. The structure is described under <https://www.hl7.org/fhir/operationoutcome.html>

**Example:**

```JSON

```

## Query ELGA document [`GET`]

- Parameters: `content.attachment.url` *(required)*, `content.attachment.contentType` *(required)*
- Endpoint: `/`
- Headers: `Authorization`
- Response: JSON-Object

Queries ELGA document. Value for content.attachment.url is available after querying metadata of documents. Possible content types are `"application/xml"` and `"application/fhir+json"`. JSON structure is described in <https://git.et-innovations.org/java/elga-refclient/tree/master/docs/API/v1/Composition.md>

### JSON Object Structure successfull response

- `resourceType` *(String)* - type of resource here it is always `"Bundle"`
- `type` *(String)* - type of bundle. This will be `"searchset"` for successful query.
- `timestamp` *(String)* - time when the bundle was created
- `entry` *(Array)* - found document

#### Structure entry

- `resource` *(Object)* - found document (<http://hl7.org/fhir/R4/documentreference.html>)
  - `content` *(Object)* - information about document
    - `attachment` *(Object)* - information to access the document
      - `contentType` *(String)* - content type of document
      - `data` *(String)* *(required)* - CDA document or JSON as base64 encoded stream of bytes

**Example:**

```JSON

```

### JSON Object Structure error message as response

- `resourceType` *(String)* - type of resource here it is always `"Bundle"`
- `type` *(String)* - type of bundle. This will be `"transaction-response"` for failed query.
- `timestamp` *(String)* - time when the bundle was created
- `entry` *(Array)* - information about error

#### Structure entry

- `response` *(Object)* - result of execution
  - `status` *(String)* - HTTP Response Status Code like 401 for Unauthorized
  - `outcome` *(Object)* - idetails about error. The structure is described under <https://www.hl7.org/fhir/operationoutcome.html>

**Example:**

```JSON

```