/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 *
 */
package arztis.econnector.rest.utilities;

/**
 * This class contains constants for REST interface. It contains key names of
 * properties file (resources/elga_ref_client_rest_api.properties). This file
 * contains all REST endpoints, which will be used for different services.
 *
 * @author Anna Jungwirth
 *
 */
public class RestEndpointConstants {

	/** Key for REST API version like /api/v1. */
	public static final String REST_API_VERSION = "REST_API_VERSION";

	/** Key for endpoint to register user. */
	public static final String REST_API_USER_REGISTRATION = "USER_REGISTRATION";

	/** Key for endpoint to request IDA. */
	public static final String REST_API_IDA = "IDA";

	/** Key for endpoint to confirm patient contact. */
	public static final String REST_API_PATIENTCONTACT = "PATIENTCONTACTS";

	/** Key for endpoint to handle ELGA documents. */
	public static final String REST_API_DOCUMENT_REFERENCE = "DOCUMENTREFERENCE";

	/** Key for endpoint to requesting patient demographic. */
	public static final String REST_API_PATIENTDEMOGRAPHICS = "PATIENTDEMOGRAPHICS";

	/** Key for endpoint to query all available card readers. */
	public static final String REST_API_CARD_READER_PATH = "CARDREADERS";

	/** Key for endpoint to query card data. */
	public static final String REST_API_CARD = "CARD";

	/** Key for endpoint to generate CDA document. */
	public static final String REST_API_COMPOSITION = "COMPOSITION";

	/**
	 * Default constructor.
	 */
	private RestEndpointConstants() {
		throw new IllegalStateException("Utility class");
	}

}
