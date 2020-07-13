/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 * 
 */
package arztis.econnector.rest.model.fhir;

import java.util.List;
import java.util.Locale;

import org.eclipse.emf.common.util.ECollections;
import org.eclipse.emf.common.util.EList;
import org.ehealth_connector.common.at.enums.AvailabilityStatus;
import org.ehealth_connector.common.at.enums.ClassCode;
import org.ehealth_connector.common.at.enums.ConfidentialityCode;
import org.ehealth_connector.common.at.enums.FormatCode;
import org.ehealth_connector.common.at.enums.HealthcareFacilityTypeCode;
import org.ehealth_connector.common.at.enums.PracticeSettingCode;
import org.ehealth_connector.common.at.enums.ServiceEventCode;
import org.ehealth_connector.common.at.enums.TypeCode;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Reference;
import org.ehealth_connector.common.utils.XdsMetadataUtil;
import org.hl7.fhir.r4.model.Attachment;
import org.hl7.fhir.r4.model.CodeableConcept;
import org.hl7.fhir.r4.model.Coding;
import org.hl7.fhir.r4.model.DocumentReference;
import org.hl7.fhir.r4.model.Enumerations.DocumentReferenceStatus;
import org.hl7.fhir.r4.model.Enumerations.ResourceType;
import org.hl7.fhir.r4.model.Identifier;
import org.hl7.fhir.r4.model.Narrative;
import org.hl7.fhir.r4.model.Period;
import org.hl7.fhir.r4.model.Reference;
import org.hl7.fhir.utilities.xhtml.XhtmlNode;
import org.openhealthtools.ihe.xds.metadata.CodedMetadataType;
import org.openhealthtools.ihe.xds.metadata.MetadataFactory;
import org.openhealthtools.ihe.xds.metadata.impl.LocalizedStringTypeImpl;
import org.openhealthtools.ihe.xds.response.DocumentEntryResponseType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.common.utilities.HttpConstants;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotType1;
import arztis.econnector.ihe.queries.common.ObjectIds;
import arztis.econnector.ihe.utilities.Hl7Utils;
import arztis.econnector.ihe.utilities.MetadataConverter;
import arztis.econnector.rest.utilities.FhirUtil;
import ca.uhn.fhir.model.api.annotation.ResourceDef;

/**
 * This class is a subclass of {@link DocumentReference}. Therefore it provides
 * metadata about the CDA document so that the CDA document can be retrieved and
 * provided.</br>
 * It contains functionalities for converting properties to SOAP messages
 * (retrieve or provide documents) and vice versa.
 *
 * @author Anna Jungwirth
 *
 */
@ResourceDef(name = "DocumentReference", profile = "http://hl7.org/fhir/StructureDefinition/DocumentReference")
public class FhirDocumentReference extends DocumentReference {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;
	
	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(FhirDocumentReference.class.getName());
	
	/** The Constant PATIENT_REFERENCE. */
	private static final String PATIENT_REFERENCE = "Patient/%d-1";

	/**
	 * Default constructor.
	 */
	public FhirDocumentReference() {

	}

	/**
	 * Constructor to extract information from JSON.
	 *
	 * @param json to be extracted
	 */
	public FhirDocumentReference(String json) {
		fromJson(json);
	}

	/**
	 * Constructor to create document reference from ITI-18 response (Query document
	 * metadata).
	 *
	 * @param documentEntry document reference
	 * @param index         index of document
	 */
	public FhirDocumentReference(DocumentEntryResponseType documentEntry, int index) {
		fromDocumentEntryResponse(documentEntry, index);
	}

	/**
	 * Constructor to create document reference from PHARM-1 response (Query
	 * pharmaceutical document metadata).
	 *
	 * @param documentEntry   document reference
	 * @param homeCommunityId ID that identifies the community that owns the
	 *                        document
	 * @param index           index of document
	 */
	public FhirDocumentReference(ExtrinsicObjectType documentEntry, String homeCommunityId, int index) {
		fromExtrinsicObjectType(documentEntry, homeCommunityId, index);
	}

	/**
	 * Constructor to create document reference to cancel ELGA document.
	 *
	 * @param category   category code of document
	 * @param patientId  ID of patient e.g. ssno or bPK
	 * @param documentId entryUUID of document
	 */
	public FhirDocumentReference(String category, Identifier patientId, Identifier documentId) {
		addCategory(category);
		setPatient(patientId);
		addIdentifier(documentId);
	}

	/**
	 * Constructor to create document reference to query ELGA metadata.
	 *
	 * @param type      type code of document
	 * @param patientId ID of patient e.g. ssno or bPK
	 * @param status    status of document
	 */
	public FhirDocumentReference(String type, Identifier patientId, String status) {
		setType(type);
		setPatient(patientId);
		setStatus(status);
	}

	/**
	 * Constructor to create document reference to query ELGA metadata and document.
	 *
	 * @param type        type code of document
	 * @param patientId   ID of patient e.g. ssno or bPK
	 * @param status      status of document
	 * @param contentType content type, which should be returned
	 */
	public FhirDocumentReference(String type, Identifier patientId, String status, String contentType) {
		setType(type);
		setPatient(patientId);
		setStatus(status);
		setContentType(contentType);
	}

	/**
	 * Constructor to create document reference to query single ELGA document.
	 *
	 * @param url         path to ELGA document consisting of
	 *                    /uniqueId/repositoryId/homeCommunityId
	 * @param contentType content type, which should be returned
	 */
	public FhirDocumentReference(String url, String contentType) {
		setAttachment(url, contentType);
	}

	/**
	 * Constructor to create document reference from Hl7 v3 CDA R2 reference.
	 *
	 * @param reference Hl7 v3 CDA R2 reference
	 * @param id        of resource to reference to
	 */
	public FhirDocumentReference(POCDMT000040Reference reference, String id) {
		fromPOCDMT000040Reference(reference, id);
	}

	/**
	 * set category of ELGA document. Possible values for parameter category are
	 * first level of
	 * https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen
	 *
	 * @param code class code of document
	 */
	public void addCategory(String code) {
		Coding coding = new Coding();
		coding.setCode(code);
		this.addCategory(new CodeableConcept(coding));
	}

	/**
	 * set kind of ELGA document. Possible values for parameter type are second
	 * level of
	 * https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen
	 *
	 * @param code type code of document
	 */
	public void setType(String code) {
		Coding coding = new Coding();
		coding.setCode(code);
		this.setType(new CodeableConcept(coding));
	}

	/**
	 * set patient of document.
	 *
	 * @param patientId ID of patient e.g. ssno or bPK
	 */
	public void setPatient(Identifier patientId) {
		Reference reference = new Reference();
		reference.setIdentifier(patientId);
		reference.setType(ResourceType.PATIENT.getDisplay());
		this.setSubject(reference);
	}

	/**
	 * set status of document.
	 *
	 * @param status status of document
	 * @see DocumentReferenceStatus for available values
	 */
	public void setStatus(String status) {
		this.setStatus(DocumentReferenceStatus.fromCode(status));
	}

	/**
	 * set content type of ELGA document to return.
	 *
	 * @param contentType content type, which should be returned
	 */
	public void setContentType(String contentType) {
		Attachment attachment = new Attachment();
		attachment.setContentType(contentType);
		this.setContent(List.of(new DocumentReferenceContentComponent(attachment)));
	}

	/**
	 * set attachment of ELGA document.
	 *
	 * @param url         path to ELGA document consisting of
	 *                    /uniqueId/repositoryId/homeCommunityId
	 * @param contentType content type, which should be returned
	 */
	public void setAttachment(String url, String contentType) {
		Attachment attachment = new Attachment();
		attachment.setUrl(url);
		attachment.setContentType(contentType);
		this.setContent(List.of(new DocumentReferenceContentComponent(attachment)));
	}

	/**
	 * set attachment of ELGA document.
	 *
	 * @param url         path to ELGA document consisting of
	 *                    /uniqueId/repositoryId/homeCommunityId
	 * @param contentType content type, which should be returned
	 * @param format      format code of ELGA document
	 * @param size        size of document
	 */
	public void setContent(String url, String contentType, Coding format, int size) {
		Attachment attachment = new Attachment();
		attachment.setUrl(url);
		attachment.setContentType(contentType);
		attachment.setSize(size);

		DocumentReferenceContentComponent contentComp = new DocumentReferenceContentComponent(attachment);
		contentComp.setFormat(format);
		this.setContent(List.of(contentComp));
	}

	/**
	 * sets comments of ELGA metadata as narrative text.
	 *
	 * @param text comments
	 */
	public void setText(String text) {
		Narrative narrative = new Narrative();
		XhtmlNode node = new XhtmlNode();
		node.setValue(text);
		narrative.setDiv(node);
		setText(narrative);
	}

	/**
	 * sets parent document id of ELGA document.
	 *
	 * @param parentDocumentId ID of parent document
	 */
	public void setRelatesTo(String parentDocumentId) {
		DocumentReferenceRelatesToComponent relatesToComp = new DocumentReferenceRelatesToComponent();
		relatesToComp.setCode(DocumentRelationshipType.REPLACES);
		Reference reference = new Reference();
		reference.setType(ResourceType.DOCUMENTREFERENCE.getDisplay());
		Identifier parentDocId = new Identifier();
		parentDocId.setValue(parentDocumentId);
		reference.setIdentifier(parentDocId);
		relatesToComp.setTarget(reference);
		setRelatesTo(List.of(relatesToComp));
	}

	/**
	 * sets clinical context of ELGA document.
	 *
	 * @param event           main clinical services
	 * @param period          time of service that is being documented
	 * @param facilityType    classification of health care provider. Values are
	 *                        available under <a href=
	 *                        "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_HealthcareFacilityTypeCode">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_HealthcareFacilityTypeCode</a>
	 * @param practiceSetting subject classification of document. Values are
	 *                        available under <a href=
	 *                        "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_PracticeSetting_VS">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_PracticeSetting_VS</a>
	 * @param patientInfo     demographic information about patient
	 */
	public void setContext(CodeableConcept event, Period period, CodeableConcept facilityType,
			CodeableConcept practiceSetting, Reference patientInfo) {
		DocumentReferenceContextComponent docRefContextComp = new DocumentReferenceContextComponent();

		if (event != null) {
			docRefContextComp.addEvent(event);
		}

		docRefContextComp.setPeriod(period);
		docRefContextComp.setFacilityType(facilityType);
		docRefContextComp.setPracticeSetting(practiceSetting);
		docRefContextComp.setSourcePatientInfo(patientInfo);
		setContext(docRefContextComp);
	}

	/**
	 * converts format code of passed {@link DocumentReference} to
	 * {@link CodedMetadataType}.
	 *
	 * @param reference resource to be extracted
	 * @return converted {@link CodedMetadataType}
	 */
	public static CodedMetadataType getFormatCode(DocumentReference reference) {
		if (reference.getContentFirstRep() != null && reference.getContentFirstRep().getFormat() != null
				&& reference.getContentFirstRep().getFormat().hasCode()) {

			if (reference.getContentFirstRep().getFormat().hasSystem()) {
				return getCodedMetadataType(reference.getContentFirstRep().getFormat());
			} else {
				return FormatCode.getEnum(reference.getContentFirstRep().getFormat().getCode()).getCodedMetadataType();
			}
		}

		return null;
	}

	/**
	 * converts health care facility code of passed {@link DocumentReference} to
	 * {@link CodedMetadataType}.
	 *
	 * @param reference resource to be extracted
	 * @return converted {@link CodedMetadataType}
	 */
	public static CodedMetadataType getFacilityType(DocumentReference reference) {
		if (reference != null && reference.getContext() != null && reference.getContext().getFacilityType() != null
				&& reference.getContext().getFacilityType().getCodingFirstRep() != null
				&& reference.getContext().getFacilityType().getCodingFirstRep().hasCode()) {
			if (reference.getContext().getFacilityType().getCodingFirstRep().hasSystem()) {
				return getCodedMetadataType(reference.getContext().getFacilityType().getCodingFirstRep());
			} else {
				return HealthcareFacilityTypeCode
						.getEnum(reference.getContext().getFacilityType().getCodingFirstRep().getCode())
						.getCodedMetadataType();
			}
		}

		return null;
	}

	/**
	 * converts practice setting code of passed {@link DocumentReference} to
	 * {@link CodedMetadataType}.
	 *
	 * @param reference resource to be extracted
	 * @return converted {@link CodedMetadataType}
	 */
	public static CodedMetadataType getPracticeSetting(DocumentReference reference) {
		if (reference != null && reference.getContext() != null && reference.getContext().getPracticeSetting() != null
				&& reference.getContext().getPracticeSetting().getCodingFirstRep() != null
				&& reference.getContext().getPracticeSetting().getCodingFirstRep().hasCode()) {
			if (reference.getContext().getPracticeSetting().getCodingFirstRep().hasSystem()) {
				return getCodedMetadataType(reference.getContext().getPracticeSetting().getCodingFirstRep());
			} else {
				return PracticeSettingCode
						.getEnum(reference.getContext().getPracticeSetting().getCodingFirstRep().getCode())
						.getCodedMetadataType();
			}
		}

		return null;
	}

	/**
	 * converts HL7 FHIR {@link Coding} to {@link CodedMetadataType}. Language of
	 * display name is set to "de-AT".
	 *
	 * @param coding to convert
	 *
	 * @return converted {@link CodedMetadataType}
	 */
	private static CodedMetadataType getCodedMetadataType(Coding coding) {
		final CodedMetadataType cmt = MetadataFactory.eINSTANCE.createCodedMetadataType();
		cmt.setSchemeName(coding.getSystem());
		cmt.setCode(coding.getCode());
		cmt.setDisplayName(XdsMetadataUtil.createInternationalString(coding.getDisplay(), "de-at"));
		return cmt;
	}

	/**
	 * extracts {@link DocumentReference} from JSON.
	 *
	 * @param json to be extracted
	 */
	private void fromJson(String json) {
		FhirUtil.getFhirContext().newJsonParser().parseResource(DocumentReference.class, json);
	}

	/**
	 * creates JSON of this document reference instance like specified in <a href=
	 * "http://hl7.org/fhir/R4/documentreference.html">http://hl7.org/fhir/R4/documentreference.html</a>
	 *
	 * @return JSON string
	 */
	public String toJson() {
		return FhirUtil.getFhirContext().newJsonParser().encodeResourceToString(this);
	}

	/**
	 * Converts passed {@link DocumentEntryResponseType} to
	 * {@link DocumentReference}. {@link DocumentEntryResponseType} is returned from
	 * querying document metadata with ITI-18 transaction.
	 *
	 * @param documentEntry object to convert.
	 * @param index         of document
	 */

	private void fromDocumentEntryResponse(DocumentEntryResponseType documentEntry, int index) {
		if (documentEntry == null || documentEntry.getDocumentEntry() == null) {
			return;
		}

		if (documentEntry.getDocumentEntry() != null) {

			addContextRelatedEntries(documentEntry, index);
			addCodes(documentEntry);

			if (documentEntry.getDocumentEntry().getCreationTime() != null) {
				setDate(XdsMetadataUtil.convertDtmStringToDate(documentEntry.getDocumentEntry().getCreationTime()));
			}

			addAllReferences(documentEntry, index);

			if (documentEntry.getDocumentEntry().getAvailabilityStatus() != null
					&& documentEntry.getDocumentEntry().getAvailabilityStatus().getLiteral() != null) {
				setStatus(documentEntry.getDocumentEntry().getAvailabilityStatus().getLiteral()
						.toLowerCase(Locale.ENGLISH).contains("approved") ? DocumentReferenceStatus.CURRENT
								: DocumentReferenceStatus.SUPERSEDED);
			}

			if (documentEntry.getDocumentEntry().getUniqueId() != null) {
				Identifier id = new Identifier();
				id.setValue(documentEntry.getDocumentEntry().getUniqueId());
				setMasterIdentifier(id);
			}

			if (documentEntry.getDocumentEntry().getEntryUUID() != null) {
				Identifier id = new Identifier();
				id.setValue(documentEntry.getDocumentEntry().getEntryUUID());
				setIdentifier(List.of(id));
			}

			if (documentEntry.getDocumentEntry().getComments() != null
					&& documentEntry.getDocumentEntry().getComments().getLocalizedString() != null
					&& !documentEntry.getDocumentEntry().getComments().getLocalizedString().isEmpty()) {
				org.openhealthtools.ihe.xds.metadata.InternationalStringType comments = documentEntry.getDocumentEntry()
						.getComments();
				setText(((LocalizedStringTypeImpl) comments.getLocalizedString().get(0)).getValue());
			}

			if (documentEntry.getDocumentEntry().getParentDocument() != null) {
				setRelatesTo(documentEntry.getDocumentEntry().getParentDocument().getParentDocumentId());
			}

			if (documentEntry.getDocumentEntry().getTitle() != null) {
				org.openhealthtools.ihe.xds.metadata.InternationalStringType title = documentEntry.getDocumentEntry()
						.getTitle();
				setDescription(((LocalizedStringTypeImpl) title.getLocalizedString().get(0)).getValue());
			}

			addContentRelatedEntries(documentEntry);

		}
	}

	/**
	 * adds code values such as following to {@link DocumentReference}
	 * 
	 * <ul>
	 * <li>class code (category)</li>
	 * <li>type code (type)</li>
	 * <li>confidentiality code (security label)</li>
	 * <li>language code (language)</li>
	 * </ul>.
	 *
	 * @param documentEntry to be extracted
	 */
	private void addCodes(DocumentEntryResponseType documentEntry) {
		if (documentEntry.getDocumentEntry().getClassCode() != null) {
			addCategory(new CodeableConcept(new Coding(documentEntry.getDocumentEntry().getClassCode().getSchemeUUID(),
					documentEntry.getDocumentEntry().getClassCode().getCode(), null)));
		}

		if (documentEntry.getDocumentEntry().getTypeCode() != null) {
			setType(new CodeableConcept(new Coding(documentEntry.getDocumentEntry().getTypeCode().getSchemeUUID(),
					documentEntry.getDocumentEntry().getTypeCode().getCode(), null)));
		}

		for (Object object : emptyIfNull(documentEntry.getDocumentEntry().getConfidentialityCode())) {
			CodedMetadataType confidentialityCode = (CodedMetadataType) object;
			addSecurityLabel(new CodeableConcept(
					new Coding(confidentialityCode.getSchemeUUID(), confidentialityCode.getCode(), null)));
		}

		if (documentEntry.getDocumentEntry().getLanguageCode() != null) {
			setLanguage(documentEntry.getDocumentEntry().getLanguageCode());
		}
	}

	/**
	 * adds references such as following to {@link DocumentReference}
	 *
	 * <ul>
	 * <li>subject (patient)</li>
	 * <li>authenticator (legal authenticator)</li>
	 * <li>author</li>
	 * </ul>
	 *
	 * References are created in format {resource name}/{index}-{count}. For
	 * example, a reference to patient could look like Patient/1-1.
	 *
	 * @param documentEntry to be extracted
	 * @param index         of document
	 */
	private void addAllReferences(DocumentEntryResponseType documentEntry, int index) {
		Reference reference = new Reference(String.format(PATIENT_REFERENCE, index));
		reference.setType(ResourceType.PATIENT.getDefinition());
		setSubject(reference);

		Reference legalAuthenticatorReference = new Reference(String.format("Practitioner/%d-1", index));
		legalAuthenticatorReference.setType(ResourceType.PRACTITIONER.getDefinition());
		setAuthenticator(legalAuthenticatorReference);

		for (int count = 0; count < emptyIfNull(documentEntry.getDocumentEntry().getAuthors()).size(); count++) {
			Reference author = new Reference(String.format("PractitionerRole/%d-%d", index, count + 2));
			author.setType(ResourceType.PRACTITIONERROLE.getDefinition());
			addAuthor(author);
		}
	}

	/**
	 * adds content values such as following to {@link DocumentReference}
	 *
	 * <ul>
	 * <li>format code (format)</li>
	 * <li>unique ID</li>
	 * <li>repository ID</li>
	 * <li>home community ID</li>
	 * <li>size</li>
	 * <li>mime type (content type)</li>
	 * </ul>
	 *
	 * Extracted IDs are concatenated as follows {unique ID}/{repository ID}/{home
	 * community ID}. Concatenated IDs are added as URL to attachment.
	 *
	 * @param documentEntry to be extracted
	 */
	private void addContentRelatedEntries(DocumentEntryResponseType documentEntry) {
		int size = 0;
		String contentType = null;

		Coding format = null;
		if (documentEntry.getDocumentEntry().getFormatCode() != null) {
			format = new Coding(documentEntry.getDocumentEntry().getFormatCode().getSchemeUUID(),
					documentEntry.getDocumentEntry().getFormatCode().getCode(), null);
		}

		if (documentEntry.getDocumentEntry().getSize() != null) {
			size = Integer.valueOf(documentEntry.getDocumentEntry().getSize());
		}

		if (documentEntry.getDocumentEntry().getMimeType() != null) {
			contentType = documentEntry.getDocumentEntry().getMimeType();
		}

		setContent(
				String.format("%s/%s/%s", documentEntry.getDocumentEntry().getUniqueId(),
						documentEntry.getDocumentEntry().getRepositoryUniqueId(), documentEntry.getHomeCommunityId()),
				contentType, format, size);
	}

	/**
	 * adds context values such as following to {@link DocumentReference}
	 * 
	 * <ul>
	 * <li>service start and stop time (period)</li>
	 * <li>health care facility type (facility type)</li>
	 * <li>practice setting code (practice setting)</li>
	 * <li>event code (event)</li>
	 * <li>patient reference</li>
	 * </ul>.
	 *
	 * @param documentEntry to be extracted
	 * @param index the index
	 */
	private void addContextRelatedEntries(DocumentEntryResponseType documentEntry, int index) {
		Period period = new Period();
		if (documentEntry.getDocumentEntry().getServiceStartTime() != null) {
			period.setStart(
					XdsMetadataUtil.convertDtmStringToDate(documentEntry.getDocumentEntry().getServiceStartTime()));
		}

		if (documentEntry.getDocumentEntry().getServiceStopTime() != null) {
			period.setEnd(
					XdsMetadataUtil.convertDtmStringToDate(documentEntry.getDocumentEntry().getServiceStopTime()));
		}

		CodeableConcept facilityType = null;
		if (documentEntry.getDocumentEntry().getHealthCareFacilityTypeCode() != null) {
			facilityType = new CodeableConcept(
					new Coding(documentEntry.getDocumentEntry().getHealthCareFacilityTypeCode().getSchemeUUID(),
							documentEntry.getDocumentEntry().getHealthCareFacilityTypeCode().getCode(), null));
		}

		CodeableConcept practiceSetting = null;
		if (documentEntry.getDocumentEntry().getPracticeSettingCode() != null) {
			practiceSetting = new CodeableConcept(
					new Coding(documentEntry.getDocumentEntry().getPracticeSettingCode().getSchemeUUID(),
							documentEntry.getDocumentEntry().getPracticeSettingCode().getCode(), null));
		}

		CodeableConcept event = null;
		for (Object object : emptyIfNull(documentEntry.getDocumentEntry().getEventCode())) {
			CodedMetadataType eventCode = ((CodedMetadataType) object);
			event = new CodeableConcept(new Coding(eventCode.getSchemeUUID(), eventCode.getCode(), null));
		}

		Reference reference = new Reference(String.format(PATIENT_REFERENCE, index));
		reference.setType(ResourceType.PATIENT.getDefinition());

		setContext(event, period, facilityType, practiceSetting, reference);
	}

	/**
	 * Converts passed {@link ExtrinsicObjectType} to {@link DocumentReference}.
	 * {@link ExtrinsicObjectType} is result of querying pharmaceutical documents
	 * (PHARM-1 transaction).
	 *
	 * @param extrinsicObject object to be extracted
	 * @param homeCommunityId ID that identifies the community that owns the
	 *                        document
	 * @param index           index of document
	 */

	private void fromExtrinsicObjectType(ExtrinsicObjectType extrinsicObject, String homeCommunityId, int index) {
		if (extrinsicObject == null) {
			return;
		}

		LOGGER.info("convert extrinsic object to metadata");

		if (!hasContext()) {
			setContext(new DocumentReferenceContextComponent());
		}

		if (!hasContent()) {
			DocumentReferenceContentComponent content = new DocumentReferenceContentComponent();
			content.setAttachment(new Attachment());
			addContent(content);
		}

		String documentUniqueid = getUniqueIdOfExternalIdentifiers(extrinsicObject.getExternalIdentifierArray());

		Identifier entryUuid = new Identifier();
		entryUuid.setValue(extrinsicObject.getId());
		addIdentifier(entryUuid);

		if (AvailabilityStatus.DEPRECATED.getCodeValue().equalsIgnoreCase(extrinsicObject.getStatus())) {
			setStatus(DocumentReferenceStatus.SUPERSEDED);
		} else {
			setStatus(DocumentReferenceStatus.CURRENT);
		}

		if (extrinsicObject.getMimeType() == null || extrinsicObject.getMimeType().isEmpty()) {
			getContentFirstRep().getAttachment().setContentType(HttpConstants.MEDIA_TYPE_TEXT_XML);
		} else {
			getContentFirstRep().getAttachment().setContentType(extrinsicObject.getMimeType());
		}

		setDescription(Hl7Utils.convertInternationalStringToString(extrinsicObject.getName()));
		setText(Hl7Utils.convertInternationalStringToString(extrinsicObject.getDescription()));

		Identifier masterIdentifier = new Identifier();
		masterIdentifier.setValue(documentUniqueid);
		setMasterIdentifier(masterIdentifier);

		String repositoryId = fromSlots(extrinsicObject.getSlotArray(), index);

		getContentFirstRep().getAttachment()
				.setUrl(String.format("%s/%s/%s", documentUniqueid, repositoryId, homeCommunityId));

		convertClassifications(extrinsicObject.getClassificationArray(), index);
	}

	/**
	 * extracts values from passed array of {@link SlotType1}. </br>
	 *
	 * Following information are extracted from {@link SlotType1}:
	 *
	 * <ul>
	 * <li>creation time</li>
	 * <li>language code</li>
	 * <li>service start time</li>
	 * <li>service stop time</li>
	 * <li>repository ID of document</li>
	 * <li>legal authenticator</li>
	 * <li>source patient ID</li>
	 * <li>source patient information</li>
	 * </ul>
	 *
	 * @param slots to be extracted
	 * @param index of document
	 *
	 * @return found repository ID
	 */
	private String fromSlots(SlotType1[] slots, int index) {
		String repositoryId = "";

		if (slots == null) {
			return "";
		}

		getContext().setPeriod(new Period());

		for (SlotType1 slot : slots) {
			switch (slot.getName()) {
			case "creationTime":
				setDate(MetadataConverter.convertDateTime(slot));
				break;
			case "languageCode":
				this.setLanguage(MetadataConverter.getStringFromSlot(slot));
				break;
			case "serviceStartTime":
				getContext().getPeriod().setStart(MetadataConverter.convertDateTime(slot));
				break;
			case "serviceStopTime":
				getContext().getPeriod().setEnd(MetadataConverter.convertDateTime(slot));
				break;
			case "repositoryUniqueId":
				repositoryId = MetadataConverter.getStringFromSlot(slot);
				break;
			case "legalAuthenticator":
				setAuthenticator(new Reference(String.format("Practitioner/%d-1", index)));
				break;
			case "sourcePatientId":
				setSubject(new Reference(String.format(PATIENT_REFERENCE, index)));
				break;
			case "sourcePatientInfo":
				getContext().setSourcePatientInfo(new Reference(String.format(PATIENT_REFERENCE, index)));
				break;
			default:
				break;
			}
		}

		return repositoryId;
	}

	/**
	 * extracts values from passed array of {@link ClassificationType}. </br>
	 *
	 * Following information are extracted from {@link ClassificationType}:
	 *
	 * <ul>
	 * <li>author</li>
	 * <li>class code</li>
	 * <li>format code</li>
	 * <li>health care facility type</li>
	 * <li>practice setting</li>
	 * <li>type code</li>
	 * <li>confidentiality code</li>
	 * <li>event code</li>
	 * </ul>
	 *
	 * @param classifications to be extracted
	 * @param index           of document
	 *
	 */
	private void convertClassifications(ClassificationType[] classifications, int index) {
		if (classifications == null) {
			return;
		}

		int authorIndex = 0;
		for (ClassificationType classification : classifications) {

			switch (classification.getClassificationScheme()) {
			case ObjectIds.CLASSIFICATION_SCHEME_AUTHOR_EXTERNAL_DOCUMENT_ENTRY_CODE:
				addAuthor(new Reference(String.format("PractitionerRole/%d-%d", index, authorIndex + 2)));
				authorIndex++;
				break;
			case ObjectIds.CLASSIFICATION_SCHEME_CLASS_CODE_CODE:
				ClassCode classCode = ClassCode.getEnum(classification.getNodeRepresentation());
				setCategory(List.of(new CodeableConcept(new Coding(classCode.getCodeSystemId(),
						classCode.getCodeValue(), classCode.getDisplayName()))));
				break;
			case ObjectIds.CLASSIFICATION_SCHEME_FORMAT_CODE_CODE:
				FormatCode formatCode = FormatCode.getEnum(classification.getNodeRepresentation());
				getContentFirstRep().setFormat(new Coding(formatCode.getCodeSystemId(), formatCode.getCodeValue(),
						formatCode.getDisplayName()));
				break;
			case ObjectIds.CLASSIFICATION_SCHEME_HEALTHCAREFACILITY_CODE_CODE:
				HealthcareFacilityTypeCode facilityTypeCode = HealthcareFacilityTypeCode
						.getEnum(classification.getNodeRepresentation());
				getContext().setFacilityType(new CodeableConcept(new Coding(facilityTypeCode.getCodeSystemId(),
						facilityTypeCode.getCodeValue(), facilityTypeCode.getDisplayName())));
				break;
			case ObjectIds.CLASSIFICATION_SCHEME_PRACTICESETTING_CODE_CODE:
				PracticeSettingCode practiceSettingCode = PracticeSettingCode
						.getEnum(classification.getNodeRepresentation());
				getContext().setPracticeSetting(new CodeableConcept(new Coding(practiceSettingCode.getCodeSystemId(),
						practiceSettingCode.getCodeValue(), practiceSettingCode.getDisplayName())));
				break;
			case ObjectIds.CLASSIFICATION_SCHEME_TYPE_CODE_CODE:
				TypeCode typeCode = TypeCode.getEnum(classification.getNodeRepresentation());
				if (typeCode != null) {
					setType(new CodeableConcept(new Coding(typeCode.getCodeSystemId(), typeCode.getCodeValue(),
							typeCode.getDisplayName())));
				}
				break;
			case ObjectIds.CLASSIFICATION_SCHEME_CONFIDENTIALITY_CODE_CODE:
				ConfidentialityCode confidentialityCode = ConfidentialityCode
						.getEnum(classification.getNodeRepresentation());
				addSecurityLabel(new CodeableConcept(new Coding(confidentialityCode.getCodeSystemId(),
						confidentialityCode.getCodeValue(), confidentialityCode.getDisplayName())));
				break;
			case ObjectIds.CLASSIFICATION_SCHEME_EVENTCODELIST_CODE_CODE:
				ServiceEventCode serviceEvent = ServiceEventCode.getEnum(classification.getNodeRepresentation());
				if (serviceEvent != null) {
					getContext().addEvent(new CodeableConcept(new Coding(serviceEvent.getCodeSystemId(),
							serviceEvent.getCodeValue(), serviceEvent.getDisplayName())));
				}
				break;
			default:
				break;
			}
		}
	}

	/**
	 * extracts unique ID of document from passed array of
	 * {@link ExternalIdentifierType}.
	 *
	 * @param identifiers to be extracted
	 *
	 * @return extracted unique ID
	 *
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
	 * checks if passed {@link EList} is empty or null.
	 *
	 * @param list to check
	 * @return true if list is null or empty, otherwise false
	 */
	private static EList emptyIfNull(EList<?> list) {
		return list == null ? ECollections.emptyEList() : list;
	}

	/**
	 * extracts information from passed CDA R2 {@link POCDMT000040Reference}. Sets
	 * passed ID as resource ID. Adds identifier, type and master identifier from
	 * external document.
	 *
	 * @param reference to be extracted
	 * @param id        of resource to reference to
	 */
	private void fromPOCDMT000040Reference(POCDMT000040Reference reference, String id) {
		if (reference == null || reference.getExternalDocument() == null) {
			return;
		}

		setId(id);

		if (reference.getExternalDocument().getId() != null) {
			addIdentifier(new FhirIdentifier(reference.getExternalDocument().getId().get(0)));
		}

		if (reference.getExternalDocument().getCode() != null) {
			setType(new FhirCodeableConcept(reference.getExternalDocument().getCode()));
		}

		if (reference.getExternalDocument().getSetId() != null) {
			setMasterIdentifier(new FhirIdentifier(reference.getExternalDocument().getSetId()));
		}
	}
}
