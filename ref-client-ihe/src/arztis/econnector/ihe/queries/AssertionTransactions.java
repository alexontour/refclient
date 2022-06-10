/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.ihe.queries;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

import javax.servlet.http.HttpServletResponse;

import org.apache.axis2.AxisFault;
import org.apache.axis2.util.XMLUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.xmlbeans.XmlObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;

import arztis.econnector.common.model.Message;
import arztis.econnector.common.model.MessageTypes;
import arztis.econnector.common.utilities.MessageUtil;
import arztis.econnector.common.utilities.SoapUtil;
import arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType;
import arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.AccessException;
import arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.DialogException;
import arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.InvalidParameterStsException;
import arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.ServiceException;
import arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsException;
import arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.RequestSamlAssertion;
import arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.RequestSamlAssertionE;
import arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.RequestSamlAssertionReq;
import arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.RequestSamlAssertionResponse;
import arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.RequestSamlAssertionResponseE;
import arztis.econnector.ihe.generatedClasses.ets.AccessDenied;
import arztis.econnector.ihe.generatedClasses.ets.ETSServiceStub;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityHeaderType;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAClaimsType;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGARequestSecurityToken;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGARequestTypeEnum;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType;
import arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType;
import arztis.econnector.ihe.queries.common.QueryPartFactory;
import arztis.econnector.ihe.utilities.ElgaEHealthApplication;
import arztis.econnector.ihe.utilities.IheConstants;
import arztis.econnector.ihe.utilities.IheServiceStubPool;

/**
 * This class contains all functionalities to request </br>
 * 
 * <li>Identity assertion of SVC and ELGA ETS</li>
 * <li>Health care provider (HCP) assertion of ELGA ETS</li>
 * <li>Context assertion for electronic immunization state and virtual
 * organization of ELGA ETS</li>
 * <li>e-Card only assertion of SVC</li>.
 *
 * @author Anna Jungwirth
 */
public class AssertionTransactions {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(AssertionTransactions.class.getName());
	
	/** The Constant WS_TRUST_200512. */
	protected static final String WS_TRUST_200512 = "http://docs.oasis-open.org/ws-sx/ws-trust/200512";
	
	/** The Constant CLAIMS_DIALECT_2019. */
	private static final String CLAIMS_DIALECT_2019 = "urn:tiani-spirit:bes:2019:claims";
	
	/** The Constant CLAIMS_TYPE_NAME_REQUESTED_AC. */
	private static final String CLAIMS_TYPE_NAME_REQUESTED_AC = "urn:tiani-spirit:bes:2019:claims:requested-ac";
	
	/** The Constant CLAIMS_TYPE_NAME_REQUESTED_ROLE. */
	private static final String CLAIMS_TYPE_NAME_REQUESTED_ROLE = "urn:tiani-spirit:bes:2013:claims:requested-role";
	
	/** The Constant CLAIMS_TYPE_NAME_REQUESTED_AC_2013. */
	private static final String CLAIMS_TYPE_NAME_REQUESTED_AC_2013 = "urn:tiani-spirit:bes:2013:claims:requested-ac";
	
	/** The Constant SUBJECT_ID. */
	private static final String SUBJECT_ID = "urn:oasis:names:tc:xacml:1.0:subject:subject-id";
	
	/** The Constant OID_ISSUING_AUTHORITY. */
	private static final String OID_ISSUING_AUTHORITY = "urn:elga:bes:2013:OIDIssuingAuthority";
	
	/** The Constant ORGANIZATION. */
	private static final String ORGANIZATION = "urn:oasis:names:tc:xspa:1.0:subject:organization";
	
	/** The Constant KEY_MESSAGE_CHECK_CARD_READER. */
	private static final String KEY_MESSAGE_CHECK_CARD_READER = "CHECK_CARD_READER";

	/**
	 * This method requests identity assertion, which confirms identity of
	 * physician, who wants to register for ELGA. This assertion is needed to
	 * request HCP Assertion.
	 *
	 * @param dialogId      id of the built GINA dialog
	 * @param ticketSubject SVC ticket URL for requesting IDA (defined in
	 *                      configuration file)
	 *
	 * @return if saml ticket can be generated saml ticket is returned, otherwise
	 *         {@link Message} with error details is returned
	 */
	public Object requestIdentityAssertion(String dialogId, String ticketSubject) {

		try {
			RequestSamlAssertionReq samlAssertionRequest = new RequestSamlAssertionReq();
			samlAssertionRequest.setTicketSubject(ticketSubject);
			RequestSamlAssertionE requestSamlAssertionE = new RequestSamlAssertionE();
			RequestSamlAssertion requestSamlAssertion = new RequestSamlAssertion();
			requestSamlAssertion.setDialogId(dialogId);
			requestSamlAssertion.setRequestSamlAssertionReq(samlAssertionRequest);
			requestSamlAssertionE.setRequestSamlAssertion(requestSamlAssertion);
			RequestSamlAssertionResponseE samlAssertionResponseE = IheServiceStubPool.getInstance().getStsService()
					.requestSamlAssertion(requestSamlAssertionE);
			RequestSamlAssertionResponse samlAssertionResponse = samlAssertionResponseE
					.getRequestSamlAssertionResponse();
			String samlTicket = samlAssertionResponse.getReturn().getSamlTicket();
			LOGGER.debug("Received saml ticket");
			return samlTicket;
		} catch (ServiceException ex) {
			LOGGER.error(ex.getFaultMessage().getServiceException().getMessage());
			return new Message(ex.getFaultMessage().getServiceException().getMessage(), MessageTypes.ERROR,
					HttpServletResponse.SC_SERVICE_UNAVAILABLE);
		} catch (AccessException ex) {
			LOGGER.error(ex.getFaultMessage().getAccessException().getMessage());
			return new Message(ex.getFaultMessage().getAccessException().getMessage(), MessageTypes.ERROR,
					HttpServletResponse.SC_FORBIDDEN);
		} catch (DialogException ex) {
			LOGGER.error(ex.getFaultMessage().getDialogException().getMessage());
			return new Message(ex.getFaultMessage().getDialogException().getMessage(), MessageTypes.ERROR,
					HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (StsException ex) {
			LOGGER.error(ex.getFaultMessage().getStsException().getMessage());
			return new Message(ex.getFaultMessage().getStsException().getMessage(), MessageTypes.ERROR,
					HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (InvalidParameterStsException ex) {
			LOGGER.error(ex.getFaultMessage().getInvalidParameterStsException().getMessage());
			return new Message(ex.getFaultMessage().getInvalidParameterStsException().getMessage(), MessageTypes.ERROR,
					HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
			return new Message(e.getMessage(), MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		}
	}

	/**
	 * formats real name of person that it is possible to pass full name with ticket
	 * subject of SVC. Real name will look like Dr.+Max+Mustermann+MSc. The
	 * separation with "+" sign is necessary to set full name to URL of ticket
	 * subject. This method is suggested in FAQ document of SVC.
	 *
	 * @param prefix of person
	 * @param suffix of person
	 * @param given  name of person
	 * @param family name of person
	 *
	 * @return formatted real name of person
	 */
	public String getRealNameForUrl(String prefix, String suffix, String given, String family) {
		StringBuilder realName = new StringBuilder();
		if (prefix != null && !prefix.isEmpty()) {
			realName.append(prefix);
			realName.append("+");
		}

		realName.append(given);
		realName.append("+");
		realName.append(family);

		if (suffix != null && !suffix.isEmpty()) {
			realName.append("+");
			realName.append(suffix);
		}

		return realName.toString();
	}

	/**
	 * This method requests identity assertion, which confirms identity of user of
	 * hospital, who wants to register for ELGA. This assertion is needed to request
	 * HCP Assertion.
	 *
	 * @param subjectId        Subject ID of health care provider, who wants to
	 *                         register
	 * @param organizationId   Organization ID (OID) of health care provider, who
	 *                         wants to register
	 * @param issuingAuthority ID of issuing authority
	 * @param organization     Organization name of health care provider, who wants
	 *                         to register.
	 *
	 * @return if saml ticket can be generated saml ticket is returned, otherwise
	 *         {@link Message} with error details is returned
	 */
	public Object requestIdentityAssertionGdaElgaArea(String subjectId, String organizationId, String issuingAuthority,
			String organization) {
		RequestSecurityTokenDocument requestSecurityToken = RequestSecurityTokenDocument.Factory.newInstance();
		ELGARequestSecurityToken elgaRequestSecurityToken = ELGARequestSecurityToken.Factory.newInstance();
		elgaRequestSecurityToken.setContext(WS_TRUST_200512);
		elgaRequestSecurityToken
				.setRequestType(ELGARequestTypeEnum.HTTP_DOCS_OASIS_OPEN_ORG_WS_SX_WS_TRUST_200512_ISSUE);
		elgaRequestSecurityToken.setTokenType(ELGAETSTokenTypeType.URN_ELGA_BES_2013_IDA_GDA_ASSERTION);

		ELGAClaimsType claims = QueryPartFactory.generateELGAClaimsType(QueryPartFactory.CLAIMS_DIALECT_2013,
				QueryPartFactory.generateClaimValue(QueryPartFactory.XMLSCHEMA_ANY_URI, SUBJECT_ID, subjectId),
				QueryPartFactory.generateClaimValue(QueryPartFactory.XMLSCHEMA_ANY_URI,
						QueryPartFactory.SUBJECT_ORGANIZATION_ID, organizationId),
				QueryPartFactory.generateClaimValue(QueryPartFactory.XMLSCHEMA_ANY_URI, OID_ISSUING_AUTHORITY,
						issuingAuthority),
				QueryPartFactory.generateClaimValue(QueryPartFactory.XMLSCHEMA_ANY_URI, ORGANIZATION, organization));

		try {
			XmlObject xmlClaims = XmlObject.Factory.parse(claims.xmlText());
			elgaRequestSecurityToken.setELGARequestSecurityTokenChoice(xmlClaims);

			requestSecurityToken.setRequestSecurityToken(elgaRequestSecurityToken);

			ETSServiceStub service = IheServiceStubPool.getInstance()
					.getIdaGdaService(QueryPartFactory.WS_TRUST_200512_RST_ISSUE);

			RequestSecurityTokenResponseCollectionDocument reqSecTokenRespCollection = service
					.issueAssertion(requestSecurityToken, null);
			RequestSecurityTokenResponseType[] reqSecTokenResp = reqSecTokenRespCollection
					.getRequestSecurityTokenResponseCollection().getRequestSecurityTokenResponseArray();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Received GDA IDA Assertion");
			}

			if (reqSecTokenResp[0].getRequestedSecurityToken().getAssertion() != null) {
				return StringUtils.replace(reqSecTokenResp[0].getRequestedSecurityToken().getAssertion().xmlText(),
						"xml-fragment", "saml2:Assertion");
			} else {
				LOGGER.error("No IDA Assertion received");
				return new Message("Es konnte keine IDA für den GDA ausgestellt werden.", MessageTypes.ERROR,
						HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
			}

		} catch (AxisFault af) {
			return getErrorMessage(af.getFaultReasonElement().getText(),
					af.getFaultCodeElement().getSubCode().getValue().getText(), af,
					HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (Exception e) {
			return getErrorMessage(e.getMessage(), e.getMessage(), e, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} finally {
			cleanupEtsServices(QueryPartFactory.WS_TRUST_200512_RST_ISSUE);
		}
	}

	/**
	 * This method requests HCP Assertion, which is needed for authentication at all
	 * other ELGA requests. This Assertion has to be in the security header of every
	 * SOAP Message to request data of ELGA.
	 *
	 * @param pRole         Role of health care provider to register (Possible
	 *                      values are available under
	 *                      https://termpub.gesundheit.gv.at
	 *                      (ELGA_GDA_Aggregatrollen))
	 * @param pSamlTicket   saml ticket, which authenticate provider of health
	 *                      service
	 * @param kindOfRequest kind of requests (VO, eMedication, eImmunization,
	 *                      electronic records)
	 *
	 * @return if user registration was successful HCP Assertion is returned as
	 *         {@link AssertionType} otherwise {@link Message} with error details is
	 *         returned
	 */
	public Object requestHCPAssertion(String pRole, String pSamlTicket, int kindOfRequest) {
		RequestSecurityTokenDocument requestSecurityToken = RequestSecurityTokenDocument.Factory.newInstance();
		ELGARequestSecurityToken elgaRequestSecurityToken = ELGARequestSecurityToken.Factory.newInstance();
		elgaRequestSecurityToken.setContext(WS_TRUST_200512);
		elgaRequestSecurityToken
				.setRequestType(ELGARequestTypeEnum.HTTP_DOCS_OASIS_OPEN_ORG_WS_SX_WS_TRUST_200512_ISSUE);
		elgaRequestSecurityToken.setTokenType(ELGAETSTokenTypeType.URN_ELGA_BES_2013_HCP_ASSERTION);

		ELGAClaimsType claims = ELGAClaimsType.Factory.newInstance();
		claims.setDialect(QueryPartFactory.CLAIMS_DIALECT_2013);
		ClaimTypeType[] claimTypeArray = new ClaimTypeType[1];
		claimTypeArray[0] = QueryPartFactory.generateClaimValue(QueryPartFactory.XMLSCHEMA_ANY_URI,
				CLAIMS_TYPE_NAME_REQUESTED_ROLE, pRole);

		claims.setClaimTypeArray(claimTypeArray);

		SecurityDocument security = SecurityDocument.Factory.newInstance();

		pSamlTicket = pSamlTicket.trim();

		try (InputStream is = new ByteArrayInputStream(pSamlTicket.getBytes("utf-8"))) {
			XmlObject xmlSecurityToken = XmlObject.Factory.parse(claims.xmlText());
			elgaRequestSecurityToken.setELGARequestSecurityTokenChoice(xmlSecurityToken);

			requestSecurityToken.setRequestSecurityToken(elgaRequestSecurityToken);

			Document doc = XMLUtils.newDocument(is);
			SecurityHeaderType securityHeaderType = SecurityHeaderType.Factory.parse(doc);

			security.setSecurity(securityHeaderType);

			ETSServiceStub service = null;
			if (kindOfRequest == IheConstants.KIND_OF_REQUEST_VOS) {
				service = IheServiceStubPool.getInstance()
						.getEtsEhealthPlusService(QueryPartFactory.WS_TRUST_200512_RST_ISSUE);
			} else if (kindOfRequest == IheConstants.KIND_OF_REQUEST_IMMUNIZATION_RECORD) {
				service = IheServiceStubPool.getInstance()
						.getEtsEhealthPlusEImmunizationService(QueryPartFactory.WS_TRUST_200512_RST_ISSUE);
			} else {
				service = IheServiceStubPool.getInstance().getEtsService(QueryPartFactory.WS_TRUST_200512_RST_ISSUE);
			}

			RequestSecurityTokenResponseCollectionDocument reqSecTokenRespCollection = service
					.issueAssertion(requestSecurityToken, security);
			RequestSecurityTokenResponseType[] reqSecTokenResp = reqSecTokenRespCollection
					.getRequestSecurityTokenResponseCollection().getRequestSecurityTokenResponseArray();

			LOGGER.info("Received HCP Assertion");

			if (reqSecTokenResp[0].getRequestedSecurityToken().getAssertion() == null) {
				return reqSecTokenResp[0].getRequestedSecurityToken().getDomNode();
			} else {
				return reqSecTokenResp[0].getRequestedSecurityToken().getAssertion();
			}

		} catch (AxisFault af) {
			LOGGER.error("{}", af.getMessage(), af);
			String errorMessage = SoapUtil.extractErrorMessageOfAxisFault(af);

			if (errorMessage != null) {
				return new Message(errorMessage, MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
						af.getMessage());
			}

			return getErrorMessage("Die HCP Assertion konnte nicht abgerufen werden",
					"Die HCP Assertion konnte nicht abgerufen werden", af,
					HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (Exception e) {
			return getErrorMessage(e.getMessage(), e.getMessage(), e, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} finally {
			cleanupEtsServices(QueryPartFactory.WS_TRUST_200512_RST_ISSUE);
		}
	}

	/**
	 * This method requests context Assertion, which is needed for authentication at
	 * ELGA eHealth applications like electronic immunization record or virtual
	 * organization. This assertion has to be in security header of every SOAP
	 * message to request data of electronic immunization record or virtual
	 * organization.
	 *
	 * @param vo            eHealth application for which authentication should be
	 *                      executed
	 * @param hcpAssertion  assertion, which authenticate health care provider
	 * @param kindOfRequest kind of requests (VO, eMedication, eImmunization,
	 *                      electronic records)
	 * @param role the role
	 * @return if user registration was successful Context Assertion is returned as
	 *         {@link AssertionType} otherwise {@link Message} with error details is
	 *         returned
	 */
	public Object requestKontextAssertion(ElgaEHealthApplication vo, AssertionType hcpAssertion, int kindOfRequest,
			String role) {
		String claimsDialect = "";
		String claimsName = "";

		if (kindOfRequest == IheConstants.KIND_OF_REQUEST_IMMUNIZATION_RECORD) {
			claimsDialect = QueryPartFactory.CLAIMS_DIALECT_2013;
			claimsName = CLAIMS_TYPE_NAME_REQUESTED_AC_2013;
		} else {
			claimsDialect = CLAIMS_DIALECT_2019;
			claimsName = CLAIMS_TYPE_NAME_REQUESTED_AC;
		}

		try {
			ClaimTypeType[] claimTypes = null;

			if (role != null && !role.isEmpty()) {
				claimTypes = new ClaimTypeType[2];
				claimTypes[1] = QueryPartFactory.generateClaimValue(QueryPartFactory.XMLSCHEMA_ANY_URI,
						CLAIMS_TYPE_NAME_REQUESTED_ROLE, role);
			} else {
				claimTypes = new ClaimTypeType[1];
			}

			claimTypes[0] = QueryPartFactory.generateClaimValue(QueryPartFactory.XMLSCHEMA_ANY_URI, claimsName,
					vo.getId());

			RequestSecurityTokenDocument request = QueryPartFactory.generateRequestSecurityTokenDocument(
					ELGAETSTokenTypeType.URN_ELGA_BES_2019_CONTEXT_ASSERTION,
					ELGARequestTypeEnum.HTTP_DOCS_OASIS_OPEN_ORG_WS_SX_WS_TRUST_200512_ISSUE, claimsDialect,
					claimTypes);

			RequestSecurityTokenResponseCollectionDocument reqSecTokenRespCollection;

			if (IheConstants.KIND_OF_REQUEST_VOS == kindOfRequest) {
				reqSecTokenRespCollection = IheServiceStubPool.getInstance()
						.getEtsEhealthPlusService(QueryPartFactory.WS_TRUST_200512_RST_ISSUE)
						.issueAssertion(request, QueryPartFactory.buildSecurityHeader(hcpAssertion));
			} else {
				reqSecTokenRespCollection = IheServiceStubPool.getInstance()
						.getEtsEhealthPlusEImmunizationService(QueryPartFactory.WS_TRUST_200512_RST_ISSUE)
						.issueAssertion(request, QueryPartFactory.buildSecurityHeader(hcpAssertion));
			}

			RequestSecurityTokenResponseType[] reqSecTokenResp = reqSecTokenRespCollection
					.getRequestSecurityTokenResponseCollection().getRequestSecurityTokenResponseArray();

			if (reqSecTokenResp[0].getRequestedSecurityToken().getAssertion() != null) {
				return reqSecTokenResp[0].getRequestedSecurityToken().getAssertion();
			}
		} catch (AccessDenied e) {
			return getErrorMessage(e.getMessage(), e.getMessage(), e, HttpServletResponse.SC_UNAUTHORIZED);
		} catch (AxisFault af) {
			return getErrorMessage(SoapUtil.extractErrorMessageOfAxisFault(af), null, af,
					HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (Exception e) {
			return getErrorMessage(e.getMessage(), e.getMessage(), e, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} finally {
			try {
				if (IheConstants.KIND_OF_REQUEST_VOS == kindOfRequest) {
					IheServiceStubPool.getInstance()
							.getEtsEhealthPlusService(QueryPartFactory.WS_TRUST_200512_RST_ISSUE)._getServiceClient()
							.cleanupTransport();
					IheServiceStubPool.getInstance().instantiateEtsEhealthPlusService();
				} else {
					IheServiceStubPool.getInstance()
							.getEtsEhealthPlusEImmunizationService(QueryPartFactory.WS_TRUST_200512_RST_ISSUE)
							._getServiceClient().cleanup();
				}
			} catch (Exception e) {
				LOGGER.error(e.getMessage(), e);
			}
		}

		return null;
	}

	/**
	 * This method requests a saml ticket to be able to confirm identity of patient.
	 * The identity will be confirmed with an e-Card.
	 *
	 * @param cardToken     card token of used e-Card
	 * @param dialogId      id of actual GINA dialog
	 * @param ticketSubject SVC ticket subject to confirm identity of patient
	 * @return if saml ticket can be generated saml ticket is returned, otherwise
	 *         {@link Message} with error details is returned
	 */
	public Object requestEcardOnlyAssertion(String cardToken, String dialogId, String ticketSubject) {

		try {
			LOGGER.debug(ticketSubject);
			RequestSamlAssertionReq samlAssertionRequest = new RequestSamlAssertionReq();
			samlAssertionRequest.setTicketSubject(ticketSubject);
			RequestSamlAssertionE requestSamlAssertionE = new RequestSamlAssertionE();
			RequestSamlAssertion requestSamlAssertion = new RequestSamlAssertion();

			if (cardToken != null && !cardToken.isEmpty()) {
				requestSamlAssertion.setCardToken(cardToken);
			}

			requestSamlAssertion.setDialogId(dialogId);
			requestSamlAssertion.setRequestSamlAssertionReq(samlAssertionRequest);
			requestSamlAssertionE.setRequestSamlAssertion(requestSamlAssertion);
			RequestSamlAssertionResponseE requestSamlAssertionRespE = IheServiceStubPool.getInstance().getStsService()
					.requestSamlAssertion(requestSamlAssertionE);
			String samlTicket = requestSamlAssertionRespE.getRequestSamlAssertionResponse().getReturn().getSamlTicket();

			LOGGER.debug("Retrieved saml ticket to confirm patient contact.");

			return samlTicket.substring(samlTicket.indexOf('\n') + 1);
		} catch (ServiceException ex) {
			LOGGER.error(ex.getFaultMessage().getServiceException().getMessage());
			return new Message(ex.getFaultMessage().getServiceException().getMessage(), MessageTypes.ERROR,
					HttpServletResponse.SC_SERVICE_UNAVAILABLE);
		} catch (StsException ex) {
			LOGGER.error(ex.getFaultMessage().getStsException().getMessage());
			return new Message(ex.getFaultMessage().getStsException().getMessage(), MessageTypes.ERROR,
					HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (InvalidParameterStsException ex) {
			LOGGER.error(ex.getFaultMessage().getInvalidParameterStsException().getMessage());
			return new Message(ex.getFaultMessage().getInvalidParameterStsException().getMessage(), MessageTypes.ERROR,
					HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (DialogException ex) {
			LOGGER.error(ex.getFaultMessage().getDialogException().getMessage());
			return new Message(ex.getFaultMessage().getDialogException().getMessage(), MessageTypes.ERROR,
					HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (AccessException e) {
			LOGGER.error(e.getFaultMessage().getAccessException().getMessage());
			return new Message(e.getFaultMessage().getAccessException().getMessage(), MessageTypes.ERROR,
					HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (AxisFault af) {
			String returnMessage = SoapUtil.extractErrorMessageOfAxisFault(af);
			LOGGER.error("There is a problem at the authentication of the patient with the eCard: ", af);

			return new Message(
					returnMessage.isEmpty() ? MessageUtil.getMessageFromProperties(KEY_MESSAGE_CHECK_CARD_READER)
							: returnMessage,
					MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (Exception e) {
			LOGGER.error(e.getMessage());
			return new Message(e.getMessage(), MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		}
	}

	/**
	 * clean up ETS service client with passed action. And instantiates new ETS
	 * service client.
	 *
	 * @param action of ETS service to clean
	 */
	protected void cleanupEtsServices(String action) {
		try {
			IheServiceStubPool.getInstance().getEtsService(action)._getServiceClient().cleanupTransport();
			IheServiceStubPool.getInstance().getEtsService(action)._getServiceClient().cleanup();
			IheServiceStubPool.getInstance().instantiateEtsService();
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	/**
	 * logs error message and returns {@link Message}.
	 *
	 * @param message         text of error message
	 * @param detailedMessage detailed error message
	 * @param ex              thrown exception
	 * @param status          HTTP request status
	 * @return created {@link Message}
	 */
	protected Message getErrorMessage(String message, String detailedMessage, Exception ex, int status) {
		LOGGER.error(message, ex);
		return new Message(message, MessageTypes.ERROR, status, detailedMessage);
	}
}
