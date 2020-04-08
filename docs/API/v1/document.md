# API Documentation: "document"

Microservice endpoint: `/api/v1/document`

Handles all actions related to the documents (Befunde) in ELGA

## Retrieve ELGA document [`GET`]

- Endpoint: `/`
- Parameters: `userId` *(required)*, `id` *(required)*, `format` *(required)*
- Response: xml or html file

Queries the ELGA document with the id, which is given in the parameter. The ELGA document could be returned in xml or in html format. The desired format has to be given as parameter (Possible values: `"xml"`, `"html"`)

example request: <https://localhost:8087/api/v1/document?userId=1&id=1.2.40.0.34.99.3.2.1044434.1^134F100.1;1.2.40.0.34.3.9.109.12.1.100.17.1;urn:oid:1.2.40.0.34.3.9.109&format=html>

If the value of parameter `format` was html, then an html document is returned. Otherwise a xml document is returned.  

## Send a ELGA document [`POST`]

- Endpoint: `/`
- Content-Type: `application/json`
- Response: JSON-Object

Sends a document to ELGA.

### JSON Object Structure Request

- `userId` *(String)* *(required)* - id of user, which wants to send the ELGA document
- `ssno` *(String)* *(required)*- ssno of patient for whom the document should be uploaded
- `formatCode` *(String)* *(required)* - format code of uploaded document
- `healthcareFacilityCode` *(String)* *(required)* - healthcare facility code of uploading physician/organization
- `practiceSettingCode` *(String)* *(required)* - practice setting code of uploading physician/organization
- `parentdocument` *(String)* *(optional)* - id of  parent document, required if the user wants to update an existing document
- `document` *(String)* *(required)* - the document as base64 encoded xml document (CDA document), which should be uploaded

 all actual code values are located at <https://termpub.gesundheit.gv.at>

**Example:**

```JSON
{
 "userId":"12",
 "formatCode": "urn:elga:lab:2015:EIS_FullSupport",
 "healthcareFacilityCode":"300",
 "practiceSettingCode": "F052",
 "ssno":"1002120289",
 "document": "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiIHN0YW5kYWxvbmU9InllcyI/Pgo8P3htbC1zdHlsZXNoZWV0IHR5cGU9InRleHQveHNsIiBocmVmPSJFTEdBX1N0eWxlc2hlZXRfdjEuMC54c2wiPz4KPD94bWwtbW9kZWwgaHJlZj0iZmlsZTovLy9DOi9Vc2Vycy9Bbm5hL0Rlc2t0b3AvcmVwb3NpdG9yaWVzL3NlcnZpY2VzRUxHQS9yZXNvdXJjZXMvc2NoZW1hdHJvbnMvZWxnYS1jZGFlYS5zY2giIHNjaGVtYXR5cGVucz0iaHR0cDovL3B1cmwub2NsYy5vcmcvZHNkbC9zY2hlbWF0cm9uIj8"
}
```

### JSON Object Structure Response

- `message` *(String)* - detailed  message
- `type` *(String)* - One of the following possible type `"SUCCESS"`, `"ERROR"`

**Example:**

```JSON
{
   "message": "Das Dokument wurde erfolgreich eingestellt",
   "type": "SUCCESS"
}
```

## Cancel a document [`DELETE`]

- Endpoint: `/`
- Parameters: `userId` *(required)*, `entryUuid` *(required)*, `ssno` *(required)*, `format` *(required)*, `classCode` *(required)*, `authorInstitutionName` *(required)*
- Response: JSON-Object

Sets the ELGA document to deprecated.
Document, which should be canceled (the correct id could be taken from the answer of the request `searchDocumentMetadata` -> the value of `entryUuid` contains the correct id)

### JSON Object Structure

- `message` *(String)* - detailed message
- `type` *(String)* - One of the following possible type `"SUCCESS"`, `"ERROR"`

**Example:**

```JSON
{
   "message": "Das Dokument wurde erfolgreich storniert",
   "type": "SUCCESS"
}
```

## Query metadata of registered ELGA documents [`POST`]

- Endpoint: `/search`
- Response: JSON-Object

Queries the metadata of the registered ELGA documents (Laboratory reports, discharge letters and radiology reports)

### JSON Object Structure Request

- `userId` *(String)* *(required)* - id of user, who wants to search for immunization entries
- `ssno` *(String)* *(required)* - ssno of patient.

**Example:**

```JSON
{
 "userId":"1",
 "ssno":"1001210995"
}
```

### JSON Object Structure successful response

- `list` *(Array)* - list of document metadata

### JSON Object Structure List

- `entryUuid` *(String)* - uuid of document
- `classCode` *(Array)* - class codes of document
- `formatCode` *(Array)* - format codes of document
- `comments` *(String)* - comments of document
- `practiceSettingCode` *(Array)* - practice setting codes of physician/organization, that created the document
- `healthcareFacilityCode` *(Array)* - healthcarefacility codes of physician/organization, that created the document
- `languageCode` *(Array)* - language codes of document
- `confidentialityCode` *(Array)* - confidentiality codes of document
- `typeCode` *(Object)* - type code of document
- `eventCode` *(Array)* - event codes of document
- `patient` *(Object)* - patient for whom the document was created
- `legalAuthenticator` *(String)* - name of legal authenticator of the document
- `id` *(Object)* - id of document (`emedId`;`repositoryId`;`homeCommunityId`)
- `referencedIdList` *(Object)* - list with ids of documents which reference the requested document
- `authors` *(Object)* - authors of the document
- `title` *(String)* - title of the document
- `creationTime` *(String)* - date time, when the documented was created (ISO8601 formatted time)

### JSON Object Structure codes

- `id` *(String)* - code
- `oid` *(String)* - code system
- `displayname` *(String)* - displayname of the code

### JSON Object Structure referencedIdList

- `homeCommunityId` *(String)* - id of community (e.g. elga area), where the document is stored
- `id` *(String)* - displayname of code
  - `extension` *(String)* - extension of id
  - `root` *(String)* - root of id (oid)

### JSON Object Structure authors

- `id` *(String)* - id of author
- `oid` *(String)* - code system of author id
- `givenName` *(String)* - given name of author
- `familyName` *(String)* - family name of tauthor
- `prefix` *(String)* - prefix of author
- `suffix` *(String)* - suffix of author

### JSON Object Structure patient

- `id` *(Object)* - id of author
  - `extension` *(String)* - id of author
  - `root` *(String)* - code system of author
- `organization` *(String)* - organization of author
- `familyName` *(String)* - family name of author

**Example successful response:**

```JSON
{"list": [
      {
      "entryUuid": "urn:uuid:cc85c289-d169-4114-8e99-f82577a9a7ad",
      "classCode": [      {
         "displayname": "Discharge summary",
         "id": "18842-5",
         "oid": "urn:oid:2.16.840.1.113883.6.1"
      }],
      "formatCode": [      {
         "displayname": "ELGA Entlassungsbrief Ärztlich, EIS Full Support v2.06",
         "id": "urn:elga:dissum:2015-v2.06:EIS_FullSupport",
         "oid": "1.2.40.0.34.5.37"
      }],
      "practiceSettingCode": [      {
         "displayname": "Unfallchirurgie",
         "id": "F052",
         "oid": "1.2.40.0.34.5.12"
      }],
      "creationTime": "2016-03-08T10:00:00.000+01:00",
      "healthcareFacilityCode": [      {
         "displayname": "Allgemeine Krankenanstalt",
         "id": "300",
         "oid": "1.2.40.0.34.5.2"
      }],
      "title": "Entlassungsbrief",
      "languageCode": [      {
         "displayname": "German",
         "id": "de-AT",
         "oid": "ISO 3166"
      }],
      "confidentialityCode": [      {
         "displayname": "normal",
         "id": "N",
         "oid": "2.16.840.1.113883.5.25"
      }],
      "typeCode": "11490-0",
      "eventCode": [      {
         "displayname": "Gesundheitsdienstleistung im Rahmen eines stationären Aufenthalts",
         "id": "GDLSTATAUF",
         "oid": "1.2.40.0.34.5.21"
      }],
      "serviceStopTime": "2016-03-10T10:00:00.000+01:00",
      "serviceStartTime": "2016-03-08T09:00:00.000+01:00",
      "patient":       {
         "deceased": false,
         "sex": "M",
         "ids": [         {
            "root": "1.2.40.0.34.3.1.1052.12.1.6.1.1.17",
            "id": "3822390b-902b-499d-9fa3-f6c4b12bd768"
         }],
         "multiplebirth": false
      },
      "legalAuthenticator": "Maria Bauer",
      "id": "1.2.40.0.34.99.3.2.1047013.2714.1;1.2.40.0.34.3.1.1052.12.1.6.2.1.3;urn:oid:1.2.40.0.34.3.1.1052.12.1.6",
      "referencedIdList": [      {
         "homeCommunityId": "1.2.40.0.34.3.1.1052.12.1.6",
         "id":          {
            "root": "1.2.40.0.34.99.3.2.1047013.2714",
            "id": "1.2.40.0.34.99.3.2.1047013"
         }
      }],
      "authors": [      {
         "givenname": "Helga",
         "prefix": "",
         "familyname": "Musterkrankenanstalt",
         "id":          {
            "authorityname": "",
            "id": ""
         },
         "suffix": ""
      }]
   },
      {
      "entryUuid": "urn:uuid:a54f3770-f823-47a8-9707-32969d3ab98d",
      "classCode": [      {
         "displayname": "Diagnostic imaging study",
         "id": "18748-4",
         "oid": "urn:oid:2.16.840.1.113883.6.1"
      }],
      "formatCode": [      {
         "displayname": "ELGA Befund bildgebende Diagnostik, EIS Full Support v2.06",
         "id": "urn:elga:radio:2015-v2.06:EIS_FullSupport",
         "oid": "1.2.40.0.34.5.37"
      }],
      "practiceSettingCode": [      {
         "displayname": "Unfallchirurgie",
         "id": "F052",
         "oid": "1.2.40.0.34.5.12"
      }],
      "creationTime": "2016-03-08T10:00:00.000+01:00",
      "healthcareFacilityCode": [      {
         "displayname": "Allgemeine Krankenanstalt",
         "id": "300",
         "oid": "1.2.40.0.34.5.2"
      }],
      "title": "CT-Befund der Lendenwirbelsäule",
      "languageCode": [      {
         "displayname": "German",
         "id": "de-AT",
         "oid": "ISO 3166"
      }],
      "confidentialityCode": [      {
         "displayname": "normal",
         "id": "N",
         "oid": "2.16.840.1.113883.5.25"
      }],
      "typeCode": "25045-6",
      "serviceStopTime": "2016-03-10T10:00:00.000+01:00",
      "serviceStartTime": "2016-03-08T09:00:00.000+01:00",
      "patient":       {
         "deceased": false,
         "sex": "M",
         "ids": [         {
            "root": "1.2.40.0.34.3.1.1052.12.1.6.1.1.17",
            "id": "3822390b-902b-499d-9fa3-f6c4b12bd768"
         }],
         "multiplebirth": false
      },
      "legalAuthenticator": "Maria Bauer",
      "id": "1.2.40.0.34.99.3.2.1047013.2716.1;1.2.40.0.34.3.1.1052.12.1.6.2.1.3;urn:oid:1.2.40.0.34.3.1.1052.12.1.6",
      "referencedIdList": [      {
         "homeCommunityId": "1.2.40.0.34.3.1.1052.12.1.6",
         "id":          {
            "root": "1.2.40.0.34.99.3.2.1047013.2716",
            "id": "1.2.40.0.34.99.3.2.1047013"
         }
      }],
      "authors": [      {
         "givenname": "Helga",
         "prefix": "",
         "familyname": "Musterkrankenanstalt",
         "id":          {
            "authorityname": "",
            "id": ""
         },
         "suffix": ""
      }]
   },
      {
      "entryUuid": "urn:uuid:3b186b29-9e26-45f2-bbfc-cae5a03b098a",
      "classCode": [      {
         "displayname": "Laboratory report",
         "id": "11502-2",
         "oid": "urn:oid:2.16.840.1.113883.6.1"
      }],
      "formatCode": [      {
         "displayname": "ELGA Laborbefund, EIS Full Support v2.06",
         "id": "urn:elga:lab:2015-v2.06:EIS_FullSupport",
         "oid": "1.2.40.0.34.5.37"
      }],
      "practiceSettingCode": [      {
         "displayname": "Unfallchirurgie",
         "id": "F052",
         "oid": "1.2.40.0.34.5.12"
      }],
      "creationTime": "2016-03-08T10:00:00.000+01:00",
      "healthcareFacilityCode": [      {
         "displayname": "Allgemeine Krankenanstalt",
         "id": "300",
         "oid": "1.2.40.0.34.5.2"
      }],
      "title": "Allgemeiner Laborbefund",
      "languageCode": [      {
         "displayname": "German",
         "id": "de-AT",
         "oid": "ISO 3166"
      }],
      "confidentialityCode": [      {
         "displayname": "normal",
         "id": "N",
         "oid": "2.16.840.1.113883.5.25"
      }],
      "typeCode": "11502-2",
      "eventCode": [      {
         "displayname": "Hämatologie",
         "id": "300",
         "oid": "1.2.40.0.34.5.11"
      }],
      "serviceStopTime": "2016-03-10T10:00:00.000+01:00",
      "serviceStartTime": "2016-03-08T09:00:00.000+01:00",
      "patient":       {
         "deceased": false,
         "sex": "M",
         "ids": [         {
            "root": "1.2.40.0.34.3.1.1052.12.1.6.1.1.17",
            "id": "3822390b-902b-499d-9fa3-f6c4b12bd768"
         }],
         "multiplebirth": false
      },
      "legalAuthenticator": "Maria Bauer",
      "id": "1.2.40.0.34.99.3.2.1047013.2715.1;1.2.40.0.34.3.1.1052.12.1.6.2.1.3;urn:oid:1.2.40.0.34.3.1.1052.12.1.6",
      "referencedIdList": [      {
         "homeCommunityId": "1.2.40.0.34.3.1.1052.12.1.6",
         "id":          {
            "root": "1.2.40.0.34.99.3.2.1047013.2715",
            "id": "1.2.40.0.34.99.3.2.1047013"
         }
      }],
      "authors": [      {
         "givenname": "Helga",
         "prefix": "",
         "familyname": "Musterkrankenanstalt",
         "id":          {
            "authorityname": "",
            "id": ""
         },
         "suffix": ""
      }]
   },
      {
      "entryUuid": "urn:uuid:001df142-6579-44d5-9046-c3caaa47d33d",
      "classCode": [      {
         "displayname": "Discharge summary",
         "id": "18842-5",
         "oid": "urn:oid:2.16.840.1.113883.6.1"
      }],
      "formatCode": [      {
         "displayname": "ELGA Entlassungsbrief Pflege, EIS Full Support v2.06",
         "id": "urn:elga:dissum-n:2015-v2.06:EIS_FullSupport",
         "oid": "1.2.40.0.34.5.37"
      }],
      "practiceSettingCode": [      {
         "displayname": "Unfallchirurgie",
         "id": "F052",
         "oid": "1.2.40.0.34.5.12"
      }],
      "creationTime": "2016-03-08T13:00:00.000+01:00",
      "healthcareFacilityCode": [      {
         "displayname": "Allgemeine Krankenanstalt",
         "id": "300",
         "oid": "1.2.40.0.34.5.2"
      }],
      "title": "Pflegerelevante Informationen zur medizinischen Behandlung",
      "languageCode": [      {
         "displayname": "German",
         "id": "de-AT",
         "oid": "ISO 3166"
      }],
      "confidentialityCode": [      {
         "displayname": "normal",
         "id": "N",
         "oid": "2.16.840.1.113883.5.25"
      }],
      "typeCode": "34745-0",
      "eventCode": [      {
         "displayname": "Gesundheitsdienstleistung im Rahmen eines stationären Aufenthalts",
         "id": "GDLSTATAUF",
         "oid": "1.2.40.0.34.5.21"
      }],
      "serviceStopTime": "2016-03-10T12:00:00.000+01:00",
      "serviceStartTime": "2016-03-08T12:00:00.000+01:00",
      "patient":       {
         "deceased": false,
         "sex": "M",
         "ids": [         {
            "root": "1.2.40.0.34.3.1.1052.12.1.6.1.1.17",
            "id": "3822390b-902b-499d-9fa3-f6c4b12bd768"
         }],
         "multiplebirth": false
      },
      "legalAuthenticator": "Maria Bauer",
      "id": "1.2.40.0.34.99.3.2.1048533.3114.1;1.2.40.0.34.3.1.1052.12.1.6.2.1.3;urn:oid:1.2.40.0.34.3.1.1052.12.1.6",
      "referencedIdList": [      {
         "homeCommunityId": "1.2.40.0.34.3.1.1052.12.1.6",
         "id":          {
            "root": "1.2.40.0.34.99.3.2.1048533.3114",
            "id": "1.2.40.0.34.99.3.2.1048533"
         }
      }],
      "authors": [      {
         "givenname": "Helga",
         "prefix": "",
         "familyname": "Musterpflegeeinrichtung",
         "id":          {
            "authorityname": "",
            "id": ""
         },
         "suffix": ""
      }]
   }
]}
```

### JSON Object Structure unsuccessful response

- `message` *(String)* - Information of the message
- `type` *(String)* - Always the type `"ERROR"`

**Example unsuccessful response:**

```JSON
{
   "message": "No XML document found for patient [1.2.40.0.10.1.4.3.1 / 1001210995] Last error: ",
   "type": "ERROR"
}
```
