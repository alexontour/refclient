package arztis.econnector.rest.utilities;

public class RestConstants {

	public static final String REST_API_VERSION = "REST_API_VERSION";
	public static final String REST_API_USER_REGISTRATION = "USER_REGISTRATION";
	public static final String REST_API_IDA = "IDA";
	public static final String REST_API_PATIENTCONTACT = "PATIENTCONTACTS";
	public static final String REST_API_DOCUMENT_REFERENCE = "DOCUMENTREFERENCE";
	public static final String REST_API_ID = "ID";
	public static final String REST_API_GDA = "GDA";
	public static final String REST_API_PATIENTDEMOGRAPHICS = "PATIENTDEMOGRAPHICS";
	public static final String REST_API_CARD_READER_PATH = "CARDREADERS";
	public static final String REST_API_CARD = "CARD";

	// Constants for the REST API paths for the cda generation
	public static final String REST_API_COMPOSITION = "COMPOSITION";

	private RestConstants() {
		throw new IllegalStateException("Utility class");
	}

}
