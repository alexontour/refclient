# API Documentation: "prescriptions"

Microservice endpoint: `/api/v1/prescriptions`

Handles all actions related to the prescriptions in ELGA

## Retrieve ELGA prescription [`GET`]

- Endpoint: `/`
- Parameters: `userId` *(required)*, `emedId` *(required)*, `format` *(required)*
- Response: JSON-Object or html file

Queries the ELGA prescription with the eMed-Id, which is given in the parameter. The ELGA prescription could be returned in xml or in html format. The desired format has to be given as parameter (Possible values: `"xml"`, `"html"`)

example request: <https://localhost:50051/api/v1/prescriptions?emedId=UHEEPEND5BPW&userId=13&format=xml>

If the value of parameter `format` was html, then an html document is returned. Otherwise a xml document is returned.  

## Send a ELGA prescription [`POST`]

- Endpoint: `/`
- Content-Type: `application/json`
- Response: JSON-Object

Sends a prescription to ELGA.

### JSON Object Structure Request

- `userId` *(String)* *(required)* - id of user, who wants to create the prescription
- `ssno` *(String)* *(required)*- ssno of patient for whom the prescription should be uploaded
- `formatCode` *(String)* *(optional)* - format code of uploaded prescription
- `healthcareFacilityCode` *(String)* *(optional)* - healthcare facility code of uploading physician/organization
- `practiceSettingCode` *(String)* *(required)* - treatment event for consultation
- `parentDocument` *(String)* *(optional)* - emedId of parent prescription
- `document` *(String)* *(optional)* - prescription as base64 encoded xml document (CDA document), which should be uploaded

 all current code values are located at <https://termpub.gesundheit.gv.at>

**Example:**

```JSON
{
 "userId":"12",
 "formatCode": "urn:elga:emedat:2015-v2.06",
 "healthcareFacilityCode":"100",
 "parentDocument":"",
 "practiceSettingCode": "F001",
 "ssno":"1001210995",
 "document": "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPD94bWwtc3R5bGVzaGVldCB0eXBlPSJ0ZXh0L3hzbCIgaHJlZj0iRUxHQV9TdHlsZXNoZWV0X3YxLjAueHNsIj"
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

## Cancel a prescription [`DELETE`]

- Endpoint: `/`
- Parameters: `userId` *(required)*, `ssno` *(required)*, `entryUuid` *(required)*, `classCode` *(required)*, `authorInstitutionName` *(required)*
- Response: JSON-Object

Sets the ELGA prescription to deprecated. The correct entryUuid could be taken from the answer of the request `search prescriptions`. The value of `entryUuid` contains the correct id

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

## Search ELGA prescriptions [`POST`]

- Endpoint: `/search`
- Content-Type: `application/json`
- Response: JSON-Object

Searches all available prescriptions depeding on the search criteria in ELGA, which has not been delivered yet.

### JSON Object Structure Request

- `userId` *(String)* *(required)* - id of the user, which want to create the ELGA prescription
- `ssno` *(String)* *(required)*- ssno of the patient for which the prescription should be uploaded

**Example:**

```JSON
{
  "userId":"12",
  "ssno":"1001210995"
}
```

### JSON Object Structure Response

- `list` *(Array)* - list of prescription metadata

### JSON Object Structure List

- `entryUuid` *(String)* - uuid of the prescription
- `classCode` *(Array)* - class codes of the prescription
- `formatCode` *(Array)* - format codes of the prescription
- `comments` *(String)* - comments of the prescriptions
- `practiceSettingCode` *(Array)* - practice setting codes of the physician/organization, which created the prescription
- `healthcareFacilityCode` *(Array)* - healthcarefacility codes of the physician/organization, which created the prescription
- `languageCode` *(Array)* - language codes of the prescription
- `confidentialityCode` *(Array)* - confidentiality codes of the prescription
- `typeCode` *(Object)* - type code of the prescription
- `eventCode` *(Array)* - event codes of the prescription
- `patient` *(Object)* - patient for which is the prescription
- `legalAuthenticator` *(String)* - name of the legal authenticator of the prescription
- `id` *(Object)* - id of the prescription (`emedId`;`repositoryId`;`homeCommunityId`)
- `referencedIdList` *(Object)* - the creation time of the prescriptions
- `authors` *(Object)* - the authors of the document
- `title` *(String)* - the title of the document

### JSON Object Structure codes

- `id` *(String)* - code
- `oid` *(String)* - code system
- `displayname` *(String)* - displayname of the code

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
 {"list": [{
   "entryUuid": "urn:uuid:3da08782-dda9-4273-917b-e2445428aaa7",
   "classCode": [   {
      "displayname": "Medications",
      "id": "52471-0",
      "oid": "urn:oid:2.16.840.1.113883.6.1"
   }],
   "formatCode": [   {
      "displayname": "ELGA e-Medikation v2.06",
      "id": "urn:elga:emedat:2015-v2.06",
      "oid": "1.2.40.0.34.5.37"
   }],
   "comments": "",
   "practiceSettingCode": [   {
      "displayname": "Allgemeinmedizin",
      "id": "F001",
      "oid": "1.2.40.0.34.5.12"
   }],
   "healthcareFacilityCode": [   {
      "displayname": "Ärztin/Arzt für Allgemeinmedizin",
      "id": "100",
      "oid": "1.2.40.0.34.5.2"
   }],
   "title": "Rezept",
   "languageCode": [{"id": "de-AT"}],
   "confidentialityCode": [   {
      "displayname": "normal",
      "id": "N",
      "oid": "2.16.840.1.113883.5.25"
   }],
   "typeCode":    {
      "displayname": "Prescription for medication",
      "id": "57833-6",
      "oid": "2.16.840.1.113883.6.1"
   },
   "eventCode": [   {
      "displayname": "Kassenrezept",
      "id": "KASSEN",
      "oid": "1.2.40.0.10.1.4.3.4.3.3"
   }],
   "patient":    {
      "patientNotification": false,
      "freedOfPrescriptionCharge": false,
      "givenName": "",
      "familyName": "Max",
      "sex": "m",
      "id":       {
         "extension": "GH:XXoCD63J/zzIRQTuVDgfWMgNo2k=",
         "root": "1.2.40.0.10.2.1.1.149"
      },
      "suffix": "Mag.",
      "birthDate": "1939-09-23"
   },
   "legalAuthenticator": "Person Test",
   "id": "1.2.40.0.10.1.4.3.4.2.1^878WPQLBUHHK;1.2.40.0.34.6.7;urn:oid:1.2.40.0.34.3.9.107",
   "referencedIdList": [   {
      "homeCommunityId": "1.2.40.0.34.3.9.107",
      "id":       {
         "extension": "cb392734-cf18-4b39-abea-679e735f964f",
         "root": "1.2.40.0.10.1.4.3.4.2.1"
      }
   }],
   "authors": [   {
      "familyName": "Test",
      "organization": "Dr. Helga Musterärztin MSc",
      "id": {"extension": ""}
   }]
}]}
```

## Retrieve new eMed id [`GET`]

- Endpoint: `/id`
- Parameters: `userId` *(required)*, `ssno` *(required)*, `dataMatrix` *(required)*
- Response: JSON-Object

Requests a new eMed id for ELGA prescriptions for one patient. Possible values for dataMatrix: `"true"`, `"false"`

### JSON Object Structure

- `documents` *(Array)* - list of received emed ids

### JSON Object Structure documents

- `dataMatrix` *(String)* - base64 encoded dataMatrix (dataMatrix format: PNG)
- `extension` *(String)* - extension of the eMed id
- `root` *(String)* - root of the eMed id (oid for eMed-ID 1.2.40.0.10.1.4.3.4.2.1)

**Example:**

```JSON
{
   "documents": [   {
      "extension": "PSV7GKYLDRLK",
      "root": "1.2.40.0.10.1.4.3.4.2.1",
      "dataMatrix": "iVBORw0KGgoAAAANSUhEUgAAAEoAAABKAQAAAAA0q//cAAAAwUlEQVR42pXTu43DMAwGYBoq1CULCOAa6rTSaQJngmQldlrDgBaQOhWC/3NenX8cjmDxFSz4AAXfMPmTvYT8TKU03T0wHOXYsoXVwNj8lsdcrTL2Igv0AaWE5OJuyTE2meK1F1BGd7T8rj1lR8gDdwHlCJdUYY4S9dhHi8rYklztWKqjfDV796CM9RbrHh1jLwrMbEpp8xLl5zXxOVFbUgylNLQoS6mcYbHP3U7ZRLvV3VfKtK1jLkMp5R2O8R8f8AvI4sTjHvLvtgAAAABJRU5ErkJggg=="
   }]
}
```
