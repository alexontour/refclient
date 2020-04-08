# API Documentation: "patientdemographics"

Microservice endpoint: `/api/v1/patientdemographics`

Handles all actions related to the patient demographics stored for ELGA

## Retrieve ELGA prescription [`GET`]

- Endpoint: `/`
- Parameters: `userId` *(required)* `ssno` *(optional)*, `givenName` *(optional)*, `familyName` *(optional)*, `birthDate` *(optional)*, `gender` *(optional)*, `city` *(optional)*, `postalcode` *(optional)*, `streetname` *(optional)*, `buildingnumber` *(optional)*
- Response: JSON-Object

Queries the demographic details of the patient. The parameters can limit the search.

### JSON Object Structure Response

- `list` *(Array)* - list of found patient demographics
  - `deceased`*(boolean)* - information wheter the patient has died
  - `prefix`*(String)* - prefix of patient
  - `suffix`*(String)* - suffix of patient
  - `givenName`*(String)* - given name of patient
  - `familyName`*(String)* - family name of patient
  - `ids`*(Array)* - list of identifications for patient

#### Structure ids

- `extension` *(String)* - extension of the id, e.g. social security number
- `root` *(String)* - oid of id

**Example:**

```JSON
{"list": [{
   "deceased": false,
   "prefix": "",
   "givenName": "",
   "familyName": "ArtzIS Testpatient 1",
   "ids":    [
            {
         "extension": "1002120289",
         "root": "urn:oid:1.3.6.1.4.1.21998.12.2.1.4"
      },
            {
         "extension": "REG.5KL3LCEVS",
         "root": "urn:oid:1.3.6.1.4.1.21998.12.2.1.3"
      },
            {
         "extension": "1002120289",
         "root": "urn:oid:1.2.40.0.10.1.4.3.1"
      },
            {
         "extension": "GH:1chxEM68ODqCY2R2kEcELnd9peg=",
         "root": "urn:oid:1.2.40.0.10.2.1.1.149"
      }
   ],
   "suffix": "",
   "multiplebirth": false
}]}
```
