# API Documentation: "cardReader"

Microservice endpoint: `/api/v1/cardReaders`

Handles all actions related to query ids of eCard readers.  

## Query all availabe card readers [`GET`]

- Endpoint: `/`
- Response: JSON-Object

Queries all accessible card readers

### JSON Object Structure

- `cardReaders` *(Array)* - list of card reader ids  

**Example:**

```JSON
{"cardReaders": [
   "lanccr (02:72:54)",
   "lanccr_neu_ip_5 (02:79:87)"
]}
```
