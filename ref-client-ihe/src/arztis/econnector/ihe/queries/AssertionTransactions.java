package arztis.econnector.ihe.queries;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.rmi.RemoteException;
import java.time.Instant;

import javax.servlet.http.HttpServletResponse;

import org.apache.axis2.AxisFault;
import org.apache.axis2.util.XMLUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.hl7.fhir.r4.model.Identifier;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;

import arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CardException;
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
import arztis.econnector.ihe.generatedClasses.kbs.KBSServiceStub;
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
import arztis.econnector.ihe.utilities.AssertionTypeUtil;
import arztis.econnector.ihe.utilities.ElgaEHealthApplication;
import arztis.econnector.ihe.utilities.IheConstants;
import arztis.econnector.ihe.utilities.IheServiceStubPool;
import arztis.econnector.ihe.utilities.UnauthorizedException;

public class AssertionTransactions {

	private static final Logger LOGGER = LoggerFactory.getLogger(AssertionTransactions.class.getName());
	protected static final String WS_TRUST_200512_RST_ISSUE = "http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/"
			+ "Issue";
	protected static final String WS_TRUST_200512 = "http://docs.oasis-open.org/ws-sx/ws-trust/200512";
	protected static final String CLAIMS_DIALECT_2013 = "urn:tiani-spirit:bes:2013:claims";
	private static final String CLAIMS_DIALECT_2019 = "urn:tiani-spirit:bes:2019:claims";
	protected static final String XMLSCHEMA_ANY_URI = "http://www.w3.org/2001/XMLSchema#anyURI";
	protected static final String XMLSCHEMA_STRING = "http://www.w3.org/2001/XMLSchema#string";
	private static final String CLAIMS_TYPE_NAME_REQUESTED_AC = "urn:tiani-spirit:bes:2019:claims:requested-ac";
	private static final String CLAIMS_TYPE_NAME_REQUESTED_ROLE = "urn:tiani-spirit:bes:2013:claims:requested-role";
	private static final String CLAIMS_TYPE_NAME_REQUESTED_AC_2013 = "urn:tiani-spirit:bes:2013:claims:requested-ac";
	protected static final String SUBJECT_ORGANIZATION_ID = "urn:oasis:names:tc:xspa:1.0:subject:organization-id";
	private static final String SUBJECT_ID = "urn:oasis:names:tc:xacml:1.0:subject:subject-id";
	private static final String OID_ISSUING_AUTHORITY = "urn:elga:bes:2013:OIDIssuingAuthority";
	private static final String ORGANIZATION = "urn:oasis:names:tc:xspa:1.0:subject:organization";
	protected static final String RESOURCE_RESOURCE_ID = "urn:oasis:names:tc:xacml:1.0:resource:resource-id";
	private static final String CLAIMS_TR_DATE = "urn:tiani-spirit:bes:2013:claims:tr-date";
	private static final String CLAIMS_TR_TYPE = "urn:tiani-spirit:bes:2013:claims:tr-type";
	private static final String CLAIMS_IDENT_METHOD = "urn:tiani-spirit:bes:2013:claims:ident-method";
	private static final String KEY_MESSAGE_CHECK_CARD_READER = "CHECK_CARD_READER";

	/**
	 * This method requests the Identity Assertion, which confirms the identity of
	 * the physician. This assertion is needed to request the HCP Assertion.
	 *
	 * @param pRealname       String
	 * @param pDialogId       String id of the built dialog
	 * @param pVpnr           String number of the contracting party
	 * @param pGinaAddress    String ip address of the gina client like 10.196.3.66
	 * @param pTargetEndpoint String path of the endpoint of the sts service like
	 *                        /elga-proxy/1/ETS
	 *
	 * @return if a saml ticket can be generated the saml ticket will be returned as
	 *         String, otherwise a empty String will be returned
	 */
	public Object requestIdentityAssertion(String given, String family, String prefix, String suffix, String pDialogId,
			String pVpnr) {

		try {
			String ticketSubject = String.format(
					"http://ns.svc.co.at/sts/elga-auth_1.0/Vertragspartner?VPNR=%s&GDAMA=%s", pVpnr,
					getRealNameForUrl(prefix, suffix, given, family));
			RequestSamlAssertionReq samlAssertionRequest = new RequestSamlAssertionReq();
			samlAssertionRequest.setTicketSubject(ticketSubject);
			RequestSamlAssertionE requestSamlAssertionE = new RequestSamlAssertionE();
			RequestSamlAssertion requestSamlAssertion = new RequestSamlAssertion();
			requestSamlAssertion.setDialogId(pDialogId);
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

	private String getRealNameForUrl(String prefix, String suffix, String given, String family) {
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

	public Object requestIdentityAssertionGdaElgaArea(String subjectId, String organizationId, String issuingAuthority,
			String organization) {
		RequestSecurityTokenDocument requestSecurityToken = RequestSecurityTokenDocument.Factory.newInstance();
		ELGARequestSecurityToken elgaRequestSecurityToken = ELGARequestSecurityToken.Factory.newInstance();
		elgaRequestSecurityToken.setContext(WS_TRUST_200512);
		elgaRequestSecurityToken
				.setRequestType(ELGARequestTypeEnum.HTTP_DOCS_OASIS_OPEN_ORG_WS_SX_WS_TRUST_200512_ISSUE);
		elgaRequestSecurityToken.setTokenType(ELGAETSTokenTypeType.URN_ELGA_BES_2013_IDA_GDA_ASSERTION);

		ELGAClaimsType claims = QueryPartFactory.generateELGAClaimsType(CLAIMS_DIALECT_2013,
				QueryPartFactory.generateClaimValue(XMLSCHEMA_ANY_URI, SUBJECT_ID, subjectId),
				QueryPartFactory.generateClaimValue(XMLSCHEMA_ANY_URI, SUBJECT_ORGANIZATION_ID, organizationId),
				QueryPartFactory.generateClaimValue(XMLSCHEMA_ANY_URI, OID_ISSUING_AUTHORITY, issuingAuthority),
				QueryPartFactory.generateClaimValue(XMLSCHEMA_ANY_URI, ORGANIZATION, organization));

		try {
			XmlObject xmlClaims = XmlObject.Factory.parse(claims.xmlText());
			elgaRequestSecurityToken.setELGARequestSecurityTokenChoice(xmlClaims);

			requestSecurityToken.setRequestSecurityToken(elgaRequestSecurityToken);

			ETSServiceStub service = IheServiceStubPool.getInstance().getIdaGdaService(WS_TRUST_200512_RST_ISSUE);

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
			cleanupEtsServices(WS_TRUST_200512_RST_ISSUE);
		}
	}

	/**
	 * This method requests the HCP Assertion, which is needed to authenticate the
	 * physicians. This Assertion has to be in the security header of every SOAP
	 * Message to request data of ELGA.
	 *
	 * @param pRole       String role of the provider of health service
	 * @param pSamlTicket String saml ticket, which authenticate the provider of
	 *                    health service
	 *
	 * @return if the user could registered in ELGA the HCP Assertion will be
	 *         returned as AssertionType Object otherwise null will be returned
	 */
	public Object requestHCPAssertion(String pRole, String pSamlTicket, int kindOfRequest) {
		RequestSecurityTokenDocument requestSecurityToken = RequestSecurityTokenDocument.Factory.newInstance();
		ELGARequestSecurityToken elgaRequestSecurityToken = ELGARequestSecurityToken.Factory.newInstance();
		elgaRequestSecurityToken.setContext(WS_TRUST_200512);
		elgaRequestSecurityToken
				.setRequestType(ELGARequestTypeEnum.HTTP_DOCS_OASIS_OPEN_ORG_WS_SX_WS_TRUST_200512_ISSUE);
		elgaRequestSecurityToken.setTokenType(ELGAETSTokenTypeType.URN_ELGA_BES_2013_HCP_ASSERTION);

		ELGAClaimsType claims = ELGAClaimsType.Factory.newInstance();
		claims.setDialect(CLAIMS_DIALECT_2013);
		ClaimTypeType[] claimTypeArray = new ClaimTypeType[1];
		claimTypeArray[0] = QueryPartFactory.generateClaimValue(XMLSCHEMA_ANY_URI, CLAIMS_TYPE_NAME_REQUESTED_ROLE,
				pRole);

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
				service = IheServiceStubPool.getInstance().getEtsEhealthPlusService(WS_TRUST_200512_RST_ISSUE);
			} else if (kindOfRequest == IheConstants.KIND_OF_REQUEST_IMMUNIZATION_RECORD) {
				service = IheServiceStubPool.getInstance()
						.getEtsEhealthPlusEImmunizationService(WS_TRUST_200512_RST_ISSUE);
			} else {
				service = IheServiceStubPool.getInstance().getEtsService(WS_TRUST_200512_RST_ISSUE);
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
			return getErrorMessage(af.getFaultReasonElement().getText(),
					af.getFaultCodeElement().getSubCode().getValue().getText(), af,
					HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (Exception e) {
			return getErrorMessage(e.getMessage(), e.getMessage(), e, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} finally {
			cleanupEtsServices(WS_TRUST_200512_RST_ISSUE);
		}
	}

	public Object requestKontextAssertion(ElgaEHealthApplication vo, AssertionType hcpAssertion, int kindOfRequest, String role) {
		String claimsDialect = "";
		String claimsName = "";

		if (kindOfRequest == IheConstants.KIND_OF_REQUEST_IMMUNIZATION_RECORD) {
			claimsDialect = CLAIMS_DIALECT_2013;
			claimsName = CLAIMS_TYPE_NAME_REQUESTED_AC_2013;
		} else {
			claimsDialect = CLAIMS_DIALECT_2019;
			claimsName = CLAIMS_TYPE_NAME_REQUESTED_AC;
		}

		try {
			ClaimTypeType[] claimTypes = null;
			
			if(role != null && !role.isEmpty()) {
				claimTypes = new ClaimTypeType[2];
				claimTypes[1] = QueryPartFactory.generateClaimValue(XMLSCHEMA_ANY_URI, CLAIMS_TYPE_NAME_REQUESTED_ROLE,
						role);			 
			} else {
				claimTypes = new ClaimTypeType[1];
			}
			
			claimTypes[0] = QueryPartFactory.generateClaimValue(XMLSCHEMA_ANY_URI, claimsName, vo.getId());
			
			RequestSecurityTokenDocument request = QueryPartFactory.generateRequestSecurityTokenDocument(
					ELGAETSTokenTypeType.URN_ELGA_BES_2019_CONTEXT_ASSERTION,
					ELGARequestTypeEnum.HTTP_DOCS_OASIS_OPEN_ORG_WS_SX_WS_TRUST_200512_ISSUE, claimsDialect,
					claimTypes);

			RequestSecurityTokenResponseCollectionDocument reqSecTokenRespCollection;

			if (IheConstants.KIND_OF_REQUEST_VOS == kindOfRequest) {
				reqSecTokenRespCollection = IheServiceStubPool.getInstance()
						.getEtsEhealthPlusService(WS_TRUST_200512_RST_ISSUE)
						.issueAssertion(request, QueryPartFactory.buildSecurityHeader(hcpAssertion));
			} else {
				reqSecTokenRespCollection = IheServiceStubPool.getInstance()
						.getEtsEhealthPlusEImmunizationService(WS_TRUST_200512_RST_ISSUE)
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
			return getErrorMessage(SoapUtil.extractErrorMessageOfAxisFault(af),
					null, af,
					HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (Exception e) {
			return getErrorMessage(e.getMessage(), e.getMessage(), e, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} finally {
			try {
				IheServiceStubPool.getInstance().getEtsEhealthPlusService(WS_TRUST_200512_RST_ISSUE)._getServiceClient()
						.cleanupTransport();
				IheServiceStubPool.getInstance().getEtsEhealthPlusService(WS_TRUST_200512_RST_ISSUE)._getServiceClient()
						.cleanup();
				IheServiceStubPool.getInstance().instantiateEtsEhealthPlusService();
			} catch (Exception e) {
				LOGGER.error(e.getMessage(), e);
			}
		}

		return null;
	}

	public Object registerConfirmationContact(AssertionType pHcpAssertion, String samlTicket, String pCardToken,
			Identifier patientId, int kindOfRequest) throws UnauthorizedException {

		LOGGER.debug("Saml ticket: {}", samlTicket);
		
		if(pHcpAssertion == null) {
			throw new UnauthorizedException("No HCP Assertion found!");
		}

		if (samlTicket == null || samlTicket.isEmpty()) {
			LOGGER.debug("register confirmation without eCard");
			return registerConfirmationContactWithoutEcard(pHcpAssertion, patientId, kindOfRequest);
		} else {
			LOGGER.debug("register confirmation with eCard");
			return registerConfirmationContactWithECard(pHcpAssertion, samlTicket, pCardToken, patientId,
					kindOfRequest);
		}
	}

	/**
	 * This method initiates the confirmation of the patient contact in ELGA.
	 * Therefore the HCP-Assertion has to be in the Security Header and additionally
	 * there have to be a Identity Assertion of the patient in the SOAP body.
	 *
	 * @param pGinaAddress               String ip address of the gina client like
	 *                                   10.196.3.66
	 * @param pTargetEndpointKbs         String path of the endpoint of the kbs
	 *                                   service like /elga-proxy/1/KBS
	 * @param pTargetEndpointBaseService String path of the endpoint of the base
	 *                                   SS-12 service like /base/15
	 * @param pTargetEndpointSts         String path of the endpoint of the sts
	 *                                   SS-12 service like /sts/4
	 * @param pVpnr                      String number of the contracting party
	 * @param pHcpAssertion              AssertionType
	 * @param pCardReaderId              String id of the card reader, where the
	 *                                   eCard is plugged
	 * @param pDialogId                  String id of the actual eCard dialog
	 *
	 * @return true if the contact could be registered and false if the contact
	 *         could not be registered
	 * @throws CardException
	 * @throws ServiceException
	 * @throws Exception
	 */
	public Object registerConfirmationContactWithECard(AssertionType pHcpAssertion, String samlTicket,
			String pCardToken, Identifier patientId, int kindOfRequest) {
		try {
			String typeOfIdentification = "PIM101";

			if (pCardToken == null || pCardToken.isEmpty()) {
				typeOfIdentification = "PIM104";
			}

			KBSServiceStub kbsService = null;

			if (kindOfRequest == IheConstants.KIND_OF_REQUEST_IMMUNIZATION_RECORD) {
				kbsService = IheServiceStubPool.getInstance()
						.getKbsEhealthPlusEImmunizationService(WS_TRUST_200512_RST_ISSUE);
			} else if (kindOfRequest == IheConstants.KIND_OF_REQUEST_VOS) {
				kbsService = IheServiceStubPool.getInstance().getKbsEhealthPlus(WS_TRUST_200512_RST_ISSUE);
			} else {
				kbsService = IheServiceStubPool.getInstance().getKbsService(WS_TRUST_200512_RST_ISSUE);
			}

			RequestSecurityTokenResponseCollectionDocument requestSecurityTokenResponseCollDoc = kbsService
					.issueKBeCard(buildRegisterKbsRequest(ELGAETSTokenTypeType.URN_ELGA_KBS_CONTACT_ECARD, "K102",
							typeOfIdentification, AssertionTypeUtil.getOrganizationIdOfHcpAssertion(pHcpAssertion),
							patientId, AssertionTypeUtil.getTimeOfPatientContactOfAssertion(samlTicket), samlTicket),
							QueryPartFactory.buildSecurityHeader(pHcpAssertion));

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
					returnMessage.isEmpty() ? MessageUtil.getMessageFromProperties(KEY_MESSAGE_CHECK_CARD_READER, null)
							: returnMessage,
					MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (Exception ex) {
			return new Message(MessageUtil.getMessageFromProperties(KEY_MESSAGE_CHECK_CARD_READER, null),
					MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} finally {
			cleanupKbsServices(WS_TRUST_200512_RST_ISSUE, kindOfRequest);
		}
	}

	public Object registerConfirmationContactWithoutEcard(AssertionType pHcpAssertion, Identifier bPkId,
			int kindOfRequest) {
		try {
			String timeOfPatientContact = Instant.now().toString();
			String typeOfIdentification = "PIM103";

			KBSServiceStub kbsService = null;

			if (kindOfRequest == IheConstants.KIND_OF_REQUEST_IMMUNIZATION_RECORD) {
				kbsService = IheServiceStubPool.getInstance()
						.getKbsEhealthPlusEImmunizationService(WS_TRUST_200512_RST_ISSUE);
			} else if (kindOfRequest == IheConstants.KIND_OF_REQUEST_VOS) {
				kbsService = IheServiceStubPool.getInstance().getKbsEhealthPlus(WS_TRUST_200512_RST_ISSUE);
			} else {
				kbsService = IheServiceStubPool.getInstance().getKbsService(WS_TRUST_200512_RST_ISSUE);
			}

			RequestSecurityTokenResponseCollectionDocument requestSecurityTokenResponseCollDoc = kbsService
					.issueKB(buildRegisterKbsRequest(ELGAETSTokenTypeType.URN_ELGA_KBS_CONTACT, "K102",
							typeOfIdentification, AssertionTypeUtil.getOrganizationIdOfHcpAssertion(pHcpAssertion),
							bPkId, timeOfPatientContact, null), QueryPartFactory.buildSecurityHeader(pHcpAssertion));

			if (requestSecurityTokenResponseCollDoc.getRequestSecurityTokenResponseCollection()
					.getRequestSecurityTokenResponseArray().length == 0) {
				return requestSecurityTokenResponseCollDoc.getDomNode();
			} else {
				return true;
			}
		} catch (AxisFault af) {
			return getErrorMessage(af.getMessage(),
					af.getMessage(), af,
					HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (Exception e) {
			return getErrorMessage(e.getMessage(), e.getMessage(), e, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} finally {
			cleanupKbsServices(WS_TRUST_200512_RST_ISSUE, kindOfRequest);
		}
	}

	public RequestSecurityTokenDocument buildRegisterKbsRequest(ELGAETSTokenTypeType.Enum tokenType,
			String typeOfContact, String typeOfIdentification, String organizationId, Identifier patientId,
			String timeOfPatientContact, String samlTicket) throws XmlException {

		String claimValue = "";

		if (patientId != null) {
			claimValue = patientId.getValue() + "^^^& " + patientId.getSystem() + "&ISO";
		}
		RequestSecurityTokenDocument reqSecToken = null;

		if (samlTicket != null) {
			reqSecToken = QueryPartFactory.generateRequestSecurityTokenDocument(tokenType,
					ELGARequestTypeEnum.HTTP_DOCS_OASIS_OPEN_ORG_WS_SX_WS_TRUST_200512_ISSUE, CLAIMS_DIALECT_2013,
					QueryPartFactory.generateClaimValue(XMLSCHEMA_ANY_URI, CLAIMS_TR_TYPE, typeOfContact),
					QueryPartFactory.generateClaimValue(XMLSCHEMA_ANY_URI, CLAIMS_IDENT_METHOD, typeOfIdentification),
					QueryPartFactory.generateClaimValue(XMLSCHEMA_ANY_URI, SUBJECT_ORGANIZATION_ID, organizationId),
					QueryPartFactory.generateClaimValue(XMLSCHEMA_STRING, RESOURCE_RESOURCE_ID, claimValue),
					QueryPartFactory.generateClaimValue("http://www.w3.org/2001/XMLSchema#dateTime", CLAIMS_TR_DATE,
							timeOfPatientContact),
					QueryPartFactory.generateClaimValue("http://www.w3.org/2001/XMLSchema#base64Binary",
							"urn:tiani-spirit:bes:2013:claims:ecardkb", XMLUtils.base64encode(samlTicket.getBytes())));
		} else {
			reqSecToken = QueryPartFactory.generateRequestSecurityTokenDocument(tokenType,
					ELGARequestTypeEnum.HTTP_DOCS_OASIS_OPEN_ORG_WS_SX_WS_TRUST_200512_ISSUE, CLAIMS_DIALECT_2013,
					QueryPartFactory.generateClaimValue(XMLSCHEMA_ANY_URI, CLAIMS_TR_TYPE, typeOfContact),
					QueryPartFactory.generateClaimValue(XMLSCHEMA_ANY_URI, CLAIMS_IDENT_METHOD, typeOfIdentification),
					QueryPartFactory.generateClaimValue(XMLSCHEMA_ANY_URI, SUBJECT_ORGANIZATION_ID, organizationId),
					QueryPartFactory.generateClaimValue(XMLSCHEMA_STRING, RESOURCE_RESOURCE_ID, claimValue),
					QueryPartFactory.generateClaimValue("http://www.w3.org/2001/XMLSchema#dateTime", CLAIMS_TR_DATE,
							timeOfPatientContact));
		}

		return reqSecToken;
	}

	/**
	 * This method requests a saml ticket to confirm the identity of the patient.
	 * The identity will be confirmed through the eCard.
	 *
	 * @param pVpnr                      number of the contracting party
	 * @param pTargetEndpointBaseService String path of the endpoint of the base
	 *                                   SS-12 service like /base/15
	 * @param pTargetEndpointSts         path of the endpoint of the sts SS-12
	 *                                   service like /sts/4
	 * @param pGinaAddress               ip address of the gina client like
	 *                                   10.196.3.66
	 * @param pCardReaderId              id of the card reader, where the eCard is
	 *                                   plugged
	 * @param pDialogId                  id of the actual eCard dialog
	 *
	 * @return false, if no eCard is inserted or if the eCard can't be read. It
	 *         returns true, if everything is all right and the saml ticket is
	 *         issued.
	 * @throws CardException
	 * @throws ServiceException
	 * @throws RemoteException
	 * @throws at.arztis.ec.generatedClasses.at.chipkarte.client.sts.soap.ServiceException
	 * @throws at.arztis.ec.generatedClasses.at.chipkarte.client.sts.soap.CardException
	 * @throws DialogException
	 * @throws InvalidParameterStsException
	 * @throws StsException
	 * @throws AccessException
	 */
	public Object requestEcardOnlyAssertion(String pVpnr, String pCardToken, String pDialogId, String pSvnr) {

		try {
			String ticketSubject = "";
			if (pSvnr != null && pSvnr.length() == 10) {
				ticketSubject = "http://ns.svc.co.at/sts/elga-ecardonly_1.0/Patientenkontakt?VPNR=" + pVpnr + "&VSNR="
						+ pSvnr;
			}

			LOGGER.debug(ticketSubject);
			RequestSamlAssertionReq samlAssertionRequest = new RequestSamlAssertionReq();
			samlAssertionRequest.setTicketSubject(ticketSubject);
			RequestSamlAssertionE requestSamlAssertionE = new RequestSamlAssertionE();
			RequestSamlAssertion requestSamlAssertion = new RequestSamlAssertion();

			if (pCardToken != null && !pCardToken.isEmpty()) {
				requestSamlAssertion.setCardToken(pCardToken);
			}

			requestSamlAssertion.setDialogId(pDialogId);
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
					returnMessage.isEmpty() ? MessageUtil.getMessageFromProperties(KEY_MESSAGE_CHECK_CARD_READER, null)
							: returnMessage,
					MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (Exception e) {
			LOGGER.error(e.getMessage());
			return new Message(e.getMessage(), MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		}
	}

	protected void cleanupEtsServices(String action) {
		try {
			IheServiceStubPool.getInstance().getEtsService(action)._getServiceClient().cleanupTransport();
			IheServiceStubPool.getInstance().getEtsService(action)._getServiceClient().cleanup();
			IheServiceStubPool.getInstance().instantiateEtsService();
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	protected void cleanupKbsServices(String action, int kindOfRequest) {
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

	protected Message getErrorMessage(String message, String detailedMessage, Exception ex, int status) {
		LOGGER.error(message, ex);
		return new Message(message, MessageTypes.ERROR, status, detailedMessage);
	}
}
