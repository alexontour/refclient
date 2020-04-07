# API Documentation: "card"

Microservice endpoint: `/api/v1/card`

Handles all actions related to query the data of a card. 

## Query card data [`GET`]

- Endpoint: `/`
- Parameters: `cardReaderId` *(required)*
- Response: JSON-Object

Queries the data of the current card in the card reader

### JSON Object Structure

- `cardType` *(String)* - type of card. Possible values: `"e-Card"`, `"o-Card"`, `"schulungs-e-card"`
- `familyName` *(String)* - family name of the card owner  
- `givenName` *(String)* - given name of the card owner  
- `number` *(String)* - social security number of the e-Card or Vertragspartnernummer of the Admin-Card
- `prefix` *(String)* - title of the card owner  
- `sex` *(String)* - sex of the card owner  
- `suffix` *(String)* - title after the name of the card owner  
- `birthDate` *(String)* - birth date of the card owner
  
**Example:**

```JSON
{
   "number": "046167",
   "prefix": "Dr.",
   "givenName": "Helga",
   "familyName": "Musterärztin",
   "sex": "f",
   "cardType": "o-card",
   "suffix": "MSc",
   "birthDate": "1980-01-01"
}
```
