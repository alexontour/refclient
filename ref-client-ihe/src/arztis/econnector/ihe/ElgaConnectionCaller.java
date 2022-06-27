/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.ihe;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.rmi.RemoteException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.JAXBException;
import javax.xml.parsers.ParserConfigurationException;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.RegExUtils;
import org.apache.xmlbeans.XmlException;
import org.hl7.fhir.dstu3.model.Bundle;
import org.hl7.fhir.r4.model.Address;
import org.hl7.fhir.r4.model.Identifier;
import org.hl7.fhir.r4.model.codesystems.OperationOutcome;
import org.husky.cda.elga.generated.artdecor.EimpfDocumentUpdateImmunisierungsstatus;
import org.husky.cda.elga.generated.artdecor.base.Laborbefund;
import org.husky.cda.elga.generated.artdecor.emed.Cdarezept;
import org.husky.cda.elga.generated.artdecor.ps.ElgapatientConsultationSummary;
import org.husky.cda.elga.xml.CdaDocumentMarshaller;
import org.husky.cda.elga.xml.CdaDocumentUnmarshaller;
import org.husky.common.at.PatientAt;
import org.husky.common.at.enums.ClassCode;
import org.husky.common.at.enums.FormatCode;
import org.husky.common.at.enums.TypeCode;
import org.husky.common.hl7cdar2.POCDMT000040ClinicalDocument;
import org.husky.common.model.Code;
import org.husky.common.model.Identificator;
import org.husky.communication.xd.storedquery.FindDocumentsQuery;
import org.husky.fhir.structures.gen.FhirPatient;
import org.husky.xua.core.SecurityHeaderElement;
import org.husky.xua.exceptions.DeserializeException;
import org.json.JSONException;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.AvailabilityStatus;
import org.openehealth.ipf.commons.ihe.xds.core.responses.QueryResponse;
import org.openehealth.ipf.commons.ihe.xds.core.responses.Response;
import org.openehealth.ipf.commons.ihe.xds.core.responses.RetrievedDocumentSet;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.xml.sax.SAXException;

import arztis.econnector.common.CardReaderTransactions;
import arztis.econnector.common.DialogCreator;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.GinaServiceStub.CardReader;
import arztis.econnector.common.model.Card;
import arztis.econnector.common.model.Message;
import arztis.econnector.common.model.MessageTypes;
import arztis.econnector.common.model.RegisterParam;
import arztis.econnector.common.utilities.MessageUtil;
import arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType;
import arztis.econnector.ihe.generatedClasses.gdaiws.GdaIndexWsStub.ListResponse;
import arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage;
import arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotType1;
import arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType;
import arztis.econnector.ihe.model.ConnectionData;
import arztis.econnector.ihe.parameters.PatientContactParameter;
import arztis.econnector.ihe.parameters.RequestIdaParameter;
import arztis.econnector.ihe.queries.AssertionTransactions;
import arztis.econnector.ihe.queries.GdaSearch;
import arztis.econnector.ihe.queries.PatientContactTransactions;
import arztis.econnector.ihe.queries.PatientIndexTransactions;
import arztis.econnector.ihe.queries.PharmTransactions;
import arztis.econnector.ihe.queries.XdsTransactions;
import arztis.econnector.ihe.queries.common.ObjectIds;
import arztis.econnector.ihe.utilities.AssertionTypeUtil;
import arztis.econnector.ihe.utilities.ConfigReader;
import arztis.econnector.ihe.utilities.ElgaEHealthApplication;
import arztis.econnector.ihe.utilities.IheConstants;
import arztis.econnector.ihe.utilities.MetadataConverter;
import arztis.econnector.ihe.utilities.UnauthorizedException;

/**
 * JAVA API for ELGA reference client. This class includes all function calls
 * that are required for
 *
 * <ul>
 * <li>Reading inserted card in card reader (e-card and Admin-Card - GINA)</li>
 * <li>User registration for ELGA and GINA</li>
 * <li>Patient contact confirmation with e-Card and bPK</li>
 * <li>Retrieving documents from ELGA and their eHealth applications such as
 * electronic immunization record or virtual organizations</li>
 * <li>Posting and register documents in ELGA areas for different services such
 * as electronic immunization record or eMedication</li>
 * <li>Canceling documents in ELGA areas for different services such as
 * electronic immunization record or eMedication</li>
 * <li>Retrieving patient demographics</li>
 * <li>List and canceling patient contacts</li>
 * </ul>
 *
 * This class is built as singleton, so you have to call {@link getInstance} to
 * instantiate.
 *
 * @author Anna Jungwirth
 *
 */
public class ElgaConnectionCaller {

	/** The Constant PHARM_NAMESPACE. */
	private static final String PHARM_NAMESPACE = "urn:ihe:pharm";

	/** The Constant PHARM_MEDICATION_NAMESPACE. */
	private static final String PHARM_MEDICATION_NAMESPACE = "urn:ihe:pharm:medication";

	/** The Constant SNOMEDCT_DISPLAY_NAME_WITHOUT_WHITESPACE. */
	private static final String SNOMEDCT_DISPLAY_NAME_WITHOUT_WHITESPACE = "SNOMEDCT";

	/** The Constant SNOMEDCT_DISPLAY_NAME_WITH_WHITESPACE. */
	private static final String SNOMEDCT_DISPLAY_NAME_WITH_WHITESPACE = "SNOMED CT";

	/** The Constant CHECK_CARD_READER_MESSAGE_KEY. */
	private static final String CHECK_CARD_READER_MESSAGE_KEY = "CHECK_CARD_READER";

	/** The Constant MISSING_PARAMETER_MESSAGE_KEY. */
	private static final String MISSING_PARAMETER_MESSAGE_KEY = "MISSING_PARAMETERS";

	/** The Constant NO_HCP_ASSERTION_FOUND_LITERAL. */
	protected static final String NO_HCP_ASSERTION_FOUND_LITERAL = "No HCP Assertion found!";

	/** The Constant MISSING_PARAMETER_MESSAGE. */
	private static final Message MISSING_PARAMETER_MESSAGE = new Message(
			MessageUtil.getMessageFromProperties(MISSING_PARAMETER_MESSAGE_KEY), MessageTypes.ERROR,
			HttpServletResponse.SC_BAD_REQUEST);

	/** The Constant CONFIG. */
	private static final ConfigReader CONFIG = ConfigReader.getInstance();

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(ElgaConnectionCaller.class.getName());

	/** The assertion transactions. */
	private AssertionTransactions assertionTransactions;

	/**
	 * Instantiates a new ELGA connection caller.
	 */
	protected ElgaConnectionCaller() {
		assertionTransactions = new AssertionTransactions();
	}

	/**
	 * The Class LazyHolder.
	 */
	private static class LazyHolder {

		/** The Constant INSTANCE. */
		static final ElgaConnectionCaller INSTANCE = new ElgaConnectionCaller();
	}

	/**
	 * This method returns the instance of {@link ElgaConnectionCaller} (Singleton).
	 *
	 * @return instance
	 */
	public static ElgaConnectionCaller getInstance() {
		return LazyHolder.INSTANCE;
	}

	/**
	 * This method retrieves document list from ELGA. The method IHE ITI-18 is used
	 * in the background according to passed document type.
	 *
	 * @param patientId ID of patient for whom documents should be queried
	 * @param typeCode  type of document
	 * @param status    availability status of document. There are values like
	 *                  approved and deprecated available
	 * @param connData  Connection data of the respective user requesting the
	 *                  documents
	 * @return found metadata of documents
	 * @throws Exception
	 */
	public QueryResponse requestDocumentList(Identificator patientId, String typeCode, AvailabilityStatus status,
			ConnectionData connData) throws Exception {
		ElgaEHealthApplication eHealthApplication = getElgaEHealthApplication(typeCode);
		AssertionType assertion = getAssertion(eHealthApplication, connData, typeCode);
		XdsTransactions oXdsTransactions = new XdsTransactions(
				AssertionTypeUtil.getOrganizationIdOfHcpAssertion(assertion), assertion, eHealthApplication);
		LOGGER.debug("Method to query the metadata of the documents is called");

		return oXdsTransactions.queryDocumentList(
				new FindDocumentsQuery(patientId, status), typeCode);
	}

	/**
	 * This method retrieves a certain document from ELGA. The method IHE ITI-43 is
	 * used in the background.
	 *
	 * @param connData        Connection data of the respective user requesting the
	 *                        document
	 * @param uniqueId        the unique id
	 * @param repositoryId    the repository id
	 * @param homeCommunityId ID that identifies the community that owns the
	 *                        document
	 * @param typeCode        indicates which ELGA area should be used to retrieve
	 *                        document. There are different areas/endpoints to use
	 *                        for electronic records and virtual organizations.
	 *                        Values are available under
	 *                        https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen
	 * @return If the document was found, a list of {@link Document} is returned,
	 *         otherwise an {@link Message} with the detailed error message is
	 *         returned.
	 * @throws Exception
	 */
	public RetrievedDocumentSet retrieveDocuments(ConnectionData connData, String uniqueId, String repositoryId,
			String homeCommunityId, String typeCode)
			throws Exception {
		ElgaEHealthApplication eHealthApplication = getElgaEHealthApplication(typeCode);
		AssertionType assertion = getAssertion(eHealthApplication, connData, typeCode);
		return retrieveDocuments(assertion, uniqueId, repositoryId, homeCommunityId, typeCode, eHealthApplication);
	}

	/**
	 * This method retrieves a certain document from ELGA. The method IHE ITI-43 is
	 * used in the background.
	 *
	 * @param assertion          that authenticate health care provider who requests
	 *                           documents
	 * @param uniqueId           unique ID of document, which identifies document
	 *                           within the repository
	 * @param repositoryId       ID of repository from which document is to be
	 *                           retrieved
	 * @param homeCommunityId    ID that identifies the community that owns the
	 *                           document
	 * @param typeCode           indicates which ELGA area should be used to
	 *                           retrieve document. There are different
	 *                           areas/endpoints to use for electronic records and
	 *                           virtual organizations. Values are available under
	 *                           https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen
	 * @param eHealthApplication from which documents are requested such as
	 *                           electronic immunization record.
	 * @return {@link XDSRetrieveResponseType} with details about success or failure
	 *         of request
	 * @throws Exception
	 */
	protected RetrievedDocumentSet retrieveDocuments(AssertionType assertion, String uniqueId, String repositoryId,
			String homeCommunityId, String typeCode, ElgaEHealthApplication eHealthApplication)
			throws Exception {
		XdsTransactions oXdsTransactions = new XdsTransactions(
				AssertionTypeUtil.getOrganizationIdOfHcpAssertion(assertion), assertion, eHealthApplication);
		LOGGER.debug("Method to retrieve documents is called");
		return oXdsTransactions.retrieveDocument(uniqueId, repositoryId, homeCommunityId, typeCode);
	}

	/**
	 * This method first retrieves card token form inserted e-Card. Afterwards
	 * identity assertion is requested by the SVC with the respective card token.
	 * The identity assertion is sent to all ELGA areas, which are enabled in the
	 * configuration file.
	 *
	 * @param connData         Connection data of the respective user, who would
	 *                         like to insert the contact confirmation
	 * @param contactParameter contains details like the used card reader to
	 *                         register the contact confirmation
	 * @param ginoEndpoint     endpoint of the GINO Service, it is required if the
	 *                         patient contact should be registered with eCard
	 * @return If the contact confirmation was successfully submitted, true is
	 *         returned. Otherwise false or an error message {@link Message} is
	 *         returned.
	 * @throws UnauthorizedException the unauthorized exception
	 */
	public Object registerPatientContact(ConnectionData connData, PatientContactParameter contactParameter,
			String ginoEndpoint) throws UnauthorizedException {
		String cardToken = null;
		if (!existsBpk(contactParameter)) {
			if (contactParameter.getPatientId() == null || contactParameter.getPatientId().getValue() == null
					|| contactParameter.getPatientId().getValue().isEmpty()) {
				Identifier patientId = new Identifier();
				patientId.setSystem(IheConstants.OID_SVNR);
				patientId.setValue(getSsnoFromECardData(contactParameter.getCardReaderId(), ginoEndpoint));
				contactParameter.setPatientId(patientId);
			}

			Object resultCard = null;
			try {
				resultCard = getECardToken(connData, contactParameter.getCardReaderId(), ginoEndpoint);
			} catch (JSONException ex) {
				LOGGER.info(ex.getMessage());
			}

			if (resultCard instanceof Message) {
				return resultCard;
			} else if (resultCard instanceof String stringResult) {
				cardToken = stringResult;
			}
		}

		if (connData != null) {
			Object returnObject = null;
			String sSamlTicket = "";
			if (!existsBpk(contactParameter)) {
				LOGGER.debug("Request ecard only assertion");
				returnObject = assertionTransactions.requestEcardOnlyAssertion(cardToken,
						connData.getDialog().getDialogId(),
						getECardSubjectTicket(contactParameter.getPatientId().getValue(),
								connData.getDialog().getVertragspartnerInfos().getVpNummer()));

				if (!(returnObject instanceof String stringResult)) {
					return returnObject;
				} else {
					sSamlTicket = stringResult;
				}
			}

			Object result = null;

			if (!CONFIG.isOnlyContext()) {
				result = PatientContactTransactions.registerConfirmationContact(
						getAssertionForPatientRegistration(connData), sSamlTicket, cardToken,
						contactParameter.getPatientId(), IheConstants.KIND_OF_REQUEST_ELGA_RECORDS);
			}

			if (isKbsForAllAreasRequired(contactParameter.getEhealthApps())) {
				return registerPatientContactForAllAreas(connData, cardToken, contactParameter.getPatientId(),
						contactParameter.getEhealthApps());
			} else {
				return result;
			}
		} else {
			throw new UnauthorizedException(NO_HCP_ASSERTION_FOUND_LITERAL);
		}
	}

	/**
	 * Gets the e card subject ticket.
	 *
	 * @param ssno the ssno
	 * @param vpnr the vpnr
	 * @return the e card subject ticket
	 */
	private String getECardSubjectTicket(String ssno, String vpnr) {
		if (ssno != null && ssno.length() == 10) {
			return CONFIG.geteCardIdaTicket(ssno, vpnr);
		}

		return null;
	}

	/**
	 * Gets the assertion for patient contact confirmation.
	 *
	 * @param connData the conn data
	 *
	 * @return the assertion for patient registration
	 * @throws UnauthorizedException the unauthorized exception
	 */
	private AssertionType getAssertionForPatientRegistration(ConnectionData connData) throws UnauthorizedException {
		if (connData.getHcpAssertion() != null && !CONFIG.isOnlyContext()) {
			return connData.getHcpAssertion();
		}

		if (connData.getContextAssertions() != null && !connData.getContextAssertions().isEmpty()
				&& CONFIG.isEImmunLoginEnabled() && CONFIG.isOnlyContext()) {
			if (CONFIG.isOnlyContext()) {
				return connData.getContextAssertion(CONFIG.getEImmunizationId().getId());
			} else {
				return connData.getHcpEImmunizationContextAssertion();
			}
		}

		throw new UnauthorizedException(NO_HCP_ASSERTION_FOUND_LITERAL);
	}

	/**
	 * Checks if patient confirmation is for all areas required.
	 *
	 * @param ehealthApps the ehealth apps
	 * @return true, if patient confirmation is for all areas required
	 */
	private boolean isKbsForAllAreasRequired(List<ElgaEHealthApplication> ehealthApps) {
		return ehealthApps != null && !ehealthApps.isEmpty();
	}

	/**
	 * Gets the ssno from E card data.
	 *
	 * @param cardReaderId the card reader id
	 * @param ginoEndpoint the gino endpoint
	 * @return the ssno from E card data
	 */
	private String getSsnoFromECardData(String cardReaderId, String ginoEndpoint) {
		Object result = CardReaderTransactions.getInstance(ginoEndpoint).getCardData(cardReaderId, null);

		if (result instanceof Card card && "e-card".equalsIgnoreCase(card.getCardType())) {
			return card.getNumber();
		}

		return null;
	}

	/**
	 * Gets the e card token.
	 *
	 * @param connData     the conn data
	 * @param cardReaderId the card reader id
	 * @param ginoEndpoint the gino endpoint
	 * @return the e card token
	 */
	private Object getECardToken(ConnectionData connData, String cardReaderId, String ginoEndpoint) {
		String vpnr = "";

		if (connData != null && connData.getDialog() != null
				&& connData.getDialog().getVertragspartnerInfos() != null) {
			vpnr = connData.getDialog().getVertragspartnerInfos().getVpNummer();
		}

		LOGGER.info("VPNR to use for e-card token: {}", vpnr);

		return CardReaderTransactions.getInstance(ginoEndpoint).getCardTokenECard(cardReaderId, null, vpnr);
	}

	/**
	 * Checks if bpk exists in passed {@link PatientContactParameter}.
	 *
	 * @param contactParameter the contact parameter
	 * @return true, if bpk exists
	 */
	private boolean existsBpk(PatientContactParameter contactParameter) {
		return contactParameter.getPatientId() != null
				&& IheConstants.OID_BPK_IDENTIFICATION.equalsIgnoreCase(contactParameter.getPatientId().getSystem());
	}

	/**
	 * Register patient contact for all areas.
	 *
	 * @param connData    the connection data of user
	 * @param cardToken   the card token of e-Card
	 * @param patientId   the patient id (ssno or bpk)
	 * @param ehealthApps the ehealth apps such as VO or electronic immunization
	 *
	 * @return true if the contact could be registered and false if contact could
	 *         not be registered. If error was thrown Message with error details is
	 *         returned.
	 * @throws UnauthorizedException the unauthorized exception
	 */
	private Object registerPatientContactForAllAreas(ConnectionData connData, String cardToken, Identifier patientId,
			List<ElgaEHealthApplication> ehealthApps) throws UnauthorizedException {
		if (ehealthApps == null) {
			return null;
		}

		Object returnObject = null;
		String samlTicket = "";
		if (patientId != null && !IheConstants.OID_BPK_IDENTIFICATION.equalsIgnoreCase(patientId.getSystem())) {
			returnObject = assertionTransactions.requestEcardOnlyAssertion(cardToken,
					connData.getDialog().getDialogId(), getECardSubjectTicket(patientId.getValue(),
							connData.getDialog().getVertragspartnerInfos().getVpNummer()));
			if (!(returnObject instanceof String resultString)) {
				return returnObject;
			} else {
				samlTicket = resultString;
			}
		}

		Object result = null;
		for (ElgaEHealthApplication app : ehealthApps) {
			if (app != null && app.getId().equalsIgnoreCase("103")) {
				result = PatientContactTransactions.registerConfirmationContact(
						getAssertionForPatientRegistration(connData), samlTicket, cardToken, patientId,
						IheConstants.KIND_OF_REQUEST_IMMUNIZATION_RECORD);
			} else {
				result = PatientContactTransactions.registerConfirmationContact(connData.getHcpContextAssertion(),
						samlTicket, cardToken, patientId, IheConstants.KIND_OF_REQUEST_VOS);
			}
		}

		return result;
	}

	/**
	 * This method first retrieves the card token form the inserted Admin-Card.
	 * Afterwards the identity assertion is requested by the SVC with the respective
	 * card token. With the identity assertion an HCP assertion is requested from
	 * ELGA. If a context assertion is needed for the ELGA application like for the
	 * electronic immunization record, the context assertion will be requested with
	 * the appropriate HCP assertion. All assertions are stored in the parameter
	 * {@link connData}.
	 *
	 * @param connData          Connection data of the respective user, who would
	 *                          like to register the user
	 * @param registerUserParam contains details for the user registration
	 * @param ginoEndpoint      endpoint for GINO (card reader). It is required if
	 *                          the user wants to register with an A-Card
	 * @param applications      ELGA eHealth applications for which the user should
	 *                          be registered. Possible keys are
	 *                          <table>
	 *                          <tr>
	 *                          <td>virtual organization</td>
	 *                          <td>1</td>
	 *                          </tr>
	 *                          <tr>
	 *                          <td>electronic immunization record</td>
	 *                          <td>2</td>
	 *                          </tr>
	 *                          </table>
	 *
	 *
	 * @return If the user was registered successfully, the filled connection data
	 *         object {@link connData} is returned. If the registration failed,
	 *         false or an error message {@link Message} is returned.
	 */
	public Object registerUser(ConnectionData connData, RegisterParam registerUserParam, String ginoEndpoint,
			Map<Integer, ElgaEHealthApplication> applications) {
		String samlTicketIdentityAssertion = "";
		Object result = null;
		if (connData != null && registerUserParam != null && registerUserParam.getIdentityAssertion() != null) {
			samlTicketIdentityAssertion = registerUserParam.getIdentityAssertion();
		} else if (connData != null && registerUserParam != null && registerUserParam.getCardReaderId() != null
				&& !registerUserParam.getCardReaderId().isEmpty()) {
			result = requestIdaSvc(registerUserParam, connData, ginoEndpoint);
		} else if (registerUserParam != null) {
			result = requestIdaGdaHospital(new RequestIdaParameter(registerUserParam.getSubjectId(),
					registerUserParam.getOrganizationId(), registerUserParam.getOrganizationName()));
		}

		LOGGER.debug("Dialog succesfully created: Connection data: {}", connData);
		if (result instanceof String stringResult) {
			samlTicketIdentityAssertion = stringResult;
		} else if (result instanceof Message messageResult) {
			LOGGER.warn(messageResult.getText());
			return result;
		}

		if (registerUserParam == null || registerUserParam.getRole() == null) {
			LOGGER.warn("Es wurden nicht alle nötigen Parameter übergeben");
			return new Message("Es wurde keine Rolle angegeben", MessageTypes.ERROR,
					HttpServletResponse.SC_BAD_REQUEST);
		} else if (connData == null) {
			LOGGER.warn("Es wurden keine Parameter für die Identifikation des Users mitgegeben");
			return new Message("Es wurden keine Parameter für die Identifikation des Users mitgegeben",
					MessageTypes.ERROR, HttpServletResponse.SC_BAD_REQUEST);
		}

		return registerUserForElga(registerUserParam.getRole(), samlTicketIdentityAssertion, connData, applications);
	}

	/**
	 * Request identity assertion from with Admin-Card.
	 *
	 * @param registerUserParam the register user param
	 * @param connData          the connection data of the user
	 * @param ginoEndpoint      the GINO endpoint
	 *
	 * @return if saml ticket can be generated saml ticket is returned, otherwise
	 *         {@link Message} with error details is returned
	 */
	private Object requestIdaSvc(RegisterParam registerUserParam, ConnectionData connData, String ginoEndpoint) {
		Object dialogCreated = registerForGina(registerUserParam, connData, ginoEndpoint);

		if (dialogCreated instanceof Boolean && (boolean) dialogCreated && connData != null) {
			String ticketSubject = CONFIG.getSvcIdaTicket(connData.getDialog().getVertragspartnerInfos().getVpNummer(),
					assertionTransactions.getRealNameForUrl(registerUserParam.getPrefix(),
							registerUserParam.getSuffix(), registerUserParam.getGivenName(),
							registerUserParam.getFamilyName()));
			return assertionTransactions.requestIdentityAssertion(connData.getDialog().getDialogId(), ticketSubject);
		}

		return dialogCreated;
	}

	/**
	 * This method requests an identity assertion from the ELGA area with the give
	 * parameter {@link requestIdaParameter}.
	 *
	 * @param requestIdaParameter contains details for the IDA request
	 *
	 * @return If the request was successful, the identity assertion as xml is
	 *         returned. If the <b>requestIdaParameter</b> is null, null is
	 *         returned. If the request failed an error message {@link Message} is
	 *         returned.
	 */
	public Object requestIdaGdaHospital(RequestIdaParameter requestIdaParameter) {
		if (requestIdaParameter != null) {
			if (LOGGER.isDebugEnabled()) {
				LOGGER.debug("Request IDA for a GDA without a GINA system");
			}
			return assertionTransactions.requestIdentityAssertionGdaElgaArea(requestIdaParameter.getSubjectId(),
					requestIdaParameter.getOrganizationId(), "1.2.40.0.34", requestIdaParameter.getOrganizationName());
		}

		return null;
	}

	/**
	 * Register for gina.
	 *
	 * @param registerUserParam the register user parameter
	 * @param connData          the connection data of user
	 * @param ginoEndpoint      the GINO endpoint
	 *
	 * @return true, if registration was successful. Otherwise Message with error
	 *         details is returned.
	 */
	private Object registerForGina(RegisterParam registerUserParam, ConnectionData connData, String ginoEndpoint) {
		if (registerUserParam == null) {
			return MISSING_PARAMETER_MESSAGE;
		}

		Object resultCard;
		String cardToken = null;
		try {
			resultCard = CardReaderTransactions.getInstance(ginoEndpoint)
					.getCardTokenACard(registerUserParam.getCardReaderId(), null, registerUserParam.getPassword());

			if (resultCard instanceof Message) {
				return resultCard;
			} else if (resultCard instanceof String resultString) {
				cardToken = resultString;
			}

		} catch (Exception e) {
			LOGGER.error("Don't receive a card token form the cardReader: {}", registerUserParam.getCardReaderId());
			return new Message(
					String.format(MessageUtil.getMessageFromProperties(CHECK_CARD_READER_MESSAGE_KEY,
							registerUserParam.getCardReaderId())),
					MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		}

		DialogCreator oDialog = new DialogCreator();
		connData.setDialog(oDialog);
		return oDialog.createDialog(registerUserParam, cardToken);
	}

	/**
	 * Register user for ELGA.
	 *
	 * @param role                        the role
	 * @param samlTicketIdentityAssertion the saml ticket identity assertion
	 * @param connData                    the connection data of user
	 * @param applications                the applications such as VO or electronic
	 *                                    immunization
	 *
	 * @return {@link ConnectionData}, if registration was successful. Otherwise
	 *         Message with error details is returned.
	 */
	private Object registerUserForElga(String role, String samlTicketIdentityAssertion, ConnectionData connData,
			Map<Integer, ElgaEHealthApplication> applications) {
		if (samlTicketIdentityAssertion != null && !samlTicketIdentityAssertion.isEmpty()) {
			Object oResult = null;

			if (!CONFIG.isOnlyContext()) {
				oResult = assertionTransactions.requestHCPAssertion(role, samlTicketIdentityAssertion,
						IheConstants.KIND_OF_REQUEST_ELGA_RECORDS);
				if (oResult instanceof AssertionType) {
					connData.setHcpAssertion((AssertionType) oResult);
					LOGGER.info("HCP Assertion is added to the connection data");
				}
			}

			oResult = registerUserForEhealthApplications(role, connData, samlTicketIdentityAssertion, applications);

			if (!(oResult instanceof Boolean)) {
				return oResult;
			}

			if (oResult instanceof Message) {
				LOGGER.warn("Don't receive an Assertion");
				return oResult;
			}

			return connData;
		}

		return new Message("Es wurde keine Identity Assertion (IDA) angegeben", MessageTypes.ERROR,
				HttpServletResponse.SC_BAD_REQUEST);
	}

	/**
	 * Register user for ehealth applications.
	 *
	 * @param role                        the role of healthcare provider
	 * @param connData                    the connection data
	 * @param samlTicketIdentityAssertion the saml ticket identity assertion
	 * @param applications                the applications
	 * @return true, if registration was successful. Otherwise Message with error
	 *         details is returned.
	 */
	private Object registerUserForEhealthApplications(String role, ConnectionData connData,
			String samlTicketIdentityAssertion, Map<Integer, ElgaEHealthApplication> applications) {
		if (applications != null && !applications.isEmpty()) {
			ElgaEHealthApplication voApplication = applications.get(IheConstants.KIND_OF_REQUEST_VOS);
			if (voApplication != null && !CONFIG.isOnlyContext()) {
				Object resultPvnLogin = registerUserForEhealthApplicationVo(role, connData, samlTicketIdentityAssertion,
						voApplication);

				if (!(resultPvnLogin instanceof Boolean)) {
					return resultPvnLogin;
				}
			}

			ElgaEHealthApplication eImmunizationApplication = applications
					.get(IheConstants.KIND_OF_REQUEST_IMMUNIZATION_RECORD);
			if (eImmunizationApplication != null) {
				Object resultEImmunizationLogin = registerUserForEImmunizationRecord(role, connData,
						samlTicketIdentityAssertion, eImmunizationApplication);

				if (!(resultEImmunizationLogin instanceof Boolean)) {
					return resultEImmunizationLogin;
				}
			}
		}

		return true;
	}

	/**
	 * Register user for ehealth application virtual organizations.
	 *
	 * @param role                        the role
	 * @param connData                    the connection data
	 * @param samlTicketIdentityAssertion the saml ticket identity assertion
	 * @param application                 the application (VO)
	 *
	 * @return true, if registration was successful. Otherwise Message with error
	 *         details is returned.
	 */
	private Object registerUserForEhealthApplicationVo(String role, ConnectionData connData,
			String samlTicketIdentityAssertion, ElgaEHealthApplication application) {
		if (connData == null || application == null) {
			return null;
		}

		Object resultCxtAssert = null;
		Object contextResult = null;

		if (connData.getHcpAssertion() == null) {
			contextResult = assertionTransactions.requestHCPAssertion(role, samlTicketIdentityAssertion,
					IheConstants.KIND_OF_REQUEST_VOS);
		} else {
			contextResult = connData.getHcpAssertion();
		}

		try {
			connData.setHcpContextAssertion((AssertionType) contextResult);
			resultCxtAssert = requestContextAssertion(connData.getHcpContextAssertion(), application,
					IheConstants.KIND_OF_REQUEST_VOS, null);
			connData.putContextAssertion(application.getId(), (AssertionType) resultCxtAssert);
		} catch (ClassCastException ex) {
			LOGGER.error("login in the pvn failed: {}", ex.getMessage());
			if (!(contextResult instanceof AssertionType)) {
				return contextResult;
			} else {
				return resultCxtAssert;
			}
		}

		return true;
	}

	/**
	 * Register user for electronic immunization record.
	 *
	 * @param role                        the role
	 * @param connData                    the connection data
	 * @param samlTicketIdentityAssertion the saml ticket identity assertion
	 * @param application                 the application (electronic immunization)
	 * @return true, if registration was successful. Otherwise Message with error
	 *         details is returned.
	 */
	private Object registerUserForEImmunizationRecord(String role, ConnectionData connData,
			String samlTicketIdentityAssertion, ElgaEHealthApplication application) {
		if (connData == null || application == null) {
			return null;
		}

		Object contextResult = null;
		Object resultCxtAssert = null;
		try {

			if (!CONFIG.isOnlyContext()) {
				if (connData.getHcpAssertion() == null) {
					contextResult = assertionTransactions.requestHCPAssertion(role, samlTicketIdentityAssertion,
							IheConstants.KIND_OF_REQUEST_IMMUNIZATION_RECORD);
				} else {
					contextResult = connData.getHcpAssertion();
				}

				connData.setHcpEImmunContextAssertion((AssertionType) contextResult);
				resultCxtAssert = requestContextAssertion(connData.getHcpEImmunizationContextAssertion(), application,
						IheConstants.KIND_OF_REQUEST_IMMUNIZATION_RECORD, null);
			} else {
				AssertionType assertion = AssertionType.Factory.parse(samlTicketIdentityAssertion);
				resultCxtAssert = requestContextAssertion(assertion, application,
						IheConstants.KIND_OF_REQUEST_IMMUNIZATION_RECORD, role);
			}

			connData.putContextAssertion(application.getId(), (AssertionType) resultCxtAssert);

		} catch (ClassCastException | XmlException ex) {
			LOGGER.error("login in the ehealth application eImmunization failed: {}", ex.getMessage());
			if (!CONFIG.isOnlyContext() && !(contextResult instanceof AssertionType)) {
				return contextResult;
			} else {
				return resultCxtAssert;
			}
		}

		return true;
	}

	/**
	 * This method queries first metadata of medication list and queries afterwards
	 * medication list.
	 *
	 * @param connData  connection data of respective user, who would like to
	 *                  retrieve medication list
	 * @param patientId the patient id
	 * @param status    the status
	 * @param typeCode  type code of document to search for
	 * @return If the user was registered successfully and a medication list was
	 *         found the document is returned. If the query failed, the error
	 *         message {@link Message} why the request failed is returned.
	 * @throws Exception
	 */
	public RetrievedDocumentSet findMedicationList(ConnectionData connData, Identificator patientId,
			AvailabilityStatus status, String typeCode)
			throws Exception {

		ElgaEHealthApplication eHealthApplication = getElgaEHealthApplication(typeCode);
		AssertionType assertion = getAssertion(eHealthApplication, connData, typeCode);
		PharmTransactions oPharmTransactions = new PharmTransactions();
		RegistryObjectListType response = oPharmTransactions.findMedicationList(patientId, status, assertion, typeCode);

		List<String[]> listOfIds = extractIds(response);

		if (listOfIds.isEmpty()) {
			throw new IllegalArgumentException("No IDs for summary found");
		}

		for (String[] ids : listOfIds) {
			if (ids != null && ids.length == 3) {
				return retrieveDocuments(assertion, ids[0], ids[1], ids[2], typeCode, null);
			}
		}

		return null;
	}

	/**
	 * Gets the unique id of external identifiers.
	 *
	 * @param identifiers the identifiers
	 * @return the unique id of external identifiers
	 */
	private String getUniqueIdOfExternalIdentifiers(ExternalIdentifierType[] identifiers) {
		if (identifiers == null) {
			return "";
		}

		String uniqueId = "";
		for (ExternalIdentifierType id : identifiers) {
			if (id != null && ObjectIds.EXTERNAL_IDENTIFIER_UNIQUEID_DOCUMENT_CODE
					.equalsIgnoreCase(id.getIdentificationScheme())) {
				uniqueId = id.getValue();
			}
		}

		return uniqueId;
	}

	/**
	 * Extract repository id.
	 *
	 * @param aSlots the slots
	 * @return repository id
	 */
	private String extractRepositoryId(SlotType1[] aSlots) {
		if (aSlots == null) {
			return "";
		}

		for (SlotType1 slot : aSlots) {
			if (slot != null && "repositoryUniqueId".equalsIgnoreCase(slot.getName())) {
				return MetadataConverter.getStringFromSlot(slot);
			}
		}

		return "";
	}

	/**
	 * Extract ids such as repository id or unique id from passed
	 * {@link RegistryObjectListType}.
	 *
	 * @param registryObject the registry object
	 * @return list of ids
	 */
	private List<String[]> extractIds(RegistryObjectListType registryObject) {
		List<String[]> documentList = new ArrayList<>();

		if (registryObject == null) {
			return documentList;
		}

		ExtrinsicObjectType[] extrinsicObjectArray = registryObject.getExtrinsicObjectArray();

		if (extrinsicObjectArray != null) {
			for (ExtrinsicObjectType extrinsicObject : extrinsicObjectArray) {
				String[] array = new String[3];
				if (extrinsicObject == null) {
					break;
				}

				array[0] = getUniqueIdOfExternalIdentifiers(extrinsicObject.getExternalIdentifierArray());
				array[1] = extractRepositoryId(extrinsicObject.getSlotArray());
				array[2] = extrinsicObject.getHome();
				documentList.add(array);
			}
		}

		return documentList;
	}

	/**
	 * This method queries all prescriptions (open and closed) of a patient.
	 *
	 * @param connData  the conn data
	 * @param patientId the patient id
	 * @param status    the status
	 * @param typeCode  the type code
	 * @return If the user was registered successfully and prescriptions were found,
	 *         {@link FhirBundle} with {@link FhirDocumentReference} as resource is
	 *         returned. If the query failed, a {@link FhirBundle} with information,
	 *         why the request failed is returned.
	 * @throws UnauthorizedException the unauthorized exception
	 * @throws RemoteException       the remote exception
	 * @throws XmlException          the xml exception
	 */
	public AdhocQueryResponseDocument findPrescriptions(ConnectionData connData, Identificator patientId,
			AvailabilityStatus status, String typeCode) throws UnauthorizedException, RemoteException, XmlException {
		ElgaEHealthApplication eHealthApplication = getElgaEHealthApplication(typeCode);
		AssertionType assertion = getAssertion(eHealthApplication, connData, typeCode);
		PharmTransactions pharmTransactions = new PharmTransactions();
		return pharmTransactions.findPrescriptionsForDispenses(patientId, status, assertion, false);
	}

	/**
	 * This method queries open prescriptions of a patient.
	 *
	 * @param connData  the conn data
	 * @param patientId the patient id
	 * @param status    the status
	 * @param typeCode  the type code
	 * @return If the user was registered successfully and prescriptions were found,
	 *         {@link FhirBundle} with {@link FhirDocumentReference} as resource is
	 *         returned. If the query failed, a {@link FhirBundle} with information,
	 *         why the request failed is returned.
	 * @throws UnauthorizedException the unauthorized exception
	 * @throws RemoteException       the remote exception
	 * @throws XmlException          the xml exception
	 */
	public AdhocQueryResponseDocument findPrescriptionsForDispenses(ConnectionData connData, Identificator patientId,
			AvailabilityStatus status, String typeCode) throws UnauthorizedException, RemoteException, XmlException {
		ElgaEHealthApplication eHealthApplication = getElgaEHealthApplication(typeCode);
		AssertionType assertion = getAssertion(eHealthApplication, connData, typeCode);
		PharmTransactions pharmTransactions = new PharmTransactions();
		return pharmTransactions.findPrescriptionsForDispenses(patientId, status, assertion, true);
	}

	/**
	 * This method queries self created update immunization states of ELGA eHealth
	 * application "eImpfpass" of a patient.
	 *
	 * @param connData  the conn data
	 * @param patientId the patient id
	 * @param status    the status
	 * @param typeCode  the type code
	 * @return If the user was registered successfully and immunization states were
	 *         found, {@link FhirBundle} with {@link FhirDocumentReference} as
	 *         resource is returned. If the query failed, a {@link FhirBundle} with
	 *         information, why the request failed is returned.
	 * @throws RemoteException       the remote exception
	 * @throws XmlException          the xml exception
	 * @throws UnauthorizedException the unauthorized exception
	 */
	public AdhocQueryResponseDocument findUpdateImmunisationStates(ConnectionData connData, Identificator patientId,
			AvailabilityStatus status, String typeCode) throws RemoteException, XmlException, UnauthorizedException {
		ElgaEHealthApplication eHealthApplication = getElgaEHealthApplication(typeCode);
		AssertionType assertion = getAssertion(eHealthApplication, connData, typeCode);
		PharmTransactions pharmTransactions = new PharmTransactions();
		return pharmTransactions.findMedicationAdministrations(patientId, status, assertion,
				AssertionTypeUtil.getOrganizationIdOfHcpAssertion(assertion));
	}

	/**
	 * This method provides and registers a CDA document in the ELGA area. An ITI-41
	 * transaction is executed in the background.
	 *
	 * @param status                 the status
	 * @param typeCode               the type code
	 * @param healthCareFacilityCode the health care facility code
	 * @param practiceSettingCode    the practice setting code
	 * @param formatCode             the format code
	 * @param patientId              the patient id
	 * @param doc                    the doc
	 * @param cda                    the cda
	 * @param parentDoc              the parent doc
	 * @param connData               Connection data of the respective user
	 *                               providing the document
	 * @param oidTargetElgaArea      OID of the ELGA area in which documents should
	 *                               be stored
	 * @return a message {@link Message} whether the registration was successful or
	 *         why the request failed is returned.
	 * @throws Exception the exception
	 */
	public Response provideAndRegisterDocuments(AvailabilityStatus status, String typeCode,
			Code healthCareFacilityCode, Code practiceSettingCode, Code formatCode, Identificator patientId, byte[] doc,
			POCDMT000040ClinicalDocument cda,
			String parentDoc, ConnectionData connData, String oidTargetElgaArea) throws Exception {

		ElgaEHealthApplication eHealthApplication = getElgaEHealthApplication(typeCode);
		AssertionType assertion = getAssertion(eHealthApplication, connData, typeCode);

		String organizationId = AssertionTypeUtil.getOrganizationIdOfHcpAssertion(assertion);
		XdsTransactions oXdsTransactions = new XdsTransactions(organizationId, assertion, eHealthApplication);
		LOGGER.debug("Method to provide and register documents is called");
		return oXdsTransactions.provideAndRegisterDocuments(status, typeCode, healthCareFacilityCode,
				practiceSettingCode, formatCode, patientId, parentDoc, cda, doc, oidTargetElgaArea, organizationId,
				CONFIG.isValidateCda());
	}

	/**
	 * This method queries health service providers with the given
	 * {@link searchParam} as filter.
	 *
	 * @param family    the family
	 * @param given     the given
	 * @param maxResult the max result
	 * @param active    the active
	 * @param role      the role
	 * @param address   the address
	 * @return If the request was successful a list of {@link ListResponse} is
	 *         returned. If the query failed, the error message {@link Message} why
	 *         the request failed is returned.
	 * @throws RemoteException the remote exception
	 */
	public ListResponse[] searchGda(String family, String given, int maxResult, boolean active, String role,
			Address address) throws RemoteException {
		return GdaSearch.searchGdas(family, given, maxResult, active, role, address);
	}

	/**
	 * This method queries the demographic data of a patient. ({@link connData}).
	 *
	 * @param connData  Connection data of the respective user requesting the
	 *                  demographic data
	 * @param parameter contains the data for the query of demographic data such as
	 *                  the social security number
	 *
	 * @return If the request was successful a list of {@link PatientAt} with the
	 *         found demographic data is returned. If the query failed, the error
	 *         message {@link Message} why the request failed is returned.
	 * @throws UnauthorizedException
	 */
	public org.hl7.fhir.r4.model.Bundle queryPatientDemographics(ConnectionData connData, FhirPatient parameter)
			throws UnauthorizedException {
		if (parameter != null) {
			SecurityHeaderElement assertion = null;
			String oid = null;

			if (connData != null) {
				try {
					AssertionType assertionType = getAssertionForPatientRegistration(connData);
					assertion = AssertionTypeUtil
							.transformAssertionTypeToXUAAssertion(assertionType);
					oid = AssertionTypeUtil.getOrganizationIdOfHcpAssertion(assertionType).replace("urn:oid:", "");
				} catch (DeserializeException e) {
					LOGGER.error(e.getMessage(), e);
				}
			}

			PatientIndexTransactions patIndexTrans = new PatientIndexTransactions();
			return getPatientDemographicsResultBundle(
					patIndexTrans.queryPatientDemographics(parameter, assertion, oid));
		} else {
			LOGGER.warn("There are no parameter to query the demographics of a patient");
			return getErrorBundleEmptyPatientDemographics();
		}
	}

	/**
	 * Gets the patient demographics results as a {@link Bundle}.
	 *
	 * @param patients search result
	 * @return the created {@link Bundle}
	 */
	private org.hl7.fhir.r4.model.Bundle getPatientDemographicsResultBundle(List<FhirPatient> patients) {
		org.hl7.fhir.r4.model.Bundle bundle = new org.hl7.fhir.r4.model.Bundle();
		bundle.setType(org.hl7.fhir.r4.model.Bundle.BundleType.SEARCHSET);

		if (patients != null) {
			bundle.setTotal(patients.size());

			for (FhirPatient resultEntry : patients) {
				if (resultEntry != null) {
					org.hl7.fhir.r4.model.Bundle.BundleEntryComponent entryComponent = new org.hl7.fhir.r4.model.Bundle.BundleEntryComponent();
					org.hl7.fhir.r4.model.Bundle.BundleEntrySearchComponent searchComponent = new org.hl7.fhir.r4.model.Bundle.BundleEntrySearchComponent();
					searchComponent.setMode(org.hl7.fhir.r4.model.Bundle.SearchEntryMode.MATCH);
					entryComponent.setSearch(searchComponent);
					entryComponent.setResource(resultEntry);
					bundle.addEntry(entryComponent);
				}
			}
		}

		return bundle;
	}

	/**
	 * Gets {@link Bundle} with an error if search parameters for querying patient
	 * demographics are empty.
	 *
	 * @return the {@link Bundle} with error
	 */
	private org.hl7.fhir.r4.model.Bundle getErrorBundleEmptyPatientDemographics() {
		org.hl7.fhir.r4.model.Bundle bundle = new org.hl7.fhir.r4.model.Bundle();
		org.hl7.fhir.r4.model.Bundle.BundleEntryComponent component = new org.hl7.fhir.r4.model.Bundle.BundleEntryComponent();
		org.hl7.fhir.r4.model.Bundle.BundleEntryResponseComponent responseComponent = new org.hl7.fhir.r4.model.Bundle.BundleEntryResponseComponent();
		responseComponent.setStatus(String.valueOf(HttpServletResponse.SC_BAD_REQUEST));
		org.hl7.fhir.r4.model.OperationOutcome outcome = new org.hl7.fhir.r4.model.OperationOutcome();
		org.hl7.fhir.r4.model.OperationOutcome.OperationOutcomeIssueComponent issue = new org.hl7.fhir.r4.model.OperationOutcome.OperationOutcomeIssueComponent();
		issue.setSeverity(org.hl7.fhir.r4.model.OperationOutcome.IssueSeverity.ERROR);
		issue.setCode(org.hl7.fhir.r4.model.OperationOutcome.IssueType.NOTFOUND);

		org.hl7.fhir.r4.model.CodeableConcept details = new org.hl7.fhir.r4.model.CodeableConcept(
				new org.hl7.fhir.r4.model.Coding(OperationOutcome.MSGPARAMINVALID.getSystem(),
						OperationOutcome.MSGPARAMINVALID.getDefinition(),
						OperationOutcome.MSGPARAMINVALID.getDisplay()));
		issue.setDetails(details);

		outcome.addIssue(issue);
		responseComponent.setOutcome(outcome);
		component.setResponse(responseComponent);
		bundle.addEntry(component);
		return bundle;
	}

	/**
	 * This method cancels a document by setting the status of the document to
	 * deprecated. An ITI-57 transaction is executed in the background.
	 *
	 * @param connData          Connection data of the respective user who wants to
	 *                          cancel the document
	 * @param uniqueId          the unique id
	 * @param patientId         the patient id
	 * @param categoryCode      the category code
	 * @param authorInstitution the author institution
	 * @param oidTargetElgaArea OID of the ELGA area in which this document should
	 *                          be cancelled
	 * @return a message {@link Message} whether the cancellation was successful or
	 *         why the request failed is returned.
	 * @throws UnauthorizedException        the unauthorized exception
	 * @throws ParserConfigurationException the parser configuration exception
	 * @throws SAXException                 the SAX exception
	 * @throws IOException                  Signals that an I/O exception has
	 *                                      occurred.
	 * @throws XmlException                 the xml exception
	 * @throws AccessDeniedMessage          the access denied message
	 * @throws DeserializeException
	 */
	public RegistryResponseType cancelDocument(ConnectionData connData, String uniqueId, Identificator patientId,
			String categoryCode, String authorInstitution, String oidTargetElgaArea) throws UnauthorizedException,
			ParserConfigurationException, SAXException, IOException, XmlException, AccessDeniedMessage,
			DeserializeException {
		AssertionType assertion = null;

		if (connData == null) {
			throw new UnauthorizedException(NO_HCP_ASSERTION_FOUND_LITERAL);
		}

		ElgaEHealthApplication eHealthApplication = null;
		if (categoryCode != null) {
			if (CONFIG.isEImmunLoginEnabled()
					&& ClassCode.HISTORY_IMMUNIZATION.getCodeValue().equalsIgnoreCase(categoryCode)) {
				eHealthApplication = CONFIG.getEImmunizationId();
				assertion = connData.getContextAssertion(eHealthApplication.getId());
			} else if (CONFIG.isPvnLoginEnabled()
					&& ClassCode.PHYSICIAN_NOTE.getCodeValue().equalsIgnoreCase(categoryCode)) {
				eHealthApplication = CONFIG.getPvnId();
				assertion = connData.getContextAssertion(eHealthApplication.getId());
			} else {
				assertion = connData.getHcpAssertion();
			}
		}

		if (assertion == null) {
			throw new UnauthorizedException(NO_HCP_ASSERTION_FOUND_LITERAL);
		}

		String organizationId = AssertionTypeUtil.getOrganizationIdOfHcpAssertion(assertion);
		XdsTransactions oXdsTransactions = new XdsTransactions(organizationId, assertion, eHealthApplication);
		LOGGER.debug("Method to cancel document is called");
		return oXdsTransactions.cancelDocument(uniqueId, patientId, ClassCode.getEnum(categoryCode), organizationId,
				authorInstitution, oidTargetElgaArea);
	}

	/**
	 * Request context assertion.
	 *
	 * @param hcpAssertion       the HCP assertion
	 * @param eHealthApplication the eHealth application
	 * @param kindOfRequest      the kind of request
	 * @param role               the role
	 *
	 * @return if user registration was successful Context Assertion is returned as
	 *         {@link AssertionType} otherwise {@link Message} with error details is returned
	 */
	private Object requestContextAssertion(AssertionType hcpAssertion, ElgaEHealthApplication eHealthApplication,
			int kindOfRequest, String role) {
		return assertionTransactions.requestKontextAssertion(eHealthApplication, hcpAssertion, kindOfRequest, role);
	}

	/**
	 * This method queries all accessible card readers (SVC GINA).
	 *
	 * @return a list of {@link CardReader} if the request was successful, otherwise
	 *         an error message {@link Message} is returned.
	 */
	public Object queryAllCardReaders() {
		return CardReaderTransactions.requestAllCardReaders();
	}

	/**
	 * This method queries the data of the card that is currently inserted in the
	 * specified card reader.
	 *
	 * @param cardReaderId id of the card reader, which should be used
	 * @param ginoEndpoint endpoint of the GINO (card reader)
	 *
	 * @return if the request was successful, found data in {@link Card} is
	 *         returned, otherwise an error message {@link Message} is returned.
	 */
	public Object getCardData(String cardReaderId, String ginoEndpoint) {
		try {
			return CardReaderTransactions.getInstance(ginoEndpoint).getCardData(cardReaderId, null);
		} catch (Exception e) {
			LOGGER.error("Don't receive data form the card reader: {}", cardReaderId);
			return new Message(MessageUtil.getMessageFromProperties(CHECK_CARD_READER_MESSAGE_KEY, cardReaderId),
					MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		}
	}

	/**
	 * This method creates the xml of the CDA document for "Update
	 * Immunisierungsstatus" with the stylesheet (eimpf-stylesheet_v1.0.xsl). This
	 * document is used for the electronic immunization record (eImpfpass) in ELGA.
	 *
	 * @param updateImmunizationState an instance of
	 *                                {@link EimpfDocumentUpdateImmunisierungsstatus}
	 * @return if the xml could be generated the xml as {@link String} is returned,
	 *         otherwise an error message {@link Message} is returned.
	 */
	public String getUpdateImmunizationEntryXml(EimpfDocumentUpdateImmunisierungsstatus updateImmunizationState) {
		LOGGER.info("generate XML document from CDA of Update immunization state");
		String document = "";

		try {
			document = CdaDocumentMarshaller.marshall(updateImmunizationState, "eimpf-stylesheet_v1.0.xsl");

			if (document.indexOf(PHARM_NAMESPACE) != -1) {
				document = RegExUtils.replaceAll(document, PHARM_NAMESPACE, PHARM_MEDICATION_NAMESPACE);
			}

			if (document.indexOf(SNOMEDCT_DISPLAY_NAME_WITHOUT_WHITESPACE) != -1) {
				document = RegExUtils.replaceAll(document, SNOMEDCT_DISPLAY_NAME_WITHOUT_WHITESPACE,
						SNOMEDCT_DISPLAY_NAME_WITH_WHITESPACE);
			}

			LOGGER.debug("created update immunization CDA {}", document);

			return document;
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
		}

		return null;
	}

	/**
	 * This method generates an instance of {@link POCDMT000040ClinicalDocument} in
	 * the ehealth connector project from the XML of the CDA document. The used XML
	 * is passed by the parameter {@link document}.
	 * {@link POCDMT000040ClinicalDocument} is generated depending on the format.
	 *
	 * @param bytesDoc   bytes of the xml document (CDA document)
	 * @param formatCode format of xml document (CDA document)
	 * @return if the {@link POCDMT000040ClinicalDocument} could be generated from
	 *         the xml the instance is returned, otherwise null is returned.
	 */
	protected POCDMT000040ClinicalDocument getDetailsOfDocument(byte[] bytesDoc, String formatCode) {

		try {
			if (FormatCode.ELGA_IMMUNIZATION_RECORD_2019.getCodeValue().equalsIgnoreCase(formatCode)) {
				return getDetailsOfUpdateImmunization(bytesDoc);
			} else if (FormatCode.ELGA_LAB_REPORT_FULL_SUPPORT_2015.getCodeValue().equalsIgnoreCase(formatCode)
					|| FormatCode.ELGA_LAB_REPORT_BASIC_2013.getCodeValue().equalsIgnoreCase(formatCode)
					|| FormatCode.ELGA_LAB_REPORT_ENHANCED_2013.getCodeValue().equalsIgnoreCase(formatCode)) {
				return getDetailsOfLabReport(bytesDoc);
			} else if (FormatCode.ELGA_MEDICAL_DISCHARGE_SUMMARY_FULL_SUPPORT_V206.getCodeValue()
					.equalsIgnoreCase(formatCode)
					|| FormatCode.ELGA_MEDICAL_DISCHARGE_SUMMARY_ENHANCED_V206.getCodeValue()
							.equalsIgnoreCase(formatCode)
					|| FormatCode.ELGA_MEDICAL_DISCHARGE_SUMMARY_BASIC_V206.getCodeValue()
							.equalsIgnoreCase(formatCode)) {
				return getDetailsOfDischargeLetter(bytesDoc);
			} else if (FormatCode.ELGA_EMEDICATION_2015_V206.getCodeValue().equalsIgnoreCase(formatCode)) {
				return getDetailsOfPrescription(bytesDoc);
			} else if (FormatCode.ELGA_PHC_2017.getCodeValue().equalsIgnoreCase(formatCode)) {
				return getDetailsOfPhcConsultationSummary(bytesDoc);
			}
		} catch (IOException e) {
			LOGGER.error(e.getMessage(), e);
		}

		return null;
	}

	/**
	 * This method generates an instance of
	 * {@link EimpfDocumentUpdateImmunisierungsstatus} in the ehealth connector
	 * project from the XML of the CDA document. The used XML is passed by the
	 * parameter {@link document}
	 *
	 * @param document bytes of the xml document (CDA document)
	 * @return if the {@link EimpfDocumentUpdateImmunisierungsstatus} could be
	 *         generated from the xml the instance is returned, otherwise null is
	 *         returned.
	 * @throws IOException Signals that an I/O exception has occurred.
	 */
	public POCDMT000040ClinicalDocument getDetailsOfUpdateImmunization(byte[] document) throws IOException {
		try {
			return CdaDocumentUnmarshaller.unmarshall(new String(document));
		} catch (JAXBException | SAXException e) {
			LOGGER.error(e.getMessage(), e);
		}

		LOGGER.error("Details of update immunization state can't be extracted");
		return null;
	}

	/**
	 * This method generates an instance of {@link Laborbefund} in the ehealth
	 * connector project from the XML of the CDA document. The used XML is passed by
	 * the parameter {@link document}
	 *
	 * @param document bytes of the xml document (CDA document)
	 * @return if the {@link Laborbefund} could be generated from the xml the
	 *         instance is returned, otherwise null is returned.
	 * @throws IOException Signals that an I/O exception has occurred.
	 */
	public POCDMT000040ClinicalDocument getDetailsOfLabReport(byte[] document) throws IOException {
		try {
			return CdaDocumentUnmarshaller.unmarshall(new String(document));
		} catch (JAXBException | SAXException e) {
			LOGGER.error(e.getMessage(), e);
		}

		LOGGER.error("Details of lab report can't be extracted");
		return null;
	}

	/**
	 * This method generates an instance of {@link Cdarezept} in the ehealth
	 * connector project from the XML of the CDA document. The used XML is passed by
	 * the parameter {@link document}.
	 *
	 * @param document bytes of the xml document (CDA document)
	 * @return if the {@link Cdarezept} could be generated from the xml the instance
	 *         is returned, otherwise null is returned.
	 * @throws IOException Signals that an I/O exception has occurred.
	 */
	public POCDMT000040ClinicalDocument getDetailsOfPrescription(byte[] document) throws IOException {
		try {
			LOGGER.info("Load CDA information from passed XML document");
			return CdaDocumentUnmarshaller.unmarshall(new String(document));
		} catch (JAXBException | SAXException e) {
			LOGGER.error(e.getMessage(), e);
		}

		LOGGER.error("Details of prescription can't be extracted");
		return null;
	}

	/**
	 * Gets the details of discharge letter.
	 *
	 * @param document the document
	 * @return the details of discharge letter
	 * @throws IOException Signals that an I/O exception has occurred.
	 */
	public POCDMT000040ClinicalDocument getDetailsOfDischargeLetter(byte[] document) throws IOException {
		try {
			LOGGER.info("Load CDA information from passed XML document");

			return CdaDocumentUnmarshaller.unmarshall(new String(document));
		} catch (JAXBException | SAXException e) {
			LOGGER.error(e.getMessage(), e);
		}

		LOGGER.error("Details of discharge letter can't be extracted");
		return null;
	}

	/**
	 * This method generates an instance of {@link ElgapatientConsultationSummary}
	 * in the ehealth connector project from the XML of the CDA document. The used
	 * XML is passed by the parameter {@link document}.
	 *
	 * @param document bytes of the xml document (CDA document)
	 * @return if the {@link ElgapatientConsultationSummary} could be generated from
	 *         the xml the instance is returned, otherwise null is returned.
	 * @throws IOException Signals that an I/O exception has occurred.
	 */
	public POCDMT000040ClinicalDocument getDetailsOfPhcConsultationSummary(byte[] document) throws IOException {
		File file = new File("resources/phc_consultation_summary_example.xml");

		synchronized (file) {
			FileUtils.write(file, new String(document), StandardCharsets.UTF_8.name());
			try {
				return ElgapatientConsultationSummary.loadFromFile(file);
			} catch (JAXBException e) {
				LOGGER.error(e.getMessage(), e);
			} finally {
				java.nio.file.Files.delete(file.toPath());
			}
		}

		return null;
	}

	/**
	 * This method extracts assertion, which is needed for authentication in
	 * requests. Context or HCP assertion is extracted here. Context assertion is
	 * needed for eHealth applications like virtual organizations or electronic
	 * immunization record. Medical officers are only allowed to access documents of
	 * electronic immunization record, therefore it is possible to configure, if
	 * only context assertion can be used.
	 *
	 * @param eHealthApplication eHealth application like electronic immunization
	 *                           record or virtual organizations (PVN)
	 * @param connData           connection data of registered user
	 * @param typeCode           type of document to be written or retrieved
	 * @return assertion for authentication
	 * @throws UnauthorizedException the unauthorized exception
	 */
	protected AssertionType getAssertion(ElgaEHealthApplication eHealthApplication, ConnectionData connData,
			String typeCode) throws UnauthorizedException {
		if (connData == null) {
			throw new UnauthorizedException(NO_HCP_ASSERTION_FOUND_LITERAL);
		}

		AssertionType assertion = null;
		if (connData.getHcpAssertion() != null) {
			if (CONFIG.isPvnLoginEnabled() && TypeCode.isPhysicianNote(typeCode)) {
				assertion = connData.getContextAssertion(eHealthApplication.getId());
			} else {
				assertion = connData.getHcpAssertion();
			}
		}

		if (connData.getContextAssertions() != null && !connData.getContextAssertions().isEmpty()
				&& CONFIG.isEImmunLoginEnabled() && typeCode != null && TypeCode.isImmunizationHistory(typeCode)) {
			assertion = connData.getContextAssertion(eHealthApplication.getId());
		}

		if (assertion == null) {
			throw new UnauthorizedException(NO_HCP_ASSERTION_FOUND_LITERAL);
		}

		return assertion;
	}

	/**
	 * Gets the ELGA eHealth application.
	 *
	 * @param typeCode the type code
	 * @return the ELGA eHealth application
	 */
	protected ElgaEHealthApplication getElgaEHealthApplication(String typeCode) {
		ElgaEHealthApplication eHealthApplication = null;

		if (typeCode == null) {
			return eHealthApplication;
		}

		if (CONFIG.isEImmunLoginEnabled() && TypeCode.isImmunizationHistory(typeCode)) {
			eHealthApplication = CONFIG.getEImmunizationId();
		} else if (CONFIG.isPvnLoginEnabled() && TypeCode.isPhysicianNote(typeCode)) {
			eHealthApplication = CONFIG.getPvnId();
		}

		return eHealthApplication;
	}

	/**
	 * Delete file.
	 *
	 * @param file the file
	 */
	protected void deleteFile(File file) {
		if (file != null) {
			try {
				java.nio.file.Files.delete(file.toPath());
			} catch (IOException e) {
				LOGGER.error(e.getMessage(), e);
			}
		}
	}

}
