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
  - `resourceType` *(String)* *(required)* - type of resource here it is always `"DocumentReference"`
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
  - `subject` *(Object)* *(required)* - patient for whom the document should be written
    - `type` *(String)* *(required)* - type of reference. It must be `"Patient"`
    - `identifier` *(Object)* *(required)* - id of patient. Structure described under <http://hl7.org/fhir/R4/datatypes.html#Identifier>

**Example:**

```JSON
{
    "resourceType": "Bundle", //fix value
    "type": "transaction", //fix value
    "meta": {
        "profile": "http://ihe.net/fhir/StructureDefinition/IHE_MHD_Provide_Minimal_DocumentBundle" //fix value
    },
    "entry": [
        {
            "resource": {
                "resourceType": "DocumentReference", //fix value
                "status": "current", //fix value for creating new immunization
                "context": {
                    "facilityType": [
                        {
                            "coding": [
                                {
                                    "code": "100"
                                }
                            ]
                        }
                    ],
                    "practiceSetting": [
                        {
                            "coding": [
                                {
                                    "code": "F001"
                                }
                            ]
                        }
                    ]
                },
                "content": [
                    {
                        "attachment": {
                            "contentType": "application/fhir+json",
                            "data": "base64encodedComposition"
                        },
                        "format": "urn:hl7-at:eImpf:2019" //fix value
                    }
                ],
                "subject": {
                    "type": "Patient", //fix value
                    "identifier": {
                        "value": "1001210995",
                        "system": "1.2.40.0.10.1.4.3.1" //OID of ssno
                    }
                }
            }
        }
    ]
}
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
{
    "resourceType": "Bundle",
    "type": "transaction-response",
    "timestamp": "2020-05-18T13:30:02Z",
    "entry": [
        {
            "response": {
                "status": "201"
            }
        }
    ]
}
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
  - `status` *(String)* - HTTP Response Status Code. 202 if document was cancelled successfully. (<https://developer.mozilla.org/de/docs/Web/HTTP/Status>)
  - `outcome` *(Object)* - idetails about response. The structure is described under <https://www.hl7.org/fhir/operationoutcome.html>

**Example:**

```JSON
{
    "resourceType": "Bundle",
    "type": "transaction-response",
    "timestamp": "2020-05-18T13:30:02Z",
    "entry": [
        {
            "response": {
                "status": "202"
            }
        }
    ]
}
```

## Query metadata of ELGA documents [`GET`]

- Parameters: `type` *(required)*, `patient.identifier` *(required)*, `status` *(required)*
- Headers: `Authorization`
- Response: JSON-Object

Queries the metadata of ELGA documents. Identifier must match the following pattern OID|ID. An example for an identifier search is the social security number 1.2.40.0.10.1.4.3.1|1001210995. Possible values for parameter status are `"current"` and `"superseded"`. Possible values for parameter category are the first level of <https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen>.

Example request: <http://localhost:50051/api/v1/DocumentReference?type=87273-9&patient.identifier=1.2.40.0.10.1.4.3.1|1001210995&status=current>

### JSON Object Structure successfull response

- `resourceType` *(String)* - type of resource here it is always `"Bundle"`
- `type` *(String)* - type of bundle. This will be `"searchset"` for successful query.
- `timestamp` *(String)* - time when the bundle was created
- `entry` *(Array)* - all found document metadata

#### Structure entry

- `resource` *(Object)* - found document metadata (<http://hl7.org/fhir/R4/documentreference.html>)
  - `resourceType` *(String)* - type of resource here it is always `"DocumentReference"`
  - `meta` *(Object)* - metadata of the resource
    - `profile` *(String)* - used profile is here `"http://ihe.net/fhir/StructureDefinition/IHE_MHD_Query_Comprehensive_DocumentReference"`
  - `language` *(String)* - language of document
  - `text` *(String)* - comments of document
  - `masterIdentifier` *(Object)* - unique id of document. The structure is described under <http://hl7.org/fhir/R4/datatypes.html#Identifier>
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
{
    "resourceType": "Bundle",
    "type": "searchset",
    "entry": [
        {
            "resource": {
                "resourceType": "DocumentReference",
                "meta": {
                    "profile": "http://ihe.net/fhir/StructureDefinition/IHE_MHD_Query_Comprehensive_DocumentReference"
                },
                "status": "current",
                "language": "de-AT",
                "text": "comments for immunization",
                "masterIdentifier": {
                    "value": "44929e4e-048e-03fc-be6b-108f72287c59_20200221092703",
                    "system": "1.2.40.0.34.99.3.2.1046167"
                },
                "identifier": {
                    "value": "urn:uuid:cc85c289-d169-4114-8e99-f82577a9a7ad"
                },
                "category": {
                    "coding": [
                        {
                            "code": "11369-6",
                            "system": "urn:oid:2.16.840.1.113883.6.1",
                            "display": "History of Immunization Narrative"
                        }
                    ]
                },
                "type": {
                    "coding": [
                        {
                            "code": "87273-9",
                            "system": "urn:oid:2.16.840.1.113883.6.1",
                            "display": "Immunization note"
                        }
                    ]
                },
                "subject": {
                    "type": "Patient",
                    "identifier": {
                        "value": "3822390b-902b-499d-9fa3-f6c4b12bd768",
                        "system": "1.2.40.0.34.3.1.1052.12.1.6.1.1.17"
                    }
                },
                "author": [{
                    "type": "Practitioner",
                    "reference": "Practitioner/1"
                }],
                "authenticator":[
                    {
                        "type": "Practitioner",
                        "reference": "Practitioner/1"
                    }
                ],
                "date": "2016-03-08T10:00:00Z",
                "description": "Update Immunisierungsstatus",
                "context": {
                    "period":{
                        "start": "2016-03-08T09:00:00Z", 
                        "end": "2016-03-10T10:00:00Z"
                    },
                    "facilityType": [
                        {
                            "coding": [
                                {
                                    "code": "100",
                                    "system": "1.2.40.0.34.5.2"
                                }
                            ]
                        }
                    ],
                    "practiceSetting": [
                        {
                            "coding": [
                                {
                                    "code": "F001",
                                    "system": "1.2.40.0.34.5.12"
                                }
                            ]
                        }
                    ]
                },
                "content": [
                    {
                        "attachment": {
                            "url": "http://localhost:50051/DocumentReference/1.2.40.0.34.99.3.2.1047013.2714.1/1.2.40.0.34.3.1.1052.12.1.6.2.1.3/urn:oid:1.2.40.0.34.3.1.1052.12.1.6"
                        },
                        "format": "urn:hl7-at:eImpf:2019"
                    }
                ]
            }
        },
        {
            "resource": {
                "resourceType": "Practitioner",
                "id": "1",
                "name": [
                    {
                        "given": "Helga",
                        "family": "Musterärztin",
                        "prefix": "Dr."
                    }
                ]
            }
        }
    ]
}
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
{
    "resourceType": "Bundle",
    "type": "transaction-response",
    "timestamp": "2020-05-18T12:30:02Z",
    "entry": [
        {
            "response": {
                "status": "401",
                "outcome": {
                    "resourceType": "OperationOutcome",
                    "issue": [
                        {
                            "severity": "error",
                            "code": "unknown",
                            "details": {
                                "coding": [
                                    {
                                        "code": "MSG_AUTH_REQUIRED",
                                        "system": "2.16.840.1.113883.4.642.4.1127",
                                        "display": "You must authenticate before you can use this service"
                                    }
                                ]
                            }
                        }
                    ]
                }
            }
        }
    ]
}
```

## Query medication list or complete immunization state [`GET`]

- Parameters: `type` *(required)*, `patient.identifier` *(required)*, `status` *(required)*, `content.attachment.contentType` *(required)*
- Headers: `Authorization`
- Response: JSON-Object

Queries the ELGA medication list or the complete immunization record of one patient. Patient identifier must match the following pattern OID|ID. An example for an identifier search is the social security number 1.2.40.0.10.1.4.3.1|1001210995. Possible values for parameter status are `"current"` and `"superseded"`. Possible values for parameter type are `"82593-5"` for complete immunization state and `"56445-0"` for meciation list. Possible content types are `"application/fhir+xml"` and `"application/fhir+json"`.

Example request: <http://localhost:50051/api/v1/DocumentReference?type=82593-5&patient.identifier=1.2.40.0.10.1.4.3.1|1001210995&status=current&content.attachment.contentType=application/fhir+json>

### JSON Object Structure successfull response

- `resourceType` *(String)* - type of resource here it is always `"Bundle"`
- `type` *(String)* - type of bundle. This will be `"searchset"` for successful query.
- `timestamp` *(String)* - time when the bundle was created
- `entry` *(Array)* - found document

#### Structure entry

- `resource` *(Object)* - found document (<http://hl7.org/fhir/R4/documentreference.html>)
  - `resourceType` *(String)* - type of resource here it is always `"DocumentReference"`
  - `content` *(Object)* - information about document
    - `attachment` *(Object)* - information to access the document
      - `contentType` *(String)* - content type of document
      - `data` *(String)* *(required)* - CDA document or JSON as base64 encoded stream of bytes

**Example:**

```JSON
{
    "resourceType": "Bundle",
    "type": "searchset",
    "timestamp": "2020-05-18T13:30:02Z",
    "entry": [
        {
            "resource": {
                "resourceType": "DocumentReference",
                "status": "current",
                "content": [
                    {
                        "attachment": {
                            "contentType": "application/fhir+json",
                            "data": "base64encodedComposition"
                        }
                    }
                ]
            }
        }
    ]
}
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
{
    "resourceType": "Bundle",
    "type": "transaction-response",
    "timestamp": "2020-05-18T12:30:02Z",
    "entry": [
        {
            "response": {
                "status": "401",
                "outcome": {
                    "resourceType": "OperationOutcome",
                    "issue": [
                        {
                            "severity": "error",
                            "code": "unknown",
                            "details": {
                                "coding": [
                                    {
                                        "code": "MSG_AUTH_REQUIRED",
                                        "system": "2.16.840.1.113883.4.642.4.1127",
                                        "display": "You must authenticate before you can use this service"
                                    }
                                ]
                            }
                        }
                    ]
                }
            }
        }
    ]
}
```

## Query ELGA document [`GET`]

- Parameters: `content.attachment.contentType` *(required)*
- Endpoint: `/<unqiqueId>/<repositoryId>/<homeCommunityId>` this endpoint is available at the parameter `content.attachment.url` of response of metadata query.
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
  - `resourceType` *(String)* - type of resource here it is always `"DocumentReference"`
  - `status` *(String)* - status of document. Possible values are `"current"` and `"superseded"`
  - `content` *(Object)* - information about document
    - `attachment` *(Object)* - information to access the document
      - `contentType` *(String)* - content type of document
      - `data` *(String)* *(required)* - CDA document or JSON as base64 encoded stream of bytes

**Example:**

```JSON
{
    "resourceType": "Bundle",
    "type": "searchset",
    "timestamp": "2020-05-18T13:30:02Z",
    "entry": [
        {
            "resource": {
                "resourceType": "DocumentReference",
                "status": "current",
                "content": [
                    {
                        "attachment": {
                            "contentType": "application/fhir+json",
                            "data": "base64encodedComposition"
                        }
                    }
                ]
            }
        }
    ]
}
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
{
    "resourceType": "Bundle",
    "type": "transaction-response",
    "timestamp": "2020-05-18T12:30:02Z",
    "entry": [
        {
            "response": {
                "status": "401",
                "outcome": {
                    "resourceType": "OperationOutcome",
                    "issue": [
                        {
                            "severity": "error",
                            "code": "unknown",
                            "details": {
                                "coding": [
                                    {
                                        "code": "MSG_AUTH_REQUIRED",
                                        "system": "2.16.840.1.113883.4.642.4.1127",
                                        "display": "You must authenticate before you can use this service"
                                    }
                                ]
                            }
                        }
                    ]
                }
            }
        }
    ]
}
```
