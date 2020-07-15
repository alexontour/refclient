/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the Eclipse Public License v1.0.
 *
 */
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

import arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.GinaServiceStub.CardReader;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.GinaServiceStub.GetCardReaders;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.GinaServiceStub.GetCardReadersE;
import arztis.econnector.common.model.Card;
import arztis.econnector.common.model.Message;
import arztis.econnector.common.model.MessageTypes;
import arztis.econnector.common.model.SexCode;
import arztis.econnector.common.utilities.BaseServiceStubPool;
import arztis.econnector.common.utilities.HttpConstants;
import arztis.econnector.common.utilities.SoapUtil;

/**
 * This class includes all requests to query cards readers and cards in card
 * reader.
 *
 * @author Anna Jungwirth
 *
 */
public class CardReaderTransactions implements Serializable {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1999249458704313372L;

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(CardReaderTransactions.class);

	/** The Constant JSON_PARAM_RETURN_CARD_DATA. */
	private static final String JSON_PARAM_RETURN_CARD_DATA = "returnCardData";

	/** The Constant JSON_PARAM_RETURN_EHIC_DATA. */
	private static final String JSON_PARAM_RETURN_EHIC_DATA = "returnEhicData";

	/** The Constant JSON_PARAM_RETURN_TOKEN. */
	private static final String JSON_PARAM_RETURN_TOKEN = "returnToken";

	/** The Constant JSON_PARAM_SIG_TYPE. */
	private static final String JSON_PARAM_SIG_TYPE = "sigType";

	/** The Constant JSON_PARAM_STATUS. */
	private static final String JSON_PARAM_STATUS = "status";

	/** The Constant JSON_PARAM_BASE_CONTACT. */
	private static final String JSON_PARAM_BASE_CONTACT = "baseContact";

	/** The Constant JSON_PARAM_CARD_DATA. */
	private static final String JSON_PARAM_CARD_DATA = "cardData";

	/** The Constant JSON_PARAM_CARD_TYPE. */
	private static final String JSON_PARAM_CARD_TYPE = "cardType";

	/** The Constant JSON_PARAM_TITLE. */
	private static final String JSON_PARAM_TITLE = "titel";

	/** The Constant JSON_PARAM_VORNAME. */
	private static final String JSON_PARAM_VORNAME = "vorname";

	/** The Constant JSON_PARAM_NACHNAME. */
	private static final String JSON_PARAM_NACHNAME = "nachname";

	/** The Constant JSON_PARAM_TITLE_HINTEN. */
	private static final String JSON_PARAM_TITLE_HINTEN = "titelHinten";

	/** The Constant JSON_PARAM_GESCHLECHT. */
	private static final String JSON_PARAM_GESCHLECHT = "geschlecht";

	/** The Constant JSON_PARAM_TOKEN. */
	private static final String JSON_PARAM_TOKEN = "token";

	/** The Constant JSON_PARAM_VALUE. */
	private static final String JSON_PARAM_VALUE = "value";

	/** The Constant JSON_PARAM_PIN. */
	private static final String JSON_PARAM_PIN = "pin";

	/** The Constant JSON_PARAM_GEBURTSDATUM. */
	private static final String JSON_PARAM_GEBURTSDATUM = "geburtsdatum";

	/** The Constant JSON_PARAM_NUMMER. */
	private static final String JSON_PARAM_NUMMER = "nummer";

	/** The Constant JSON_PARAM_TEXT. */
	private static final String JSON_PARAM_TEXT = "text";

	/** The Constant JSON_PARAM_DETAIL_CODE. */
	private static final String JSON_PARAM_DETAIL_CODE = "detailCode";

	/** The Constant JSON_VALUE_VP. */
	private static final String JSON_VALUE_VP = "vp";

	/** The Constant JSON_VALUE_SV. */
	private static final String JSON_VALUE_SV = "sv";

	/** The Constant JSON_PARAM_VPNR. */
	private static final String JSON_PARAM_VPNR = "vpnr";

	/** The Constant JSON_PARAM_SVNR. */
	private static final String JSON_PARAM_SVNR = "svnr";

	/** The Constant JSON_VALUE_FEMALE. */
	private static final String JSON_VALUE_FEMALE = "W";

	/** The Constant JSON_VALUE_MALE. */
	private static final String JSON_VALUE_MALE = "M";

	/** The Constant HEADER_FIELD_CONTENT_TYPE. */
	private static final String HEADER_FIELD_CONTENT_TYPE = "Content-Type";

	/** The Constant SVC_DATE_FORMAT. */
	private static final String SVC_DATE_FORMAT = "dd.MM.yyyy";

	/** The Constant DEBUG_MESSAGE_SENDING_REQUEST. */
	private static final String DEBUG_MESSAGE_SENDING_REQUEST = "send request {} to {}";

	/** The Constant DEBUG_MESSAGE_ERROR. */
	private static final String DEBUG_MESSAGE_ERROR = "Something went wrong: {}";

	/** The target endpoint for GINO. */
	private String targetEndpointGino = "";

	/** The target endpoint status. */
	private String targetEndpointStatus = "%s/%s/status";

	/** The instance. */
	private static CardReaderTransactions instance;

	/**
	 * Constructor.
	 *
	 * @param ginoEndpoint endpoint for card readers (GINO)
	 */
	private CardReaderTransactions(String ginoEndpoint) {
		if (instance != null) {
			throw new RuntimeException(
					"Use getInstance() method to get the single instance of card reader transactions");
		}

		targetEndpointGino = ginoEndpoint;
	}

	/**
	 * This method creates an instance of {@link CardReaderTransactions}, if no
	 * instance was previously created.
	 *
	 * @param ginoEndpoint endpoint for card readers (GINO)
	 * @return instance of {@link CardReaderTransactions}
	 * @throws ExceptionInInitializerError the exception in initializer error
	 */
	public static synchronized CardReaderTransactions getInstance(String ginoEndpoint)
			throws ExceptionInInitializerError {
		if (instance == null) {
			if (ginoEndpoint == null) {
				throw new ExceptionInInitializerError("ginoEndpoint is not set. Cannot create instance");
			}

			instance = new CardReaderTransactions(ginoEndpoint);
		}

		return instance;
	}

	/**
	 * This method requests all available card readers of GINA.
	 *
	 * @return an array of {@link CardReader} if request was successful, otherwise
	 *         {@link Message} with received error details
	 */
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

	/**
	 * This method requests signature token of A-Card.
	 *
	 * @param cardReaderId ID of card reader where needed card is inserted
	 * @param vpnr         contract partner number of A-Card
	 * @param password     PIN for authenticate with A-card
	 * @return signature token if request was successful, otherwise {@link Message}
	 *         with received error details
	 */
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

	/**
	 * This method extracts error details of received {@link JSONObject} in
	 * following format:
	 *
	 * <pre>
	 * {@code
	 *     "code": "3",
	 *     "detailCode": "CA-03002",
	 *     "text": "Der Wert der eingegebenen Identifikationsnummer (PIN) ist ungültig."
	 * }
	 * </pre>
	 *
	 * @param jo            received JSON
	 * @param requestStatus HTTP request status
	 *
	 * @return {@link Message} with extracted details and passed request status
	 */
	public Message getErrorMessageFromJson(JSONObject jo, int requestStatus) {
		Message message = new Message(jo.getString(JSON_PARAM_TEXT), MessageTypes.ERROR, requestStatus);
		message.setOriginalErrorCode(jo.getString(JSON_PARAM_DETAIL_CODE));
		return message;
	}

	/**
	 * This method requests signature token of e-Card.
	 *
	 * @param cardReaderId ID of card reader
	 * @param ssno         social security number of patient whose e-Card is
	 *                     inserted into selected card reader
	 * @param vpnr         contract partner number of Admin-Card
	 * @return signature token if request was successful, otherwise {@link Message}
	 *         with received error details
	 */
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

	/**
	 * This method sends POST request to card reader:
	 *
	 * <li>Used endpoint: {GINA-address}/{GINO-endpoint}/{card reader
	 * ID}/status</li>.
	 *
	 * @param json         JSON to send
	 * @param cardReaderId selected ID of card reader
	 * @return received {@link HttpResponse} as string
	 * @throws UnirestException the unirest exception
	 */
	private HttpResponse<String> sendPostToCardReader(String json, String cardReaderId) throws UnirestException {
		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug(DEBUG_MESSAGE_SENDING_REQUEST, json,
					String.format(targetEndpointStatus, targetEndpointGino, cardReaderId));
		}
		return Unirest.post(String.format(targetEndpointStatus, targetEndpointGino, cardReaderId))
				.header(HEADER_FIELD_CONTENT_TYPE, HttpConstants.MEDIA_TYPE_APPLICATION_JSON).body(json).asString();
	}

	/**
	 * This method extracts the received response of GINO status query.
	 *
	 * @param response      received answer
	 * @param expectedClass expected type of answer, {@link Card} to retrieve card
	 *                      details and {@link String} to retrieve signature token
	 *                      of card are supported.
	 *
	 * @return an instance of the expected class if the request was successful,
	 *         otherwise {@link Message} with received error details
	 */
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

	/**
	 * This method requests card details such as number of the card or the name of
	 * card owner.
	 *
	 * @param cardReaderId ID of the card reader in which required card is inserted.
	 * @return {@link Card} if the request was successful, otherwise {@link Message}
	 *         with received error details
	 */
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

	/**
	 * This method extracts signature token of retrieved {@link JSONObject}:
	 *
	 * <pre>
	 * {@code
	 * {
	 *  "handle": "C0A8046D0000000003181119115318026",
	 *  "status": {
	 *    "baseContact": {
	 *       "registered": "e-card",
	 *       "cardData": {
	 *         "cardType": "e-card",
	 *           "nummer": "1898081154",
	 *           "cin": "12345678901234567890",
	 *           "csn": "4",
	 *           "titel": "Dr.",
	 *           "titelLatin1": "Dr.",
	 *           "vorname": "Max",
	 *           "vornameLatin1": "Max",
	 *           "nachname": "Mustermann",
	 *           "nachnameLatin1": "Mustermann",
	 *           "titelHinten": "MA",
	 *           "titelHintenLatin1": "MA",
	 *           "geburtsdatum": "20.12.1980",
	 *           "geschlecht": "M",
	 *           "ekvk": {
	 *             "traegerName": "WGKK",
	 *             "traegerNummer": "1100",
	 *             "verfallsdatum": "20200630120000Z"
	 *           }
	 *        },
	 *        "token": {
	 *           "value": "X.Y.Z",
	 *           "svnr": "1898081154",
	 *           "vpnr": "424242"
	 *        },
	 *        "sig": "c2lnbmF0dXJl"
	 *     }
	 *   }
	 * }
	 * }
	 * </pre>
	 *
	 * @param jo retrieved JSON
	 *
	 * @return extracted signature token of passed {@link JSONObject}
	 */
	private String getCardTokenFromJson(JSONObject jo) {
		JSONObject joStatus = jo.getJSONObject(JSON_PARAM_STATUS);
		JSONObject joBaseContact = joStatus.getJSONObject(JSON_PARAM_BASE_CONTACT);
		JSONObject joToken = joBaseContact.getJSONObject(JSON_PARAM_TOKEN);

		return joToken.getString(JSON_PARAM_VALUE);
	}

	/**
	 * This method extracts signature token of retrieved {@link JSONObject}:
	 *
	 * <pre>
	 * {@code
	 * {
	 *  "handle": "C0A8046D0000000003181119115318026",
	 *  "status": {
	 *    "baseContact": {
	 *       "registered": "e-card",
	 *       "cardData": {
	 *         "cardType": "e-card",
	 *           "nummer": "1898081154",
	 *           "cin": "12345678901234567890",
	 *           "csn": "4",
	 *           "titel": "Dr.",
	 *           "titelLatin1": "Dr.",
	 *           "vorname": "Max",
	 *           "vornameLatin1": "Max",
	 *           "nachname": "Mustermann",
	 *           "nachnameLatin1": "Mustermann",
	 *           "titelHinten": "MA",
	 *           "titelHintenLatin1": "MA",
	 *           "geburtsdatum": "20.12.1980",
	 *           "geschlecht": "M",
	 *           "ekvk": {
	 *             "traegerName": "WGKK",
	 *             "traegerNummer": "1100",
	 *             "verfallsdatum": "20200630120000Z"
	 *           }
	 *        },
	 *        "token": {
	 *           "value": "X.Y.Z",
	 *           "svnr": "1898081154",
	 *           "vpnr": "424242"
	 *        },
	 *        "sig": "c2lnbmF0dXJl"
	 *     }
	 *   }
	 * }
	 * }
	 * </pre>
	 *
	 * @param jo retrieved JSON
	 *
	 * @return extracted {@link Card} of received {@link JSONObject}
	 */
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

	/**
	 * This method adds parameters to passed {@link JSONObject} to request signature
	 * token for an e-Card.
	 *
	 * @param jo   JSON to put parameters
	 * @param vpnr contract partner number
	 */
	private void buildJsonForSVSignatureECard(JSONObject jo, String vpnr) {
		jo.put(JSON_PARAM_VPNR, vpnr);
		jo.put(JSON_PARAM_SIG_TYPE, JSON_VALUE_SV);
		jo.put(JSON_PARAM_RETURN_CARD_DATA, true);
		jo.put(JSON_PARAM_RETURN_EHIC_DATA, true);
		jo.put(JSON_PARAM_RETURN_TOKEN, true);
	}

	/**
	 * This method adds parameters to passed {@link JSONObject} to request a
	 * signature token with Admin-Card for patients who have forgotten their e-Card.
	 *
	 * @param jo   JSON to put parameters
	 * @param ssno social security number of patient
	 */
	private void buildJsonForSVSignatureOCardSvnr(JSONObject jo, String ssno) {
		if (ssno != null && !ssno.isEmpty()) {
			jo.put(JSON_PARAM_SVNR, ssno);
		}

		jo.put(JSON_PARAM_SIG_TYPE, JSON_VALUE_SV);
		jo.put(JSON_PARAM_RETURN_CARD_DATA, true);
		jo.put(JSON_PARAM_RETURN_EHIC_DATA, true);
		jo.put(JSON_PARAM_RETURN_TOKEN, true);
	}

	/**
	 * This method adds parameters to passed {@link JSONObject} to request a
	 * signature token of Admin-Card for registration.
	 *
	 * @param jo  JSON to put parameters
	 * @param pin of GINA to authenticate with A-Card
	 */
	private void buildJsonForVPSignatureOCardSvnr(JSONObject jo, String pin) {
		jo.put(JSON_PARAM_SIG_TYPE, JSON_VALUE_VP);
		jo.put(JSON_PARAM_PIN, pin);
		jo.put(JSON_PARAM_RETURN_CARD_DATA, true);
		jo.put(JSON_PARAM_RETURN_EHIC_DATA, true);
		jo.put(JSON_PARAM_RETURN_TOKEN, true);
	}

	/**
	 * This method adds parameters to passed {@link JSONObject} to request card
	 * data.
	 *
	 * @param jo JSON to put parameters
	 */
	private void buildJsonForCardData(JSONObject jo) {
		jo.put(JSON_PARAM_RETURN_CARD_DATA, true);
	}

}
