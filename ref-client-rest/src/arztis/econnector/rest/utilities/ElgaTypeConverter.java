package arztis.econnector.rest.utilities;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.ehealth_connector.common.at.enums.AuthorRole;
import org.ehealth_connector.common.at.enums.AuthorSpeciality;
import org.hl7.fhir.r4.model.Bundle.BundleType;
import org.hl7.fhir.r4.model.OperationOutcome.IssueSeverity;
import org.hl7.fhir.r4.model.OperationOutcome.IssueType;
import org.hl7.fhir.r4.model.Resource;
import org.openhealthtools.ihe.common.hl7v2.XCN;
import org.openhealthtools.ihe.common.hl7v2.XON;
import org.openhealthtools.ihe.common.hl7v2.format.HL7V2MessageFormat;
import org.openhealthtools.ihe.common.hl7v2.format.MessageDelimiters;
import org.openhealthtools.ihe.xds.metadata.impl.AuthorTypeImpl;
import org.openhealthtools.ihe.xds.response.DocumentEntryResponseType;
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

public class ElgaTypeConverter {

	private static final Logger LOGGER = LoggerFactory.getLogger(ElgaTypeConverter.class.getName());
	private static final String DIGIT_DIGIT_PLACEHOLDER = "%d-%d";

	private ElgaTypeConverter() {
		throw new IllegalStateException("utility class");
	}

	public static FhirBundle createFhirBundleOfDocumentResponseType(List<DocumentEntryResponseType> documentResponses) {
		List<Resource> resources = new ArrayList<>();
		if (documentResponses != null && !documentResponses.isEmpty()) {
			int index = 0;
			for (DocumentEntryResponseType documentResponse : documentResponses) {
				if (documentResponse != null) {
					resources.add(new FhirDocumentReference(documentResponse, index));

					if (documentResponse.getDocumentEntry().getLegalAuthenticator() != null) {
						resources.add(new FhirPractitioner(documentResponse.getDocumentEntry().getLegalAuthenticator(),
								String.format(DIGIT_DIGIT_PLACEHOLDER, index, 1)));
					}

					if (documentResponse.getDocumentEntry().getAuthors() != null) {
						int count = 0;
						for (Object object : documentResponse.getDocumentEntry().getAuthors()) {
							if (object instanceof AuthorTypeImpl) {
								AuthorTypeImpl author = (AuthorTypeImpl) object;
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
					}

					index++;
				}
			}
		}

		return new FhirBundle(resources);
	}

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

	private static XCN extractAuthorPerson(SlotType1 slot) {
		return HL7V2MessageFormat.buildXCNFromMessageString(MetadataConverter.getStringFromSlot(slot),
				MessageDelimiters.COMPONENT, MessageDelimiters.SUBCOMPONENT);
	}

	private static XON extractAuthorInstitution(SlotType1 slot) {
		return HL7V2MessageFormat.buildXONFromMessageString(MetadataConverter.getStringFromSlot(slot),
				MessageDelimiters.COMPONENT, MessageDelimiters.SUBCOMPONENT);
	}

	private static AuthorSpeciality extractAuthorSpeciality(SlotType1 slot) {
		try {
			return AuthorSpeciality.getEnum(MetadataConverter.getStringFromSlot(slot));
		} catch (Exception ex) {
			LOGGER.error(ex.getMessage(), ex);
		}

		return null;
	}

	private static AuthorRole extractAuthorRole(SlotType1 slot) {
		try {
			return AuthorRole.getEnum(MetadataConverter.getStringFromSlot(slot));
		} catch (Exception ex) {
			LOGGER.error(ex.getMessage(), ex);
		}

		return null;
	}

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
