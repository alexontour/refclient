# API Documentation: "patientcontacts"

Microservice endpoint: `/api/v1/patientcontacts`

Handles all actions related to patient contact confirmation for ELGA

## Confirm patient contact [`POST`]

- Endpoint: `/`
- Headers: `Authorization`
- Content-Type: `application/json`
- Response: JSON-Object

Confirms patient contact. If parameter cardReaderId is given patient contact will be confirmed with eCard in ELGA otherwise patient contact will be confirmed with the bpk in ELGA. The registered patient contact is necessary to be able to interact with ELGA.

### JSON Object Structure Request

- `identifier` *(String)* *(required)* - identifier of patient. bPK without e-Card and ssno with e-Card.
- `cardReaderId` *(String)* *(optional)* - id of used card reader, only required if patient contact should be registered with eCard

**Example:**

```JSON
{
  "identifier": "1001210995",
  "cardReaderId": "lanccr (02:72:54)"
}
```

**Example for registration without e-Card:**

```JSON
{
  "identifier": "GH:1chxEM68ODqCY2R2kEcELnd9peg="
}
```

### JSON Object Structure message as response

- `resourceType` *(String)* - type of resource here it is always `"Bundle"`
- `type` *(String)* - type of bundle. This will be `"transaction-response"` for failed query.
- `timestamp` *(String)* - time when the bundle was created
- `entry` *(Array)* - information about error

#### Structure entry

- `response` *(Object)* - result of execution
  - `status` *(String)* - HTTP Status Code like 401 for Unauthorized or 201 for created
  - `outcome` *(Object)* - details about response. Structure is described under <https://www.hl7.org/fhir/operationoutcome.html>

**Example:**

```JSON

```

## Request patient contacts [`GET`]

- Endpoint: `/`
- Headers: `Authorization`
- Parameters: `patient.identifier` *(required)*
- Response: JSON-Object

Queries confirmed patient contacts of one patient for registered GDA.

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

## Cancel patient contact [`DELETE`]

- Endpoint: `/`
- Headers: `Authorization`
- Parameters: `identifier` *(required)*
- Response: JSON-Object

Invalidates patient contact with id of parameter `"identifier"`

### JSON Object Structure message as response

- `resourceType` *(String)* - type of resource here it is always `"Bundle"`
- `type` *(String)* - type of bundle. This will be `"transaction-response"` for failed query.
- `timestamp` *(String)* - time when bundle was created
- `entry` *(Array)* - information about error

#### Structure entry

- `response` *(Object)* - result of execution
  - `status` *(String)* - HTTP Status Code like 401 for Unauthorized or 200 for OK.  202 if patient contact was cancelled successfully.
  - `outcome` *(Object)* - details about response. Structure is described under <https://www.hl7.org/fhir/operationoutcome.html>

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
