# API Documentation: "patientcontacts"

Microservice endpoint: `/api/v1/patientcontacts`

Handles all actions related to the patient contact confirmation for ELGA

## Confirm patient contact with eCard [`POST`]

- Endpoint: `/`
- Content-Type: `application/json`
- Response: JSON-Object

Confirms the patient contact with the eCard in ELGA. The registered patient contact is necessary to be able to interact with ELGA.  

### JSON Object Structure Request

- `userId` *(String)* *(required)* - id of the user, which want to confirm the patient contact
- `patientId` *(String)* *(required)* - ssno of the patient
- `cardReaderId` *(String)* *(required)* - id of the used card reader

**Example:**

```JSON
{
  "userId": "1",
  "patientId": "1001210995",
  "cardReaderId": "lanccr (02:72:54)"
}
```

### JSON Object Structure Response

- `message` *(String)* - Information of the message
- `type`*(String)* - One of the following possible type `"SUCCESS"`, `"ERROR"`

**Example:**

```JSON
{
   "message": "Der Patientenkontakt wurde erfolgreich registriert",
   "type": "SUCCESS"
}
```

## Confirm patient contact with bpk [`POST`]

- Endpoint: `/`
- Content-Type: `application/json`
- Response: JSON-Object

Confirms the patient contact with the bpk in ELGA. The registered patient contact is necessary to be able to interact with ELGA. 

### JSON Object Structure Request

- `userId` *(String)* *(required)* - id of the user, which want to confirm the patient contact
- `bpk` *(String)* *(required)* - bpk of the patient

**Example:**

```JSON
{
  "userId": "2",
  "bpk": "GH:1chxEM68ODqCY2R2kEcELnd9peg="
}
```

### JSON Object Structure Response

- `message` *(String)* - Information of the message
- `type`*(String)* - One of the following possible type `"SUCCESS"`, `"ERROR"`

**Example:**

```JSON
{
   "message": "Der Patientenkontakt wurde erfolgreich registriert",
   "type": "SUCCESS"
}
```

## Request patient contacts [`GET`]

- Endpoint: `/`
- Parameters: `userId` *(required)* `ssno` *(required)*
- Response: JSON-Object

Queries the confirmed patient contacts of one patient for the registered GDA.

### JSON Object Structure Response

- `list` *(Array)* - list of found patient contacts

#### Structure list

- `document`*(Object)* - object of patient contact
  - `patient`*(Object)* - details about the patient
    - `id`*(String)* - id of the patient
    - `root`*(String)* - oid of the id
  - `tridPatientContact`*(String)* - id of the patient contact
  - `patientContactDate`*(String)* - date, when patient contact was confirmed in format yyyy-MM-dd'T'hh:mm:ss.sss
  - `status`*(String)* - status of the patient contact. Possible values: `"ACTIVE"`, `"INACTIVE"`, `"INVALIDATED"`

**Example:**

```JSON
{"list": [
   {"document":    {
      "patient":       {
         "root": "1.2.40.0.10.2.1.1.149",
         "id": "GH:1chxEM68ODqCY2R2kEcELnd9peg="
      },
      "tridPatientContact": "1a18f766-65d3-42d4-bcbf-a452b5199d43",
      "patientContactDate": "2020-04-02T09:43:22.841",
      "status": "ACTIVE"
   }},
   {"document":    {
      "patient":       {
         "root": "1.2.40.0.10.2.1.1.149",
         "id": "GH:1chxEM68ODqCY2R2kEcELnd9peg="
      },
      "tridPatientContact": "6aa58d96-e06a-4d56-9816-cc88d29913af",
      "patientContactDate": "2020-04-02T09:43:22.18",
      "status": "INACTIVE"
   }},
   {"document":    {
      "patient":       {
         "root": "1.2.40.0.10.2.1.1.149",
         "id": "GH:1chxEM68ODqCY2R2kEcELnd9peg="
      },
      "tridPatientContact": "74fa74a7-97ce-4792-b202-af9ff0cdba5c",
      "patientContactDate": "2020-04-01T15:04:31.105",
      "status": "INVALIDATED"
   }},
   {"document":    {
      "patient":       {
         "root": "1.2.40.0.10.2.1.1.149",
         "id": "GH:1chxEM68ODqCY2R2kEcELnd9peg="
      },
      "tridPatientContact": "70266ed2-f9e9-40a4-a26e-b2b9201253c9",
      "patientContactDate": "2020-04-01T15:04:30.416",
      "status": "INVALIDATED"
   }}
]}
```

## Cancel a patient contact [`DELETE`]

- Endpoint: `/`
- Parameters: `userId` *(required)*, `patientcontact` *(required)*
- Response: JSON-Object

Invalidates the patient contact with the id of the parameter `"patientcontact>"`

### JSON Object Structure Response

- `message` *(String)* - Information of the message
- `type`*(String)* - One of the following possible type `"SUCCESS"`, `"ERROR"`

**Example:**

```JSON
{
   "message": "Der Patientenkontakt wurde erfolgreich storniert.",
   "type": "SUCCESS"
}
```
