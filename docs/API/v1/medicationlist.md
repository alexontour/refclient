# API Documentation: "medicationlist"

Microservice endpoint: `/api/v1/medicationlist`

Handles all actions related to the medicationlist of ELGA

## Query the ELGA medicationlist of one patient [`GET`]

- Endpoint: `/`
- Parameters: `userId` *(required)*, `ssno` *(required)*, `format`*(optional)*
- Response: html or xml file

Queries the ELGA medicationlist of one patient. The ELGA medicationlist could be returned in xml or in html format. The desired format has to be given as parameter (Possible values: `"xml"`, `"html"`). The default format is xml.
