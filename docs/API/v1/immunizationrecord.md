# API Documentation: "immunizationrecord"

Microservice endpoint: `/api/v1/ehealthapplications/immunizationrecord`

Handles all actions related to the ehealthapplication immunization record (eImpfpass)

## Retrieve complete immunization record of ELGA [`GET`]

- Parameters: `userId` *(required)*, `ssno` *(required)*, `format` *(optional)*
- Response: html or xml

Queries the CDA document ("Kompletter Immunisierungsstatus"). The immunization record could be returned in xml or in html format. The desired format has to be given as parameter (Possible values: `"xml"`, `"html"`). The default value is `"xml"`.

## Write a update immunization record [`POST`]

- Response: JSON-Object

Writes a update immunization document into immunization record.

### JSON Object Structure Request

- `userId` *(String)* *(required)* - id of the user, which want to write the document
- `ssno` *(String)* *(required)* - ssno of the patient for which the document should be written
- `document` *(String)* *(optional)* - base64 encoded CDA document (Update Immunisierungsstatus CDA Dokument)
- `cda`*(Object)* *(optional)* - cda json object with data for (Update Immunisierungsstatus CDA Dokument). Either the cda or the document must be given.
 The description about this json you can find in the file cda.md
- `healthcareFacilityCode` *(String)* *(required)* - id of the document's healthcare facility code
- `practiceSettingCode` *(String)* *(required)* - id of the document's practice setting code  
- `validate`*(boolean)* *(optional)* - specifies if the document should be validated before it is posted to ELGA. The default value is true.

**Example:**

```JSON
{
    "userId": "1",
    "healthcareFacilityCode": "100",
    "practiceSettingCode": "F001",
    "ssno": "1002120289",
    "document": "base64encodedstring"
}
```

### JSON Object Structure Response

- `message` *(String)* - Information of the message
- `type` *(String)* - One of the following possible type `"SUCCESS"`, `"ERROR"`

**Example:**

```JSON
{
   "message": "Das Dokument wurde erfolgreich eingestellt",
   "type": "SUCCESS"
}
```

## Update an existing immunization record [`POST`]

- Response: JSON-Object

Updates an existing update immunization document of the immunization record.

### JSON Object Structure Request

- `userId` *(String)* *(required)* - id of the user, which want to write the document
- `ssno` *(String)* *(required)* - ssno of the patient for which the document should be written
- `document` *(String)* *(optional)* - base64 encoded CDA document (Update Immunisierungsstatus CDA Dokument). Either the document or the cda must be given
- `cda`*(Object)* *(optional)* - cda json object with data for (Update Immunisierungsstatus CDA Dokument). Either the cda or the document must be given.
 The description about this json you can find in the file cda.md
- `healthcareFacilityCode` *(String)* *(required)* - id of the document's healthcare facility code
- `practiceSettingCode` *(String)* *(required)* - id of the document's practice setting code
- `parentdocument` *(String)* *(optional)* - required if the user wants to update a existing immunization entry

**Example:**

```JSON
{
    "userId": "1",
    "healthcareFacilityCode": "100",
    "parentDocumentId": "94428710-b43e-03ac-0670-84dca29bdea6_20200219200121",
    "practiceSettingCode": "F001",
    "ssno": "1002120289",
    "cda": {
        "patient": {
            "ssno": "1002120289",
            "givenname": "Max",
            "familyname": "Musterpatient",
            "birthdate": "1989-02-12",
            "gender": "M",
            "localpatientid": "70000"
        },
        "authors": [
            {
                "time": "",
                "givenname": "Helga",
                "familyname": "Musterärztin",
                "prefix": "Dr.",
                "suffix": "MBA",
                "organization": {
                    "address": {
                        "streetname": "Testgasse",
                        "housenumber": "87",
                        "city": "Graz",
                        "postalcode": "8010"
                    }
                }
            }
        ],
        "start": "2020-02-11",
        "stop": "2020-02-12",
        "immunizations": [
            {
                "id": "1",
                "date": "2020-02-07",
                "drug": {
                    "code": "3920095",
                    "text": "Packungsangaben",
                    "pharmno": "09461122",
                    "lotnumber": "9831423"
                },
                "dose": {
                    "unit": "mL",
                    "quantity": 0.4
                },
                "schedule": {
                    "scheme": "SCHEM30",
                    "immunizationdose": "D1"
                },
                "targets": [
                    "785864002"
                ],
                "reason": "IG2",
                "expirationdate": "2025-12-20",
                "approvaldate": "2020-02-07"
            }
        ]
    }
}
```

### JSON Object Structure Response

- `message` *(String)* - Information of the message
- `type` *(String)* - One of the following possible type `"SUCCESS"`, `"ERROR"`

**Example:**

```JSON
{
   "message": "Das Dokument wurde erfolgreich eingestellt",
   "type": "SUCCESS"
}
```

## Cancel a document from the immunization record [`DELETE`]

- Parameters: `userId` *(required)*, `ssno` *(required)*, `entryUuid` *(required)*, `classCode` *(required)*, `authorInstitutionName` *(required)*
- Response: JSON-Object

Cancels a single update immunization documents from the electronic immunization record

### JSON Object Structure

- `message` *(String)* - Information of the message
- `type` *(String)* - One of the following possible type `"SUCCESS"`, `"ERROR"`

**Example:**

```JSON
{
   "message": "Das Dokument wurde erfolgreich storniert",
   "type": "SUCCESS"
}
```

## Query metadata of own registered update immunization entries [`POST`]

- Endpoint: `/search`
- Response: JSON-Object

Queries the metadata of own registered update immunization entries.

### JSON Object Structure Request

- `userId` *(String)* *(required)* - id of the user, which want to search the immunization entries
- `ssno` *(String)* *(required)* - ssno of the patient.

**Example:**

```JSON
{
"userId":"1",
"ssno":"1001210995"
}
```

### JSON Object Structure Response

- `list` *(Array)* - list of document metadata

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
