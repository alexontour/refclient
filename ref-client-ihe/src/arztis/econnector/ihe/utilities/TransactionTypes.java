package arztis.econnector.ihe.utilities;

public enum TransactionTypes {
//Einbringen von Patientenkontakt
	REGISTERKBS, CANCELKBS, LISTKBS,
//Dokumentenliste abfragen
	ITI18,
//Dokument abrufen
	ITI43,
// update Dokument
	ITI57,
//ELGA Dokument speichern
	WRITEELGADOC,
//Authentifizierung mit Admin Card
	REQUESTHCP,
//Rezept erstellen
	CREATEPRESCRIPTION,
//Patientenkontakt delegieren
	DELEGATEKBS,
// Abgabe erstellen 
	CREATEDISPENSE,
// GDA Index abfragen
	SEARCHGDAINDEX,
//Dokument aktualisieren
	UPDATEDOCUMENT, CANCELDOCUMENT,
//Medikationsliste abrufen
	MEDICATIONLIST,
// Rezepte, Abgaben abrufen 
	PHARM1, EMEDID, EMEDITI43,
// update prescription
	ITI57PRESCRIPTION,
// Patienten Index abrufen
	PATIENTDEMOGRAPHICS,
// EHEALTH Application
	GETEHEALTHSERVICES,
	// validate CDA Documents
	CDAVALIDATION,
	// Basic eCard functions
	GETCARDREADER, GETSVTS, GETSUBJECTS, GETSERVICES, GETCARDTOKEN, GETCARDDATA, GETSURGERIES,
	// Ausloggen von System
	LOGOFF

}
