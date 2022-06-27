/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest.model.fhir;

import java.util.List;
import java.util.Locale;

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
import org.husky.common.at.enums.ClassCode;
import org.husky.common.at.enums.ConfidentialityCode;
import org.husky.common.at.enums.FormatCode;
import org.husky.common.at.enums.HealthcareFacilityTypeCode;
import org.husky.common.at.enums.PracticeSettingCode;
import org.husky.common.at.enums.ServiceEventCode;
import org.husky.common.at.enums.TypeCode;
import org.husky.common.hl7cdar2.POCDMT000040Reference;
import org.husky.common.model.Code;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.Association;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.AvailabilityStatus;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.DocumentEntry;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.LocalizedString;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.common.utilities.HttpConstants;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotType1;
import arztis.econnector.ihe.queries.common.ObjectIds;
import arztis.econnector.ihe.utilities.DateUtil;
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
	public FhirDocumentReference(DocumentEntry documentEntry, Association association, int index) {
		fromDocumentEntryResponse(documentEntry, association, index);
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
	 * {@link Code}.
	 *
	 * @param reference resource to be extracted
	 * @return converted {@link Code}
	 */
	public static Code getFormatCode(DocumentReference reference) {
		if (reference.getContentFirstRep() != null && reference.getContentFirstRep().getFormat() != null
				&& reference.getContentFirstRep().getFormat().hasCode()) {

			if (reference.getContentFirstRep().getFormat().hasSystem()) {
				return getCodedMetadataType(reference.getContentFirstRep().getFormat());
			} else {
				return FormatCode.getEnum(reference.getContentFirstRep().getFormat().getCode()).getCode();
			}
		}

		return null;
	}

	/**
	 * converts health care facility code of passed {@link DocumentReference} to
	 * {@link Code}.
	 *
	 * @param reference resource to be extracted
	 * @return converted {@link Code}
	 */
	public static Code getFacilityType(DocumentReference reference) {
		if (reference != null && reference.getContext() != null && reference.getContext().getFacilityType() != null
				&& reference.getContext().getFacilityType().getCodingFirstRep() != null
				&& reference.getContext().getFacilityType().getCodingFirstRep().hasCode()) {
			if (reference.getContext().getFacilityType().getCodingFirstRep().hasSystem()) {
				return getCodedMetadataType(reference.getContext().getFacilityType().getCodingFirstRep());
			} else {
				return HealthcareFacilityTypeCode
						.getEnum(reference.getContext().getFacilityType().getCodingFirstRep().getCode())
						.getCode();
			}
		}

		return null;
	}

	/**
	 * converts practice setting code of passed {@link DocumentReference} to
	 * {@link Code}.
	 *
	 * @param reference resource to be extracted
	 * @return converted {@link Code}
	 */
	public static Code getPracticeSetting(DocumentReference reference) {
		if (reference != null && reference.getContext() != null && reference.getContext().getPracticeSetting() != null
				&& reference.getContext().getPracticeSetting().getCodingFirstRep() != null
				&& reference.getContext().getPracticeSetting().getCodingFirstRep().hasCode()) {
			if (reference.getContext().getPracticeSetting().getCodingFirstRep().hasSystem()) {
				return getCodedMetadataType(reference.getContext().getPracticeSetting().getCodingFirstRep());
			} else {
				return PracticeSettingCode
						.getEnum(reference.getContext().getPracticeSetting().getCodingFirstRep().getCode())
						.getCode();
			}
		}

		return null;
	}

	/**
	 * converts HL7 FHIR {@link Coding} to {@link Code}. Language of display name is
	 * set to "de-AT".
	 *
	 * @param coding to convert
	 *
	 * @return converted {@link Code}
	 */
	private static Code getCodedMetadataType(Coding coding) {
		final Code cmt = new Code();
		cmt.setCodeSystem(coding.getSystem());
		cmt.setCode(coding.getCode());
		cmt.setDisplayName(coding.getDisplay());
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
	 * Converts passed {@link DocumentEntry} to {@link DocumentReference}.
	 * {@link DocumentEntry} is returned from querying document metadata with ITI-18
	 * transaction.
	 *
	 * @param documentEntry object to convert.
	 * @param index         of document
	 */

	private void fromDocumentEntryResponse(DocumentEntry documentEntry, Association association, int index) {
		if (documentEntry == null) {
			return;
		}

		if (documentEntry != null) {

			addContextRelatedEntries(documentEntry, index);
			addCodes(documentEntry);

			if (documentEntry.getCreationTime() != null) {
				setDate(DateUtil.parseZonedDateTime(documentEntry.getCreationTime().getDateTime()));
			}

			addAllReferences(documentEntry, index);

			if (documentEntry.getAvailabilityStatus() != null && documentEntry.getAvailabilityStatus().name() != null) {
				setStatus(documentEntry.getAvailabilityStatus().name()
						.toLowerCase(Locale.ENGLISH).contains("approved") ? DocumentReferenceStatus.CURRENT
								: DocumentReferenceStatus.SUPERSEDED);
			}

			if (documentEntry.getUniqueId() != null) {
				Identifier id = new Identifier();
				id.setValue(documentEntry.getUniqueId());
				setMasterIdentifier(id);
			}

			if (documentEntry.getEntryUuid() != null) {
				Identifier id = new Identifier();
				id.setValue(documentEntry.getEntryUuid());
				setIdentifier(List.of(id));
			}

			if (documentEntry.getComments() != null && documentEntry.getComments() != null) {
				LocalizedString comments = documentEntry
						.getComments();
				setText(comments.getValue());
			}

			if (association != null && association.getEntryUuid() != null) {
				setRelatesTo(association.getEntryUuid());
			}

			if (documentEntry.getTitle() != null) {
				setDescription(documentEntry.getTitle().getValue());
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
	private void addCodes(DocumentEntry documentEntry) {
		if (documentEntry.getClassCode() != null) {
			addCategory(new CodeableConcept(new Coding(documentEntry.getClassCode().getSchemeName(),
					documentEntry.getClassCode().getCode(), null)));
		}

		if (documentEntry.getTypeCode() != null) {
			setType(new CodeableConcept(new Coding(documentEntry.getTypeCode().getSchemeName(),
					documentEntry.getTypeCode().getCode(), null)));
		}

		for (org.openehealth.ipf.commons.ihe.xds.core.metadata.Code confidentialityCode : documentEntry
				.getConfidentialityCodes()) {
			addSecurityLabel(new CodeableConcept(
					new Coding(confidentialityCode.getSchemeName(), confidentialityCode.getCode(), null)));
		}

		if (documentEntry.getLanguageCode() != null) {
			setLanguage(documentEntry.getLanguageCode());
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
	private void addAllReferences(DocumentEntry documentEntry, int index) {
		Reference reference = new Reference(String.format(PATIENT_REFERENCE, index));
		reference.setType(ResourceType.PATIENT.getDefinition());
		setSubject(reference);

		Reference legalAuthenticatorReference = new Reference(String.format("Practitioner/%d-1", index));
		legalAuthenticatorReference.setType(ResourceType.PRACTITIONER.getDefinition());
		setAuthenticator(legalAuthenticatorReference);

		for (int count = 0; count < documentEntry.getAuthors().size(); count++) {
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
	private void addContentRelatedEntries(DocumentEntry documentEntry) {
		int size = 0;
		String contentType = null;

		Coding format = null;
		if (documentEntry.getFormatCode() != null) {
			format = new Coding(documentEntry.getFormatCode().getSchemeName(), documentEntry.getFormatCode().getCode(),
					null);
		}

		if (documentEntry.getSize() != null) {
			size = documentEntry.getSize().intValue();
		}

		if (documentEntry.getMimeType() != null) {
			contentType = documentEntry.getMimeType();
		}

		setContent(
				String.format("%s/%s/%s", documentEntry.getUniqueId(), documentEntry.getRepositoryUniqueId(),
						documentEntry.getHomeCommunityId()),
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
	private void addContextRelatedEntries(DocumentEntry documentEntry, int index) {
		Period period = new Period();
		if (documentEntry.getServiceStartTime() != null) {
			period.setStart(DateUtil.parseZonedDateTime(documentEntry.getServiceStartTime().getDateTime()));
		}

		if (documentEntry.getServiceStopTime() != null) {
			period.setEnd(
					DateUtil.parseZonedDateTime(documentEntry.getServiceStopTime().getDateTime()));
		}

		CodeableConcept facilityType = null;
		if (documentEntry.getHealthcareFacilityTypeCode() != null) {
			facilityType = new CodeableConcept(
					new Coding(documentEntry.getHealthcareFacilityTypeCode().getSchemeName(),
							documentEntry.getHealthcareFacilityTypeCode().getCode(), null));
		}

		CodeableConcept practiceSetting = null;
		if (documentEntry.getPracticeSettingCode() != null) {
			practiceSetting = new CodeableConcept(
					new Coding(documentEntry.getPracticeSettingCode().getSchemeName(),
							documentEntry.getPracticeSettingCode().getCode(), null));
		}

		CodeableConcept event = null;
		for (org.openehealth.ipf.commons.ihe.xds.core.metadata.Code eventCode : documentEntry.getEventCodeList()) {
			event = new CodeableConcept(new Coding(eventCode.getSchemeName(), eventCode.getCode(), null));
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

		if (AvailabilityStatus.DEPRECATED.getOpcode().equalsIgnoreCase(extrinsicObject.getStatus())) {
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
				setDate(DateUtil.parseZonedDateTime(MetadataConverter.convertDateTime(slot)));
				break;
			case "languageCode":
				this.setLanguage(MetadataConverter.getStringFromSlot(slot));
				break;
			case "serviceStartTime":
				getContext().getPeriod().setStart(DateUtil.parseZonedDateTime(MetadataConverter.convertDateTime(slot)));
				break;
			case "serviceStopTime":
				getContext().getPeriod().setEnd(DateUtil.parseZonedDateTime(MetadataConverter.convertDateTime(slot)));
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
