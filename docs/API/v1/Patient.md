# API Documentation: "patientdemographics"

Microservice endpoint: `/api/v1/Patient`

Handles all actions related to the patient demographics stored for ELGA

## Retrieve ELGA prescription [`GET`]

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

```
