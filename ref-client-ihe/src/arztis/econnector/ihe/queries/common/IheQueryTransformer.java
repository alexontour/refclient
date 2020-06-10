package arztis.econnector.ihe.queries.common;

import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.ehealth_connector.common.Identificator;
import org.ehealth_connector.common.at.enums.AvailabilityStatus;
import org.ehealth_connector.common.at.enums.ClassCode;
import org.hl7.fhir.r4.model.CodeableConcept;
import org.openhealthtools.ihe.common.hl7v2.Hl7v2Factory;
import org.openhealthtools.ihe.common.hl7v2.XON;
import org.openhealthtools.ihe.common.hl7v2.format.HL7V2MessageFormat;
import org.openhealthtools.ihe.utils.OID;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument;
import arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument;
import arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument.AdhocQueryRequest;
import arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType.ReturnType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AssociationType1;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryPackageType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotType1;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ValueListType;

public class IheQueryTransformer {
	private static final Logger LOGGER = LoggerFactory.getLogger(IheQueryTransformer.class.getName());
	private static final String CDA_DATE_TIME_FORMAT = "yyyyMMddhhmmss";
	private static final String STRING_PLACEHOLDER = "('%s')";

	private IheQueryTransformer() {
		throw new IllegalStateException("Utility class for Queries");
	}

	public static SubmitObjectsRequestDocument createSubmitObjectsRequestDocument(String uniqueId,
			Identificator patientId, ClassCode classCode, String organizationId, String practitionerOrganizationName, boolean isUrnNeeded) {
		if (uniqueId == null) {
			return null;
		}

		String registryObject = "urn:uuid:" + UUID.randomUUID();
		List<SlotType1> slots = new ArrayList<>();
		List<ClassificationType> classifications = new ArrayList<>();
		List<ExternalIdentifierType> externalIds = new ArrayList<>();

		List<String> submissionTimeList = new ArrayList<>();
		submissionTimeList.add(LocalDateTime.now().format(DateTimeFormatter.ofPattern(CDA_DATE_TIME_FORMAT)));

		ValueListType values = QueryPartFactory.generateValueList(submissionTimeList);
		slots.add(QueryPartFactory.generateSlot(values, "submissionTime"));

		InternationalStringType name = null;
		if (classCode != null) {
			List<String> classCodeList = new ArrayList<>();
			
			if(isUrnNeeded && classCode.getCodeSystemId() != null && !classCode.getCodeSystemId().contains("urn:oid:")) {
				classCodeList.add(String.format("urn:oid:%s", classCode.getCodeSystemId()));
			} else {
				classCodeList.add(classCode.getCodeSystemId());
			}
			
			values = QueryPartFactory.generateValueList(classCodeList);
			name = QueryPartFactory.generateInternationalString(classCode.getDisplayName(), "en-US",
					StandardCharsets.UTF_8.name());

			List<SlotType1> slotTypeList = new ArrayList<>();
			slotTypeList.add(QueryPartFactory.generateSlot(values, "codingScheme"));
			classifications.add(QueryPartFactory.generateClassification(
					ObjectIds.CLASSIFICATION_SCHEME_CONTENTTYPECODE_CODE, registryObject, ObjectTypes.CLASSIFICATION,
					classCode.getCodeValue(), new ArrayList<SlotType1>(slotTypeList), name));
		}

		if (practitionerOrganizationName != null) {
			XON authorInstitution = Hl7v2Factory.eINSTANCE.createXON();

			if (organizationId != null) {
				authorInstitution.setIdNumber(organizationId);
			}

			authorInstitution.setOrganizationName(practitionerOrganizationName);

			List<String> authorInstitutionList = new ArrayList<>();
			authorInstitutionList.add(HL7V2MessageFormat.toMessageString(authorInstitution, '^', '&'));

			values = QueryPartFactory.generateValueList(authorInstitutionList);
			List<SlotType1> slotList = new ArrayList<>();
			slotList.add(QueryPartFactory.generateSlot(values, "authorInstitution"));

			classifications.add(QueryPartFactory.generateClassification(
					ObjectIds.CLASSIFICATION_SCHEME_AUTHOR_EXTERNAL_SUBMISSION_SET_CODE, registryObject,
					ObjectTypes.CLASSIFICATION, "", slotList, null));
		}

		if (patientId != null) {
			name = QueryPartFactory.generateInternationalString("XDSSubmissionSet.patientId", null, null);
			externalIds.add(QueryPartFactory.generateExternalIdentifier(
					ObjectIds.EXTERNAL_IDENTIFIER_PATIENTID_SUBMISSION_SET_CODE, registryObject,
					String.format("%s^^^&%s&ISO", patientId.getExtension(), patientId.getRoot()),
					ObjectTypes.EXTERNAL_IDENTIFIER, name));
		}

		name = QueryPartFactory.generateInternationalString("XDSSubmissionSet.uniqueId", null, null);
		externalIds.add(QueryPartFactory.generateExternalIdentifier(
				ObjectIds.EXTERNAL_IDENTIFIER_UNIQUEID_SUBMISSION_SET_CODE, registryObject,
				OID.createOIDGivenRoot(organizationId, 64), ObjectTypes.EXTERNAL_IDENTIFIER, name));

		name = QueryPartFactory.generateInternationalString("XDSSubmissionSet.sourceId", null, null);
		externalIds.add(
				QueryPartFactory.generateExternalIdentifier(ObjectIds.EXTERNAL_IDENTIFIER_SOURCEID_SUBMISSION_SET_CODE,
						registryObject, organizationId, ObjectTypes.EXTERNAL_IDENTIFIER, name));

		RegistryPackageType registryPackage = QueryPartFactory.generateRegistryPackage(
				AvailabilityStatus.APPROVED.getCodeValue(), registryObject, ObjectTypes.REGSITRY_PACKAGE,
				classifications, externalIds, slots, null, null, null);

		ClassificationType classificationStatus = QueryPartFactory.generateClassification(
				ObjectIds.CLASSIFICATION_NODE_SUBMISSION_SET_CODE, registryObject, ObjectTypes.CLASSIFICATION, null,
				null, null);

		List<String> stateList = new ArrayList<>();
		stateList.add(AvailabilityStatus.APPROVED.getCodeValue());

		values = QueryPartFactory.generateValueList(stateList);
		SlotType1 slotOriginalState = QueryPartFactory.generateSlot(values, "OriginalStatus");

		stateList = new ArrayList<>();
		stateList.add(AvailabilityStatus.DEPRECATED.getCodeValue());
		values = QueryPartFactory.generateValueList(stateList);
		SlotType1 slotNewState = QueryPartFactory.generateSlot(values, "NewStatus");

		List<SlotType1> slotsState = new ArrayList<>();
		slotsState.add(slotOriginalState);
		slotsState.add(slotNewState);

		AssociationType1 association = QueryPartFactory.generateAssociation(ObjectTypes.ASSOCIATION, registryObject,
				AssociationTypes.UPDATE_AVAILABILITY_STATUS, uniqueId, slotsState);

		List<RegistryPackageType> registryPackages = new ArrayList<>();
		registryPackages.add(registryPackage);

		List<AssociationType1> associations = new ArrayList<>();
		associations.add(association);

		List<ClassificationType> classificationsList = new ArrayList<>();
		classificationsList.add(classificationStatus);

		return QueryPartFactory.generateSubmitObjectsRequestDocument(
				QueryPartFactory.generateRegistryObjectList(registryPackages, null, associations, classificationsList));

	}

	public static SlotType1 createIdentificatorSlot(Identificator id, String slotName) {
		if (id != null) {
			List<String> slotValues = new ArrayList<>();
			slotValues.add(String.format("'%s^^^&%s&ISO'", id.getExtension(), id.getRoot()));
			return QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(slotValues), slotName);
		}
		return null;
	}

	public static SlotType1 createStringsSlot(List<String> values, String slotName) {
		List<String> slotValues = new ArrayList<>();

		for (String value : values) {
			if (value != null) {
				slotValues.add(String.format(STRING_PLACEHOLDER, value));
			}
		}

		return (QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(slotValues), slotName));
	}

	public static SlotType1 createStringSlot(String value, String slotName) {
		List<String> slotValues = new ArrayList<>();

		if (value != null) {
			slotValues.add(String.format(STRING_PLACEHOLDER, value));
		}

		return (QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(slotValues), slotName));
	}

	public static SlotType1 createCodeSlot(String code, String codesystem, String slotName) {
		List<String> slotValues = new ArrayList<>();
		slotValues.add(createCodeSlotValue(code, codesystem));
		return QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(slotValues), slotName);
	}

	public static SlotType1 createServiceEventCodeSlot(List<CodeableConcept> codes, String slotName) {
		List<String> slotValues = new ArrayList<>();

		for (CodeableConcept code : codes) {
			if (code != null && code.getCodingFirstRep() != null) {
				slotValues.add(
						createCodeSlotValue(code.getCodingFirstRep().getCode(), code.getCodingFirstRep().getSystem()));
			}
		}

		return QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(slotValues), slotName);
	}

	private static String createCodeSlotValue(String code, String codesystem) {
		if (code == null) {
			code = "";
		}

		if (codesystem == null) {
			codesystem = "";
		}

		return String.format("('%s^^%s')", code, codesystem);
	}

	public static SlotType1 createAuthorInstitutionSlot(String authorInstitutionId, String slotName) {
		List<String> slotValues = new ArrayList<>();
		if (authorInstitutionId != null) {
			if (!authorInstitutionId.contains("urn:oid")) {
				slotValues.add(String.format("('urn:oid:%s')", authorInstitutionId));
			} else {
				slotValues.add(String.format(STRING_PLACEHOLDER, authorInstitutionId));
			}
		}

		return QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(slotValues), slotName);
	}

	public static AdhocQueryRequestDocument createAdhocQueryRequestDocument(PharmQueryIds queryId,
			Identificator patientId, AvailabilityStatus status, String authorInstitution) {
		AdhocQueryRequestDocument queryReqDocument = AdhocQueryRequestDocument.Factory.newInstance();

		LOGGER.info("create adhoc query request document");
		List<SlotType1> slots = new ArrayList<>();

		if (patientId != null) {
			slots.add(createIdentificatorSlot(patientId, "$XDSDocumentEntryPatientId"));
		}

		LOGGER.info("query id: {}", queryId.getName());
		if ("FindMedicationList".equalsIgnoreCase(queryId.getName())) {
			slots.add(createStringSlot(ObjectTypes.ON_DEMAND_DOCUMENT.getCode(), "$XDSDocumentEntryType"));
		} else if ("FindMedicationAdministrations".equalsIgnoreCase(queryId.getName())) {
			slots.add(createStringSlot(ObjectTypes.STABLE_DOCUMENT.getCode(), "$XDSDocumentEntryType"));
		}

		if (status != null) {
			slots.add(createStringSlot(status.getCodeValue(), "$XDSDocumentEntryStatus"));
		}

		if (authorInstitution != null && !authorInstitution.isEmpty()) {
			slots.add(createAuthorInstitutionSlot(authorInstitution, "$XDSDocumentEntryAuthorInstitution"));
		}

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("slots list: {}", slots);
		}

		AdhocQueryRequest queryReq = AdhocQueryRequest.Factory.newInstance();
		queryReq.setResponseOption(QueryPartFactory.generateResponseOption(ReturnType.LEAF_CLASS, true));
		queryReq.setAdhocQuery(QueryPartFactory.generateAdhocQuery(queryId, slots));
		queryReqDocument.setAdhocQueryRequest(queryReq);
		LOGGER.info("created adhoc query request document");
		return queryReqDocument;
	}

}
