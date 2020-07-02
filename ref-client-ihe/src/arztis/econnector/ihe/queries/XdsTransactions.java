package arztis.econnector.ihe.queries;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.rmi.RemoteException;
import java.util.List;

import javax.naming.ServiceUnavailableException;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.ParserConfigurationException;

import org.apache.commons.jcs.access.exception.InvalidArgumentException;
import org.apache.xmlbeans.XmlException;
import org.ehealth_connector.common.Address;
import org.ehealth_connector.common.Code;
import org.ehealth_connector.common.Identificator;
import org.ehealth_connector.common.at.PatientAt;
import org.ehealth_connector.common.at.enums.ClassCode;
import org.ehealth_connector.common.at.enums.ConfidentialityCode;
import org.ehealth_connector.common.at.enums.PracticeSettingCode;
import org.ehealth_connector.common.at.enums.TypeCode;
import org.ehealth_connector.common.at.utils.XdsMetadataUtilAt;
import org.ehealth_connector.common.basetypes.AddressBaseType;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Author;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040ClinicalDocument;
import org.ehealth_connector.communication.DocumentRequest;
import org.ehealth_connector.communication.at.ConvenienceCommunicationAt;
import org.ehealth_connector.communication.at.DocumentMetadataAt;
import org.ehealth_connector.communication.at.xd.storedquery.FindDocumentsQuery;
import org.ehealth_connector.fhir.structures.gen.FhirCommon;
import org.ehealth_connector.fhir.structures.gen.FhirPatient;
import org.ehealth_connector.validation.service.config.ConfigurationException;
import org.hl7.fhir.dstu3.model.Identifier;
import org.openhealthtools.ihe.xds.document.DocumentDescriptor;
import org.openhealthtools.ihe.xds.metadata.AvailabilityStatusType;
import org.openhealthtools.ihe.xds.metadata.CodedMetadataType;
import org.openhealthtools.ihe.xds.metadata.ParentDocumentRelationshipType;
import org.openhealthtools.ihe.xds.response.XDSQueryResponseType;
import org.openhealthtools.ihe.xds.response.XDSResponseType;
import org.openhealthtools.ihe.xds.response.XDSRetrieveResponseType;
import org.openhealthtools.ihe.xua.XUAAssertion;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.xml.sax.SAXException;

import arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType;
import arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage;
import arztis.econnector.ihe.generatedClasses.ihe.registry.IHERegistryServiceStub;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityHeaderType;
import arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType;
import arztis.econnector.ihe.queries.common.IheQueryTransformer;
import arztis.econnector.ihe.queries.common.InvalidCdaException;
import arztis.econnector.ihe.utilities.AssertionTypeUtil;
import arztis.econnector.ihe.utilities.ElgaAreaConfig;
import arztis.econnector.ihe.utilities.ElgaAreaConfigReader;
import arztis.econnector.ihe.utilities.ElgaEHealthApplication;
import arztis.econnector.ihe.utilities.IheConstants;
import arztis.econnector.ihe.utilities.IheServiceStubPool;

/**
 * This class should provide all ITI-Transaction for the XDS profile.
 * Nevertheless generatedClasses.at the moment there are ITI-18 and ITI-43,
 * which are implemented.
 *
 * @author Anna
 *
 */

public class XdsTransactions {

	private static final Logger LOGGER = LoggerFactory.getLogger(XdsTransactions.class.getName());
	private XUAAssertion oAssertion;
	private AssertionType xmlAssertion;
	private ElgaEHealthApplication virtualOrganizationId;

	/**
	 * Constructor to get an instance of the class XdsTransactions.
	 *
	 * @param pGinaAddress    String IP address of the gina client
	 * @param pTargetEndpoint String TargetEndpoint of the Service eBefunde
	 * @param pOrganizationId String oid
	 * @param assertion       AssertionType Assertion, which should get in the
	 *                        security header of the soap messages.
	 * @throws URISyntaxException
	 * @throws ParserConfigurationException
	 * @throws SAXException
	 * @throws IOException
	 */

	public XdsTransactions(String pOrganizationId, AssertionType assertion, ElgaEHealthApplication voId)
			throws ParserConfigurationException, SAXException, IOException {
		xmlAssertion = assertion;
		oAssertion = AssertionTypeUtil.transformAssertionTypeToXUAAssertion(assertion);
		this.virtualOrganizationId = voId;
	}

	public boolean removePatientId(Identificator identificator, PatientAt patient) {
		for (org.ehealth_connector.common.hl7cdar2.II id : patient.getHl7Cdar2PatientRole().getId()) {
			if (id.getExtension().equalsIgnoreCase(identificator.getExtension())
					&& id.getRoot().equalsIgnoreCase(identificator.getRoot())) {
				return patient.getHl7Cdar2PatientRole().getId().remove(id);
			}
		}

		return false;
	}

	public Address getPatientAddress(PatientAt patient) {
		Address address = new Address(new AddressBaseType());
		if (patient == null || patient.getHl7Cdar2PatientRole() == null
				|| patient.getHl7Cdar2PatientRole().getAddr() == null
				|| patient.getHl7Cdar2PatientRole().getAddr().isEmpty()) {
			return address;
		}

		org.ehealth_connector.common.hl7cdar2.AD mAd = patient.getHl7Cdar2PatientRole().getAddr().get(0);
		address = new Address(mAd);

		return address;
	}

	public Code createCode(String id, String oid) {
		Code code = new Code();
		code.setCode(id);
		code.setCodeSystem(oid);
		return code;
	}

	public Code createCode(String codeSystem, String codeId, String codeSystemName, String displayName) {
		Code code = createCode(codeId, codeSystem);
		code.setCodeSystemName(codeSystemName);
		code.setDisplayName(displayName);
		return code;
	}

	/**
	 * ITI-18 is implemented in this method. It queries the metadata of the
	 * documents for one patient. It executes a query to the registry and gets
	 * metadata back. This query could be limited through search criteria.
	 *
	 * @param findDocumentQuery details to restrict query
	 * @param typeCode          type of document
	 * @return a list of {@link XDSQueryResponseType}, if the query find some
	 *         matching data, otherwise it will return null
	 * 
	 * @throws ServiceUnavailableException
	 */
	public XDSQueryResponseType queryDocumentList(FindDocumentsQuery findDocumentQuery, String typeCode)
			throws ServiceUnavailableException {
		ConvenienceCommunicationAt communication = null;

		if (findDocumentQuery == null) {
			throw new IllegalArgumentException("find document query parameter is null");
		}

		communication = getConvenienceCommunication(typeCode, true);

		if (communication == null) {
			throw new ServiceUnavailableException("No service found to query documents");
		}

		communication.addXUserAssertion(oAssertion);
		return communication.queryDocuments(findDocumentQuery);
	}

	/**
	 * This method executes the transaction ITI-43 to get certain documents.
	 *
	 * @param uniqueId        unique ID of document
	 * @param repositoryId    ID of repository, where document is stored
	 * @param homeCommunityId home community ID, where document is stored
	 * @param typeCode        type of document
	 * 
	 * @return retrieved documents or error
	 * 
	 */
	public XDSRetrieveResponseType retrieveDocument(String uniqueId, String repositoryId, String homeCommunityId,
			String typeCode) {
		if (uniqueId == null || repositoryId == null || homeCommunityId == null) {
			return null;
		}

		ConvenienceCommunicationAt communication = getConvenienceCommunication(typeCode, true);
		communication.addXUserAssertion(oAssertion);

		return communication.retrieveDocuments(generateDocumentRequests(uniqueId, repositoryId, homeCommunityId,
				communication.getAffinityDomain().getRepositoryDestination().getUri()));
	}

	private DocumentRequest[] generateDocumentRequests(String uniqueId, String repositoryId, String homeCommunityId,
			URI uri) {
		DocumentRequest[] requests = new DocumentRequest[1];

		if (uniqueId != null && repositoryId != null && homeCommunityId != null) {
			DocumentRequest documentRequest = new DocumentRequest(repositoryId, uri, uniqueId);

			documentRequest.setHomeCommunityId(homeCommunityId);

			requests[0] = documentRequest;
		}

		return requests;
	}

	private ConvenienceCommunicationAt getConvenienceCommunication(String typeCode, boolean query) {
		try {
			if (query) {
				if (TypeCode.isMedications(typeCode)) {
					return IheServiceStubPool.getInstance().getXdsEmedService();
				} else if (TypeCode.isPhysicianNote(typeCode)) {
					return IheServiceStubPool.getInstance().getXdsEHealthPlusService();
				} else if (TypeCode.isImmunizationHistory(typeCode)) {
					return IheServiceStubPool.getInstance().getXdsEHealthPlusEImmunizationService();
				} else {
					return IheServiceStubPool.getInstance().getXdsService();
				}
			} else {
				if (TypeCode.isMedications(typeCode)) {
					return IheServiceStubPool.getInstance().getXdsEmedService();
				} else if (TypeCode.isPhysicianNote(typeCode)) {
					return IheServiceStubPool.getInstance().getXdsEHealthPlusService();
				} else if (TypeCode.isImmunizationHistory(typeCode)) {
					return IheServiceStubPool.getInstance().getXdsEHealthPlusEImmunizationService();
				} else {
					return IheServiceStubPool.getInstance().getXdsWriteService();
				}
			}

		} catch (Exception e) {
			throw new IllegalStateException("XdsTransactions service not available", e);
		}
	}

	public XDSResponseType provideAndRegisterDocuments(AvailabilityStatusType status, String typeCode,
			CodedMetadataType healthCareFacilityCode, CodedMetadataType practiceSettingCode,
			CodedMetadataType formatCode, Identificator patientId, String parentDoc, POCDMT000040ClinicalDocument cda,
			byte[] bytesDoc, String oid, String ownOid, boolean validate) throws Exception {
		ConvenienceCommunicationAt communication = getConvenienceCommunication(typeCode, false);

		final InputStream inputStream = new ByteArrayInputStream(bytesDoc);
		
		if (validate) {
			validateCdaDocument(bytesDoc);
		}

		DocumentMetadataAt metaData = extractMetadata(status, typeCode, healthCareFacilityCode, practiceSettingCode,
				formatCode, patientId, parentDoc, cda, communication, inputStream, oid, ownOid);

		if (metaData != null) {
			inputStream.close();
			XDSResponseType response = null;

			String setId = XdsMetadataUtilAt.extractIdOfCxi(metaData.getRefrencedIdList());

			if (LOGGER.isDebugEnabled()) {
				LOGGER.debug("set id: {}", setId);
			}

			communication.addXUserAssertion(oAssertion);

			response = communication.submit(metaData.getParentDocument() != null, metaData.getAuthorsAt().get(0),
					ownOid, getContentTypeCode(typeCode, oid));
			communication.clearDocuments();
			return response;
		}

		throw new IllegalArgumentException("No metadata found");
	}

	private void validateCdaDocument(byte[] document) throws InvalidCdaException {
		try {
			String validationResult = ValidationTransactions.validateCDADocument(true, true, false,
					document);

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("CDA doc: {}", new String(document));
				LOGGER.info("Result of CDA validation: {}", validationResult);
			}

			if (validationResult.toUpperCase().contains("FAILED")) {
				throw new InvalidCdaException(HttpServletResponse.SC_BAD_REQUEST, validationResult);
			} else if(validationResult.toUpperCase().contains("WARNING")){
				LOGGER.warn(validationResult);
			}
				
		} catch (ConfigurationException e1) {
			LOGGER.error(e1.getMessage(), e1);			
		}
	}

	private CodedMetadataType getContentTypeCode(String typeCode, String oid) {
		String key = oid;
		if (typeCode != null) {
			if (TypeCode.isMedications(typeCode)) {
				key = IheConstants.OID_EMEDICATION_HOME_COMMUNITY;
			} else if (TypeCode.isImmunizationHistory(typeCode)) {
				key = IheConstants.OID_EIMMUNIZATION_HOME_COMMUNITY;
			}
		}

		ElgaAreaConfig config = ElgaAreaConfigReader.getInstance().getElgaAreaConfigMap().get(key);

		if (!config.isDifferentContentTypeNeeded()) {
			return TypeCode.getEnum(typeCode).getCodedMetadataType();
		}

		String contentTypeCode = config.getContentTypes().get(typeCode);

		if (contentTypeCode != null) {
			return TypeCode.getEnum(contentTypeCode).getCodedMetadataType();
		}

		return null;
	}

	private boolean isUrnOidNeeded(String oid, String code) {
		String key = oid;

		if (code != null) {
			if (TypeCode.isMedications(code) || ClassCode.MEDICATIONS.getCodeValue().equalsIgnoreCase(code)) {
				key = IheConstants.OID_EMEDICATION_HOME_COMMUNITY;
			} else if (TypeCode.isImmunizationHistory(code)
					|| ClassCode.HISTORY_IMMUNIZATION.getCodeValue().equalsIgnoreCase(code)) {
				key = IheConstants.OID_EIMMUNIZATION_HOME_COMMUNITY;
			}
		}

		ElgaAreaConfig config = ElgaAreaConfigReader.getInstance().getElgaAreaConfigMap().get(key);

		if (config != null) {
			return config.isUrnOidNeeded();
		}

		return false;
	}

	private DocumentMetadataAt extractMetadata(AvailabilityStatusType status, String typeCode,
			CodedMetadataType healthCareFacilityCode, CodedMetadataType practiceSettingCode,
			CodedMetadataType formatCode, Identificator patientId, String parentDoc, POCDMT000040ClinicalDocument cda,
			ConvenienceCommunicationAt communication, InputStream inputStream, String oid, String ownOid) {
		DocumentMetadataAt metadata = null;
		if (typeCode != null && cda != null) {
			if (TypeCode.isImmunizationHistory(typeCode) && cda.getAuthor() != null && !cda.getAuthor().isEmpty()) {
				for (POCDMT000040Author author : cda.getAuthor()) {
					if (author != null && author.getFunctionCode() == null && practiceSettingCode != null
							&& practiceSettingCode.getCode() != null) {
						author.setFunctionCode(
								PracticeSettingCode.getEnum(practiceSettingCode.getCode()).getHl7cdar2CE());
					}
				}
			}

			metadata = communication.addElgaDocument(DocumentDescriptor.CDA_R2, inputStream, cda,
					isUrnOidNeeded(oid, typeCode));
		}

		addExplicitMetadata(status, typeCode, healthCareFacilityCode, practiceSettingCode, formatCode, patientId,
				parentDoc, metadata, TypeCode.isMedications(typeCode), oid, ownOid);
		return metadata;
	}

	private void addExplicitMetadata(AvailabilityStatusType status, String typeCode,
			CodedMetadataType healthCareFacilityCode, CodedMetadataType practiceSettingCode,
			CodedMetadataType formatCode, Identificator patientId, String parentDoc, DocumentMetadataAt metaData,
			boolean emed, String elgaAreaOid, String ownOid) {
		if (metaData == null) {
			return;
		}

		metaData.setAvailabilityStatus(status);

		if (formatCode != null) {
			metaData.setFormatCode(formatCode);
		}

		if (healthCareFacilityCode != null) {
			metaData.setHealthcareFacilityTypeCode(healthCareFacilityCode);
		}

		if (parentDoc != null) {
			metaData.setParentDocument(parentDoc, ParentDocumentRelationshipType.RPLC_LITERAL);
		}

		if (practiceSettingCode != null) {
			metaData.setPracticeSettingCode(practiceSettingCode);
		}

		Identificator sourcePatientId = getSourcePatientIdHl7Cdar2(metaData.getPatientIdsHl7Cdar2(), ownOid, typeCode);
		if (sourcePatientId != null) {
			metaData.setSourcePatientIdHl7Cdar2(sourcePatientId);
		}

		Identificator destinationPatientId = getDestinationPatientIdHl7Cdar2(patientId, elgaAreaOid, emed);

		if (destinationPatientId != null) {
			metaData.setDestinationPatientIdHl7Cdar2(destinationPatientId);
		}

		if (metaData.getMdhtDocumentEntryType() != null
				&& metaData.getMdhtDocumentEntryType().getLegalAuthenticator() != null) {
			metaData.getMdhtDocumentEntryType().getLegalAuthenticator().setAssigningAuthorityName("");
		}

		metaData.setRefrencedIdList(metaData.getSetId(), getHomeCommunityId(emed, elgaAreaOid),
				"urn:elga:iti:xds:2014:ownDocument_setId");
	}

	public String getHomeCommunityId(boolean emed, String elgaAreaOid) {
		if (emed) {
			return IheConstants.OID_EMEDICATION_HOME_COMMUNITY;
		} else if (virtualOrganizationId != null && !virtualOrganizationId.getHomeCommunityId().isEmpty()) {
			return virtualOrganizationId.getHomeCommunityId();
		} else {
			return elgaAreaOid;
		}
	}

	public Identificator getSourcePatientIdHl7Cdar2(List<Identificator> patientIds, String ownOid, String typeCode) {
		if (patientIds == null) {
			return null;
		}

		for (Identificator patientId : patientIds) {
			if (patientId != null) {
				if (!TypeCode.isMedications(typeCode)) {
					if (patientId.getRoot() != null
							&& ownOid.replace("urn:oid:", "").equalsIgnoreCase(patientId.getRoot())) {
						return patientId;
					}
				} else {
					return patientId;
				}
			}
		}

		return null;
	}

	public Identificator getDestinationPatientIdHl7Cdar2(Identificator patientId, String elgaAreaOid, boolean emed) {
		if (patientId != null
				&& (emed || (virtualOrganizationId != null && !virtualOrganizationId.getId().isEmpty()))) {
			return new Identificator(patientId.getRoot(), patientId.getExtension());
		} else {
			return getPatientIdByElgaAreaId(elgaAreaOid, patientId);
		}
	}

	private Identificator getPatientIdByElgaAreaId(String elgaAreaOid, Identificator patientId) {
		FhirPatient patient = new FhirPatient();
		patient.addIdentifier(getIdentifierOfIdentificator(patientId));

		List<FhirPatient> patients = PatientIndexTransactions.queryPatientDemographics(patient, oAssertion);
		if (patients != null && !patients.isEmpty() && patients.get(0) != null) {
			for (Identifier id : patients.get(0).getIdentifier()) {
				String oid = "";
				if (id != null && id.getSystem().startsWith(FhirCommon.oidUrn)) {
					oid = FhirCommon.removeUrnOidPrefix(id.getSystem());

					if (oid != null && oid.contains(elgaAreaOid)) {
						return new Identificator(oid, id.getValue());
					}
				}
			}
		}

		return null;
	}

	public Identifier getIdentifierOfIdentificator(Identificator patientId) {
		if (patientId == null) {
			return null;
		}

		Identifier patId = new Identifier();
		patId.setSystem(patientId.getRoot());
		patId.setValue(patientId.getExtension());
		return patId;
	}

	public org.hl7.fhir.r4.model.Identifier getSsnoOfPatientId(List<org.hl7.fhir.r4.model.Identifier> patientIds) {
		if (patientIds != null) {
			java.util.Optional<org.hl7.fhir.r4.model.Identifier> patientId = patientIds.stream()
					.filter(id -> id != null && IheConstants.OID_SVNR.equalsIgnoreCase(id.getSystem())).findAny();
			if (patientId.isPresent()) {
				return patientId.get();
			}
		}
		return new org.hl7.fhir.r4.model.Identifier();
	}

	private Identificator queryPatientIdOfZpi(Identificator patientId, String homeCommunityId) {
		FhirPatient patient = new FhirPatient();
		patient.addIdentifier(getIdentifierOfIdentificator(patientId));

		List<FhirPatient> patients = PatientIndexTransactions.queryPatientDemographics(patient, oAssertion);
		Identificator patId = null;
		if (patients != null && !patients.isEmpty() && patients.get(0) != null) {
			for (Identifier id : patients.get(0).getIdentifier()) {
				String oid = "";
				if (id != null && id.getSystem().startsWith(FhirCommon.oidUrn)) {
					oid = FhirCommon.removeUrnOidPrefix(id.getSystem());

					if (oid != null && oid.contains(homeCommunityId)) {
						patId = new Identificator();
						patId.setExtension(id.getValue());
						patId.setRoot(oid);
					}
				}
			}
		}

		return patId;
	}

	public RegistryResponseType cancelDocument(String uniqueId, Identificator patientId, ClassCode classCode,
			String organizationId, String authorInstitution, String oidElgaArea)
			throws XmlException, RemoteException, AccessDeniedMessage {
		IHERegistryServiceStub iheService = null;

		if (ClassCode.PHYSICIAN_NOTE.equals(classCode)) {
			iheService = IheServiceStubPool.getInstance().getIHERegistryEhealthPlusService();
		} else if (ClassCode.HISTORY_IMMUNIZATION.equals(classCode)) {
			iheService = IheServiceStubPool.getInstance().getIHERegistryEhealthPlusEImmunizationService();
		} else if (ClassCode.MEDICATIONS.equals(classCode)) {
			iheService = IheServiceStubPool.getInstance().getIHERegistryEmedService();
		} else {
			patientId = queryPatientIdOfZpi(patientId, oidElgaArea);
			iheService = IheServiceStubPool.getInstance().getIHERegistryService();
		}

		SecurityDocument security = SecurityDocument.Factory.newInstance();
		SecurityHeaderType securityHeaderType = SecurityHeaderType.Factory
				.parse(xmlAssertion.xmlText().replace("xml-fragment", "saml2:Assertion"));

		security.setSecurity(securityHeaderType);

		return iheService.updateDocumentSetRequest(
				IheQueryTransformer.createSubmitObjectsRequestDocument(uniqueId, patientId, classCode, organizationId,
						authorInstitution, isUrnOidNeeded(oidElgaArea, classCode.getCodeValue())),
				security).getRegistryResponse();

	}

}