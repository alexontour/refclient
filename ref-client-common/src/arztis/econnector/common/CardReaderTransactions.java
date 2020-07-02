package arztis.econnector.common;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpServletResponse;

import org.apache.axis2.AxisFault;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;

import arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.GinaServiceStub.GetCardReaders;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.GinaServiceStub.GetCardReadersE;
import arztis.econnector.common.model.Card;
import arztis.econnector.common.model.Message;
import arztis.econnector.common.model.MessageTypes;
import arztis.econnector.common.model.SexCode;
import arztis.econnector.common.utilities.BaseServiceStubPool;
import arztis.econnector.common.utilities.HttpConstants;
import arztis.econnector.common.utilities.SoapUtil;

public class CardReaderTransactions implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1999249458704313372L;
	private static final Logger LOGGER = LoggerFactory.getLogger(CardReaderTransactions.class);
	private static final String JSON_PARAM_RETURN_CARD_DATA = "returnCardData";
	private static final String JSON_PARAM_RETURN_EHIC_DATA = "returnEhicData";
	private static final String JSON_PARAM_RETURN_TOKEN = "returnToken";
	private static final String JSON_PARAM_SIG_TYPE = "sigType";
	private static final String JSON_PARAM_STATUS = "status";
	private static final String JSON_PARAM_BASE_CONTACT = "baseContact";
	private static final String JSON_PARAM_CARD_DATA = "cardData";
	private static final String JSON_PARAM_CARD_TYPE = "cardType";
	private static final String JSON_PARAM_TITLE = "titel";
	private static final String JSON_PARAM_VORNAME = "vorname";
	private static final String JSON_PARAM_NACHNAME = "nachname";
	private static final String JSON_PARAM_TITLE_HINTEN = "titelHinten";
	private static final String JSON_PARAM_GESCHLECHT = "geschlecht";
	private static final String JSON_PARAM_TOKEN = "token";
	private static final String JSON_PARAM_VALUE = "value";
	private static final String JSON_PARAM_PIN = "pin";
	private static final String JSON_PARAM_GEBURTSDATUM = "geburtsdatum";
	private static final String JSON_PARAM_NUMMER = "nummer";
	private static final String JSON_PARAM_TEXT = "text";
	private static final String JSON_PARAM_DETAIL_CODE = "detailCode";
	private static final String JSON_VALUE_VP = "vp";
	private static final String JSON_VALUE_SV = "sv";
	private static final String JSON_PARAM_VPNR = "vpnr";
	private static final String JSON_PARAM_SVNR = "svnr";
	private static final String JSON_VALUE_FEMALE = "W";
	private static final String JSON_VALUE_MALE = "M";
	private static final String HEADER_FIELD_CONTENT_TYPE = "Content-Type";
	private static final String SVC_DATE_FORMAT = "dd.MM.yyyy";
	private static final String DEBUG_MESSAGE_SENDING_REQUEST = "send request {} to {}";
	private static final String DEBUG_MESSAGE_ERROR = "Something went wrong: {}";
	private String targetEndpointGino = "";
	private String targetEndpointStatus = "%s/%s/status";
	private static CardReaderTransactions instance;

	private CardReaderTransactions(String ginoEndpoint) {
		if (instance != null) {
			throw new RuntimeException(
					"Use getInstance() method to get the single instance of card reader transactions");
		}
		
		targetEndpointGino = ginoEndpoint;
	}

	public synchronized static CardReaderTransactions getInstance(String ginoEndpoint) throws ExceptionInInitializerError {
		if (instance == null) {
			if (ginoEndpoint == null) {
				throw new ExceptionInInitializerError(
						"ginoEndpoint is not set. Cannot create instance");
			}
			
			instance = new CardReaderTransactions(ginoEndpoint);
		}
		
		return instance;
	}

	public static Object requestAllCardReaders() {
		try {
			GetCardReadersE getCardReadersE = new GetCardReadersE();
			GetCardReaders getCardReaders = new GetCardReaders();
			getCardReadersE.setGetCardReaders(getCardReaders);
			return BaseServiceStubPool.getInstance().getGinaServiceStub().getCardReaders(getCardReadersE)
					.getGetCardReadersResponse().get_return();
		} catch (arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.ServiceException e) {
			LOGGER.error(e.getFaultMessage().getServiceException().getMessage(), e);
			return new Message(e.getFaultMessage().getServiceException().getMessage(), MessageTypes.ERROR,
					HttpServletResponse.SC_SERVICE_UNAVAILABLE);
		} catch (AxisFault af) {
			String returnMessage = SoapUtil.extractErrorMessageOfAxisFault(af);
			LOGGER.error("There is a problem to request all card readers: ", af);

			return new Message(returnMessage, MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
			return new Message(e.getMessage(), MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} finally {
			try {
				BaseServiceStubPool.getInstance().getGinaServiceStub()._getServiceClient().cleanupTransport();
			} catch (Exception e) {
				LOGGER.error(e.getMessage(), e);
			}
		}
	}

	public Object getCardTokenACard(String cardReaderId, String vpnr, String password) {

		JSONObject jo = new JSONObject();
		if (vpnr != null && !vpnr.isEmpty()) {
			buildJsonForSVSignatureECard(jo, vpnr);
		}

		if (password != null && !password.isEmpty()) {
			buildJsonForVPSignatureOCardSvnr(jo, password);
		}

		try {
			return extractResult(sendPostToCardReader(jo.toString(), cardReaderId), String.class);
		} catch (UnirestException e) {
			LOGGER.error(e.getMessage(), e);
			return new Message(e.getMessage(), MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		}
	}

	public Message getErrorMessageFromJson(JSONObject jo, int requestStatus) {
		Message message = new Message(jo.getString(JSON_PARAM_TEXT), MessageTypes.ERROR, requestStatus);
		message.setOriginalErrorCode(jo.getString(JSON_PARAM_DETAIL_CODE));
		return message;
	}

	public Object getCardTokenECard(String cardReaderId, String ssno, String vpnr) {

		JSONObject jo = new JSONObject();

		if (vpnr != null && !vpnr.isEmpty()) {
			buildJsonForSVSignatureECard(jo, vpnr);
		} else {
			buildJsonForSVSignatureOCardSvnr(jo, ssno);
		}

		try {
			return extractResult(sendPostToCardReader(jo.toString(), cardReaderId), String.class);
		} catch (UnirestException e) {
			LOGGER.error(e.getMessage(), e);
			return new Message(e.getMessage(), MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		}
	}

	public HttpResponse<String> sendPostToCardReader(String json, String cardReaderId) throws UnirestException {
		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug(DEBUG_MESSAGE_SENDING_REQUEST, json,
					String.format(targetEndpointStatus, targetEndpointGino, cardReaderId));
		}
		return Unirest.post(String.format(targetEndpointStatus, targetEndpointGino, cardReaderId))
				.header(HEADER_FIELD_CONTENT_TYPE, HttpConstants.MEDIA_TYPE_APPLICATION_JSON).body(json).asString();
	}

	public Object extractResult(HttpResponse<String> response, Class<?> expectedClass) {
		if (response != null) {
			int responseStatus = response.getStatus();

			if (responseStatus != 200) {
				LOGGER.error(DEBUG_MESSAGE_ERROR, response.getStatusText());
				return getErrorMessageFromJson(new JSONObject(response.getBody()), response.getStatus());
			} else if (expectedClass == Card.class) {
				return getCardFromJson(new JSONObject(response.getBody()));
			} else if (expectedClass == String.class) {
				return getCardTokenFromJson(new JSONObject(response.getBody()));
			}
		}

		return null;
	}

	public Object getCardData(String cardReaderId) {
		JSONObject jo = new JSONObject();
		buildJsonForCardData(jo);

		try {
			return extractResult(sendPostToCardReader(jo.toString(), cardReaderId), Card.class);
		} catch (UnirestException e) {
			LOGGER.error(e.getMessage(), e);
			return new Message(e.getMessage(), MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		}
	}

	private String getCardTokenFromJson(JSONObject jo) {
		JSONObject joStatus = jo.getJSONObject(JSON_PARAM_STATUS);
		JSONObject joBaseContact = joStatus.getJSONObject(JSON_PARAM_BASE_CONTACT);
		JSONObject joToken = joBaseContact.getJSONObject(JSON_PARAM_TOKEN);

		return joToken.getString(JSON_PARAM_VALUE);
	}

	private Card getCardFromJson(JSONObject jo) {
		JSONObject joStatus = jo.getJSONObject(JSON_PARAM_STATUS);
		JSONObject joBaseContact = joStatus.getJSONObject(JSON_PARAM_BASE_CONTACT);
		JSONObject joCardData = joBaseContact.getJSONObject(JSON_PARAM_CARD_DATA);
		Card card = new Card();
		card.setCardType(joCardData.getString(JSON_PARAM_CARD_TYPE));
		card.setTitle(joCardData.getString(JSON_PARAM_TITLE));
		card.setGivenName(joCardData.getString(JSON_PARAM_VORNAME));
		card.setFamilyName(joCardData.getString(JSON_PARAM_NACHNAME));
		card.setSuffix(joCardData.getString(JSON_PARAM_TITLE_HINTEN));

		String gender = joCardData.getString(JSON_PARAM_GESCHLECHT);
		if (JSON_VALUE_FEMALE.equalsIgnoreCase(gender)) {
			card.setSex(SexCode.FEMALE);
		} else if (JSON_VALUE_MALE.equalsIgnoreCase(gender)) {
			card.setSex(SexCode.MALE);
		} else {
			card.setSex(SexCode.UNKNOWN);
		}

		card.setBirthDate(LocalDate.parse(joCardData.getString(JSON_PARAM_GEBURTSDATUM),
				DateTimeFormatter.ofPattern(SVC_DATE_FORMAT)));
		card.setNumber(joCardData.getString(JSON_PARAM_NUMMER));
		return card;
	}

	private void buildJsonForSVSignatureECard(JSONObject jo, String vpnr) {
		jo.put(JSON_PARAM_VPNR, vpnr);
		jo.put(JSON_PARAM_SIG_TYPE, JSON_VALUE_SV);
		jo.put(JSON_PARAM_RETURN_CARD_DATA, true);
		jo.put(JSON_PARAM_RETURN_EHIC_DATA, true);
		jo.put(JSON_PARAM_RETURN_TOKEN, true);
	}

	private void buildJsonForSVSignatureOCardSvnr(JSONObject jo, String ssno) {
		if (ssno != null && !ssno.isEmpty()) {
			jo.put(JSON_PARAM_SVNR, ssno);
		}

		jo.put(JSON_PARAM_SIG_TYPE, JSON_VALUE_SV);
		jo.put(JSON_PARAM_RETURN_CARD_DATA, true);
		jo.put(JSON_PARAM_RETURN_EHIC_DATA, true);
		jo.put(JSON_PARAM_RETURN_TOKEN, true);
	}

	private void buildJsonForVPSignatureOCardSvnr(JSONObject jo, String pin) {
		jo.put(JSON_PARAM_SIG_TYPE, JSON_VALUE_VP);
		jo.put(JSON_PARAM_PIN, pin);
		jo.put(JSON_PARAM_RETURN_CARD_DATA, true);
		jo.put(JSON_PARAM_RETURN_EHIC_DATA, true);
		jo.put(JSON_PARAM_RETURN_TOKEN, true);
	}

	private void buildJsonForCardData(JSONObject jo) {
		jo.put(JSON_PARAM_RETURN_CARD_DATA, true);
	}

}
