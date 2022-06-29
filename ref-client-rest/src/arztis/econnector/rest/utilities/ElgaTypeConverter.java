/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest.utilities;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.hl7.fhir.r4.model.Bundle.BundleType;
import org.hl7.fhir.r4.model.OperationOutcome.IssueSeverity;
import org.hl7.fhir.r4.model.OperationOutcome.IssueType;
import org.hl7.fhir.r4.model.Patient;
import org.hl7.fhir.r4.model.Resource;
import org.husky.common.at.enums.AuthorRole;
import org.husky.common.at.enums.AuthorSpeciality;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.Association;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.Author;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.DocumentEntry;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.Hl7v2Based;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.Organization;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.Person;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotType1;
import arztis.econnector.ihe.queries.common.ObjectIds;
import arztis.econnector.ihe.utilities.AssertionTypeUtil;
import arztis.econnector.ihe.utilities.MetadataConverter;
import arztis.econnector.rest.model.fhir.FhirBundle;
import arztis.econnector.rest.model.fhir.FhirDocumentReference;
import arztis.econnector.rest.model.fhir.FhirOrganization;
import arztis.econnector.rest.model.fhir.FhirPatientAt;
import arztis.econnector.rest.model.fhir.FhirPractitioner;
import arztis.econnector.rest.model.fhir.FhirPractitionerRole;

/**
 * This class contains utilities to convert HL7 V2 data types to classes and to
 * convert classes to HL7 FHIR resources.
 *
 * @author Anna Jungwirth
 *
 */
public class ElgaTypeConverter {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(ElgaTypeConverter.class.getName());

	/** The Constant DIGIT_DIGIT_PLACEHOLDER. */
	private static final String DIGIT_DIGIT_PLACEHOLDER = "%d-%d";

	/**
	 * Default constructor.
	 */
	private ElgaTypeConverter() {
		throw new IllegalStateException("utility class");
	}

	/**
	 * Creates {@link FhirBundle} of passed document responses. This method adds a
	 * set of resources to {@link FhirBundle}. This resources are extracted from
	 * passed <code>documentResponses</code>. Extracted resources are:
	 *
	 * <ul>
	 * <li>{@link FhirDocumentReference}</li>
	 * <li>{@link FhirPractitioner}</li>
	 * <li>{@link FhirPractitionerRole}</li>
	 * <li>{@link FhirOrganization}</li>
	 * </ul>
	 *
	 * @param documentResponses list of response
	 *
	 * @return created {@link FhirBundle}
	 */
	public static FhirBundle createFhirBundleOfDocumentResponseType(List<DocumentEntry> documentResponses,
			List<Association> associations) {
		List<Resource> resources = new ArrayList<>();
		if (documentResponses != null && !documentResponses.isEmpty()) {
			int index = 0;
			for (DocumentEntry documentResponse : documentResponses) {
				if (documentResponse != null) {
					Association association = null;

					if (!associations.isEmpty()) {
						association = associations.get(index);
					}
					resources.add(new FhirDocumentReference(documentResponse, association, index));

					if (documentResponse.getLegalAuthenticator() != null) {
						resources.add(new FhirPractitioner(documentResponse.getLegalAuthenticator(),
								String.format(DIGIT_DIGIT_PLACEHOLDER, index, 1)));
					}

					if (documentResponse.getAuthors() != null) {
						int count = 0;
						for (Author author : documentResponse.getAuthors()) {
							resources.add(new FhirPractitionerRole(author,
									String.format(DIGIT_DIGIT_PLACEHOLDER, index, count + 2)));

							if (author != null && author.getAuthorPerson() != null) {
								resources.add(new FhirPractitioner(author.getAuthorPerson(),
										String.format(DIGIT_DIGIT_PLACEHOLDER, index, count + 2)));
							}

							if (author != null && author.getAuthorPerson() != null) {
								resources.add(new FhirOrganization(author,
										String.format(DIGIT_DIGIT_PLACEHOLDER, index, count + 2)));
							}
					}
				}

					index++;
				}
			}
		}

		return new FhirBundle(resources);
	}

	/**
	 * Creates {@link FhirBundle} of passed <code>registryObject</code>. This method
	 * adds a set of resources to {@link FhirBundle}. This resources are extracted
	 * from passed <code>registryObject</code>. Extracted resources are:
	 *
	 * <ul>
	 * <li>{@link FhirDocumentReference}</li>
	 * <li>{@link Patient}</li>
	 * <li>{@link FhirPractitioner}</li>
	 * <li>{@link FhirPractitionerRole}</li>
	 * <li>{@link FhirOrganization}</li>
	 * </ul>
	 *
	 * @param registryObject response with document metadata
	 *
	 * @return created {@link FhirBundle}
	 */
	public static FhirBundle createFhirBundleOfRegistryObjectToMetadata(RegistryObjectListType registryObject) {
		LOGGER.info("convert registry object to fhir bundle");

		List<Resource> resources = new ArrayList<>();

		if (registryObject == null) {
			return new FhirBundle(resources);
		}

		ExtrinsicObjectType[] extrinsicObjectArray = registryObject.getExtrinsicObjectArray();

		if (extrinsicObjectArray != null) {
			int index = 0;
			for (ExtrinsicObjectType extrinsicObject : extrinsicObjectArray) {
				if (extrinsicObject != null) {
					resources.add(new FhirDocumentReference(extrinsicObject, extrinsicObject.getHome(), index));
					resources.add(new FhirPatientAt(extrinsicObject, String.format(DIGIT_DIGIT_PLACEHOLDER, index, 1)));
					resources.add(
							new FhirPractitioner(extrinsicObject, String.format(DIGIT_DIGIT_PLACEHOLDER, index, 1)));

					if (extrinsicObject.getClassificationArray() != null) {
						int authorIndex = 0;
						for (ClassificationType classification : extrinsicObject.getClassificationArray()) {
							if (ObjectIds.CLASSIFICATION_SCHEME_AUTHOR_EXTERNAL_DOCUMENT_ENTRY_CODE
									.equalsIgnoreCase(classification.getClassificationScheme())) {
								resources.addAll(extractAuthorFromClassification(classification,
										String.format(DIGIT_DIGIT_PLACEHOLDER, index, authorIndex + 2)));
								authorIndex++;
							}
						}
					}

					index++;
				}
			}
		}

		LOGGER.info("converted registry object to metadata");
		return new FhirBundle(resources);
	}

	/**
	 * Creates list of {@link Resource} of passed <code>classification</code>. This
	 * method creates a set of resources related to author. This resources are
	 * extracted from passed <code>classification</code>. Extracted resources are:
	 *
	 * <ul>
	 * <li>{@link FhirPractitioner}</li>
	 * <li>{@link FhirPractitionerRole}</li>
	 * <li>{@link FhirOrganization}</li>
	 * </ul>
	 *
	 * @param classification {@link ClassificationType} to be extracted
	 * @param index          of document metadata
	 *
	 * @return created list of {@link Resource}
	 */
	private static List<Resource> extractAuthorFromClassification(ClassificationType classification, String index) {
		List<Resource> resouces = new ArrayList<>();

		if (classification != null && classification.getSlotArray() != null
				&& classification.getSlotArray().length > 0) {
			AuthorRole role = null;
			AuthorSpeciality speciality = null;
			for (SlotType1 slot : classification.getSlotArray()) {
				if (slot != null) {
					switch (slot.getName()) {
					case "authorPerson":
						resouces.add(new FhirPractitioner(extractAuthorPerson(slot), index));
						break;
					case "authorInstitution":
						resouces.add(new FhirOrganization(extractAuthorInstitution(slot), index));
						break;
					case "authorSpecialty":
						speciality = extractAuthorSpeciality(slot);
						break;
					case "authorRole":
						role = extractAuthorRole(slot);
						break;
					default:
						break;
					}
				}
			}

			resouces.add(new FhirPractitionerRole(speciality, role, index));
		}

		return resouces;
	}

	/**
	 * extracts HL7 V2 {@link Person} from passed {@link SlotType1}.
	 *
	 * @param slot with value formatted as HL7 V2 Person
	 * @return extracted HL7 V2 {@link Person}
	 */
	private static Person extractAuthorPerson(SlotType1 slot) {
		return Hl7v2Based.parse(MetadataConverter.getStringFromSlot(slot), Person.class);
	}

	/**
	 * extracts HL7 V2 {@link Organization} from passed {@link SlotType1}.
	 *
	 * @param slot with value formatted as HL7 V2 XON
	 * @return extracted HL7 V2 {@link Organization}
	 */
	private static Organization extractAuthorInstitution(SlotType1 slot) {
		return Hl7v2Based.parse(MetadataConverter.getStringFromSlot(slot), Organization.class);
	}

	/**
	 * extracts {@link AuthorSpeciality} from passed {@link SlotType1}. If value is
	 * available in {@link AuthorSpeciality} otherwise null is returned.
	 *
	 * @param slot with author subject as value.
	 *
	 * @return {@link AuthorSpeciality} is returned if value is available, otherwise
	 *         null is returned.
	 */
	private static AuthorSpeciality extractAuthorSpeciality(SlotType1 slot) {
		try {
			return AuthorSpeciality.getEnum(MetadataConverter.getStringFromSlot(slot));
		} catch (Exception ex) {
			LOGGER.error(ex.getMessage(), ex);
		}

		return null;
	}

	/**
	 * extracts {@link AuthorRole} from passed {@link SlotType1}. If value is
	 * available in {@link AuthorRole} otherwise null is returned.
	 *
	 * @param slot with role of author as value.
	 *
	 * @return {@link AuthorRole} is returned if value is available, otherwise null
	 *         is returned.
	 */
	private static AuthorRole extractAuthorRole(SlotType1 slot) {
		try {
			return AuthorRole.getEnum(MetadataConverter.getStringFromSlot(slot));
		} catch (Exception ex) {
			LOGGER.error(ex.getMessage(), ex);
		}

		return null;
	}

	/**
	 *
	 * Creates {@link FhirBundle} with error details that are extracted from passed
	 * <code>xmlCode</code>. The EMED error code and human readable text is
	 * extracted and added to bundle. XML code looks as follows:
	 *
	 * <pre>
	 *  {@code
	 *   <EmedReturn version=1.0>
	 *       <code>EMED-021002</code>
	 *       <text>Die angegebene eMED-ID ist ungültig.</text>
	 *   </EmedReturn>
	 *  }
	 * </pre>
	 *
	 * @param xmlCode {@link String} with XML formatted code
	 *
	 * @return created {@link FhirBundle}
	 */
	public static FhirBundle extractErrorMessageOfEmedReturn(String xmlCode) {
		FhirBundle returnMessage = null;
		Element node = null;
		try {
			node = AssertionTypeUtil.castStringToDomElement(xmlCode);
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
			returnMessage = new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					IssueSeverity.ERROR, IssueType.EXCEPTION, null, xmlCode);
		}

		if (node != null) {
			StringBuilder sb = new StringBuilder();
			NodeList nodeList = node.getChildNodes();

			if (nodeList == null) {
				return null;
			}

			for (int i = 0; i < nodeList.getLength(); i++) {
				if (nodeList.getLength() > 0 && ("code".equals(nodeList.item(i).getLocalName())
						|| "text".equals(nodeList.item(i).getLocalName()))) {
					sb.append(nodeList.item(i).getNodeValue());
					sb.append(" ");
				}
			}

			returnMessage = new FhirBundle(BundleType.TRANSACTIONRESPONSE, HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
					IssueSeverity.ERROR, IssueType.EXCEPTION, null, sb.toString());
		}

		return returnMessage;
	}

}
