# API Documentation: "user"

Microservice endpoint: `/api/v1/user`

Handles all actions related to user registration to ELGA.

## Register a user with the A-Card [`POST`]

- Endpoint: `/`
- Content-Type: `application/json`
- Response: JSON-Object

Creates a GINA dialog for one user and registers the user for ELGA actions. Same structure like for the GET method.

### JSON Object Structure Request

- `role` *(String)* *(required)* - role of surgery like Arzt/Ärztin. Possible values: `"700"`(Arzt/Ärztin), `"701"`(Zahnarzt/Zahnärztin), `"704"` (Apotheke), `"716"`(Amtsärztin/Amtsarzt), .... (<https://termpub.gesundheit.gv.at/TermBrowser/gui/main/main.zul?loadType=CodeSystem&loadName=ELGA_GDA_Aggregatrollen>)
- `password` *(String)* *(required)* - pin for gina client
- `given` *(String)* *(required)* - given name of person, who should be registered in ELGA
- `family` *(String)* *(required)* - family name of person, who should be registered in ELGA
- `cardReaderId` *(String)* *(required)* - id of card reader, which should be used to execute registration
- `prefix` *(String)* *(optional)* - prefix of person, who should be registered in ELGA
- `suffix` *(String)* *(optional)* - suffix of person, who should be registered in ELGA

**Example:**

```JSON
{
"role":"700",
"password":"0000",
"given": "Anna",
"family": "Test",
"cardReaderId": "lanccr_neu_ip_5 (02:79:87)",
"prefix" : "Dr.",
"suffix" : "MSc"
}
```

### JSON Object Structure Response

- `message` *(String)* - Information of message
- `type` *(String)* - One of following possible type `"SUCCESS"`, `"ERROR"`

**Example:**

```JSON
{
   "message": "Die Registrierung war erfolgreich",
   "type": "SUCCESS"
}
```

## Register a user as hospital [`POST`]

- Endpoint: `/`
- Content-Type: `application/json`
- Response: JSON-Object

Creates a GINA dialog for one user and registers user for ELGA actions. Same structure like for GET method.

### JSON Object Structure Request

- `role` *(String)* *(required)* - role of surgery like Arzt/Ärztin. Possible values: `"700"`(Arzt/Ärztin), `"701"`(Zahnarzt/Zahnärztin), `"702"`(Krankenanstalt), `"703"`(Einrichtung der Pflege),  `"704"` (Apotheke), `"716"`(Amtsärztin/Amtsarzt). Actual values are available under (<https://termpub.gesundheit.gv.at/TermBrowser/gui/main/main.zul?loadType=CodeSystem&loadName=ELGA_GDA_Aggregatrollen>)
- `subjectid` *(String)* *(required)* - id of organization to register
- `organization` *(String)* *(required)* - name of organization to register
- `organizationid` *(String)* *(required)* - OID of GDA to register

**Example:**

```JSON
{
"userId":"2",  
"role":"702",
"subjectid": "K2113",
"organization": "SWHKrankenanstalt Baumgartling",
"organizationid": "1.2.40.0.34.99.10.2.1.2.14827"
}
```

## Register a user with existing IDA [`POST`]

- Endpoint: `/`
- Parameters: `role` *(required)*
- Content-Type: `application/xml`
- Response: JSON-Object

This method uses the passed identity assertion to request an HCP assertion from ELGA. If a context assertion is needed for the ELGA application like for electronic immunization record, the context assertion will be requested with the appropriate HCP assertion. All assertions are cached in the client, therefore the
user id is need for nearly every request

### JSON Object Structure Response

- `message` *(String)* - Information of the message
- `type` *(String)* - One of the following possible type `"SUCCESS"`, `"ERROR"`

**Example:**

```JSON
{
   "message": "Die Registrierung war erfolgreich",
   "type": "SUCCESS"
}
```

## Delete a user [`DELETE`]

- Endpoint: `/`
- Headers: `Authorization` *(required)*
- Response: JSON-Object

Log off a user from the ELGA referent client. In the background it closes the related GINA dialog, if it exists. And it invalidates the
existing Assertions for ELGA (HCP and Context Assertions).

**Example:**

```JSON
{
   "message": "Die Abmeldung war erfolgreich",
   "type": "SUCCESS"
}
```

**Example (with error message):**

```JSON
{
   "message": "No dialog found to close for the user",
   "type": "ERROR"
}
```

## Request a identity assertion from ELGA Area (for hospitals) [`GET`]

- Endpoint: `/ida`
- Parameters: `organization` *(required)*, `organizationid` *(required)*, `subjectid` *(required)*
- Response: if request was successful xml (Identity assertion) will be returned. Otherwise a json with the error message will be returned.

Requests an identity assertion from ELGA. It is not possible to use for physicians with their own surgery

### JSON Object Structure

- `message` *(String)* - Information of message
- `type` *(String)* - One of following possible type `"SUCCESS"`, `"ERROR"`

**Example for error:**

```JSON
{
   "message": "example message",
   "type": "ERROR"
}
```

**Example for successful response:**

```XML
<saml2:Assertion ID="_dd58c37a-3458-4c70-bd43-fb57bcf34884" IssueInstant="2020-04-02T13:08:38.338Z" Version="2.0" xmlns:saml2="urn:oasis:names:tc:SAML:2.0:assertion" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wst="http://docs.oasis-open.org/ws-sx/ws-trust/200512" xmlns:env="http://www.w3.org/2003/05/soap-envelope">
   <saml2:Issuer Format="urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified">urn:tiani:idp</saml2:Issuer>
   <ds:Signature xmlns:ds="http://www.w3.org/2000/09/xmldsig#">
      <ds:SignedInfo>
         <ds:CanonicalizationMethod Algorithm="http://www.w3.org/2001/10/xml-exc-c14n#"/>
         <ds:SignatureMethod Algorithm="http://www.w3.org/2001/04/xmldsig-more#rsa-sha256"/>
         <ds:Reference URI="#_dd58c37a-3458-4c70-bd43-fb57bcf34884">
            <ds:Transforms>
               <ds:Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature"/>
               <ds:Transform Algorithm="http://www.w3.org/2001/10/xml-exc-c14n#">
                  <ec:InclusiveNamespaces PrefixList="xsd" xmlns:ec="http://www.w3.org/2001/10/xml-exc-c14n#"/>
               </ds:Transform>
            </ds:Transforms>
            <ds:DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/>
            <ds:DigestValue>+BPfwsiByLJgZumr6Gl6LDYxKpPHLcx7Q0pP/tvknCY=</ds:DigestValue>
         </ds:Reference>
      </ds:SignedInfo>
      <ds:SignatureValue>Bw4Yw2SV1sM1ixjf2hgPRIl9QNaGWmxhLCOcGs/C9KN4a1Z0kW8+sEC96Q4lwJ3RK55bRLmv0nUafivKcB5fJfZLuC6t2WJr3QXOZSoxvb4j1W/Oac0+iUnE0fTPst4M2d3JoF49Srg14U7B9iB/0GFzsw7EI1pIUJbjQQ63k/8qtjGcLYKX+0DqhRNp1qy97sBxrjrBJ4eDdulIl333OTFtxop39HagBvSGrNYLYZxRDr8gAr/BPJzzmOKUIV2DRhXR5r6gZj41P7AvlWDD6kxfc6Y27JvdmFgNZogTIdLkX6G/t4hF/h/7hDBUc6Y1XIlsdIVMczHzLvfMklhdVg==</ds:SignatureValue>
      <ds:KeyInfo>
         <ds:X509Data>
            <ds:X509Certificate>MIIFnjCCA4agAwIBAgIILvmoVmjE+1kwDQYJKoZIhvcNAQELBQAwRzEhMB8GA1UEAwwYRWxnYS1TcGlyaXQtSW50LUlzc3VlckNBMRUwEwYDVQQKDAxUaWFuaS1TcGlyaXQxCzAJBgNVBAYTAkFUMB4XDTE4MDQwOTEwMDUwMFoXDTIwMDUwODEwMDUwMFowSTEjMCEGA1UEAwwaaWRwLWlzc3Vlci5lbGdhLXNwaXJpdC5pbnQxFTATBgNVBAoMDFRpYW5pLVNwaXJpdDELMAkGA1UEBhMCQVQwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCpchtqU9TYOGgTOIIt9mmS9P1fVWM8wjEBjRLPp0XkG+zZbqqnJ8spuXfR776fOB7z2hr6TV1EmQmaHamdjmCjr3d1LuBnf/EPxpY9AW18lcWvjVejqePNetK+MXRdOU2t3TRwFtHXXizNcL6AMkefvbiHFkySXw912CoqtBCYXId+QlBb6lENs01dVaRPm3qFUGHdmqaO0uiDfGc+mn/gzoH+ovC+LBaWEwJUKMslBVFIRAVzcTJ0yDMNodY2jyVgrqsxjKBg+RT3BJ9Zr/mtdF8lS+8b4RAbc8WzbNBT/GMq9PzeJ28nrvelj++hxsxNFoYV7yLmvWx6Pn/gJw8jAgMBAAGjggGKMIIBhjAMBgNVHRMBAf8EAjAAMB8GA1UdIwQYMBaAFEEvjZgma/DZi+EtO1gB9V+ClxqJME0GCCsGAQUFBwEBBEEwPzA9BggrBgEFBQcwAYYxaHR0cDovL1NwaXJpdFBLSTo4MDgwL2VqYmNhL3B1YmxpY3dlYi9zdGF0dXMvb2NzcDCB1gYDVR0fBIHOMIHLMIHIoHmgd4Z1aHR0cDovL1NwaXJpdFBLSTo4MDgwL2VqYmNhL3B1YmxpY3dlYi93ZWJkaXN0L2NlcnRkaXN0P2NtZD1jcmwmaXNzdWVyPUNOPUVsZ2EtU3Bpcml0LUludC1Jc3N1ZXJDQSxPPVRpYW5pLVNwaXJpdCxDPUFUokukSTBHMSEwHwYDVQQDDBhFbGdhLVNwaXJpdC1JbnQtSXNzdWVyQ0ExFTATBgNVBAoMDFRpYW5pLVNwaXJpdDELMAkGA1UEBhMCQVQwHQYDVR0OBBYEFLZ8vzn+Mk2k8GJNivKLqeVNVVaAMA4GA1UdDwEB/wQEAwIF4DANBgkqhkiG9w0BAQsFAAOCAgEAtlClQSfzzIQMZwwdAM6wfM4DI/9b3fegLtQ8Im521z536yrKmgKwSX7fDlP6kckE7XKr0yhMG+BEwWPD3OPBqVbaXiCzMvAmTxYPcjw0UZd0wpKyz9zxjkh6rUjaU0bX7eSFG0C3k82jnEAwUwNcEZRYHlPsqA5kmtwoU1fjpFTia3Ni9kE97PGefqW5fHIsUl9MChtbKU5CZotuUiyA5PqJdivnbf1Ou1/sGa5AfnwXKo19bKnIMTDtmLob1se4D1ZDCSaMg6o4XXPAgbY2hq4a0eD2njmSPabrxJkvYLOD5T0+hDm0HR6Fq4KBjyptEQCJB2PV0F2OXG9p1WlsqOH4Veol4cJ0TONGU2yvRsUaZNXLs7NOAHrl/ECvFHTTAfOiyQX5DKEmbARl31ADjqe+tO2lkF/doChgAY+P3ljwwVjf01HYXAx2C6kCm2y2nlMRLm0Meap9KQtB+Z9CJFyh53UcvAyH3CxjSaCz1CXYEQqyfH65McrjR0T9fKWpVfnGNDLK6yncN6gHXO5vb/TyqoqPOZ2xPH3vpVfBrdRs740jlZ2toarrcYn1ivKNVL/UPLqftlrLoyEbXNgUwwGXCosqxzuIN2DVNN+0R24KkwFiEqrwTgDncWorBgxViDY9Xfkv4lHOukkUP1w2BO4OmkA9+1PdrEhSchi+fhY=</ds:X509Certificate>
         </ds:X509Data>
      </ds:KeyInfo>
   </ds:Signature>
   <saml2:Subject>
      <saml2:NameID Format="urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified">K2113</saml2:NameID>
      <saml2:SubjectConfirmation Method="urn:oasis:names:tc:SAML:2.0:cm:bearer">
         <saml2:SubjectConfirmationData/>
      </saml2:SubjectConfirmation>
   </saml2:Subject>
   <saml2:Conditions NotBefore="2020-04-02T13:08:38.337Z" NotOnOrAfter="2020-04-02T13:28:38.337Z">
      <saml2:ProxyRestriction Count="2"/>
      <saml2:AudienceRestriction>
         <saml2:Audience>https://elga-online.at/ETS</saml2:Audience>
      </saml2:AudienceRestriction>
   </saml2:Conditions>
   <saml2:AuthnStatement AuthnInstant="2020-04-02T13:08:38.337Z">
      <saml2:AuthnContext>
         <saml2:AuthnContextClassRef>urn:oasis:names:tc:SAML:2.0:ac:classes:PreviousSession</saml2:AuthnContextClassRef>
      </saml2:AuthnContext>
   </saml2:AuthnStatement>
   <saml2:AttributeStatement>
      <saml2:Attribute FriendlyName="ELGA OID Issuing Authority" Name="urn:elga:bes:2013:OIDIssuingAuthority" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:uri">
         <saml2:AttributeValue xsi:type="xsd:string" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">1.2.40.0.34</saml2:AttributeValue>
      </saml2:Attribute>
      <saml2:Attribute FriendlyName="XSPA Subject" Name="urn:oasis:names:tc:xacml:1.0:subject:subject-id" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:uri">
         <saml2:AttributeValue xsi:type="xsd:string" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">K2113</saml2:AttributeValue>
      </saml2:Attribute>
      <saml2:Attribute FriendlyName="XSPA Organization ID" Name="urn:oasis:names:tc:xspa:1.0:subject:organization-id" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:uri">
         <saml2:AttributeValue xsi:type="xsd:anyURI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">1.2.40.0.34.99.10.2.1.2.14827</saml2:AttributeValue>
      </saml2:Attribute>
      <saml2:Attribute FriendlyName="XSPA Organization" Name="urn:oasis:names:tc:xspa:1.0:subject:organization" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:uri">
         <saml2:AttributeValue xsi:type="xsd:anyURI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">SWHKrankenanstalt Baumgartling</saml2:AttributeValue>
      </saml2:Attribute>
   </saml2:AttributeStatement>
</saml2:Assertion>
```
