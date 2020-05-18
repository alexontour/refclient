# API Documentation: "gda"

Microservice endpoint: `/api/v1/Practitioner`

Handles all actions related to health service providers (Gesundheitsdienstanbieter, GDA)

## Query all availabe health insurances and their codes [`GET`]

- Endpoint: `/`
- Parameters: `family` *(optional)*, `given` *(optional)*, `address-city` *(optional)*, `address-postalcode` *(optional)*, `address-country` *(optional)*, `address-state` *(optional)*, `address` *(optional)*, `maxresults` *(required)*, `active` *(optional)*, `qualification.code` *(optional)*
- Response: JSON-Object

Queries health service providers with the given parameters as filter. Implemented according to <http://hl7.org/fhir/R4/practitioner.html>. The Response is implemtented according to <http://hl7.org/fhir/R4/bundle.html>.

### JSON Object Structure successfull response

- `resourceType` *(String)* - type of resource here it is always `"Bundle"`
- `type` *(String)* - type of bundle. This will be `"searchset"` for successful query.
- `timestamp` *(String)* - time when the bundle was created
- `entry` *(Array)* - all found practitioners

#### Structure entry

- `resource` *(Object)* - found practitioner (<http://hl7.org/fhir/R4/practitioner.html>)
  - `resourceType` *(String)* - type of resource here it is always `"Practitioner"`
  - `identifier` *(Array)* - identifier of health care provider. The structure is described under <http://hl7.org/fhir/R4/datatypes.html#Identifier>
  - `active` *(String)* - true, if health care provider is active, otherwise false
  - `name` *(Array)* - names of health care provider. The structure is described under <http://hl7.org/fhir/R4/datatypes.html#HumanName>
  - `address` *(Array)* - addresses of health care provider. The structure is described under <http://hl7.org/fhir/R4/datatypes.html#Address>
  - `qualification` *(Array)* - roles of health care provider.
    - `code` *(Object)* - code of the role. Structure is described under <http://hl7.org/fhir/R4/datatypes.html#CodeableConcept>
- `search` *(Object)* - search related information
  - `mode` *(String)* - specifies why this practitioner is in the result set. This will be `"match"` for this query.

**Example:**

```JSON

```

### JSON Object Structure error message as response

- `resourceType` *(String)* - type of resource here it is always `"Bundle"`
- `type` *(String)* - type of bundle. This will be `"transaction-response"` for failed query.
- `timestamp` *(String)* - time when the bundle was created
- `entry` *(Array)* - information about error

#### Structure entry

- `response` *(Object)* - result of execution
  - `status` *(String)* - HTTP Response Status Code like 401 for Unauthorized
  - `outcome` *(Object)* - idetails about error. The structure is described under <https://www.hl7.org/fhir/operationoutcome.html>

**Example:**

```JSON

```
