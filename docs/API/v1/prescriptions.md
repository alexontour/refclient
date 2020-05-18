# API Documentation: "prescriptions"

Microservice endpoint: `/api/v1/prescriptions`

Handles all actions related to prescriptions in ELGA

## Retrieve new eMed id [`GET`]

- Endpoint: `/id`
- Headers: `Authorization`
- Parameters: `ssno` *(required)*, `dataMatrix` *(required)*
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
