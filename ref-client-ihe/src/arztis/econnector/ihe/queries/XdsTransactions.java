package arztis.econnector.ihe.queries;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.rmi.RemoteException;
import java.util.List;

import javax.naming.ServiceUnavailableException;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.ParserConfigurationException;

import org.apache.xmlbeans.XmlException;
import org.ehealth_connector.common.Identificator;
import org.ehealth_connector.common.at.enums.ClassCode;
import org.ehealth_connector.common.at.enums.PracticeSettingCode;
import org.ehealth_connector.common.at.enums.TypeCode;
import org.ehealth_connector.common.at.utils.XdsMetadataUtilAt;
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
 *
 * This class includes all needed transactions of IHE XDS (Cross-Enterprise
 * Document sharing) and XCA (Cross-Community Access) integration profile. This
 * profile describes the process of managing the sharing of documents between
 * any health care providers. </br>
 * This profile includes ITI-18 transaction to query registry for stored
 * documents. Furthermore this profile contains ITI-43 transaction, which
 * request document at repository. Another include transaction is called ITI-41
 * to provide and register documents. Moreover it includes ITI-8 or ITI-44 to
 * identify patient.</br>
 * This class contains ITI-18, ITI-43 and ITI-41 transactions. In ELGA reference
 * client this three transactions are needed. </br>
 * </br>
 *
 * @author Anna Jungwirth
 *
 */
public class XdsTransactions {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(XdsTransactions.class.getName());

	/** The Constant URN_OID_FORMAT. */
	private static final String URN_OID_FORMAT = "urn:oid:";
	
	/** The HCP or context assertion. */
	private XUAAssertion oAssertion;

	/** The xml assertion. */
	private AssertionType xmlAssertion;

	/** The virtual organization id. */
	private ElgaEHealthApplication virtualOrganizationId;

	/**
	 * Constructor to get an instance of the class XdsTransactions.
	 *
	 * @param organizationId OID of author
	 * @param assertion      assertion that authenticate health care provider who
	 *                       executes XDS transaction
	 * @param voId           eHealth application for which XDS transaction should be
	 *                       executed
	 * @throws ParserConfigurationException the parser configuration exception
	 * @throws SAXException the SAX exception
	 * @throws IOException Signals that an I/O exception has occurred.
	 */
	public XdsTransactions(String organizationId, AssertionType assertion, ElgaEHealthApplication voId)
			throws ParserConfigurationException, SAXException, IOException {
		xmlAssertion = assertion;
		oAssertion = AssertionTypeUtil.transformAssertionTypeToXUAAssertion(assertion);
		this.virtualOrganizationId = voId;
	}

	/**
	 * queries documents from registry with ITI-18 transaction. It queries metadata
	 * of documents for a given patient. This query could be limited through search
	 * criteria.
	 *
	 * @param findDocumentQuery details to restrict query
	 * @param typeCode          indicates which ELGA area should be used to query
	 *                          documents. There are different areas/endpoints to
	 *                          use for electronic records and virtual
	 *                          organizations. Values are available under <a href=
	 *                          "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen</a>
	 * @return a list of {@link XDSQueryResponseType}, if the query find some
	 *         matching data, otherwise it will also return
	 *         {@link XDSQueryResponseType}
	 * @throws ServiceUnavailableException the service unavailable exception
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
	 * retrieves document from repository with ITI-43 transaction. The user has
	 * already obtained unique ID, repository ID and home community ID of document
	 * to request.
	 *
	 * @param uniqueId        unique ID of document, which identifies document
	 *                        within the repository
	 * @param repositoryId    ID of repository from which document is to be
	 *                        retrieved
	 * @param homeCommunityId ID that identifies the community that owns the
	 *                        document
	 * @param typeCode        indicates which ELGA area should be used to retrieve
	 *                        document. There are different areas/endpoints to use
	 *                        for electronic records and virtual organizations.
	 *                        Values are available under <a href=
	 *                        "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen</a>
	 *
	 *
	 * @return {@link XDSQueryResponseType} with details about success or failure of
	 *         request
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

	/**
	 * creates array of {@link DocumentRequest} with passed parameters.
	 * {@link DocumentRequest} can be used to execute ITI-43 transaction to retrieve
	 * documents.
	 *
	 * @param uniqueId        unique ID of document, which identifies document
	 *                        within the repository
	 * @param repositoryId    ID of repository from which document is to be
	 *                        retrieved
	 * @param homeCommunityId ID that identifies the community that owns the
	 *                        document
	 * @param uri             URI of repository from which document is to be
	 *                        retrieved
	 * @return array of {@link DocumentRequest}. If no unique ID or repository ID or
	 *         home community ID is passed, an empty array is returned.
	 */
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

	/**
	 * determines correct communication service {@link ConvenienceCommunicationAt}
	 * for the respective request. Every application (eMedikation, eBefund,
	 * eImpfpass, virtuelle Organisationen) has its own endpoint and therefore its
	 * own communication service. Furthermore there are always different endpoints
	 * for retrieving and writing documents in one ELGA area. This endpoints to be
	 * used are defined in the configuration file.
	 *
	 * @param typeCode indicates which ELGA area should be used to retrieve
	 *                 document. There are different areas/endpoints to use for
	 *                 electronic records and virtual organizations. Values are
	 *                 available under <a href=
	 *                 "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen</a>
	 * @param query    indicates whether documents should be provided or retrieved
	 *                 with the request
	 * @return matching {@link ConvenienceCommunicationAt} for the request
	 */
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

	/**
	 * transmits a set of documents and associated metadata with ITI-41 transaction.
	 * The documents and metadata can be stored in different locations. The metadata
	 * provided allows the recipient to process the content of the message without
	 * having to understand the content of the document. There are different types
	 * of metadata. Some must be set explicitly and others can be read from CDA
	 * document. All metadata that must be explicitly set are passed as parameters.
	 * While all other required metadata is read from transferred document. </br>
	 *
	 * Further information about XDS metadata can be retrieved from <a href=
	 * "https://www.elga.gv.at/fileadmin/user_upload/Dokumente_PDF_MP4/CDA/Implementierungsleitfaeden/Implementierungsleitfaeden_2.06/Implementierungsleitfaden_XDS_Metadaten_V2.06.pdf">https://www.elga.gv.at/fileadmin/user_upload/Dokumente_PDF_MP4/CDA/Implementierungsleitfaeden/Implementierungsleitfaeden_2.06/Implementierungsleitfaden_XDS_Metadaten_V2.06.pdf</a>
	 *
	 * @param status                 availability status of document to be provided
	 * @param typeCode               type code of document to be provided. Values
	 *                               are available in the subclass under <a href=
	 *                               "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen</a>
	 * @param healthCareFacilityCode classification of health care provider. Values
	 *                               are available under <a href=
	 *                               "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_HealthcareFacilityTypeCode">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_HealthcareFacilityTypeCode</a>
	 * @param practiceSettingCode    subject classification of document. Values are
	 *                               available under <a href=
	 *                               "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_PracticeSetting_VS">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_PracticeSetting_VS</a>
	 * @param formatCode             format of document content. Values are
	 *                               available under <a
	 *                               href=https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_FormatCode_VS>https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_FormatCode_VS</a>
	 * @param patientId              ID of patient about whom document is written
	 * @param parentDoc              ID of parent document
	 * @param cda                    {@link POCDMT000040ClinicalDocument} extracted
	 *                               CDA document, which is used to get needed
	 *                               metadata
	 * @param bytesDoc               bytes of XML document to be provided
	 * @param oid                    OID of ELGA area in which document should be
	 *                               stored.
	 * @param ownOid                 OID of document author
	 * @param validate               indicates whether CDA document should be
	 *                               validated before sending
	 * @return {@link XDSResponseType} with details about success or failure of
	 *         request
	 * @throws Exception the exception
	 */
	public XDSResponseType provideAndRegisterDocuments(AvailabilityStatusType status, String typeCode,
			CodedMetadataType healthCareFacilityCode, CodedMetadataType practiceSettingCode,
			CodedMetadataType formatCode, Identificator patientId, String parentDoc, POCDMT000040ClinicalDocument cda,
			byte[] bytesDoc, String oid, String ownOid, boolean validate) throws Exception {
		ConvenienceCommunicationAt communication = getConvenienceCommunication(typeCode, false);

		final InputStream inputStream = new ByteArrayInputStream(bytesDoc);

		if (validate) {
			validateCdaDocument(bytesDoc);
		}

		ElgaAreaConfig config = ElgaAreaConfigReader.getInstance().getElgaAreaConfigMap().get(oid);
		if (ownOid != null && ownOid.contains("urn:oid") && !config.isUrnOidNeededForOrganizationId()) {
			LOGGER.info("Replace urn oid");
			ownOid = ownOid.replace(URN_OID_FORMAT, "");
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

	/**
	 * validates passed CDA document. If validation failed with an error
	 * {@link InvalidCdaException} will be thrown with result details.
	 *
	 * @param document bytes of XML document
	 * @throws InvalidCdaException the invalid cda exception
	 */
	private void validateCdaDocument(byte[] document) throws InvalidCdaException {
		try {
			String validationResult = ValidationTransactions.validateCDADocument(true, true, false, document);

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("CDA doc: {}", new String(document));
				LOGGER.info("Result of CDA validation: {}", validationResult);
			}

			if (validationResult.toUpperCase().contains("FAILED")) {
				throw new InvalidCdaException(HttpServletResponse.SC_BAD_REQUEST, validationResult);
			} else if (validationResult.toUpperCase().contains("WARNING")) {
				LOGGER.warn(validationResult);
			}

		} catch (ConfigurationException e1) {
			LOGGER.error(e1.getMessage(), e1);
		}
	}

	/**
	 * determines correct content type code for certain ELGA area in which document
	 * should be stored. Each ELGA area may have different provisions in this
	 * respect. In some ELGA areas, content type of the document and the submission
	 * set may not be the same. In some areas, content type of submission set must
	 * match class code or type code of document. </br>
	 * The appropriate configuration for different areas is read from configuration
	 * file (resources/ELGA_Bereich_Config.csv)
	 *
	 * @param typeCode type code of document to be provided.
	 * @param oid      OID of ELGA area in which document should be stored.
	 *
	 * @return correct content type {@link CodedMetadataType}
	 */
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

		CodedMetadataType metadataType = null;
		String contentTypeCode = config.getContentTypes().get(typeCode);

		if (contentTypeCode != null && TypeCode.isInValueSet(contentTypeCode)) {
			metadataType = TypeCode.getEnum(contentTypeCode).getCodedMetadataType();
		}

		if (metadataType == null) {
			metadataType = ClassCode.getEnum(contentTypeCode).getCodedMetadataType();
		}

		if (metadataType != null && metadataType.getSchemeName() != null && !metadataType.getSchemeName().isEmpty()
				&& config.isUrnOidNeeded() && !metadataType.getSchemeName().contains(URN_OID_FORMAT)) {
			metadataType.setSchemeName(String.format("urn:oid:%s", metadataType.getSchemeName()));
		}

		return metadataType;
	}

	/**
	 * determines whether "urn oid" prefix is required for ELGA area in which
	 * document should be stored. Each ELGA area may have different provisions in
	 * this respect. In some ELGA areas, all OIDs for code systems must have
	 * "urn:oid:" as prefix. In other areas this prefix is not allowed.
	 *
	 * @param oid  OID of ELGA area in which document should be stored.
	 * @param code type code of document to be provided.
	 *
	 * @return true is returned if prefix is required, otherwise false
	 */
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

	/**
	 * creates {@link DocumentMetadataAt} with passed metadata and extracted
	 * metadata from document.
	 *
	 * @param status                 availability status of document to be provided
	 * @param typeCode               type code of document to be provided. Values
	 *                               are available in the subclass under <a href=
	 *                               "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen</a>
	 *
	 * @param healthCareFacilityCode classification of health care provider. Values
	 *                               are available under <a href=
	 *                               "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_HealthcareFacilityTypeCode">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_HealthcareFacilityTypeCode</a>
	 *
	 * @param practiceSettingCode    subject classification of document. Values are
	 *                               available under <a href=
	 *                               "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_PracticeSetting_VS">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_PracticeSetting_VS</a>
	 *
	 * @param formatCode             format of document content. Values are
	 *                               available under <a
	 *                               href=https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_FormatCode_VS>https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_FormatCode_VS</a>
	 *
	 * @param patientId              ID of patient about whom document is written
	 * @param parentDoc              ID of parent document
	 * @param cda                    {@link POCDMT000040ClinicalDocument} extracted
	 *                               CDA document, which is used to get needed
	 *                               metadata
	 * @param communication          communication service to which document should
	 *                               be added
	 * @param inputStream            stream of XML document
	 * @param oid                    OID of ELGA area in which document should be
	 *                               stored.
	 * @param ownOid                 OID of document author
	 *
	 * @return created {@link DocumentMetadataAt}
	 */
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

	/**
	 * adds the passed metadata to {@link DocumentMetadataAt}, which must be set
	 * explicitly. Furthermore it sets correct referenced ID list, which is a
	 * combination from set ID and home community ID. Moreover it extracts correct
	 * source patient ID for passed OID of document author.
	 *
	 * @param status                 availability status of document to be provided
	 * @param typeCode               type code of document to be provided. Values
	 *                               are available in the subclass under <a href=
	 *                               "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen</a>
	 *
	 * @param healthCareFacilityCode classification of health care provider. Values
	 *                               are available under <a href=
	 *                               "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_HealthcareFacilityTypeCode">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_HealthcareFacilityTypeCode</a>
	 *
	 * @param practiceSettingCode    subject classification of document. Values are
	 *                               available under <a href=
	 *                               "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_PracticeSetting_VS">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_PracticeSetting_VS</a>
	 *
	 * @param formatCode             format of document content. Values are
	 *                               available under <a
	 *                               href=https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_FormatCode_VS>https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_FormatCode_VS</a>
	 *
	 * @param patientId              ID of patient about whom document is written
	 * @param parentDoc              ID of parent document
	 * @param metaData               {@link DocumentMetadataAt} to add metadata
	 * @param emed                   indicates whether document is for eMedication
	 * @param elgaAreaOid            OID of ELGA area in which document should be
	 *                               stored.
	 * @param ownOid                 OID of document author
	 *
	 *
	 */
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

	/**
	 * determines correct ID that identifies the community that will own the
	 * document. "eMedikation", "eImpfpass" and virtual organizations have their own
	 * defined home community ID. As a result of the fact that health care providers
	 * have contracts with areas where they store their documents. Virtual
	 * organizations may have contracts with other areas, so these home community
	 * IDs are listed separately. "eMedikation" and "eImpfpass" have different home
	 * community IDs because they are central components of ELGA, therefore drugs
	 * and vaccinations are stored in another location.
	 *
	 * @param emed        indicates whether document is for eMedication
	 * @param elgaAreaOid OID of ELGA area in which document should be stored.
	 *
	 * @return ID that identifies the community that will own the document
	 */
	private String getHomeCommunityId(boolean emed, String elgaAreaOid) {
		if (emed) {
			return IheConstants.OID_EMEDICATION_HOME_COMMUNITY;
		} else if (virtualOrganizationId != null && !virtualOrganizationId.getHomeCommunityId().isEmpty()) {
			return virtualOrganizationId.getHomeCommunityId();
		} else {
			return elgaAreaOid;
		}
	}

	/**
	 * extracts correct patient ID of passed patient IDs for document author. It
	 * compares root values of passed patient IDs with OID of document author. If
	 * these two values are equal, this patient ID is returned.
	 *
	 * @param patientIds given patient IDs
	 * @param ownOid     OID of document author
	 * @param typeCode   type code of document
	 *
	 * @return patient ID created by system of document author. If there is not
	 *         matching patient ID, null is returned.
	 */
	private Identificator getSourcePatientIdHl7Cdar2(List<Identificator> patientIds, String ownOid, String typeCode) {
		if (patientIds == null) {
			return null;
		}

		for (Identificator patientId : patientIds) {
			if (patientId != null) {
				if (!TypeCode.isMedications(typeCode)) {
					if (patientId.getRoot() != null
							&& ownOid.replace(URN_OID_FORMAT, "").equalsIgnoreCase(patientId.getRoot())) {
						return patientId;
					}
				} else {
					return patientId;
				}
			}
		}

		return null;
	}

	/**
	 * extracts patient ID for ELGA area in which document should be stored.
	 * Destination patient ID for electronic records (eBefunde) must be the ID
	 * defined of ELGA area to store. For electronic medication, electronic
	 * immuization and virtual organizations social security number or bPk can be
	 * used as destination patient ID.
	 *
	 * @param patientId   ID of patient about whom document is written
	 * @param elgaAreaOid OID of ELGA area in which document should be stored.
	 * @param emed        indicates whether document is for eMedication
	 *
	 * @return patient ID which can be used to store document in ELGA area
	 */
	public Identificator getDestinationPatientIdHl7Cdar2(Identificator patientId, String elgaAreaOid, boolean emed) {
		if (patientId != null
				&& (emed || (virtualOrganizationId != null && !virtualOrganizationId.getId().isEmpty()))) {
			return new Identificator(patientId.getRoot(), patientId.getExtension());
		} else {
			return getPatientIdByElgaAreaId(elgaAreaOid, patientId);
		}
	}

	/**
	 * extracts patient ID for ELGA area in which document should be stored. This
	 * method executes patient demographic request to retrieve all available patient
	 * IDs. From all found patient IDs ID with same OID as ELGA area is returned.
	 *
	 * @param elgaAreaOid OID of ELGA area in which document should be stored.
	 * @param patientId   known patient ID e.g. social security number or bPk
	 *
	 * @return found patient ID or if no matching patient ID is found, null is
	 *         returned.
	 */
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

	/**
	 * transforms {@link Identificator} to {@link Identifier}. Creates new
	 * {@link Identifier} with same value as {@link Identificator} has.
	 *
	 * @param patientId ID to transform
	 *
	 * @return created {@link Identifier}
	 */
	private Identifier getIdentifierOfIdentificator(Identificator patientId) {
		if (patientId == null) {
			return null;
		}

		Identifier patId = new Identifier();
		patId.setSystem(patientId.getRoot());
		patId.setValue(patientId.getExtension());
		return patId;
	}

	/**
	 * updates metadata attributes of document in registry with ITI-57 transaction.
	 * In ELGA it is only allowed to update metadata attribute for availability
	 * status. Therefore this method is implemented that availability status of
	 * document will be set from approved to deprecated. In other words, the
	 * document is cancelled.
	 *
	 * @param uniqueId          unique ID of document to be edited
	 * @param patientId         ID of patient about whom document is written
	 * @param classCode         class code of document to be edited. Values are
	 *                          available under <a href=
	 *                          "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen</a>
	 * @param organizationId    OID of organization that wants to edit document
	 *                          metadata
	 * @param authorInstitution OID of document author who created document to be
	 *                          edited
	 * @param oidElgaArea       OID of ELGA area in which document should be edited.
	 * @return {@link RegistryResponseType} with details about success or failure of
	 *         request
	 * @throws XmlException the xml exception
	 * @throws RemoteException the remote exception
	 * @throws AccessDeniedMessage the access denied message
	 */
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
			patientId = getPatientIdByElgaAreaId(oidElgaArea, patientId);
			iheService = IheServiceStubPool.getInstance().getIHERegistryService();
		}

		SecurityDocument security = SecurityDocument.Factory.newInstance();
		SecurityHeaderType securityHeaderType = SecurityHeaderType.Factory
				.parse(xmlAssertion.xmlText().replace("xml-fragment", "saml2:Assertion"));

		security.setSecurity(securityHeaderType);

		ElgaAreaConfig config = ElgaAreaConfigReader.getInstance().getElgaAreaConfigMap().get(oidElgaArea);

		if (config != null && !config.isUrnOidNeededForOrganizationId() && organizationId.contains("urn:oid")) {
			organizationId = organizationId.replace(URN_OID_FORMAT, "");
		}

		return iheService.updateDocumentSetRequest(
				IheQueryTransformer.createSubmitObjectsRequestDocument(uniqueId, patientId, classCode, organizationId,
						authorInstitution, isUrnOidNeeded(oidElgaArea, classCode.getCodeValue())),
				security).getRegistryResponse();
	}

}