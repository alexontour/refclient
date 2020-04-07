# API Documentation: "virtual organizations"

Microservice endpoint: `/api/v1/ehealthapplications/vos`

Handles all actions related to documents of virtual organizations like the PVN Lammertal

## Retrieve document of a certain virtual organization [`GET`]

- Parameters: `userId` *(required)*, `format` *(optional)*, `voId` *(required)*, `id` *(required)*
- Response: JSON-Object

Requests a certain document of a certain virtual organization like PVN Lammertal. Possible values for tests:  `"152"` (PVN Hallein),`"153"` (PVN Lammertal)
Possible values for the parameter format are `"xml"`, `"html"`. If the format html is chosen a html file will be returned, otherwise a JSON element with base64 encoded CDA (xml document) will be returned.

### JSON Object Structure Response (format xml example)

- `documents` *(Array)* - list of received documents
- `transactionId` *(String)* - transaction id, which was used internal to execute the specific request
- `instanceId` *(String)* - id of the instance (window)
- `userId` *(String)* - id of the user, which requested the document
- `tenantId` *(String)* - id of the tenant
- `workspaceId` *(String)* - id of the workspace, where the user requested the document

#### Structure documents

- `document` *(Object)* - requested document
  - `base64String` *(Array)* - base64 encoded document
- `id` *(String)* - id of the document
- `type` *(String)* - type of the received document (for this application always ELGADOCUMENT will be returned)

**Example:**

```JSON
{
   "documents": [   {
      "document": {"base64String": ["PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPD94bWwtc3R5bGVzaGVldCB0eXBlPSJ0ZXh0L3hzbCIgaHJlZj0iRUxHQV9TdHlsZXNoZWV0X3YxLjAueHNsIj8CjxDbGluaWNhbERvY3VtZW50IHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIG1vb2RDb2RlPSJFVk4iIHhtbG5zPSJ1cm46aGw3LW9yZzp2MyI"]},
      "id": "UCJSC5AAQRW3_e31891b2-c73a-477d-b9e9-01bef7e9eabc;1.1.1.2.3;urn:oid:1.1.2.1",
      "type": "ELGADOCUMENT"
   }],
   "tenantId": "13",
   "userId": "13",
   "transactionId": "at.arztis.ec.connector10",
   "workspaceId": "14"
}
```

## Write a document into a certain virtual organization [`POST`]

- Endpoint: `/vos/document`
- Response: JSON-Object

Writes a documents into a certain virtual organization like PVN Lammertal.

### JSON Object Structure Request

- `userId` *(String)* *(required)* - id of the user, which want to write the document
- `ssno` *(String)* *(required)*- ssno of the patient for which the document should be written
- `voId` *(String)* *(required)* - id of the requested virtual organization. Possible values for tests:  `"152"` (PVN Hallein),`"153"` (PVN Lammertal)
- `document` *(String)* *(required)* - base64 encoded CDA document (Statusbericht CDA document)
- `formatCode` *(String)* *(required)* - id of the document's format code
- `healthcareFacilityCode` *(String)* *(required)* - id of the document's healthcare facility code
- `practiceSettingCode` *(String)* *(required)* - id of the document's practice setting code
- `parentDocument`*(String)* *(optional)*

**Example:**

```JSON
{
 "userId":"13",
 "healthcareFacilityCode":"100",
 "parentDocument":"",
 "practiceSettingCode": "F001",
 "comments": "",
 "ssno":"1001210995",
 "voId":"152",
 "document": "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPD94bWwtc3R5bGVzaGVldCB0eXBlPSJ0ZXh0L3hzbCIgaHJlZj0iRUxHQV9TdHlsZXNoZWV0X3YxLjAueHNsIj"
}
```

### JSON Object Structure Response

- `message` *(Object)* - return message
  - `code` *(Number)* - One of the following numbers: 0 (success) and 1 (error message)
  - `text` *(String)* - Information of the message
  - `type` *(String)* - One of the following possible type `"SUCCESS"`, `"ERROR"` 
- `transactionId` *(String)* - transaction id, which was used internal to execute the specific request
- `instanceId` *(String)* - id of the instance (window)
- `userId` *(String)* - id of the user, which wrote the document
- `tenantId` *(String)* - id of the tenant
- `workspaceId` *(String)* - id of the workspace, where the user wrote the document

**Example:**

```JSON
{
    "instanceId": "",
    "message": {
        "code": 0,
        "text": "Document is successfully registered",
        "type": "SUCCESS"
    },
    "userId": "13",
    "tenantId": "13",
    "workspaceId": "13",
    "transactionId": "at.arztis.ec.connector1"
}
```

## Cancel a document from a certain virtual organization [`DELETE`]

- Endpoint: `/vos/document`
- Parameters: `instanceId` *(optional)*, `userId` *(required)*, `tenantId` *(required)*, `workspaceId` *(required)*, `ssno` *(required)*, `voId` *(required)*, `entryUuid` *(required)*, `classCode` *(required)*, `authorInstitutionName` *(required)*
- Response: JSON-Object

Cancels a documents from a certain virtual organization like PVN Lammertal.

### JSON Object Structure 

- `message` *(Object)* - return message
  - `code` *(Number)* - One of the following numbers: 0 (success) and 1 (error message)
  - `text` *(String)* - Information of the message
  - `type` *(String)* - One of the following possible type `"SUCCESS"`, `"ERROR"`
- `transactionId` *(String)* - transaction id, which was used internal to execute the specific request
- `instanceId` *(String)* - id of the instance (window)
- `userId` *(String)* - id of the user, which cancelled the document
- `tenantId` *(String)* - id of the tenant
- `workspaceId` *(String)* - id of the workspace, where the user cancelled the document

**Example:**

```JSON
{
   "tenantId": "13",
   "message":    {
      "code": 0,
      "text": "Document is successfully cancelled",
      "type": "SUCCESS"
   },
   "userId": "13",
   "transactionId": "at.arztis.ec.connector6",
   "workspaceId": "14"
}
```

## Query metadata of documents of a certain virtual organization [`POST`]

- Endpoint: `/vos/search`
- Response: JSON-Object

Queries the metadata of the documents of a certain virtual organization like PVN Lammertal. 

### JSON Object Structure Request

- `userId` *(String)* *(required)* - id of the user, which want to search the metadata
- `tenantId` *(String)* *(required)* - id of the tenant (Mandant), which want to search the metadata
- `workspaceId` *(String)* *(required)* - id of the workspace, where the user want to search the metadata
- `instanceId` *(String)* *(optional)* - id of the instance (window)
- `ssno` *(String)* *(required)*- ssno of the patient.
- `voId` *(String)* *(required)* - id of the requested virtual organization. Possible values for tests:  `"152"` (PVN Hallein),`"153"` (PVN Lammertal)

**Example:**

```JSON
{
   "instanceId": "asdfg",
   "userId":"12", 
   "tenantId":"13",
   "workspaceId":"14",
   "ssno":"1004281246",
   "voId": "01"
}
```

### JSON Object Structure Response

- `List` *(Array)* - list of document metadata

### JSON Object Structure List

- `entryUuid` *(String)* - uuid of the document
- `classCode` *(Array)* - class codes of the document 
- `formatCode` *(Array)* - format codes of the document
- `comments` *(String)* - comments of the document 
- `practiceSettingCode` *(Array)* - practice setting codes of the physician/organization, which created the document
- `healthcareFacilityCode` *(Array)* - healthcarefacility codes of the physician/organization, which created the document
- `languageCode` *(Array)* - language codes of the document
- `confidentialityCode` *(Array)* - confidentiality codes of the document
- `typeCode` *(Object)* - type code of the document
- `eventCode` *(Array)* - event codes of the document 
- `patient` *(Object)* - patient for which is the document
- `legalAuthenticator` *(String)* - name of the legal authenticator of the document
- `id` *(Object)* - id of the document (`emedId`;`repositoryId`;`homeCommunityId`)
- `referencedIdList` *(Object)* - list with ids of documents which reference the requested document
- `authors` *(Object)* - the authors of the document
- `title` *(String)* - the title of the document
- `creationTime` *(String)* - date time, when the documented was created (ISO8601 formatted time)

### JSON Object Structure codes

- `id` *(String)* - code
- `oid` *(String)* - code system
- `displayname` *(String)* - displayname of the code

### JSON Object Structure referencedIdList

- `homeCommunityId` *(String)* - id of the community (e.g. elga area), where the document is stored
- `id` *(String)* - displayname of the code
  - `extension` *(String)* - extension of the id
  - `root` *(String)* - root of the id (oid)

### JSON Object Structure authors

- `id` *(String)* - id of the author
- `oid` *(String)* - code system of the author id
- `givenName` *(String)* - given name of the author
- `familyName` *(String)* - family name of the author
- `prefix` *(String)* - prefix of the author
- `suffix` *(String)* - suffix of the author

### JSON Object Structure patient

- `id` *(Object)* - id of the author
  - `extension` *(String)* - id of the author
  - `root` *(String)* - code system of the author
- `organization` *(String)* - organization of the author
- `familyName` *(String)* - family name of the author

**Example:**

```JSON
{"List": [{
   "entryUuid": "urn:uuid:4e6b512c-ae66-8ba6-45d4-61d3bc3a2779",
   "classCode": [   {
      "displayname": "Physician note",
      "id": "75476-2",
      "oid": "urn:oid:2.16.840.1.113883.6.1"
   }],
   "formatCode": [   {
      "displayname": "PHC Statusbericht",
      "id": "urn:elga:phc:2017",
      "oid": "1.2.40.0.34.5.37"
   }],
   "practiceSettingCode": [   {
      "displayname": "Allgemeinmedizin",
      "id": "F001",
      "oid": "1.2.40.0.34.5.12"
   }],
   "creationTime": "2019-10-22T09:16:56.000+02:00",
   "healthcareFacilityCode": [   {
      "displayname": "Ärztin/Arzt für Allgemeinmedizin",
      "id": "100",
      "oid": "1.2.40.0.34.5.2"
   }],
   "title": "Statusbericht",
   "languageCode": [      {
         "displayname": "German",
         "id": "de-AT",
         "oid": "ISO 3166"
   }],
   "confidentialityCode": [   {
      "displayname": "normal",
      "id": "N",
      "oid": "2.16.840.1.113883.5.25"
   }],
   "typeCode":    {
      "displayname": "Outpatient Progress note",
      "id": "34131-3",
      "oid": "2.16.840.1.113883.6.1"
   },
   "eventCode": [],
   "patient":    {
      "patientNotification": false,
      "freedOfPrescriptionCharge": false,
      "sex": "m",
      "id":       {
         "extension": "GH:XXoCD63J/zzIRQTuVDgfWMgNo2k=",
         "root": "1.2.40.0.34.99.10.1.12.1.990.11"
      }
   },
   "legalAuthenticator": "Dr. 046167  Entwicklung ELGA KST",
   "id": "1.2.40.0.34.99.3.2.1046167^DOCID_XXX;1.2.40.0.34.99.10.1.12.1.990.1.1.1.17.21;urn:oid:1.2.40.0.34.99.10.1.12.1.990.11",
   "referencedIdList": [   {
      "homeCommunityId": "urn:oid:1.2.40.0.34.99.10.1.12.1.990.11",
      "id":       {
         "extension": "SETID_YYY",
         "root": "1.2.40.0.34.99.3.2.1046167"
      }
   }],
   "authors": [   {
      "role": "Medical doctors",
      "prefix": "Dr.",
      "givenName": "046167",
      "familyName": "Entwicklung ELGA KST",
      "organization": "Ordination Dr. 046167 Entwicklung ELGA",
      "id":       {
         "extension": "1.2.40.0.34.99.3.2.1046167",
         "root": ""
      },
      "suffix": ""
   }]
}]}
```
