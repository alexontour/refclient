package arztis.econnector.rest;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.rmi.RemoteException;
import java.util.Base64;
import java.util.List;

import javax.naming.ServiceUnavailableException;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.JAXBException;

import org.apache.axis2.AxisFault;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.EimpfDocumentKompletterImmunisierungsstatus;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.EimpfDocumentUpdateImmunisierungsstatus;
import org.ehealth_connector.common.Identificator;
import org.ehealth_connector.common.at.enums.AvailabilityStatus;
import org.ehealth_connector.common.at.enums.FormatCode;
import org.ehealth_connector.common.at.enums.TypeCode;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040ClinicalDocument;
import org.ehealth_connector.common.utils.DebugUtil;
import org.ehealth_connector.communication.DocumentRequest;
import org.hl7.fhir.r4.model.Bundle;
import org.hl7.fhir.r4.model.Bundle.BundleEntryComponent;
import org.hl7.fhir.r4.model.Bundle.BundleType;
import org.hl7.fhir.r4.model.DocumentReference;
import org.hl7.fhir.r4.model.Enumerations.DocumentReferenceStatus;
import org.hl7.fhir.r4.model.OperationOutcome.IssueSeverity;
import org.hl7.fhir.r4.model.OperationOutcome.IssueType;
import org.hl7.fhir.r4.model.codesystems.OperationOutcome;
import org.openhealthtools.ihe.xds.document.XDSDocument;
import org.openhealthtools.ihe.xds.metadata.AvailabilityStatusType;
import org.openhealthtools.ihe.xds.metadata.CodedMetadataType;
import org.openhealthtools.ihe.xds.response.DocumentEntryResponseType;
import org.openhealthtools.ihe.xds.response.XDSErrorType;
import org.openhealthtools.ihe.xds.response.XDSQueryResponseType;
import org.openhealthtools.ihe.xds.response.XDSResponseType;
import org.openhealthtools.ihe.xds.response.XDSRetrieveResponseType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.common.model.Message;
import arztis.econnector.ihe.ElgaConnectionCaller;
import arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType;
import arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage;
import arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType;
import arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError;
import arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType;
import arztis.econnector.ihe.model.ConnectionData;
import arztis.econnector.ihe.parameters.PatientContactParameter;
import arztis.econnector.ihe.queries.PharmTransactions;
import arztis.econnector.ihe.queries.common.InvalidCdaException;
import arztis.econnector.ihe.utilities.AssertionTypeUtil;
import arztis.econnector.ihe.utilities.ElgaEHealthApplication;
import arztis.econnector.ihe.utilities.IheConstants;
import arztis.econnector.ihe.utilities.UnauthorizedException;
import arztis.econnector.rest.model.eimpf.CompleteImmunizationState;
import arztis.econnector.rest.model.eimpf.UpdateImmunizationState;
import arztis.econnector.rest.model.fhir.FhirBundle;
import arztis.econnector.rest.model.fhir.FhirDocumentReference;
import arztis.econnector.rest.model.fhir.FhirOrganization;
import arztis.econnector.rest.utilities.ElgaTypeConverter;
import arztis.econnector.rest.utilities.FhirUtil;

/**
 * JAVA API for the ELGA reference client. This class includes all function
 * calls that are required for
 * 
 * <ul>
 * <li>Reading the cards (e-card and Admin-Card - GINA)</li>
 * <li>User registration for ELGA and GINA</li>
 * <li>Patient contact confirmation with e-Card and bPK</li>
 * <li>Retrieving documents from ELGA and their eHealth applications such as the
 * electronic immunization record or the virtual organizations</li>
 * <li>Posting and register documents in ELGA areas for different services such
 * as the electronic immunization record or the eMedication</li>
 * <li>Canceling documents in ELGA areas for different services such as the
 * electronic immunization record or the eMedication</li>
 * <li>Retrieving the ID for eMedication (eMed-Id)</li>
 * <li>Retrieving demographic patient data</li>
 * <li>List and cancel patient contacts</li>
 * </ul>
 * 
 * This class is built as singleton, so you have to call {@link getInstance} to
 * instantiate.
 * 
 * @author ET-Innovations
 *
 */
public class FhirElgaConnectionCaller extends ElgaConnectionCaller {

	private static final String URN_OID_FORMAT = "urn:oid:";
	private static final String NO_DOCUMENT_REFERENCE_FOUND = "No document reference found";

	private static final Logger LOGGER = LoggerFactory.getLogger(FhirElgaConnectionCaller.class.getName());

	private static class LazyHolder {
		static final FhirElgaConnectionCaller INSTANCE = new FhirElgaConnectionCaller();
	}

	/**
	 * This method returns the instance of the class (Singleton)
	 * 
	 * @return instance
	 */
	public static FhirElgaConnectionCaller getInstance() {
		return LazyHolder.INSTANCE;
	}

	/**
	 * This method retrieves the document list from ELGA. The method IHE ITI-18 or
	 * PHARM-1 is used in the background according to passed document type.
	 *
	 * @param documentReference contains all data to restrict the queried documents
	 * @param connData          Connection data of the respective user requesting
	 *                          the documents
	 * @param organizationId    OID of the organization of the health care provider
	 *
	 * @return If documents were found, a list of {@link DocumentEntryResponseType}
	 *         is returned, otherwise an {@link Message} with the detailed error
	 *         message is returned.
	 * 
	 */
	public FhirBundle requestDocumentList(FhirDocumentReference documentReference, ConnectionData connData) {
		if (connData == null) {
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_UNAUTHORIZED,
					IssueSeverity.ERROR, IssueType.LOGIN, OperationOutcome.MSGAUTHREQUIRED, null);
		}

		String typeCode = null;

		if (documentReference.hasType() && documentReference.getType().hasCoding()) {
			typeCode = documentReference.getType().getCoding().get(0).getCode();
		}

		if (typeCode == null) {
			return requestDocumentList(documentReference, connData, typeCode);
		} else {
			switch (TypeCode.getEnum(typeCode)) {
			case MEDICATION_SUMMARY_DOCUMENT:
			case IMMUNIZATION_SUMMARY_REPORT:
				return findMedicationList(connData, documentReference, typeCode);
			case PRESCRIPTION_FOR_MEDICAITON:
				return findPrescriptions(connData, documentReference, typeCode);
			case MEDICATION_DISPENDED_EXTENDED_DOCUMENT:
				return findPrescriptionsForDispenses(connData, documentReference, typeCode);
			case IMMUNIZATION_NOTE:
				return findUpdateImmunisationStates(connData, documentReference, typeCode);
			default:
				return requestDocumentList(documentReference, connData, typeCode);
			}
		}

	}

	/**
	 * This method retrieves the document list from ELGA. The method IHE ITI-18 is
	 * used in the background according to passed document type.
	 *
	 * @param documentReference  contains all data to restrict queried documents
	 * @param assertion          assertion of respective user requesting the
	 *                           documents
	 * @param typeCode           code document type
	 * @param eHealthApplication eHealth application like eImmunization or virtual
	 *                           organization from which document should be queried
	 *
	 * @return If documents were found, a FHIR {@link Bundle} with
	 *         {@link FhirDocumentReference} as resource is returned, otherwise a
	 *         FHIR {@link Bundle} with detailed error message in response is
	 *         returned.
	 * 
	 */
	private FhirBundle requestDocumentList(FhirDocumentReference documentReference, ConnectionData connData,
			String typeCode) {
		try {
			LOGGER.debug("Method to query the metadata of the documents is called");

			if (documentReference == null) {
				return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_BAD_REQUEST,
						IssueSeverity.ERROR, IssueType.NULL, OperationOutcome.MSGPARAMUNKNOWN,
						"Document reference is null!");
			}

			Identificator patientId = null;
			if (documentReference.getSubject() != null && documentReference.getSubject().getIdentifier() != null) {
				patientId = new Identificator(documentReference.getSubject().getIdentifier().getSystem(),
						documentReference.getSubject().getIdentifier().getValue());
			}

			AvailabilityStatus status = DocumentReferenceStatus.SUPERSEDED.equals(documentReference.getStatus())
					? AvailabilityStatus.DEPRECATED
					: AvailabilityStatus.APPROVED;

			return extractFhirBundleFromResponse(super.requestDocumentList(patientId, typeCode, status, connData));
		} catch (UnauthorizedException | NullPointerException ex) {
			LOGGER.error(ex.getMessage(), ex);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_UNAUTHORIZED,
					IssueSeverity.ERROR, IssueType.LOGIN, OperationOutcome.MSGAUTHREQUIRED, null);
		} catch (ServiceUnavailableException ex) {
			LOGGER.error(ex.getMessage(), ex);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_SERVICE_UNAVAILABLE,
					IssueSeverity.ERROR, IssueType.NOTFOUND, null,
					"Es konnte kein Service gefunden werden zum Abrufen der Dokumente");
		} catch (IllegalArgumentException ex) {
			LOGGER.error(ex.getMessage(), ex);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_SERVICE_UNAVAILABLE,
					IssueSeverity.ERROR, IssueType.NOTFOUND, null,
					"Parameter zum Abrufen der Dokumente sind nicht vorhanden");
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					IssueSeverity.ERROR, IssueType.EXCEPTION, null, e.getMessage());
		}
	}

	private FhirBundle extractFhirBundleFromResponse(XDSQueryResponseType qr) {
		if (qr == null) {
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					IssueSeverity.ERROR, null, null, "No response received");
		} else if (qr.getDocumentEntryResponses().isEmpty() && qr.getErrorList() == null) {
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					IssueSeverity.ERROR, null, null, null);
		} else if (qr.getErrorList() != null && qr.getDocumentEntryResponses().isEmpty()) {
			String error = getError(qr.getErrorList().getError());
			LOGGER.error("{}", error);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					IssueSeverity.ERROR, null, null, null);
		} else {
			if (LOGGER.isDebugEnabled()) {
				StringBuilder sb = new StringBuilder();
				for (DocumentEntryResponseType entryType : qr.getDocumentEntryResponses()) {
					sb.append(DebugUtil.debugDocumentMetaData(entryType.getDocumentEntry()));
				}

				LOGGER.debug("Found documents: {}", sb);
			}

			return ElgaTypeConverter.createFhirBundleOfDocumentResponseType(qr.getDocumentEntryResponses());
		}
	}

	/**
	 * This method retrieves a certain document from ELGA. The method IHE ITI-43 is
	 * used in the background.
	 *
	 * @param connData          Connection data of the respective user requesting
	 *                          the document
	 * @param documentReference contains the unique id, repository id and the home
	 *                          community id of queried document
	 *
	 * @return If the document was found, {@link FhirBundle} with list of resources
	 *         is returned, otherwise {@link FhirBundle} with response with details
	 *         about error message is returned.
	 *
	 */
	public FhirBundle retrieveDocuments(ConnectionData connData, FhirDocumentReference documentReference) {
		try {
			LOGGER.debug("Method to retrieve documents is called");

			String typeCode = null;

			if (documentReference.hasType() && documentReference.getType().hasCoding()) {
				typeCode = documentReference.getType().getCoding().get(0).getCode();
			}

			String uniqueId = null;
			String repositoryId = null;
			String homeCommunityId = null;
			if (documentReference.getContentFirstRep() != null
					&& documentReference.getContentFirstRep().getAttachment() != null
					&& documentReference.getContentFirstRep().getAttachment().getUrl() != null
					&& documentReference.getContentFirstRep().getAttachment().getUrl().indexOf('/') != -1) {
				String[] pathes = documentReference.getContentFirstRep().getAttachment().getUrl().split("/");

				repositoryId = pathes[pathes.length - 2];
				uniqueId = pathes[pathes.length - 3];
				homeCommunityId = pathes[pathes.length - 1];
			}

			XDSRetrieveResponseType rrt = super.retrieveDocuments(connData, uniqueId, repositoryId, homeCommunityId,
					typeCode);

			return extractFhirBundleFromResponse(rrt, documentReference, typeCode);
		} catch (NullPointerException ex) {
			LOGGER.error("NullPointerException: {}", ex);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_UNAUTHORIZED,
					IssueSeverity.ERROR, IssueType.LOGIN, OperationOutcome.MSGAUTHREQUIRED, null);
		} catch (UnauthorizedException ex) {
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_UNAUTHORIZED,
					IssueSeverity.ERROR, IssueType.LOGIN, OperationOutcome.MSGAUTHREQUIRED, null);
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					IssueSeverity.ERROR, IssueType.EXCEPTION, null, e.getMessage());
		}
	}

	private FhirBundle extractFhirBundleFromResponse(XDSRetrieveResponseType rrt,
			FhirDocumentReference documentReference, String typeCode) {
		if (rrt != null) {

			if (rrt.getAttachments() != null) {
				if (rrt.getAttachments().isEmpty()) {
					LOGGER.error("{}", getErrorMessage(rrt.getErrorList().getError()));
					return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_NOT_FOUND,
							IssueSeverity.ERROR, IssueType.NOTFOUND, null, getError(rrt.getErrorList().getError()));
				} else {
					addXdsDocumentToDocumentReference(rrt.getAttachments(), documentReference, typeCode);
					return new FhirBundle(List.of(documentReference));
				}
			}

			if (rrt.getErrorList() != null) {
				return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_NOT_FOUND,
						IssueSeverity.ERROR, IssueType.NOTFOUND, null, getError(rrt.getErrorList().getError()));

			}
		}

		return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
				IssueSeverity.ERROR, IssueType.EXCEPTION, null, "unknown error");
	}

	/**
	 * Add XDS document (result of ITI-41 request) to passed document reference
	 *
	 * @param documents XDS documents as result of ITI-41 request
	 * @param reference document reference to add returned document
	 * @param typeCode  type of document
	 *
	 * @return document reference with returned document
	 */
	public void addXdsDocumentToDocumentReference(List<XDSDocument> documents, DocumentReference reference,
			String typeCode) {

		if (reference != null && reference.getContent() != null && documents != null) {

			int index = 0;
			for (XDSDocument document : documents) {
				if (document.getStream() != null) {
					byte[] bytesDoc = null;
					InputStream is = document.getStream();
					try {
						bytesDoc = IOUtils.toByteArray(is);
					} catch (IOException e) {
						LOGGER.error(e.getMessage(), e);
					}

					if (reference.getContent().get(index) != null
							&& reference.getContent().get(index).getAttachment() != null) {
						if (reference.getContent().get(index).getAttachment().getContentType() != null && reference
								.getContent().get(index).getAttachment().getContentType().contains("json")) {
							reference.getContent().get(index).getAttachment()
									.setData(Base64.getEncoder().encode(convertXmlToJson(typeCode, bytesDoc)));
						} else {
							reference.getContent().get(index).getAttachment()
									.setData(Base64.getEncoder().encode(bytesDoc));
						}
					}
				}
			}
		}
	}

	private byte[] convertXmlToJson(String typeCode, byte[] bytesDoc) {
		if (TypeCode.IMMUNIZATION_SUMMARY_REPORT.getCodeValue().equalsIgnoreCase(typeCode)) {
			File file = new File("resources/update_immunization_example.xml");
			try {
				FileUtils.write(file, new String(bytesDoc), StandardCharsets.UTF_8);
				EimpfDocumentKompletterImmunisierungsstatus completeImmunizationState = EimpfDocumentKompletterImmunisierungsstatus
						.loadFromFile(file);
				CompleteImmunizationState fhirCompleteImmunisationState = new CompleteImmunizationState(
						completeImmunizationState);
				return fhirCompleteImmunisationState.toJson().getBytes(StandardCharsets.UTF_8);
			} catch (JAXBException | IOException e) {
				LOGGER.error(e.getMessage(), e);
			} finally {
				try {
					java.nio.file.Files.delete(file.toPath());
				} catch (IOException e) {
					LOGGER.error(e.getMessage(), e);
				}
			}
		}

		return new byte[0];
	}

	public String getError(List<XDSErrorType> errors) {
		StringBuilder sb = new StringBuilder();

		if (errors == null || errors.isEmpty()) {
			return sb.toString();
		}

		for (XDSErrorType xdsError : errors) {
			sb.append(xdsError.getCodeContext());
		}

		return sb.toString();
	}

	public String getErrorMessage(List<XDSErrorType> errors) {
		StringBuilder sb = new StringBuilder();

		if (errors == null || errors.isEmpty()) {
			return sb.toString();
		}

		for (XDSErrorType xdsError : errors) {
			if (xdsError != null) {
				sb.append(" ");
				sb.append(" Status: ");
				sb.append(xdsError.getErrorCode().getLiteral());
				sb.append(" ");
				sb.append(xdsError.getValue());
				sb.append(" ");
				sb.append(xdsError.getCodeContext());
			}
		}

		return sb.toString();
	}

	public static DocumentRequest[] generateDocumentRequests(DocumentReference reference, URI uri) {
		DocumentRequest[] requests = null;

		if (reference.getContent() != null) {
			requests = new DocumentRequest[reference.getContent().size()];
		}

		for (int i = 0; i < reference.getContent().size(); i++) {
			if (requests != null && reference.getContent().get(i) != null
					&& reference.getContent().get(i).getAttachment() != null
					&& reference.getContent().get(i).getAttachment().getUrl() != null
					&& reference.getContent().get(i).getAttachment().getUrl().indexOf('/') != -1) {
				String[] pathes = reference.getContent().get(i).getAttachment().getUrl().split("/");

				DocumentRequest documentRequest = new DocumentRequest(pathes[pathes.length - 2], uri,
						pathes[pathes.length - 3]);

				documentRequest.setHomeCommunityId(pathes[pathes.length - 1]);

				requests[i] = documentRequest;
			}
		}

		return requests;
	}

	/**
	 * This method first retrieves the card token form the inserted e-Card.
	 * Afterwards the identity assertion is requested by the SVC with the respective
	 * card token. The identity assertion is sent to all ELGA areas, which are
	 * enabled in the configuration file.
	 *
	 * @param connData         Connection data of the respective user, who would
	 *                         like to insert the contact confirmation
	 * @param contactParameter contains details like the used card reader to
	 *                         register the contact confirmation
	 * @param ginoEndpoint     endpoint of the GINO Service, it is required if the
	 *                         patient contact should be registered with eCard
	 *
	 * @return If the contact confirmation was successfully submitted, true is
	 *         returned. Otherwise false or an error message {@link Message} is
	 *         returned.
	 */
	@Override
	public FhirBundle registerPatientContact(ConnectionData connData, PatientContactParameter contactParameter,
			String ginoEndpoint) {
		try {
			Object response = super.registerPatientContact(connData, contactParameter, ginoEndpoint);

			if (response instanceof Boolean) {
				return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_ACCEPTED,
						IssueSeverity.INFORMATION, null, null, null);
			} else if (response instanceof Message) {
				Message message = (Message) response;
				return new FhirBundle(BundleType.TRANSACTIONRESPONSE, message.getRequestStatus(), IssueSeverity.ERROR,
						null, null, message.getText());
			}
		} catch (UnauthorizedException e) {
			LOGGER.error(e.getMessage(), e);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_UNAUTHORIZED,
					IssueSeverity.ERROR, IssueType.LOGIN, OperationOutcome.MSGAUTHREQUIRED, "No HCP assertion found");
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					IssueSeverity.ERROR, null, null, e.getMessage());
		}

		return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
				IssueSeverity.ERROR, IssueType.NULL, OperationOutcome.NULL, "uknown error");
	}

	/**
	 * This method queries first metadata of medication list and queries afterwards
	 * medication list.
	 *
	 * @param assertion         assertion of respective user, who would like to
	 *                          retrieve medication list
	 * @param documentReference contains details for restriction of medication list
	 *                          search
	 * @param typeCode          type code of document to search for
	 *
	 * @return If the user was registered successfully and a medication list was
	 *         found the document is returned. If the query failed, the error
	 *         message {@link Message} why the request failed is returned.
	 */
	private FhirBundle findMedicationList(ConnectionData connData, FhirDocumentReference documentReference,
			String typeCode) {

		ElgaEHealthApplication eHealthApplication = getElgaEHealthApplication(typeCode);

		try {
			AssertionType assertion = getAssertion(eHealthApplication, connData, typeCode);
			PharmTransactions oPharmTransactions = new PharmTransactions();

			Identificator patientId = null;
			AvailabilityStatus status = null;

			if (documentReference == null || !documentReference.hasSubject() || !documentReference.hasStatus()) {
				LOGGER.error(NO_DOCUMENT_REFERENCE_FOUND);
				return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_BAD_REQUEST,
						IssueSeverity.ERROR, IssueType.NULL, null, NO_DOCUMENT_REFERENCE_FOUND);
			}

			if (documentReference.getSubject().hasIdentifier()) {
				patientId = new Identificator(documentReference.getSubject().getIdentifier().getSystem(),
						documentReference.getSubject().getIdentifier().getValue());
			}

			status = documentReference.getStatus().equals(DocumentReferenceStatus.SUPERSEDED)
					? AvailabilityStatus.DEPRECATED
					: AvailabilityStatus.APPROVED;

			RegistryObjectListType response = oPharmTransactions.findMedicationList(patientId, status, assertion,
					typeCode);

			if (response == null) {
				LOGGER.error("No medication list found");
				return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_NO_CONTENT,
						IssueSeverity.ERROR, null, null, "No medication list found");
			}

			FhirBundle bundle = ElgaTypeConverter.createFhirBundleOfRegistryObjectToMetadata(response);

			if (bundle == null || !bundle.hasEntry()) {
				return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_NOT_FOUND,
						IssueSeverity.ERROR, IssueType.NOTFOUND, OperationOutcome.MSGNOEXIST, null);
			} else if (BundleType.TRANSACTIONRESPONSE.equals(bundle.getType())) {
				return bundle;
			}

			FhirDocumentReference documentReferenceResult = null;
			for (BundleEntryComponent bundleEntry : bundle.getEntry()) {
				if (bundleEntry != null && bundleEntry.getResource() instanceof DocumentReference) {
					documentReferenceResult = (FhirDocumentReference) bundleEntry.getResource();
					documentReferenceResult.getContentFirstRep().getAttachment()
							.setContentType(documentReference.getContentFirstRep().getAttachment().getContentType());
				}
			}

			return retrieveDocuments(connData, documentReferenceResult);

		} catch (AxisFault af) {
			LOGGER.error(af.getFaultReasonElement().getText(), af);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					IssueSeverity.ERROR, null, null, af.getFaultReasonElement().getText() + " "
							+ af.getFaultCodeElement().getSubCode().getValue().getText());
		} catch (UnauthorizedException e) {
			LOGGER.error(e.getMessage(), e);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_UNAUTHORIZED,
					IssueSeverity.ERROR, IssueType.LOGIN, OperationOutcome.MSGAUTHREQUIRED, "No HCP assertion found");
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					IssueSeverity.ERROR, null, null, e.getMessage());
		}
	}

	/**
	 * This method queries all prescriptions (open and closed) of a patient
	 *
	 * @param assertion         assertion of the respective user, who would like to
	 *                          retrieve prescriptions
	 * @param documentReference contains details for the restriction of prescription
	 *                          search such as social security number of the patient
	 * @param forDispenses      parameter to limit the search for open or all
	 *                          prescriptions. True if only prescriptions to be
	 *                          dispensed should be requested. Otherwise false.
	 *
	 * @return If the user was registered successfully and prescriptions were found,
	 *         {@link FhirBundle} with {@link FhirDocumentReference} as resource is
	 *         returned. If the query failed, a {@link FhirBundle} with information,
	 *         why the request failed is returned.
	 */
	public FhirBundle findPrescriptions(ConnectionData connData, FhirDocumentReference documentReference,
			String typeCode) {
		return findPrescriptionsCommon(connData, documentReference, typeCode, false);
	}

	/**
	 * This method queries open prescriptions of a patient.
	 *
	 * @param assertion         assertion of the respective user, who would like to
	 *                          retrieve prescriptions
	 * @param documentReference contains details for the restriction of prescription
	 *                          search such as social security number of the patient
	 *
	 * @return If the user was registered successfully and prescriptions were found,
	 *         {@link FhirBundle} with {@link FhirDocumentReference} as resource is
	 *         returned. If the query failed, a {@link FhirBundle} with information,
	 *         why the request failed is returned.
	 */
	public FhirBundle findPrescriptionsForDispenses(ConnectionData connData, FhirDocumentReference documentReference,
			String typeCode) {
		return findPrescriptionsCommon(connData, documentReference, typeCode, true);
	}

	private FhirBundle findPrescriptionsCommon(ConnectionData connData, FhirDocumentReference documentReference,
			String typeCode, boolean dispense) {
		try {
			if (documentReference == null || !documentReference.hasType() || !documentReference.hasSubject()
					|| !documentReference.hasStatus()) {
				throw new IllegalArgumentException(NO_DOCUMENT_REFERENCE_FOUND);
			}

			Identificator patientId = null;
			AvailabilityStatus status = null;

			if (documentReference.getSubject().hasIdentifier()) {
				patientId = new Identificator(documentReference.getSubject().getIdentifier().getSystem(),
						documentReference.getSubject().getIdentifier().getValue());
			}

			status = documentReference.getStatus().equals(DocumentReferenceStatus.SUPERSEDED)
					? AvailabilityStatus.DEPRECATED
					: AvailabilityStatus.APPROVED;

			AdhocQueryResponseDocument response = null;
			if (dispense) {
				response = super.findPrescriptionsForDispenses(connData, patientId, status, typeCode);
			} else {
				response = super.findPrescriptions(connData, patientId, status, typeCode);
			}

			return extractBundleFromAdhocQueryResponseDocument(response);
		} catch (NullPointerException | UnauthorizedException ex) {
			LOGGER.error(ex.getMessage(), ex);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_UNAUTHORIZED,
					IssueSeverity.ERROR, IssueType.LOGIN, OperationOutcome.MSGAUTHREQUIRED, null);
		} catch (IllegalArgumentException ex) {
			LOGGER.error(ex.getMessage(), ex);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_BAD_REQUEST,
					IssueSeverity.ERROR, IssueType.REQUIRED, OperationOutcome.MSGPARAMINVALID,
					NO_DOCUMENT_REFERENCE_FOUND);
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					IssueSeverity.ERROR, IssueType.EXCEPTION, null, e.getMessage());
		}
	}

	/**
	 * This method queries self created update immunization states of ELGA eHealth
	 * application "eImpfpass" of a patient.
	 *
	 * @param assertion         assertion of the respective user, who would like to
	 *                          retrieve immunization states
	 * @param documentReference contains details for the restriction of immunization
	 *                          states search such as social security number of
	 *                          patient
	 *
	 * @return If the user was registered successfully and immunization states were
	 *         found, {@link FhirBundle} with {@link FhirDocumentReference} as
	 *         resource is returned. If the query failed, a {@link FhirBundle} with
	 *         information, why the request failed is returned.
	 */
	public FhirBundle findUpdateImmunisationStates(ConnectionData connData, FhirDocumentReference documentReference,
			String typeCode) {
		try {
			if (documentReference == null || !documentReference.hasType() || !documentReference.hasSubject()
					|| !documentReference.hasStatus()) {
				return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_BAD_REQUEST,
						IssueSeverity.ERROR, IssueType.REQUIRED, OperationOutcome.MSGPARAMINVALID,
						NO_DOCUMENT_REFERENCE_FOUND);
			}

			Identificator patientId = null;
			AvailabilityStatus status = null;

			if (documentReference.getSubject().hasIdentifier()) {
				patientId = new Identificator(documentReference.getSubject().getIdentifier().getSystem(),
						documentReference.getSubject().getIdentifier().getValue());
			}

			status = documentReference.getStatus().equals(DocumentReferenceStatus.SUPERSEDED)
					? AvailabilityStatus.DEPRECATED
					: AvailabilityStatus.APPROVED;

			AdhocQueryResponseDocument response = super.findUpdateImmunisationStates(connData, patientId, status,
					typeCode);

			return extractBundleFromAdhocQueryResponseDocument(response);
		} catch (AxisFault af) {
			LOGGER.error(af.getFaultReasonElement().getText(), af);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					IssueSeverity.ERROR, IssueType.EXCEPTION, null, af.getFaultReasonElement().getText());
		} catch (NullPointerException | UnauthorizedException ex) {
			LOGGER.error(ex.getMessage(), ex);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_UNAUTHORIZED,
					IssueSeverity.ERROR, IssueType.LOGIN, OperationOutcome.MSGAUTHREQUIRED, null);
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					IssueSeverity.ERROR, IssueType.EXCEPTION, null, e.getMessage());
		}
	}

	private FhirBundle extractBundleFromAdhocQueryResponseDocument(AdhocQueryResponseDocument response) {
		if (response.getAdhocQueryResponse() != null
				&& response.getAdhocQueryResponse().getRegistryErrorList() != null) {
			RegistryError[] errors = response.getAdhocQueryResponse().getRegistryErrorList().getRegistryErrorArray();
			StringBuilder errorMessage = new StringBuilder();
			for (RegistryError error : errors) {
				errorMessage.append("Error: ");
				errorMessage.append(error.getCodeContext());
				errorMessage.append(" Location: ");
				errorMessage.append(error.getLocation());
				errorMessage.append(" Severity: ");
				errorMessage.append(error.getSeverity());
			}

			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					IssueSeverity.ERROR, IssueType.EXCEPTION, null, errorMessage.toString());
		}

		return ElgaTypeConverter
				.createFhirBundleOfRegistryObjectToMetadata(response.getAdhocQueryResponse().getRegistryObjectList());
	}

	/**
	 * This method provides and registers a CDA document in the ELGA area. An ITI-41
	 * transaction is executed in the background.
	 * 
	 * @param body              contains information about the document to be
	 *                          registered, such as metadata and the document itself
	 * @param connData          Connection data of the respective user providing the
	 *                          document
	 * @param oidTargetElgaArea OID of the ELGA area in which documents should be
	 *                          stored
	 * 
	 * @return a message {@link Message} whether the registration was successful or
	 *         why the request failed is returned.
	 */
	public FhirBundle provideAndRegisterDocuments(Bundle bundle, ConnectionData connData, String oidTargetElgaArea) {
		try {
			if (connData == null) {
				throw new UnauthorizedException(NO_HCP_ASSERTION_FOUND_LITERAL);
			}

			if (bundle == null || !bundle.hasEntry() || !bundle.getEntryFirstRep().hasResource()
					|| !(bundle.getEntryFirstRep().getResource() instanceof DocumentReference)
					|| !((DocumentReference) bundle.getEntryFirstRep().getResource()).hasType()) {
				return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_BAD_REQUEST,
						IssueSeverity.ERROR, IssueType.REQUIRED, OperationOutcome.MSGPARAMINVALID, null);
			}

			DocumentReference documentReference = (DocumentReference) bundle.getEntryFirstRep().getResource();

			if (documentReference == null) {
				return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_BAD_REQUEST,
						IssueSeverity.ERROR, IssueType.REQUIRED, OperationOutcome.MSGERRORPARSING,
						"Ein Fehler ist aufgetreten beim Auslesen der Dokumente");
			}

			if (documentReference.getType() == null || !documentReference.getType().hasCoding()
					|| documentReference.getType().getCodingFirstRep() == null
					|| documentReference.getType().getCodingFirstRep().getCode() == null) {
				return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_BAD_REQUEST,
						IssueSeverity.ERROR, IssueType.REQUIRED, OperationOutcome.MSGPARAMINVALID, null);
			}

			String typeCode = documentReference.getType().getCoding().get(0).getCode();
			AvailabilityStatusType status = null;
			CodedMetadataType facilityTypeCode = null;
			CodedMetadataType practiceSettingCode = null;
			CodedMetadataType formatCode = null;
			String parentDoc = null;
			Identificator patientId = null;
			byte[] doc = null;

			if (documentReference.hasContext()) {
				if (documentReference.getContext().hasFacilityType()) {
					facilityTypeCode = FhirDocumentReference.getFacilityType(documentReference);
				}

				if (documentReference.getContext().hasRelated()
						&& documentReference.getContext().getRelatedFirstRep().getIdentifier() != null) {
					parentDoc = documentReference.getContext().getRelatedFirstRep().getIdentifier().getValue();
				}

				if (documentReference.getContext().hasPracticeSetting()) {
					practiceSettingCode = FhirDocumentReference.getPracticeSetting(documentReference);
				}
			}

			if (documentReference.hasContent()) {
				formatCode = FhirDocumentReference.getFormatCode(documentReference);
			}

			if (documentReference.hasSubject() && documentReference.getSubject().hasIdentifier()) {
				patientId = new Identificator(documentReference.getSubject().getIdentifier().getSystem(),
						documentReference.getSubject().getIdentifier().getValue());
			}

			if (documentReference.hasStatus()) {
				status = DocumentReferenceStatus.SUPERSEDED.equals(documentReference.getStatus())
						? AvailabilityStatusType.DEPRECATED_LITERAL
						: AvailabilityStatusType.APPROVED_LITERAL;
			}

			POCDMT000040ClinicalDocument cda = null;
			if (documentReference.getContentFirstRep() != null
					&& documentReference.getContentFirstRep().getAttachment() != null) {
				cda = getCdaDetails(documentReference, connData);
				doc = documentReference.getContentFirstRep().getAttachment().getData();
			}

			extractFhirBundleFromResponse(super.provideAndRegisterDocuments(status, typeCode, facilityTypeCode,
					practiceSettingCode, formatCode, patientId, doc, cda, parentDoc, connData, oidTargetElgaArea));
		} catch (UnauthorizedException e) {
			LOGGER.error(e.getMessage(), e);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_UNAUTHORIZED,
					IssueSeverity.ERROR, IssueType.LOGIN, OperationOutcome.MSGAUTHREQUIRED, e.getMessage());
		} catch (InvalidCdaException e) {
			LOGGER.error(e.getMessage(), e);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, e.getCode(), IssueSeverity.ERROR,
					IssueType.CODEINVALID, OperationOutcome.MSGBADSYNTAX, e.getMessage());
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
			String message = "";
			if (e.getCause() instanceof AxisFault) {
				message = ((AxisFault) e.getCause()).getMessage();
			} else {
				message = e.getMessage();
			}

			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					IssueSeverity.ERROR, IssueType.EXCEPTION, OperationOutcome.NULL, message);
		}
		return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
				IssueSeverity.ERROR, IssueType.EXCEPTION, OperationOutcome.NULL, null);

	}

	private FhirBundle extractFhirBundleFromResponse(XDSResponseType response) {
		if (response != null && response.getErrorList() != null && response.getErrorList().getError() != null
				&& !response.getErrorList().getError().isEmpty()) {
			String error = getError(response.getErrorList().getError());
			LOGGER.error(error);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					IssueSeverity.ERROR, IssueType.EXCEPTION, OperationOutcome.NULL, error);
		} else if (response != null && response.getStatus() != null) {

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Document is successfully registered: {}", response.getStatus().getLiteral());
			}

			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_CREATED);
		}

		return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
				IssueSeverity.ERROR, IssueType.EXCEPTION, OperationOutcome.NULL, null);
	}

	private POCDMT000040ClinicalDocument getCdaDetails(DocumentReference documentReference, ConnectionData connData) {
		String formatCodeValue = documentReference.getContentFirstRep().getFormat().getCode();
		if (documentReference.getContentFirstRep().getAttachment().getContentType().contains("xml")) {
			return getDetailsOfDocument(documentReference.getContentFirstRep().getAttachment().getData(),
					formatCodeValue);
		} else if (documentReference.getContentFirstRep().getAttachment().getContentType().contains("json")) {
			return generateCdaDocument(documentReference, formatCodeValue, connData.getUserJwtToken());
		}
		return null;
	}

	protected POCDMT000040ClinicalDocument generateCdaDocument(DocumentReference documentReference, String formatCode,
			String userToken) {
		if (FormatCode.ELGA_IMMUNIZATION_RECORD_2019.getCodeValue().equalsIgnoreCase(formatCode)) {
			EimpfDocumentUpdateImmunisierungsstatus cda = (EimpfDocumentUpdateImmunisierungsstatus) generateCda(
					new String(documentReference.getContentFirstRep().getAttachment().getData(),
							StandardCharsets.UTF_8),
					userToken);
			documentReference.getContentFirstRep().getAttachment()
					.setData(super.getUpdateImmunizationEntryXml(cda).getBytes(StandardCharsets.UTF_8));
			return cda;
		}

		return null;
	}

	protected POCDMT000040ClinicalDocument getDetailsOfDocument(byte[] bytesDoc, String formatCode) {
		try {
			if (FormatCode.ELGA_IMMUNIZATION_RECORD_2019.getCodeValue().equalsIgnoreCase(formatCode)) {
				return getDetailsOfUpdateImmunization(bytesDoc);
			} else if (FormatCode.ELGA_LAB_REPORT_FULL_SUPPORT_2015.getCodeValue().equalsIgnoreCase(formatCode)) {
				return getDetailsOfLabReport(bytesDoc);
			}
		} catch (IOException e) {
			LOGGER.error(e.getMessage(), e);
		}

		return null;
	}

	/**
	 * This method cancels a document by setting the status of the document to
	 * deprecated. An ITI-57 transaction is executed in the background.
	 * 
	 * @param connData          Connection data of the respective user who wants to
	 *                          cancel the document
	 * @param parameter         contains information about the document to be
	 *                          cancelled
	 * @param oidTargetElgaArea OID of the ELGA area in which this document should
	 *                          be cancelled
	 *
	 * @return a message {@link Message} whether the cancellation was successful or
	 *         why the request failed is returned.
	 */
	public FhirBundle cancelDocument(ConnectionData connData, FhirDocumentReference documentReference,
			FhirOrganization authorInstitution, String oidTargetElgaArea) {

		if (documentReference == null || !documentReference.hasCategory()
				|| !documentReference.getCategoryFirstRep().hasCoding()
				|| documentReference.getCategoryFirstRep().getCoding().get(0) == null) {
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_BAD_REQUEST,
					IssueSeverity.ERROR, IssueType.REQUIRED, OperationOutcome.MSGPARAMINVALID, null);
		}

		String categoryCode = documentReference.getCategoryFirstRep().getCoding().get(0).getCode();
		String uniqueId = null;
		Identificator patientId = null;
		String authorInstitutionName = null;

		if (authorInstitution != null && authorInstitution.hasName()) {
			authorInstitutionName = authorInstitution.getName();
		}

		if (documentReference.hasSubject() && documentReference.getSubject().hasIdentifier()) {
			patientId = new Identificator(documentReference.getSubject().getIdentifier().getSystem(),
					documentReference.getSubject().getIdentifier().getValue());
		}

		if (documentReference.hasIdentifier()) {
			uniqueId = documentReference.getIdentifierFirstRep().getValue();
		}

		try {
			RegistryResponseType registryResponse = super.cancelDocument(connData, uniqueId, patientId, categoryCode,
					authorInstitutionName, oidTargetElgaArea);
			return extractFhirBundleFromResponse(registryResponse);
		} catch (AxisFault af) {
			LOGGER.error(af.getFaultReasonElement().getText(), af);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					IssueSeverity.ERROR, IssueType.EXCEPTION, null, af.getFaultReasonElement().getText());
		} catch (RemoteException e) {
			LOGGER.error(e.getMessage(), e);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_SERVICE_UNAVAILABLE,
					IssueSeverity.ERROR, IssueType.EXCEPTION, OperationOutcome.NULL, e.getMessage());
		} catch (AccessDeniedMessage e) {
			LOGGER.error(e.getMessage(), e);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_FORBIDDEN, IssueSeverity.ERROR,
					IssueType.FORBIDDEN, OperationOutcome.MSGRESOURCENOTALLOWED, e.getMessage());
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					IssueSeverity.ERROR, IssueType.EXCEPTION, null, e.getMessage());
		}
	}

	private FhirBundle extractFhirBundleFromResponse(RegistryResponseType registryResponse) {
		if (registryResponse != null && registryResponse.getStatus() != null
				&& registryResponse.getStatus().contains(IheConstants.EBXML_SUCCESS_LITERAL)) {
			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_ACCEPTED);
		} else if (registryResponse != null && registryResponse.getStatus() != null
				&& registryResponse.getRegistryErrorList() != null) {
			RegistryError[] errors = registryResponse.getRegistryErrorList().getRegistryErrorArray();
			StringBuilder errorMessage = new StringBuilder();
			for (RegistryError error : errors) {
				errorMessage.append("Error: ");
				errorMessage.append(error.getCodeContext());
				errorMessage.append(" Location: ");
				errorMessage.append(error.getLocation());
				errorMessage.append(" Severity: ");
				errorMessage.append(error.getSeverity());
			}

			return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					IssueSeverity.ERROR, IssueType.EXCEPTION, null, errorMessage.toString());
		}

		return new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
				IssueSeverity.ERROR, IssueType.EXCEPTION, null, null);
	}

	/**
	 * This method generates an instance of
	 * {@link EimpfDocumentUpdateImmunisierungsstatus} in the ehealth connector
	 * project. This instance can be used to generate the XML of the CDA document.
	 * The instance is filled with the information form the {@link json}
	 * 
	 * @param json          data of the CDA document in json form. The description
	 *                      of the detailed json structure could be found under
	 *                      <b>docs/api/v1/cda.md</b> in the section generate
	 *                      "Update Immunisierungsstatus"
	 * @param authorization jwt of the user who wants to generate the CDA document.
	 * 
	 * @return if the request was successful
	 *         {@link EimpfDocumentUpdateImmunisierungsstatus} is returned,
	 *         otherwise an error message {@link Message} is returned.
	 */
	public Object generateCda(String json, String authorization) {
		Bundle bundle = FhirUtil.getFhirContext().newJsonParser().parseResource(Bundle.class, json);

		UpdateImmunizationState updateImmunization = new UpdateImmunizationState(bundle);
		return updateImmunization.getUpdateImmunizationState();
	}

	/**
	 * This method extracts the OID (identification of health service provider) of
	 * the HCP Assertion, which is stored for the user
	 * 
	 * @param authorization jwt of user for which the OID is needed.
	 * @param urnNotation   true, if the OID is needed in urn notation
	 *                      (urn:oid:1.2.3.4) or false if the OID is needed without
	 *                      this notation (1.2.3.4)
	 * @return OID of the user's organization
	 */
	public String getOrganizationIdByUserToken(String authorization, boolean urnNotation) {
		ConnectionData connData = ConnectionDataHandler.getInstance().getConnectionDataWithUserToken(authorization);

		if (connData != null) {
			String organizationId = AssertionTypeUtil.getOrganizationIdOfHcpAssertion(connData.getHcpAssertion());

			if (organizationId != null && organizationId.contains(URN_OID_FORMAT) && !urnNotation) {
				return organizationId.replace(URN_OID_FORMAT, "");
			} else if (organizationId != null && urnNotation && !organizationId.contains(URN_OID_FORMAT)) {
				StringBuilder sb = new StringBuilder(URN_OID_FORMAT);
				sb.append(organizationId);
				return sb.toString();
			}

			return organizationId;
		}

		return "";

	}
}
