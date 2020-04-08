# API Documentation: "gda"

Microservice endpoint: `/api/v1/gda`

Handles all actions related to health service providers (Gesundheitsdienstanbieter, GDA)

## Query all availabe health insurances and their codes [`GET`]

- Endpoint: `/`
- Parameters: `familyName` *(optional)*, `givenName` *(optional)*, `prefix` *(optional)*, `suffix` *(optional)*, `city` *(optional)*, `postalcode` *(optional)*, `streetname` *(optional)*, `streetnumber` *(optional)*, `role` *(optional)*, `maxresults` *(required)*, `active` *(optional)*
- Response: JSON-Object

Queries health service providers with the given parameters as filter

### JSON Object Structure

- `list` *(Array)* - list of health service providers

#### Structure health service providers

- `address` *(Object)* - address of health service provider
  - `country` *(String)* - country
  - `streetname` *(String)* - street name
  - `city` *(String)* - city
  - `postalCode` *(String)* - postal code
  - `streetnumber` *(String)* - street number
- `id` *(Object)* - id of health service provider
  - `extension` *(String)* - extension of id (this is the actual oid of the health service provider)
  - `root` *(String)* - oid of id
- `givenName` *(String)* - given name of health service provider
- `familyName` *(String)* - family name of health service provider
- `prefix` *(String)* - prefix of health service provider
- `suffix` *(String)* - suffix of health service provider
- `elgaRole` *(String)* - elga role of health service provider

**Example (if number of maxresults (parameter) is too small):**

```JSON
{
 "list":[
  {
   "address":{
    "country":"AT",
    "streetname":"Ernst-Melchior-Gasse",
    "city":"Wien",
    "postalCode":"1020",
    "streetnumber":"22"
   },
   "prefix":"Dr. MSc",
   "givenName":"Helga",
   "familyName":"Musterärztin",
   "elgaRole":"700"
  },
  {
   "address": {
    "country":"AT",
    "streetname":"Ernst-Melchior-Gasse",
    "city":"Wien",
    "postalCode":"1020",
    "streetnumber":"22"
   },
   "prefix":"Dr. MSc",
   "givenName":"Helga",
   "familyName":"Musterärztin",
   "elgaRole":"700"
  }
 ]
}
```

**Example (if number of maxresults (parameter) is too small):**

```JSON
{
   "message": "6005: Maximale Trefferanzahl überschritten.",
   "type": "ERROR"
}
```
