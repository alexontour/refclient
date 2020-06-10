package arztis.econnector.rest.server;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.handler.AbstractHandler;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.EimpfDocumentUpdateImmunisierungsstatus;
import org.ehealth_connector.fhir.structures.gen.FhirPatient;
import org.hl7.fhir.dstu3.model.Address;
import org.hl7.fhir.r4.model.Bundle;
import org.hl7.fhir.r4.model.Identifier;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.GinaServiceStub.CardReader;
import arztis.econnector.common.model.Card;
import arztis.econnector.common.model.Message;
import arztis.econnector.common.model.MessageTypes;
import arztis.econnector.common.model.RegisterParam;
import arztis.econnector.common.utilities.HttpConstants;
import arztis.econnector.ihe.model.ConnectionData;
import arztis.econnector.ihe.parameters.PatientContactParameter;
import arztis.econnector.ihe.parameters.RequestIdaParameter;
import arztis.econnector.ihe.utilities.ConfigReader;
import arztis.econnector.ihe.utilities.ElgaEHealthApplication;
import arztis.econnector.ihe.utilities.IheConstants;
import arztis.econnector.rest.ConnectionDataHandler;
import arztis.econnector.rest.FhirElgaConnectionCaller;
import arztis.econnector.rest.model.fhir.FhirBundle;
import arztis.econnector.rest.model.fhir.FhirDocumentReference;
import arztis.econnector.rest.model.fhir.FhirOrganization;
import arztis.econnector.rest.model.fhir.FhirPatientAt;
import arztis.econnector.rest.utilities.FhirUtil;
import arztis.econnector.rest.utilities.JsonUtilRest;
import arztis.econnector.rest.utilities.JwtUtil;
import arztis.econnector.rest.utilities.RestConstants;

public class RestHandler extends AbstractHandler {
	private static final Logger LOGGER = LoggerFactory.getLogger(RestHandler.class.getName());
	private static final ResourceBundle bundleRestApi = ResourceBundle.getBundle("elga_ref_client_rest_api");
	private static final String REST_API_VERSION = getRestEndpointFromProperties(RestConstants.REST_API_VERSION);
	private static final String REST_API_USER_REGISTRATION = concatenate(REST_API_VERSION,
			getRestEndpointFromProperties(RestConstants.REST_API_USER_REGISTRATION));
	private static final String REST_API_IDA = getRestEndpointFromProperties(RestConstants.REST_API_IDA);
	private static final String REST_API_PATIENTCONTACTS = concatenate(REST_API_VERSION,
			getRestEndpointFromProperties(RestConstants.REST_API_PATIENTCONTACT));
	private static final String REST_API_PATIENTDEMOGRAPHICS = concatenate(REST_API_VERSION,
			getRestEndpointFromProperties(RestConstants.REST_API_PATIENTDEMOGRAPHICS));
	private static final String REST_API_CARD = concatenate(REST_API_VERSION,
			getRestEndpointFromProperties(RestConstants.REST_API_CARD));
	private static final String REST_API_CARD_READERS = concatenate(REST_API_VERSION,
			getRestEndpointFromProperties(RestConstants.REST_API_CARD_READER_PATH));
	private static final String REST_API_DOCUMENT_REFERENCE = concatenate(REST_API_VERSION,
			getRestEndpointFromProperties(RestConstants.REST_API_DOCUMENT_REFERENCE));
	private static final String REST_API_COMPOSITION = concatenate(REST_API_VERSION,
			getRestEndpointFromProperties(RestConstants.REST_API_COMPOSITION));

	@Override
	public void handle(String target, Request baseRequest, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		String body = "";
		String authorizationToken = request.getHeader("Authorization");

		try {
			body = readoutInputStreamOfRequest(request.getInputStream());
		} catch (IOException e) {
			LOGGER.error(e.getMessage());
		}

		if (target == null) {
			return;
		}

		if (target.contains(REST_API_USER_REGISTRATION)) {
			handleRegisterUser(target, body, request, response);
		} else if (REST_API_PATIENTCONTACTS.equalsIgnoreCase(target)) {
			handlePatientContactCall(body, request, response, authorizationToken);
		} else if (REST_API_PATIENTDEMOGRAPHICS.equalsIgnoreCase(target)
				&& HttpConstants.GET_METHOD.equalsIgnoreCase(request.getMethod())) {
			handleQueryPatientDemographicsCall(request, response, authorizationToken);
		} else if (REST_API_CARD.equalsIgnoreCase(target)) {
			handleQueryCardDataCall(request, response);
		} else if (REST_API_CARD_READERS.equalsIgnoreCase(target)) {
			handleQueryCardReadersCall(response);
		} else if (target.startsWith(REST_API_DOCUMENT_REFERENCE)) {
			handleDocumentReferenceCall(target, body, request, response, authorizationToken);
		} else if (target.startsWith(REST_API_COMPOSITION)) {
			handleCdaGenerationCall(target, body, request, response, authorizationToken);
		}
	}

	public void handleDocumentReferenceCall(String target, String body, HttpServletRequest request,
			HttpServletResponse response, String authorization) {
		if (target == null || request == null) {
			writeResponse("", response, HttpServletResponse.SC_BAD_REQUEST, HttpConstants.MEDIA_TYPE_TEXT_XML);
			return;
		}

		if (HttpConstants.GET_METHOD.equalsIgnoreCase(request.getMethod())) {
			if (REST_API_DOCUMENT_REFERENCE.equals(target)) {
				handleQueryDocuments(request, response, authorization);
			} else {
				handleRequestDocument(target, request, response, authorization);
			}
		} else if (HttpConstants.POST_METHOD.equalsIgnoreCase(request.getMethod())) {
			handleProvideAndRegisterDocument(body, response, authorization);
		} else if (HttpConstants.DELETE_METHOD.equalsIgnoreCase(request.getMethod())) {
			handleCancelDocument(request, response, authorization);
		}
	}

	private void handleQueryDocuments(HttpServletRequest request, HttpServletResponse response, String authorization) {
		String type = request.getParameter(JsonUtilRest.JSON_PARAM_TYPE);
		org.hl7.fhir.r4.model.Identifier patientIdentifier = FhirUtil
				.extractIdentifierFromTokenType(request.getParameter(JsonUtilRest.JSON_PARAM_PATIENT_IDENTIFIER));
		String status = request.getParameter(JsonUtilRest.JSON_PARAM_STATUS);
		String contentType = request.getParameter(JsonUtilRest.JSON_PARAM_CONTENT_ATTACHMENT_CONTENT_TYPE);

		FhirBundle result = FhirElgaConnectionCaller.getInstance().requestDocumentList(
				new FhirDocumentReference(type, patientIdentifier, status, contentType),
				ConnectionDataHandler.getInstance().getConnectionDataWithUserToken(authorization));

		if (result != null) {
			int statusResponse = 200;

			if (!result.hasEntry()) {
				statusResponse = HttpServletResponse.SC_NOT_FOUND;
			}

			if (result.hasEntry() && result.getEntry().get(0) != null && result.getEntry().get(0).hasResponse()) {
				statusResponse = Integer.valueOf(result.getEntry().get(0).getResponse().getStatus());
			}

			writeResponse(result.toJson(), response, statusResponse, HttpConstants.MEDIA_TYPE_APPLICATION_JSON);
		}
	}

	private void handleRequestDocument(String target, HttpServletRequest request, HttpServletResponse response,
			String authorization) {
		String contentType = request.getParameter(JsonUtilRest.JSON_PARAM_CONTENT_ATTACHMENT_CONTENT_TYPE);

		FhirBundle result = FhirElgaConnectionCaller.getInstance().retrieveDocuments(
				ConnectionDataHandler.getInstance().getConnectionDataWithUserToken(authorization),
				new FhirDocumentReference(target, contentType));

		if (result != null) {
			int statusResponse = 200;

			if (result.getEntry() != null && result.getEntry().get(0) != null
					&& result.getEntry().get(0).hasResponse()) {
				statusResponse = Integer.valueOf(result.getEntry().get(0).getResponse().getStatus());
			}

			writeResponse(result.toJson(), response, statusResponse, contentType);
		}
	}

	private void handleCancelDocument(HttpServletRequest request, HttpServletResponse response, String authorization) {
		org.hl7.fhir.r4.model.Identifier patientIdentifier = FhirUtil
				.extractIdentifierFromTokenType(request.getParameter(JsonUtilRest.JSON_PARAM_PATIENT_IDENTIFIER));
		org.hl7.fhir.r4.model.Identifier documentId = FhirUtil
				.extractIdentifierFromTokenType(request.getParameter(JsonUtilRest.JSON_PARAM_IDENTIFIER));
		FhirBundle result = FhirElgaConnectionCaller.getInstance().cancelDocument(
				ConnectionDataHandler.getInstance().getConnectionDataWithUserToken(authorization),
				new FhirDocumentReference(request.getParameter(JsonUtilRest.JSON_PARAM_CATEGORY), patientIdentifier,
						documentId),
				new FhirOrganization(request.getParameter(JsonUtilRest.JSON_PARAM_AUTHOR_ORGANIZATION_NAME)),
				ConfigReader.getInstance().getOidElgaArea());

		if (result != null) {
			int statusResponse = 200;

			if (result.getEntry() != null && result.getEntry().get(0) != null
					&& result.getEntry().get(0).hasResponse()) {
				statusResponse = Integer.valueOf(result.getEntry().get(0).getResponse().getStatus());
			}

			writeResponse(result.toJson(), response, statusResponse, HttpConstants.MEDIA_TYPE_APPLICATION_JSON);
		}
	}

	private void handleProvideAndRegisterDocument(String body, HttpServletResponse response, String authorization) {
		FhirBundle result = FhirElgaConnectionCaller.getInstance().provideAndRegisterDocuments(
				FhirUtil.getFhirContext().newJsonParser().parseResource(Bundle.class, body),
				ConnectionDataHandler.getInstance().getConnectionDataWithUserToken(authorization),
				ConfigReader.getInstance().getOidElgaArea());

		if (result != null) {
			int statusResponse = 200;

			if (result.getEntry() != null && result.getEntry().get(0) != null
					&& result.getEntry().get(0).hasResponse()) {
				statusResponse = Integer.valueOf(result.getEntry().get(0).getResponse().getStatus());
			}

			writeResponse(result.toJson(), response, statusResponse, HttpConstants.MEDIA_TYPE_APPLICATION_JSON);
		}
	}

	public void handleCdaGenerationCall(String target, String body, HttpServletRequest request,
			HttpServletResponse response, String authorization) {
		if (target == null || request == null) {
			writeResponse("", response, HttpServletResponse.SC_BAD_REQUEST, HttpConstants.MEDIA_TYPE_TEXT_XML);
			return;
		}

		Object result = null;
		Object resultXml = null;

		result = FhirElgaConnectionCaller.getInstance().generateCda(body, authorization);

		if (result instanceof EimpfDocumentUpdateImmunisierungsstatus) {
			resultXml = FhirElgaConnectionCaller.getInstance()
					.getUpdateImmunizationEntryXml((EimpfDocumentUpdateImmunisierungsstatus) result);
		}

		if (resultXml instanceof String) {
			writeResponse((String) resultXml, response, HttpServletResponse.SC_OK, HttpConstants.MEDIA_TYPE_TEXT_HTML);
		} else if (result instanceof Message) {
			Message messageResult = (Message) result;
			writeResponse(messageResult.toJson().toString(), response, messageResult.getRequestStatus(),
					HttpConstants.MEDIA_TYPE_APPLICATION_JSON);
		}
	}

	private void handleRegisterUser(String target, String body, HttpServletRequest request,
			HttpServletResponse response) {
		if (target.contains(REST_API_IDA)) {
			handleRequestUserIdaCall(request, response);
		} else if (HttpConstants.POST_METHOD.equalsIgnoreCase(request.getMethod())) {
			handleRegisterUserCall(body, request, response);
		}
	}

	private void handleRequestUserIdaCall(HttpServletRequest request, HttpServletResponse response) {
		String subjectId = request.getParameter(JsonUtilRest.JSON_PARAM_SUBJECT_ID);
		String organizationId = request.getParameter(JsonUtilRest.JSON_PARAM_ORGANIZATION_ID);
		String organizationName = request.getParameter(JsonUtilRest.JSON_PARAM_ORGANIZATION);

		Object result = FhirElgaConnectionCaller.getInstance()
				.requestIdaGdaHospital(new RequestIdaParameter(subjectId, organizationId, organizationName));

		if (result instanceof String) {
			writeResponse((String) result, response, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					HttpConstants.MEDIA_TYPE_APPLICATION_XML);
		} else if (result instanceof Message) {
			Message messageResult = (Message) result;
			writeResponse(messageResult.toJson().toString(), response, messageResult.getRequestStatus(),
					HttpConstants.MEDIA_TYPE_APPLICATION_JSON);
		} else {
			writeResponse("Bei der User Anmeldung ist etwas schief gelaufen", response,
					HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "text");
		}
	}

	private void handleRegisterUserCall(String body, HttpServletRequest request, HttpServletResponse response) {
		JSONObject json = null;
		String role;
		String prefix = "";
		String suffix = "";
		String ida = null;
		String subjectId = null;
		String organizationId = null;
		String organization = null;
		String givenname = null;
		String familname = null;
		String cardreaderid = null;
		String pin = null;

		try {
			json = new JSONObject(body);
		} catch (JSONException ex) {
			LOGGER.error(ex.getMessage(), ex);
		}

		if (json == null) {
			role = request.getParameter(JsonUtilRest.JSON_PARAM_ROLE);
			ida = body;
		} else {
			try {
				prefix = json.getString(JsonUtilRest.JSON_PARAM_PREFIX);
			} catch (JSONException ex) {
				LOGGER.error(ex.getMessage(), ex);
			}

			try {
				suffix = json.getString(JsonUtilRest.JSON_PARAM_SUFFIX);
			} catch (JSONException ex) {
				LOGGER.error(ex.getMessage(), ex);
			}

			try {
				subjectId = json.getString(JsonUtilRest.JSON_PARAM_SUBJECT_ID);
				organizationId = json.getString(JsonUtilRest.JSON_PARAM_ORGANIZATION_ID);
				organization = json.getString(JsonUtilRest.JSON_PARAM_ORGANIZATION);
			} catch (JSONException ex) {
				LOGGER.error(ex.getMessage(), ex);
			}

			try {
				givenname = json.getString(JsonUtilRest.JSON_PARAM_GIVENNAME);
				familname = json.getString(JsonUtilRest.JSON_PARAM_FAMILYNAME);
				cardreaderid = json.getString(JsonUtilRest.JSON_PARAM_CARD_READER_ID);
				pin = json.getString(JsonUtilRest.JSON_PARAM_PIN);
			} catch (JSONException ex) {
				LOGGER.error(ex.getMessage(), ex);
			}

			role = json.getString(JsonUtilRest.JSON_PARAM_ROLE);
		}

		RegisterParam registerParam = new RegisterParam(givenname, familname, role, cardreaderid, prefix, suffix, "",
				pin, "", ida);
		registerParam.setProductId(ConfigReader.getInstance().getProductId());
		registerParam.setProductVersion(ConfigReader.getInstance().getProductVersion());
		registerParam.setProducerId(ConfigReader.getInstance().getHerstellerId());
		registerParam.setSubjectId(subjectId);
		registerParam.setOrganizationId(organizationId);
		registerParam.setOrganizationName(organization);

		Map<Integer, ElgaEHealthApplication> applications = new HashMap<>();

		if (ConfigReader.getInstance().isEImmunLoginEnabled()) {
			applications.put(IheConstants.KIND_OF_REQUEST_IMMUNIZATION_RECORD,
					ConfigReader.getInstance().getEImmunizationId());
		}

		if (ConfigReader.getInstance().isPvnLoginEnabled()) {
			applications.put(IheConstants.KIND_OF_REQUEST_VOS, ConfigReader.getInstance().getPvnId());
		}

		Object result = FhirElgaConnectionCaller.getInstance().registerUser(new ConnectionData(), registerParam,
				ConfigReader.getInstance().getGinoEndpoint(), applications);

		if (result instanceof ConnectionData) {
			ConnectionData connData = (ConnectionData) result;
			connData.setUserJwtToken(getJwtToken(connData));
			ConnectionDataHandler.getInstance().addConnData(connData);
			Message message = new Message("Die Registrierung war erfolgreich", MessageTypes.SUCCESS,
					HttpServletResponse.SC_OK);
			JSONObject responseJson = message.toJson();
			responseJson.put("jwt", connData.getUserJwtToken());
			writeResponse(responseJson.toString(), response, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					HttpConstants.MEDIA_TYPE_APPLICATION_JSON);
		} else if (result instanceof Message) {
			Message messageResult = (Message) result;
			writeResponse(messageResult.toJson().toString(), response, messageResult.getRequestStatus(),
					HttpConstants.MEDIA_TYPE_APPLICATION_JSON);
		} else {
			writeResponse("Bei der User Anmeldung ist etwas schief gelaufen", response,
					HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "text");
		}
	}
	
	private String getJwtToken(ConnectionData connData) {
		if(connData != null) {
			if(connData.getHcpAssertion() != null) {
				return JwtUtil.buildJwtFromHcpAssertion(connData.getHcpAssertion());
			} else if(connData.getContextAssertions() != null) {
				for(String key: connData.getContextAssertions().keySet()) {
					if(key != null) {
						return JwtUtil.buildJwtFromHcpAssertion(connData.getContextAssertion(key));
					}
				}				
			}
		}
		
		return "";
	}

	private void handlePatientContactCall(String body, HttpServletRequest request, HttpServletResponse response,
			String authorization) {
		if (HttpConstants.POST_METHOD.equalsIgnoreCase(request.getMethod())) {
			handleRegisterPatientContactCall(body, response, authorization);
		}
	}

	private void handleRegisterPatientContactCall(String body, HttpServletResponse response, String authorization) {
		JSONObject json = new JSONObject(body);
		ConfigReader config = ConfigReader.getInstance();
		String cardReaderId = "";
		Identifier patientId = null;

		try {
			cardReaderId = json.getString(JsonUtilRest.JSON_PARAM_CARD_READER_ID);
		} catch (JSONException ex) {
			LOGGER.error(ex.getMessage(), ex);
		}

		try {
			patientId = FhirUtil.extractIdentifierFromTokenType(json.getString(JsonUtilRest.JSON_PARAM_IDENTIFIER));
		} catch (JSONException ex) {
			LOGGER.error(ex.getMessage(), ex);
		}

		List<ElgaEHealthApplication> apps = new ArrayList<>();
		if (config.isEImmunLoginEnabled()) {
			apps.add(config.getEImmunizationId());
		}

		if (config.isPvnLoginEnabled()) {
			apps.add(config.getPvnId());
		}

		PatientContactParameter patContactParam = new PatientContactParameter(patientId, cardReaderId, apps);

		FhirBundle result = FhirElgaConnectionCaller.getInstance().registerPatientContact(
				ConnectionDataHandler.getInstance().getConnectionDataWithUserToken(authorization), patContactParam,
				ConfigReader.getInstance().getGinoEndpoint());

		if (result != null) {
			int statusResponse = 200;

			if (result.hasEntry() && result.getEntry().get(0) != null
					&& result.getEntry().get(0).hasResponse()) {
				statusResponse = Integer.valueOf(result.getEntry().get(0).getResponse().getStatus());
			}

			writeResponse(FhirUtil.getFhirContext().newJsonParser().encodeResourceToString(result), response,
					statusResponse, HttpConstants.MEDIA_TYPE_APPLICATION_JSON);
		}
	}

	private void handleQueryPatientDemographicsCall(HttpServletRequest request, HttpServletResponse response,
			String authorization) {
		String given = request.getParameter(JsonUtilRest.JSON_PARAM_GIVENNAME);
		String family = request.getParameter(JsonUtilRest.JSON_PARAM_FAMILYNAME);
		String gender = request.getParameter(JsonUtilRest.JSON_PARAM_GENDER);
		String birth = request.getParameter(JsonUtilRest.JSON_PARAM_BIRTHDATE);
		String addressline = request.getParameter(JsonUtilRest.JSON_PARAM_STREETADDRESSLINE);
		String city = request.getParameter(JsonUtilRest.JSON_PARAM_CITY);
		String postalCode = request.getParameter(JsonUtilRest.JSON_PARAM_POSTALCODE);
		String country = request.getParameter(JsonUtilRest.JSON_PARAM_COUNTRY);
		String state = request.getParameter(JsonUtilRest.JSON_PARAM_STATE);
		String identifier = request.getParameter(JsonUtilRest.JSON_PARAM_IDENTIFIER);

		Date birthDate = null;
		try {
			SimpleDateFormat sdf = new SimpleDateFormat(IheConstants.FORMAT_ISO_DATE);
			birthDate = sdf.parse(birth);
		} catch (Exception jEx) {
			LOGGER.info(jEx.getMessage());
		}

		FhirPatient patDemParam = FhirPatientAt.getFhirPatient(given, family,
				FhirUtil.extractIdentifierFromTokenType(identifier), null, birthDate);

		if (gender != null && !gender.isEmpty()) {
			patDemParam.setGender(org.hl7.fhir.dstu3.model.Enumerations.AdministrativeGender.valueOf(gender));
		}

		if(addressline != null) {
			Address address = new Address();
			address.addLine(addressline);
			address.setCity(city);
			address.setPostalCode(postalCode);
			address.setCountry(country);
			address.setState(state);
			patDemParam.addAddress(address);
		}

		org.hl7.fhir.dstu3.model.Bundle result = FhirElgaConnectionCaller.getInstance().queryPatientDemographics(
				ConnectionDataHandler.getInstance().getConnectionDataWithUserToken(authorization), patDemParam);

		if (result != null) {
			int statusResponse = 200;

			if (result.hasEntry() && result.getEntry().get(0) != null
					&& result.getEntry().get(0).hasResponse()) {
				statusResponse = Integer.valueOf(result.getEntry().get(0).getResponse().getStatus());
			}

			writeResponse(FhirUtil.getFhirContextDstu3().newJsonParser().encodeResourceToString(result), response,
					statusResponse, HttpConstants.MEDIA_TYPE_APPLICATION_JSON);
		}
	}

	private void handleQueryCardDataCall(HttpServletRequest request, HttpServletResponse response) {
		String cardReaderId = request.getParameter(JsonUtilRest.JSON_PARAM_CARD_READER_ID);
		Object result = FhirElgaConnectionCaller.getInstance().getCardData(cardReaderId,
				ConfigReader.getInstance().getGinoEndpoint());

		if (result instanceof Card) {
			writeResponse(((Card) result).toJson().toString(), response, HttpServletResponse.SC_OK,
					HttpConstants.MEDIA_TYPE_APPLICATION_JSON);
		} else if (result instanceof Message) {
			Message messageResult = (Message) result;
			writeResponse(messageResult.toJson().toString(), response, messageResult.getRequestStatus(),
					HttpConstants.MEDIA_TYPE_APPLICATION_JSON);
		}
	}

	private void handleQueryCardReadersCall(HttpServletResponse response) {
		Object result = FhirElgaConnectionCaller.getInstance().queryAllCardReaders();

		if (result instanceof CardReader[]) {
			JSONArray array = new JSONArray();
			for (CardReader reader : (CardReader[]) result) {
				array.put(reader.getId());
			}

			JSONObject obj = new JSONObject();
			obj.put("cardReaders", array);

			writeResponse(obj.toString(), response, HttpServletResponse.SC_OK,
					HttpConstants.MEDIA_TYPE_APPLICATION_JSON);
		} else if (result instanceof Message) {
			Message messageResult = (Message) result;
			writeResponse(messageResult.toJson().toString(), response, messageResult.getRequestStatus(),
					HttpConstants.MEDIA_TYPE_APPLICATION_JSON);
		}
	}

	public static String getRestEndpointFromProperties(String key) {
		try {
			return bundleRestApi.getString(key);
		} catch (MissingResourceException ex) {
			return "";
		}
	}

	public static String concatenate(String... strings) {
		StringBuilder builder = new StringBuilder("");

		if (strings != null) {
			for (String string : strings) {
				if (string != null) {
					builder.append(string);
				}
			}
		}

		return builder.toString();
	}

	public static boolean writeResponse(String txt, HttpServletResponse response, int status, String type) {

		boolean success = true;

		byte[] responseBytes;

		try {

			if (LOGGER.isDebugEnabled()) {
				LOGGER.debug("Response message: {}", txt);
			}

			response.setContentType(type + "; charset=utf-8");
			response.addHeader("Access-Control-Allow-Origin", "*");
			response.addHeader("cache-control", "no-cache");
			response.addHeader("Connection", "close");
			response.setStatus(status);
			responseBytes = txt.getBytes(StandardCharsets.UTF_8);
			response.setContentLength(responseBytes.length);
			response.getOutputStream().write(responseBytes);
			response.getOutputStream().flush();
			response.getOutputStream().close();

		} catch (IOException ex) {
			LOGGER.error(ex.getMessage(), ex);
			success = false;
		}
		return success;
	}

	protected static String readoutInputStreamOfRequest(InputStream is) {
		String body = "";
		try {
			Scanner first = new Scanner(is);
			Scanner s = first.useDelimiter("\\A");
			body = s.hasNext() ? s.next() : "";
			first.close();
			s.close();
			is.close();
		} catch (IOException e) {
			LOGGER.error(e.getMessage(), e);
		}

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("Received body: {}", body);
		}

		return body;
	}

}
