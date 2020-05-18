# API Documentation: "card"

Microservice endpoint: `/api/v1/card`

Handles all actions related to query the data of a card.

## Query card data [`GET`]

- Endpoint: `/`
- Parameters: `cardReaderId` *(required)*
- Response: JSON-Object

Queries data of current card in card reader

### JSON Object Structure

- `type` *(String)* - type of card. Possible values: `"e-Card"`, `"o-Card"`, `"schulungs-e-card"`
- `family` *(String)* - family name of card owner  
- `given` *(String)* - given name of card owner  
- `number` *(String)* - social security number of patient (e-Card) or contract number (Vertragspartnernummer) (Admin-Card)
- `prefix` *(String)* - title of card owner  
- `sex` *(String)* - sex of card owner  
- `suffix` *(String)* - title shown as suffix after name of card owner
- `birthDate` *(String)* - birth date of card owner
  
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
