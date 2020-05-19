# API Documentation: "patientdemographics"

Microservice endpoint: `/api/v1/Patient`

Handles all actions related to the patient demographics stored for ELGA

## Retrieve patient demographics [`GET`]

- Endpoint: `/`
- Parameters: `identifier` *(optional)*, `given` *(optional)*, `family` *(optional)*, `birthdate` *(optional)*, `gender` *(optional)*, `address-city` *(optional)*, `address-postalcode` *(optional)*, `address` *(optional)*
- Headers: `Authorization`
- Response: JSON-Object

Queries the demographic details of the patient. The parameters can limit the search. Identifier must match the following pattern OID|ID. An example for an identifier search is the social security number 1.2.40.0.10.1.4.3.1|1001210995. The overgiven date must match the structure according to <http://hl7.org/fhir/R4/search.html#date>. For the birth date only prefix `"eq"` is availabe in the format yyyy-MM-dd. Possible values for gender are `"male"`, `"female"`, `"other"`, `"unknown"`. The parameter address includes streetname and building number. Implemented according to <http://hl7.org/fhir/R4/patient.html>. The Response is implemtented according to <http://hl7.org/fhir/R4/bundle.html>.

### JSON Object Structure successfull response

- `resourceType` *(String)* - type of resource here it is always `"Bundle"`
- `type` *(String)* - type of bundle. This will be `"searchset"` for successful query.
- `timestamp` *(String)* - time when the bundle was created
- `entry` *(Array)* - all found patients

#### Structure entry

- `resource` *(Object)* - found patient (<http://hl7.org/fhir/R4/patient.html>)
  - `resourceType` *(String)* - type of resource here it is always `"Patient"`
  - `identifier` *(Array)* - identifiers of patient. The structure is described under <http://hl7.org/fhir/R4/datatypes.html#Identifier>
  - `name` *(Array)* - names of patient. The structure is described under <http://hl7.org/fhir/R4/datatypes.html#HumanName>
  - `address` *(Array)* - addresses of patient. The structure is described under <http://hl7.org/fhir/R4/datatypes.html#Address>
  - `telecom` *(Array)* - contact details of patient. The structure is described under <http://hl7.org/fhir/R4/datatypes.html#ContactPoint>
  - `gender` *(String)* - gender of patient. Possible values for gender are `"male"`, `"female"`, `"other"`, `"unknown"`.
  - `birthDate` *(String)* - birth date of patient. Format: yyyy-MM-dd
  - `deceasedBoolean` *(boolean)* - indicates if patient is deceased or not
  - `deceasedDateTime` *(String)* - indicates if patient is deceased and when the patient deceased. Format: yyyy-mm-ddThh:mm:ss(+|-)hh:mm
  - `multipleBirthBoolean` *(boolean)* - whether patient is part of a multiple birth
  - `multipleBirthInteger` *(int)* - order at birth. For example eldest twin has the number 1.
- `search` *(Object)* - search related information
  - `mode` *(String)* - specifies why this practitioner is in the result set. This will be `"match"` for this query.

**Example:**

```JSON
{
    "resourceType": "Bundle",
    "type": "searchset",
    "timestamp": "2020-05-10T11:30:02Z",
    "entry": [
        {
            "resource": {
                "resourceType": "Patient",
                "status": "current",
                "identifier": [
                    {
                        "value": "1002120289",
                        "system": "urn:oid:1.3.6.1.4.1.21998.12.2.1.4"
                    },
                    {
                        "value": "REG.5KL3LCEVS",
                        "system": "urn:oid:1.3.6.1.4.1.21998.12.2.1.3"
                    },
                    {
                        "value": "1002120289",
                        "system": "urn:oid:1.2.40.0.10.1.4.3.1"
                    },
                    {
                        "value": "GH:1chxEM68ODqCY2R2kEcELnd9peg=",
                        "system": "urn:oid:1.2.40.0.10.2.1.1.149"
                    }
                ],
                "name": [
                    {
                        "given": "Max",
                        "family": "Musterpatient"
                    }
                ],
                "birthDate": "1995-09-21",
                "gender": "male",
                "deceasedBoolean": false,
                "multipleBirthBoolean": false,
                "address": [
                    {
                        "line": "Testgasse 35",
                        "city": "Graz",
                        "postalCode": "8020",
                        "state": "STMK",
                        "country": "AT"
                    }
                ]
            },
            "search": {
                "mode": "match"
            }
        }
    ]
}
```
