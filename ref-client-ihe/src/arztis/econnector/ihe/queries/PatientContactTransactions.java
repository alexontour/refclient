package arztis.econnector.ihe.queries;

import java.nio.charset.StandardCharsets;
import java.time.Instant;

import javax.servlet.http.HttpServletResponse;

import org.apache.axis2.AxisFault;
import org.apache.axis2.util.XMLUtils;
import org.apache.xmlbeans.XmlException;
import org.hl7.fhir.r4.model.Identifier;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.common.model.Message;
import arztis.econnector.common.model.MessageTypes;
import arztis.econnector.common.utilities.MessageUtil;
import arztis.econnector.common.utilities.SoapUtil;
import arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType;
import arztis.econnector.ihe.generatedClasses.kbs.KBSServiceStub;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGARequestTypeEnum;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument;
import arztis.econnector.ihe.queries.common.QueryPartFactory;
import arztis.econnector.ihe.utilities.AssertionTypeUtil;
import arztis.econnector.ihe.utilities.IheConstants;
import arztis.econnector.ihe.utilities.IheServiceStubPool;
import arztis.econnector.ihe.utilities.UnauthorizedException;

/**
 * This class contains all functionalities to </br>
 *
 * <li>confirm patient contact at ELGA KBS with e-Card and without e-Card</li>
 *
 * </br>
 * Contact confirmations are a proof of a treatment contact between a health
 * care provider and a patient.
 *
 * @author Anna Jungwirth
 *
 */
public class PatientContactTransactions {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(PatientContactTransactions.class.getName());
	
	/** The Constant CLAIMS_TR_DATE. */
	private static final String CLAIMS_TR_DATE = "urn:tiani-spirit:bes:2013:claims:tr-date";
	
	/** The Constant CLAIMS_TR_TYPE. */
	private static final String CLAIMS_TR_TYPE = "urn:tiani-spirit:bes:2013:claims:tr-type";
	
	/** The Constant CLAIMS_IDENT_METHOD. */
	private static final String CLAIMS_IDENT_METHOD = "urn:tiani-spirit:bes:2013:claims:ident-method";
	
	/** The Constant KEY_MESSAGE_CHECK_CARD_READER. */
	private static final String KEY_MESSAGE_CHECK_CARD_READER = "CHECK_CARD_READER";

	/**
	 * Instantiates a new patient contact transactions.
	 */
	private PatientContactTransactions() {
		throw new IllegalStateException("Transactions class");
	}

	/**
	 * This method initiates confirmation of patient contact. Therefore
	 * HCP-Assertion has to be in Security Header. This method distinguishes how
	 * patient contact should be confirmed. There are two possible options with
	 * e-Card and without e-Card. If the confirmation of patient contact is
	 * performed with e-Card, an identity assertion of the patient must be included
	 * in SOAP body. Otherwise, the patient's bPK must be transmitted.
	 *
	 * @param hcpAssertion  assertion that authenticate health care provider who
	 *                      confirm patient contact
	 * @param samlTicket    identity assertion of patient
	 * @param cardToken     card token of used e-Card
	 * @param patientId     ID of patient (bPk or social security number)
	 * @param kindOfRequest kind of requests (VO, eMedication, eImmunization,
	 *                      electronic records)
	 * @return true if the contact could be registered and false if contact could
	 *         not be registered. If error was thrown {@link Message} with error
	 *         details is returned.
	 * @throws UnauthorizedException the unauthorized exception
	 */
	public static Object registerConfirmationContact(AssertionType hcpAssertion, String samlTicket, String cardToken,
			Identifier patientId, int kindOfRequest) throws UnauthorizedException {

		LOGGER.debug("Saml ticket: {}", samlTicket);

		if (hcpAssertion == null) {
			throw new UnauthorizedException("No HCP Assertion found!");
		}

		if (samlTicket == null || samlTicket.isEmpty()) {
			LOGGER.debug("register confirmation without eCard");
			return registerConfirmationContactWithoutEcard(hcpAssertion, patientId, kindOfRequest);
		} else {
			LOGGER.debug("register confirmation with eCard");
			return registerConfirmationContactWithECard(hcpAssertion, samlTicket, cardToken, patientId, kindOfRequest);
		}
	}

	/**
	 * This method initiates confirmation of patient contact with an e-Card in ELGA.
	 * Therefore HCP-Assertion has to be in Security Header and additionally there
	 * have to be a identity assertion of patient in SOAP body.
	 *
	 * @param hcpAssertion  assertion that authenticate health care provider who
	 *                      confirm patient contact
	 * @param samlTicket    identity assertion of patient
	 * @param cardToken     card token of used e-Card
	 * @param patientId     ID of patient (bPk or social security number)
	 * @param kindOfRequest kind of requests (VO, eMedication, eImmunization,
	 *                      electronic records)
	 *
	 * @return true if the contact could be registered and false if contact could
	 *         not be registered. If error was thrown {@link Message} with error
	 *         details is returned.
	 */
	private static Object registerConfirmationContactWithECard(AssertionType hcpAssertion, String samlTicket,
			String cardToken, Identifier patientId, int kindOfRequest) {
		try {
			String typeOfIdentification = "PIM101";

			if (cardToken == null || cardToken.isEmpty()) {
				typeOfIdentification = "PIM104";
			}

			KBSServiceStub kbsService = null;

			if (kindOfRequest == IheConstants.KIND_OF_REQUEST_IMMUNIZATION_RECORD) {
				kbsService = IheServiceStubPool.getInstance()
						.getKbsEhealthPlusEImmunizationService(QueryPartFactory.WS_TRUST_200512_RST_ISSUE);
			} else if (kindOfRequest == IheConstants.KIND_OF_REQUEST_VOS) {
				kbsService = IheServiceStubPool.getInstance()
						.getKbsEhealthPlus(QueryPartFactory.WS_TRUST_200512_RST_ISSUE);
			} else {
				kbsService = IheServiceStubPool.getInstance().getKbsService(QueryPartFactory.WS_TRUST_200512_RST_ISSUE);
			}

			RequestSecurityTokenResponseCollectionDocument requestSecurityTokenResponseCollDoc = kbsService
					.issueKBeCard(buildRegisterKbsRequest(ELGAETSTokenTypeType.URN_ELGA_KBS_CONTACT_ECARD, "K102",
							typeOfIdentification, AssertionTypeUtil.getOrganizationIdOfHcpAssertion(hcpAssertion),
							patientId, AssertionTypeUtil.getTimeOfPatientContactOfAssertion(samlTicket), samlTicket),
							QueryPartFactory.buildSecurityHeader(hcpAssertion));

			if (requestSecurityTokenResponseCollDoc.getRequestSecurityTokenResponseCollection()
					.getRequestSecurityTokenResponseArray().length == 0) {
				return requestSecurityTokenResponseCollDoc.getDomNode();
			} else {
				return true;
			}
		} catch (AxisFault af) {
			String returnMessage = SoapUtil.extractErrorMessageOfAxisFault(af);
			LOGGER.error("Something was going wrong: {}", returnMessage, af);

			return new Message(
					returnMessage.isEmpty() ? MessageUtil.getMessageFromProperties(KEY_MESSAGE_CHECK_CARD_READER)
							: returnMessage,
					MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (Exception ex) {
			return new Message(MessageUtil.getMessageFromProperties(KEY_MESSAGE_CHECK_CARD_READER), MessageTypes.ERROR,
					HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} finally {
			cleanupKbsServices(QueryPartFactory.WS_TRUST_200512_RST_ISSUE, kindOfRequest);
		}
	}

	/**
	 * This method initiates confirmation of patient contact without an e-Card in
	 * ELGA. Therefore HCP-Assertion has to be in Security Header and bPK of patient
	 * have to be passed in SOAP message.
	 *
	 * @param hcpAssertion  assertion that authenticate health care provider who
	 *                      confirm patient contact
	 * @param bPkId         bPK ("bereichsspezifisches Kennzeichen") of patient
	 * @param kindOfRequest kind of requests (VO, eMedication, eImmunization,
	 *                      electronic records)
	 *
	 * @return true if contact could be registered and false if contact could not be
	 *         registered. If error was thrown {@link Message} with error details is
	 *         returned.
	 */
	private static Object registerConfirmationContactWithoutEcard(AssertionType hcpAssertion, Identifier bPkId,
			int kindOfRequest) {
		try {
			String timeOfPatientContact = Instant.now().toString();
			String typeOfIdentification = "PIM103";

			KBSServiceStub kbsService = null;

			if (kindOfRequest == IheConstants.KIND_OF_REQUEST_IMMUNIZATION_RECORD) {
				kbsService = IheServiceStubPool.getInstance()
						.getKbsEhealthPlusEImmunizationService(QueryPartFactory.WS_TRUST_200512_RST_ISSUE);
			} else if (kindOfRequest == IheConstants.KIND_OF_REQUEST_VOS) {
				kbsService = IheServiceStubPool.getInstance()
						.getKbsEhealthPlus(QueryPartFactory.WS_TRUST_200512_RST_ISSUE);
			} else {
				kbsService = IheServiceStubPool.getInstance().getKbsService(QueryPartFactory.WS_TRUST_200512_RST_ISSUE);
			}

			RequestSecurityTokenResponseCollectionDocument requestSecurityTokenResponseCollDoc = kbsService
					.issueKB(buildRegisterKbsRequest(ELGAETSTokenTypeType.URN_ELGA_KBS_CONTACT, "K102",
							typeOfIdentification, AssertionTypeUtil.getOrganizationIdOfHcpAssertion(hcpAssertion),
							bPkId, timeOfPatientContact, null), QueryPartFactory.buildSecurityHeader(hcpAssertion));

			if (requestSecurityTokenResponseCollDoc.getRequestSecurityTokenResponseCollection()
					.getRequestSecurityTokenResponseArray().length == 0) {
				return requestSecurityTokenResponseCollDoc.getDomNode();
			} else {
				return true;
			}
		} catch (AxisFault af) {
			LOGGER.error(af.getMessage(), af);
			return new Message(af.getMessage(), MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					af.getMessage());
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
			return new Message(e.getMessage(), MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					e.getMessage());
		} finally {
			cleanupKbsServices(QueryPartFactory.WS_TRUST_200512_RST_ISSUE, kindOfRequest);
		}
	}

	/**
	 * builds request security token element in following structure:
	 * 
	 * <pre>
	 * {@code
	 *    <RequestSecurityToken xmlns=
	 * 	"http://docs.oasis-open.org/ws-sx/ws-trust/200512">
	 *      <TokenType>urn:elga:kbs:contact</TokenType>
	 *      <RequestType>http://docs.oasis-open.org/ws-sx/ws-trust/200512/Issue</RequestType>
	 *      <Claims Dialect="urn:tiani-spirit:bes:2013:claims">
	 *         <ClaimType DataType="http://www.w3.org/2001/XMLSchema#anyURI" name=
	 * 	"urn:tiani-spirit:bes:2013:claims:tr-type" xmlns="urn:tiani-spirit:ts">
	 *           <ClaimValue>K102</ClaimValue>
	 *         </ClaimType>
	 *         <ClaimType DataType="http://www.w3.org/2001/XMLSchema#anyURI" name=
	 * 	"urn:tiani-spirit:bes:2013:claims:ident-method" xmlns="urn:tiani-spirit:ts">
	 *           <ClaimValue>PIM101</ClaimValue>
	 *         </ClaimType>
	 *         <ClaimType DataType="http://www.w3.org/2001/XMLSchema#anyURI" name=
	 * 	"urn:oasis:names:tc:xspa:1.0:subject:organization-id" xmlns=
	 * 	"urn:tiani-spirit:ts">
	 *           <ClaimValue>1.2.40.0.34.3.1.1000</ClaimValue>
	 *         </ClaimType>
	 *         <ClaimType DataType="http://www.w3.org/2001/XMLSchema#string" name=
	 * 	"urn:oasis:names:tc:xacml:1.0:resource:resource-id" xmlns="urn:tiani-spirit:ts">
	 *           <ClaimValue>GH:J1fL3/IBEUR9djmQQJDXYNGF8hc=^^^&amp;1.2.40.0.10.2.1.1.149&amp;ISO</ClaimValue>
	 *         </ClaimType>
	 *         <ClaimType DataType="http://www.w3.org/2001/XMLSchema#dateTime" name=
	 * 	"urn:tiani-spirit:bes:2013:claims:tr-date" xmlns="urn:tiani-spirit:ts">
	 *           <ClaimValue>2015-03-18T09:23:21.575Z</ClaimValue>
	 *         </ClaimType>
	 *       </Claims>
	 *     </RequestSecurityToken>
	 * }
	 * </pre>
	 *
	 * @param tokenType the token type
	 * @param typeOfContact        type of contact. Current values can be looked up
	 *                             under <a
	 *                             href="https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=CodeSystem&loadName=ELGA_Patienten-Identifizierungsmethoden_3.0</a>
	 * @param typeOfIdentification identification method. Current values can be
	 *                             looked up under <a href=
	 *                             "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=CodeSystem&loadName=ELGA_Kontakttypen_3.0">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=CodeSystem&loadName=ELGA_Kontakttypen_3.0</a>.
	 * @param organizationId       OID of health care provider
	 * @param patientId            ID of patient
	 * @param timeOfPatientContact time of patient contact
	 * @param samlTicket           identity assertion of patient
	 * @return created {@link RequestSecurityTokenDocument}
	 * @throws XmlException the xml exception
	 */
	private static RequestSecurityTokenDocument buildRegisterKbsRequest(ELGAETSTokenTypeType.Enum tokenType,
			String typeOfContact, String typeOfIdentification, String organizationId, Identifier patientId,
			String timeOfPatientContact, String samlTicket) throws XmlException {

		String claimValue = "";

		if (patientId != null) {
			claimValue = patientId.getValue() + "^^^& " + patientId.getSystem() + "&ISO";
		}
		RequestSecurityTokenDocument reqSecToken = null;

		if (samlTicket != null) {
			reqSecToken = QueryPartFactory.generateRequestSecurityTokenDocument(tokenType,
					ELGARequestTypeEnum.HTTP_DOCS_OASIS_OPEN_ORG_WS_SX_WS_TRUST_200512_ISSUE,
					QueryPartFactory.CLAIMS_DIALECT_2013,
					QueryPartFactory.generateClaimValue(QueryPartFactory.XMLSCHEMA_ANY_URI, CLAIMS_TR_TYPE,
							typeOfContact),
					QueryPartFactory.generateClaimValue(QueryPartFactory.XMLSCHEMA_ANY_URI, CLAIMS_IDENT_METHOD,
							typeOfIdentification),
					QueryPartFactory.generateClaimValue(QueryPartFactory.XMLSCHEMA_ANY_URI,
							QueryPartFactory.SUBJECT_ORGANIZATION_ID, organizationId),
					QueryPartFactory.generateClaimValue(QueryPartFactory.XMLSCHEMA_STRING,
							QueryPartFactory.RESOURCE_RESOURCE_ID, claimValue),
					QueryPartFactory.generateClaimValue("http://www.w3.org/2001/XMLSchema#dateTime", CLAIMS_TR_DATE,
							timeOfPatientContact),
					QueryPartFactory.generateClaimValue("http://www.w3.org/2001/XMLSchema#base64Binary",
							"urn:tiani-spirit:bes:2013:claims:ecardkb",
							XMLUtils.base64encode(samlTicket.getBytes(StandardCharsets.UTF_8))));
		} else {
			reqSecToken = QueryPartFactory.generateRequestSecurityTokenDocument(tokenType,
					ELGARequestTypeEnum.HTTP_DOCS_OASIS_OPEN_ORG_WS_SX_WS_TRUST_200512_ISSUE,
					QueryPartFactory.CLAIMS_DIALECT_2013,
					QueryPartFactory.generateClaimValue(QueryPartFactory.XMLSCHEMA_ANY_URI, CLAIMS_TR_TYPE,
							typeOfContact),
					QueryPartFactory.generateClaimValue(QueryPartFactory.XMLSCHEMA_ANY_URI, CLAIMS_IDENT_METHOD,
							typeOfIdentification),
					QueryPartFactory.generateClaimValue(QueryPartFactory.XMLSCHEMA_ANY_URI,
							QueryPartFactory.SUBJECT_ORGANIZATION_ID, organizationId),
					QueryPartFactory.generateClaimValue(QueryPartFactory.XMLSCHEMA_STRING,
							QueryPartFactory.RESOURCE_RESOURCE_ID, claimValue),
					QueryPartFactory.generateClaimValue("http://www.w3.org/2001/XMLSchema#dateTime", CLAIMS_TR_DATE,
							timeOfPatientContact));
		}

		return reqSecToken;
	}

	/**
	 * clean up KBS service client with passed action. And instantiates new KBS
	 * service client.
	 *
	 * @param action        of KBS service to clean
	 * @param kindOfRequest kind of requests (VO, eMedication, eImmunization,
	 *                      electronic records)
	 */
	public static void cleanupKbsServices(String action, int kindOfRequest) {
		if (kindOfRequest == IheConstants.KIND_OF_REQUEST_IMMUNIZATION_RECORD) {
			try {
				IheServiceStubPool.getInstance().getKbsEhealthPlusEImmunizationService(action)._getServiceClient()
						.cleanupTransport();
				IheServiceStubPool.getInstance().getKbsEhealthPlusEImmunizationService(action)._getServiceClient()
						.cleanup();
				IheServiceStubPool.getInstance().instantiateKbsEhealthPlusEImmunizationService();
			} catch (Exception e) {
				LOGGER.error(e.getMessage(), e);
			}
		} else {
			try {
				IheServiceStubPool.getInstance().getKbsService(action)._getServiceClient().cleanupTransport();
				IheServiceStubPool.getInstance().getKbsService(action)._getServiceClient().cleanup();
				IheServiceStubPool.getInstance().instantiateKbsService();
			} catch (Exception e) {
				LOGGER.error(e.getMessage(), e);

			}
		}
	}

}
