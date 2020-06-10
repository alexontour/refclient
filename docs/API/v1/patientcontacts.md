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

- `identifier` *(Object)* *(required)* - identifier of patient. bPK without e-Card and ssno with e-Card.
- `cardReaderId` *(String)* *(optional)* - id of used card reader, only required if patient contact should be registered with eCard

**Example:**

```JSON
{
  "identifier": {
     "value" : "1001210995",
     "system": "1.2.40.0.10.1.4.3.1"
  },
  "cardReaderId": "lanccr (02:72:54)"
}
```

**Example for registration without e-Card:**

```JSON
{
  "identifier": {
     "value" : "GH:1chxEM68ODqCY2R2kEcELnd9peg=",
     "system": "1.2.40.0.10.2.1.1.149"
  }
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
