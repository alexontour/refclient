/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.ihe.queries.common;

import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.hl7.fhir.r4.model.CodeableConcept;
import org.husky.common.at.enums.ClassCode;
import org.husky.common.model.Identificator;
import org.openehealth.ipf.commons.core.OidGenerator;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.AvailabilityStatus;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.Hl7v2Based;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.Organization;
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

/**
 * This class contains functionality to build ELGA requests for </br>
 * <ul>
 * <li>Cancel documents with IHE ITI-57 (<a href=
 * "https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_XDS_Metadata_Update.pdf">https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_XDS_Metadata_Update.pdf</a>)</li>
 * <li>Search medications with IHE PHARM-1 (<a href=
 * "https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharmacy_Suppl_CMPD_Rev1-8_TI_2020-01-27.pdf">https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharmacy_Suppl_CMPD_Rev1-8_TI_2020-01-27.pdf</a>)</li>
 * </ul>
 *
 *
 * @author Anna Jungwirth
 *
 */
public class IheQueryTransformer {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(IheQueryTransformer.class.getName());

	/** The Constant CDA_DATE_TIME_FORMAT. */
	private static final String CDA_DATE_TIME_FORMAT = "yyyyMMddhhmmss";

	/** The Constant STRING_PLACEHOLDER. */
	private static final String STRING_PLACEHOLDER = "('%s')";

	/**
	 * Default constructor.
	 */
	private IheQueryTransformer() {
		throw new IllegalStateException("Utility class for Queries");
	}

	/**
	 * builds {@link SubmitObjectsRequestDocument} with formatted metadata. </br>
	 * </br>
	 * Structure of {@link SubmitObjectsRequestDocument} should look as follows:
	 * </br>
	 *
	 * <pre>
	 * {@code
	 *
	 *<lcm:SubmitObjectsRequest>
	 *  <RegistryObjectList>
	 *   <!-- Required SubmissionSet object -->
	 *   <RegistryPackage id="SubmissionSet"/>
	 *   <Association id="triggerAssociation"
	 *     associationType="urn:ihe:iti:2010:AssociationType:UpdateAvailabilityStatus"
	 *     sourceObject="SubmissionSet"
	 *     targetObject="urn:uuid:e0985823-dc50-45a5-a6c8-a11a829893bd">
	 *       <Slot name="NewStatus">
	 *          <ValueList>
	 *             <Value>urn:oasis:names:tc:ebxml-regrep:StatusType:Deprecated</Value>
	 *          </ValueList>
	 *       </Slot>
	 *       <Slot name="OriginalStatus">
	 *           <ValueList>
	 *              <Value>urn:oasis:names:tc:ebxml-regrep:StatusType:Approved</Value>
	 *           </ValueList>
	 *       </Slot>
	 *    </Association>
	 *  </RegistryObjectList>
	 *</lcm:SubmitObjectsRequest>
	 *
	 * }
	 * </pre>
	 *
	 *
	 * @param uniqueId                     entry UUID of target document
	 * @param patientId                    ID of patient
	 * @param classCode                    class code of target document
	 * @param organizationId               organization ID of document author
	 * @param practitionerOrganizationName organization name of document author
	 * @param isUrnNeeded                  indicator whether prefix "urn:oid" is
	 *                                     needed
	 *
	 * @return builded {@link SubmitObjectsRequestDocument}
	 */
	public static SubmitObjectsRequestDocument createSubmitObjectsRequestDocument(String uniqueId,
			Identificator patientId, ClassCode classCode, String organizationId, String practitionerOrganizationName,
			boolean isUrnNeeded) {
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

			if (isUrnNeeded && classCode.getCodeSystemId() != null
					&& !classCode.getCodeSystemId().contains("urn:oid:")) {
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
			Organization authorInstitution = new Organization();

			if (organizationId != null) {
				authorInstitution.setIdNumber(organizationId);
			}

			authorInstitution.setOrganizationName(practitionerOrganizationName);

			List<String> authorInstitutionList = new ArrayList<>();
			authorInstitutionList.add(Hl7v2Based.render(authorInstitution));

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
				OidGenerator.uniqueOid().toString(), ObjectTypes.EXTERNAL_IDENTIFIER, name));

		name = QueryPartFactory.generateInternationalString("XDSSubmissionSet.sourceId", null, null);
		externalIds.add(
				QueryPartFactory.generateExternalIdentifier(ObjectIds.EXTERNAL_IDENTIFIER_SOURCEID_SUBMISSION_SET_CODE,
						registryObject, organizationId, ObjectTypes.EXTERNAL_IDENTIFIER, name));

		RegistryPackageType registryPackage = QueryPartFactory.generateRegistryPackage(
				AvailabilityStatus.APPROVED.getOpcode(), registryObject, ObjectTypes.REGSITRY_PACKAGE,
				classifications, externalIds, slots, null, null, null);

		ClassificationType classificationStatus = QueryPartFactory.generateClassification(
				ObjectIds.CLASSIFICATION_NODE_SUBMISSION_SET_CODE, registryObject, ObjectTypes.CLASSIFICATION, null,
				null, null);

		List<String> stateList = new ArrayList<>();
		stateList.add(AvailabilityStatus.APPROVED.getQueryOpcode());

		values = QueryPartFactory.generateValueList(stateList);
		SlotType1 slotOriginalState = QueryPartFactory.generateSlot(values, "OriginalStatus");

		stateList = new ArrayList<>();
		stateList.add(AvailabilityStatus.DEPRECATED.getQueryOpcode());
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

	/**
	 * creates {@link SlotType1} with identifier as value. The identifier is
	 * formatted in HL7v2 CX format. It will look like 'ID Number^^^&OID&ISO'.
	 *
	 * Structure of slots with identifiers as value looks as follows:
	 *
	 * <pre>
	 * {@code
	 *
	 * <rim:Slot name="$XDSDocumentEntryPatientId">
	 *     <rim:ValueList>
	 *          <rim:Value>'1002120289^^^&amp;1.2.40.0.10.1.4.3.1&amp;ISO'</rim:Value>
	 *     </rim:ValueList>
	 * </rim:Slot>
	 * }
	 * </pre>
	 *
	 *
	 * @param id       identifier
	 * @param slotName name of slot
	 *
	 * @return created {@link SlotType1} or null if passed identifier was null.
	 */
	public static SlotType1 createIdentificatorSlot(Identificator id, String slotName) {
		if (id != null) {
			List<String> slotValues = new ArrayList<>();
			slotValues.add(String.format("'%s^^^&%s&ISO'", id.getExtension(), id.getRoot()));
			return QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(slotValues), slotName);
		}
		return null;
	}

	/**
	 * creates {@link SlotType1} with list of text as values.
	 *
	 * Structure of slots with list of text as values looks as follows:
	 *
	 * <pre>
	 * {@code
	 *
	 * <urn1:Slot name="$XDSDocumentEntryExample">
	 *      <urn1:ValueList>
	 *           <urn1:Value>('')</urn1:Value>
	 *           <urn1:Value>('')</urn1:Value>
	 *      </urn1:ValueList>
	 * </urn1:Slot>
	 * }
	 * </pre>
	 *
	 *
	 * @param values   list of text
	 * @param slotName name of slot
	 *
	 * @return created {@link SlotType1}
	 */
	public static SlotType1 createStringsSlot(List<String> values, String slotName) {
		List<String> slotValues = new ArrayList<>();

		for (String value : values) {
			if (value != null) {
				slotValues.add(String.format(STRING_PLACEHOLDER, value));
			}
		}

		return (QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(slotValues), slotName));
	}

	/**
	 * creates {@link SlotType1} with text as value.
	 *
	 * Structure of slots with text as value looks as follows:
	 *
	 * <pre>
	 * {@code
	 *
	 * <urn1:Slot name="$XDSDocumentEntryStatus">
	 *      <urn1:ValueList>
	 *           <urn1:Value>('urn:oasis:names:tc:ebxml-regrep:StatusType:Approved')</urn1:Value>
	 *      </urn1:ValueList>
	 * </urn1:Slot>
	 * }
	 * </pre>
	 *
	 * @param value the value
	 * @param slotName name of slot
	 * @return created {@link SlotType1}
	 */
	public static SlotType1 createStringSlot(String value, String slotName) {
		List<String> slotValues = new ArrayList<>();

		if (value != null) {
			slotValues.add(String.format(STRING_PLACEHOLDER, value));
		}

		return (QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(slotValues), slotName));
	}

	/**
	 * creates {@link SlotType1} with one code as value.
	 *
	 * Structure of slots with one code as value looks as follows:
	 *
	 * <pre>
	 * {@code
	 *
	 * <urn1:Slot name="$XDSDocumentEntryExample">
	 *      <urn1:ValueList>
	 *           <urn1:Value>('11490-0^^2.16.840.1.113883.6.1')</urn1:Value>
	 *      </urn1:ValueList>
	 * </urn1:Slot>
	 * }
	 * </pre>
	 *
	 * @param code code value
	 * @param codesystem code system
	 * @param slotName name of slot
	 *
	 * @return created {@link SlotType1}
	 */
	public static SlotType1 createCodeSlot(String code, String codesystem, String slotName) {
		List<String> slotValues = new ArrayList<>();
		slotValues.add(createCodeSlotValue(code, codesystem));
		return QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(slotValues), slotName);
	}

	/**
	 * creates {@link SlotType1} with more codes as value.
	 *
	 * Structure of slots with more codes as value looks as follows:
	 *
	 * <pre>
	 * {@code
	 *
	 * <urn1:Slot name="$XDSDocumentEntryExample">
	 *      <urn1:ValueList>
	 *           <urn1:Value>('Privatrezept^^1.2.40.0.10.1.4.3.4.3.3')</urn1:Value>
	 *           <urn1:Value>('Kassenrezept^^1.2.40.0.10.1.4.3.4.3.3')</urn1:Value>
	 *      </urn1:ValueList>
	 * </urn1:Slot>
	 * }
	 * </pre>
	 *
	 * @param codes list of codes
	 * @param slotName name of slot
	 *
	 * @return created {@link SlotType1}
	 */
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

	/**
	 * formats code and code system according to HL7v2 CE data type (code^^coding
	 * system).
	 *
	 * @param code       code
	 * @param codesystem code system
	 * @return formatted code value
	 */
	private static String createCodeSlotValue(String code, String codesystem) {
		if (code == null) {
			code = "";
		}

		if (codesystem == null) {
			codesystem = "";
		}

		return String.format("('%s^^%s')", code, codesystem);
	}

	/**
	 * creates {@link SlotType1} with author institution as value.
	 *
	 * Structure of slots with author institution as value looks as follows:
	 *
	 * <pre>
	 * {@code
	 *
	 * <urn1:Slot name="$XDSDocumentEntryAuthorInstitution">
	 *       <urn1:ValueList>
	 *             <urn1:Value>('urn:oid:1.2.40.0.34.99.3.2.1')</urn1:Value>
	 *       </urn1:ValueList>
	 * </urn1:Slot>
	 * }
	 * </pre>
	 *
	 *
	 * @param authorInstitutionId OID of author
	 * @param slotName            name of slot
	 *
	 * @return created {@link SlotType1}
	 */
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

	/**
	 * builds {@link AdhocQueryRequestDocument} with formatted metadata to search for documents with PHARM-1 transactin.</br>
	 * </br>
	 * Structure of {@link AdhocQueryRequestDocument} should look as follows:
	 * </br>
	 *
	 * <pre>
	 * {@code
	 *
	 *<urn:AdhocQueryRequest xmlns:urn="urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0"
     *       xmlns:urn1="urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0">
     *       <urn:ResponseOption returnComposedObjects="true" returnType="LeafClass"/>
     *       <urn1:AdhocQuery id="urn:uuid:fdbe8fb8-7b5c-4470-9383-8abc7135f462">
     *           <urn1:Slot name="$XDSDocumentEntryType">
     *               <urn1:ValueList>
     *                   <urn1:Value>('urn:uuid:7edca82f-054d-47f2-a032-9b2a5b5186c1')</urn1:Value>
     *               </urn1:ValueList>
     *           </urn1:Slot>
     *           <urn1:Slot name="$XDSDocumentEntryPatientId">
     *               <urn1:ValueList>
     *                   <urn1:Value>'1001210995^^^&amp;1.2.40.0.10.1.4.3.1&amp;ISO'</urn1:Value>
     *               </urn1:ValueList>
     *           </urn1:Slot>
     *           <urn1:Slot name="$XDSDocumentEntryStatus">
     *               <urn1:ValueList>
     *                   <urn1:Value>('urn:oasis:names:tc:ebxml-regrep:StatusType:Approved')</urn1:Value>
     *               </urn1:ValueList>
     *           </urn1:Slot>
     *           <urn1:Slot name="$XDSDocumentEntryAuthorInstitution">
     *               <urn1:ValueList>
     *                   <urn1:Value>('urn:oid:1.2.40.0.34.99.3.2.1046167')</urn1:Value>
     *               </urn1:ValueList>
     *           </urn1:Slot>
     *       </urn1:AdhocQuery>
     *</urn:AdhocQueryRequest>
	 *
	 * }
	 * </pre>
	 *
	 * @param queryId ID of provided stored query, which should be used
	 * @param patientId ID of patient
	 * @param status availability status of document
	 * @param authorInstitution organization ID of document author
	 * @return builded {@link AdhocQueryRequestDocument}
	 */
	public static AdhocQueryRequestDocument createAdhocQueryRequestDocument(PharmQueryIds queryId,
			Identificator patientId, AvailabilityStatus status, String authorInstitution) {
		AdhocQueryRequestDocument queryReqDocument = AdhocQueryRequestDocument.Factory.newInstance();

		LOGGER.info("create adhoc query request document");
		List<SlotType1> slots = new ArrayList<>();

		if (patientId != null) {
			slots.add(createIdentificatorSlot(patientId, "$XDSDocumentEntryPatientId"));
		}

		LOGGER.info("query id: {}", queryId.getName());
		if (PharmQueryIds.FIND_MEDICATION_LIST.getName().equalsIgnoreCase(queryId.getName())) {
			slots.add(createStringSlot(ObjectTypes.ON_DEMAND_DOCUMENT.getCode(), "$XDSDocumentEntryType"));
		} else if (PharmQueryIds.FIND_MEDICATION_ADMINISTRATIONS.getName().equalsIgnoreCase(queryId.getName())) {
			slots.add(createStringSlot(ObjectTypes.STABLE_DOCUMENT.getCode(), "$XDSDocumentEntryType"));
		}

		if (status != null) {
			slots.add(createStringSlot(status.getQueryOpcode(), "$XDSDocumentEntryStatus"));
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
