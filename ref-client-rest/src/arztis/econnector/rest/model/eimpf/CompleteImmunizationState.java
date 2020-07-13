/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 * 
 */
package arztis.econnector.rest.model.eimpf;

import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.EimpfDocumentKompletterImmunisierungsstatus;
import org.ehealth_connector.cda.at.elga.v2019.enums.ElgaSections;
import org.ehealth_connector.common.hl7cdar2.CE;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Author;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Component3;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040DocumentationOf;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Entry;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040ParentDocument;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040RecordTarget;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040RelatedDocument;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Section;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040ServiceEvent;
import org.ehealth_connector.common.hl7cdar2.XActRelationshipDocument;
import org.ehealth_connector.common.utils.DateUtil;
import org.hl7.fhir.r4.model.Composition;
import org.hl7.fhir.r4.model.Composition.CompositionAttestationMode;
import org.hl7.fhir.r4.model.Composition.CompositionAttesterComponent;
import org.hl7.fhir.r4.model.Composition.CompositionEventComponent;
import org.hl7.fhir.r4.model.Composition.CompositionRelatesToComponent;
import org.hl7.fhir.r4.model.Composition.CompositionStatus;
import org.hl7.fhir.r4.model.Composition.DocumentRelationshipType;
import org.hl7.fhir.r4.model.Composition.SectionComponent;
import org.hl7.fhir.r4.model.Device;
import org.hl7.fhir.r4.model.Organization;
import org.hl7.fhir.r4.model.Practitioner;
import org.hl7.fhir.r4.model.PractitionerRole;
import org.hl7.fhir.r4.model.Reference;
import org.hl7.fhir.r4.model.Resource;

import arztis.econnector.rest.model.fhir.FhirBundle;
import arztis.econnector.rest.model.fhir.FhirCodeableConcept;
import arztis.econnector.rest.model.fhir.FhirDevice;
import arztis.econnector.rest.model.fhir.FhirIdentifier;
import arztis.econnector.rest.model.fhir.FhirImmunization;
import arztis.econnector.rest.model.fhir.FhirImmunizationRecommendation;
import arztis.econnector.rest.model.fhir.FhirObservation;
import arztis.econnector.rest.model.fhir.FhirOrganization;
import arztis.econnector.rest.model.fhir.FhirPatientAt;
import arztis.econnector.rest.model.fhir.FhirPeriod;
import arztis.econnector.rest.model.fhir.FhirPractitioner;
import arztis.econnector.rest.model.fhir.FhirPractitionerRole;
import ca.uhn.fhir.model.api.annotation.ResourceDef;

/**
 * A container for a collection of resources of extracted complete immunization
 * state. Subclass of {@link FhirBundle}.
 *
 * @author Anna Jungwirth
 *
 */
@ResourceDef(name = "Bundle", profile = "http://hl7.org/fhir/StructureDefinition/Bundle")
public class CompleteImmunizationState extends FhirBundle {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public CompleteImmunizationState() {

	}

	/**
	 * Constructor to extract resources from CDA document ("Kompletter
	 * Immunisierungsstatus").
	 *
	 * @param cda CDA document to be extracted
	 */
	public CompleteImmunizationState(EimpfDocumentKompletterImmunisierungsstatus cda) {
		fromCompleteImmunizationState(cda);
	}

	/**
	 * This method generates {@link Composition} from header elements of passed CDA
	 * document. Afterwards it adds all extracted resources from structured body of
	 * passed CDA document.
	 *
	 * @param cda CDA document to be extracted
	 */
	private void fromCompleteImmunizationState(EimpfDocumentKompletterImmunisierungsstatus cda) {
		Composition composition = fromHeader(cda);

		addResource(composition);
		fromStructuredBody(cda, composition);
	}

	/**
	 * This method extracts
	 * 
	 * <ul>
	 * <li>history of immunizations</li>
	 * <li>immunization recommendations</li>
	 * <li>relevant diseases</li>
	 * <li>exposure risks</li>
	 * <li>laboratory</li>
	 * </ul>.
	 *
	 * @param cda         CDA document to be extracted
	 * @param composition {@link Composition} to add extracted resources
	 */
	private void fromStructuredBody(EimpfDocumentKompletterImmunisierungsstatus cda, Composition composition) {
		if (cda.getComponent() != null && cda.getComponent().getStructuredBody() != null
				&& cda.getComponent().getStructuredBody().getComponent() != null) {
			CE sectionCode;
			for (POCDMT000040Component3 component3 : cda.getComponent().getStructuredBody().getComponent()) {
				if (component3 != null && component3.getSection() != null
						&& component3.getSection().getCode() != null) {
					sectionCode = component3.getSection().getCode();
					if (sectionCode.getCode().equals(ElgaSections.HISTORY_OF_IMMUNIZATIONS.getCodeValue())) {
						extractImmunization(component3.getSection(), composition);
					} else if (sectionCode.getCode().equalsIgnoreCase(ElgaSections.TREATMENT_PLAN.getCodeValue())) {
						extractImmunizationRecommendation(component3.getSection(), composition);
					} else if (sectionCode.getCode()
							.equalsIgnoreCase(ElgaSections.LABORATORIES_STUDIES.getCodeValue())) {
						extractObservation(component3.getSection(), composition, "laboratory-report");
					} else if (sectionCode.getCode()
							.equalsIgnoreCase(ElgaSections.HISTORY_OF_PAST_ILLNESS.getCodeValue())) {
						extractObservation(component3.getSection(), composition, "relevant-disease");
					} else if (sectionCode.getCode().equalsIgnoreCase(ElgaSections.PROBLEM_LIST.getCodeValue())
							&& component3.getSection().getEntry() != null) {
						extractObservation(component3.getSection(), composition, "risk");
					}
				}
			}
		}
	}

	/**
	 * This method extracts {@link FhirImmunization} from passed
	 * {@link POCDMT000040Section}. Furthermore all necessary resources for
	 * immunization resource are extracted and added to {@link FhirBundle}. </br>
	 * Moreover title and code of section are extracted.
	 *
	 * @param section     immunization {@link POCDMT000040Section} to be extracted
	 * @param composition {@link Composition} to add extracted resources
	 */
	private void extractImmunization(POCDMT000040Section section, Composition composition) {
		if (section != null) {
			SectionComponent sectionComp = new SectionComponent();
			sectionComp.setTitle(section.getTitle().xmlContent);
			sectionComp.setCode(new FhirCodeableConcept(section.getCode()));
			composition.addSection(sectionComp);

			int index = 1;
			for (POCDMT000040Entry entry : section.getEntry()) {
				sectionComp.addEntry(new Reference(String.format("Immunization/%s",
						entry.getSubstanceAdministration().getId().get(0).getExtension())));
				FhirImmunization immunization = new FhirImmunization(entry, index++);
				addResource(immunization);

				for (Resource resource : immunization.getResources()) {
					if (resource != null) {
						addResource(resource);
					}
				}
			}
		}
	}

	/**
	 * This method extracts {@link FhirObservation} from passed
	 * {@link POCDMT000040Section}. Furthermore all necessary resources for
	 * observation resource are extracted and added to {@link FhirBundle}. </br>
	 * Moreover title and code of section are extracted. </br>
	 * <b>This method can be used to extract relevant diseases, exposure risks and
	 * laboratory reports of complete immunization state. </b>
	 *
	 * @param section     {@link POCDMT000040Section} to be extracted
	 * @param composition {@link Composition} to add extracted resources
	 * @param type        indicates the type of passed section, for example
	 *                    laboratory report
	 */
	private void extractObservation(POCDMT000040Section section, Composition composition, String type) {
		if (section != null) {
			SectionComponent sectionComp = new SectionComponent();
			sectionComp.setTitle(section.getTitle().xmlContent);
			sectionComp.setCode(new FhirCodeableConcept(section.getCode()));
			composition.addSection(sectionComp);

			int index = 1;
			for (POCDMT000040Entry entry : section.getEntry()) {
				sectionComp.addEntry(new Reference(String.format("Observation/%s-%s", type, index)));
				FhirObservation observation = new FhirObservation(entry.getAct(), String.format("%s-%d", type, index++),
						sectionComp.getCode());

				addResource(observation);

				for (Resource resource : observation.getResources()) {
					if (resource != null) {
						addResource(resource);
					}
				}
			}
		}
	}

	/**
	 * This method extracts {@link FhirImmunizationRecommendation} from passed
	 * {@link POCDMT000040Section}. Furthermore all necessary resources for
	 * immunization recommendation resource are extracted and added to
	 * {@link FhirBundle}. </br>
	 * Moreover title and code of section are extracted. </br>
	 *
	 * @param section     immunization recommendation {@link POCDMT000040Section} to
	 *                    be extracted
	 * @param composition {@link Composition} to add extracted resources
	 */
	private void extractImmunizationRecommendation(POCDMT000040Section section, Composition composition) {
		if (section != null) {
			SectionComponent sectionComp = new SectionComponent();
			sectionComp.setTitle(section.getTitle().xmlContent);
			sectionComp.setCode(new FhirCodeableConcept(section.getCode()));
			composition.addSection(sectionComp);

			int index = 1;
			for (POCDMT000040Entry entry : section.getEntry()) {
				sectionComp.addEntry(new Reference(String.format("ImmunizationRecommendation/%s",
						entry.getSubstanceAdministration().getId().get(0).getExtension())));
				FhirImmunizationRecommendation recommendation = new FhirImmunizationRecommendation(entry,
						composition.getDate(), index++);
				addResource(recommendation);

				for (Resource resource : recommendation.getResources()) {
					if (resource != null) {
						addResource(resource);
					}
				}
			}
		}
	}

	/**
	 * This method extracts
	 * 
	 * <ul>
	 * <li>title</li>
	 * <li>effective time</li>
	 * <li>language</li>
	 * <li>IDs</li>
	 * <li>code</li>
	 * <li>patient</li>
	 * <li>authors</li>
	 * <li>legal authenticator</li>
	 * <li>custodian</li>
	 * <li>related document</li>
	 * </ul>
	 * 
	 * from header elements of passed CDA document.
	 *
	 * @param cda CDA document to be extracted
	 * @return {@link Composition} with extracted information
	 */
	private Composition fromHeader(EimpfDocumentKompletterImmunisierungsstatus cda) {
		Composition composition = new Composition();

		if (cda.getTitle() != null) {
			composition.setTitle(cda.getTitle().xmlContent);
		}

		if (cda.getEffectiveTime() != null && cda.getEffectiveTime().getValue() != null) {
			composition.setDate(DateUtil.parseHl7Timestamp(cda.getEffectiveTime().getValue()));
		}

		composition.setStatus(CompositionStatus.FINAL);
		composition.setLanguage(cda.getLanguageCode().getCode());
		composition.setIdentifier(new FhirIdentifier(cda.getSetId()));
		composition.addCategory(new FhirCodeableConcept(cda.getCode()));

		if (cda.getCode() != null && cda.getCode().getTranslation() != null
				&& !cda.getCode().getTranslation().isEmpty()) {
			composition.setType(new FhirCodeableConcept(cda.getCode().getTranslation().get(0)));
		}

		setIdentifier(new FhirIdentifier(cda.getId()));
		extractDocumentationOf(cda, composition);
		extractPatient(cda, composition);
		extractRelatedDocument(cda, composition);
		extractLegalAuthenticator(cda, composition);
		extractAuthors(cda, composition);
		extractCustodian(cda, composition);

		return composition;
	}

	/**
	 * This method extracts all patients from record targets of passed CDA document.
	 *
	 * @param cda         CDA document to be extracted
	 * @param composition {@link Composition} to add extracted resources
	 *
	 */
	private void extractPatient(EimpfDocumentKompletterImmunisierungsstatus cda, Composition composition) {
		if (cda.getRecordTarget() != null) {
			for (POCDMT000040RecordTarget target : cda.getRecordTarget()) {
				composition.setSubject(new Reference(String.format("Patient/%d", 1)));
				addResource(new FhirPatientAt(target, "1"));
			}
		}
	}

	/**
	 * This method extracts information about health service from element service
	 * event of passed CDA document. {@link POCDMT000040ServiceEvent} is nested in
	 * element {@link POCDMT000040DocumentationOf}.
	 *
	 * @param cda         CDA document to be extracted
	 * @param composition {@link Composition} to add extracted resources
	 */
	private void extractDocumentationOf(EimpfDocumentKompletterImmunisierungsstatus cda, Composition composition) {
		if (cda.getDocumentationOf() != null && !cda.getDocumentationOf().isEmpty()) {
			for (POCDMT000040DocumentationOf documentationOf : cda.getDocumentationOf()) {
				if (documentationOf != null && documentationOf.getServiceEvent() != null) {
					CompositionEventComponent event = new CompositionEventComponent();
					event.addCode(new FhirCodeableConcept(documentationOf.getServiceEvent().getCode()));

					if (documentationOf.getServiceEvent().getEffectiveTime() != null) {
						event.setPeriod(new FhirPeriod(documentationOf.getServiceEvent().getEffectiveTime()));
					}

					composition.addEvent(event);
				}
			}
		}
	}

	/**
	 * This method extracts information about parent document from element related
	 * document of passed CDA document. {@link POCDMT000040ParentDocument} is nested
	 * in element {@link POCDMT000040RelatedDocument}. The type of relationship is
	 * extracted too.
	 *
	 * @param cda         CDA document to be extracted
	 * @param composition {@link Composition} to add extracted resources
	 */
	private void extractRelatedDocument(EimpfDocumentKompletterImmunisierungsstatus cda, Composition composition) {
		if (cda.getRelatedDocument() != null && !cda.getRelatedDocument().isEmpty()) {
			for (POCDMT000040RelatedDocument relatedDoc : cda.getRelatedDocument()) {
				if (relatedDoc != null && relatedDoc.getParentDocument() != null) {
					CompositionRelatesToComponent relatesTo = new CompositionRelatesToComponent();

					relatesTo.setCode(convertXActDocumentRelationshipType(relatedDoc.getTypeCode()));

					if (relatedDoc.getParentDocument().getId() != null
							&& !relatedDoc.getParentDocument().getId().isEmpty()) {
						relatesTo.setTarget(new FhirIdentifier(relatedDoc.getParentDocument().getId().get(0)));
					}

					composition.addRelatesTo(relatesTo);
				}
			}
		}
	}

	/**
	 * Allocates HL7 FHIR type for passed CDA R2 type. </br>
	 *
	 * <table border="1">
	 * <tr>
	 * <td><b>CDA R2</b></td>
	 * <td><b>HL7 FHIR</b></td>
	 * </tr>
	 * <tr>
	 * <td>RPLC</td>
	 * <td>replaces</td>
	 * </tr>
	 * <tr>
	 * <td>APND</td>
	 * <td>appends</td>
	 * </tr>
	 * <tr>
	 * <td>XFRM</td>
	 * <td>transforms</td>
	 * </tr>
	 * </table>
	 *
	 * @param type of relationship between parent and current document
	 *
	 * @return allocated value or {@link DocumentRelationshipType.<code>null</code>}
	 *         if no value can be allocated
	 */
	private DocumentRelationshipType convertXActDocumentRelationshipType(XActRelationshipDocument type) {
		switch (type) {
		case RPLC:
			return DocumentRelationshipType.REPLACES;
		case APND:
			return DocumentRelationshipType.APPENDS;
		case XFRM:
			return DocumentRelationshipType.TRANSFORMS;
		}

		return DocumentRelationshipType.NULL;
	}

	/**
	 * This method extracts information about legal authenticator of passed CDA
	 * document. Legal authenticator is extracted as {@link PractitionerRole} with
	 * {@link Practitioner} and {@link Organization} as reference.
	 *
	 * @param cda         CDA document to be extracted
	 * @param composition {@link Composition} to add extracted resources
	 *
	 */
	private void extractLegalAuthenticator(EimpfDocumentKompletterImmunisierungsstatus cda, Composition composition) {
		if (cda.getLegalAuthenticator() != null && cda.getCustodian().getAssignedCustodian() != null
				&& cda.getCustodian().getAssignedCustodian().getRepresentedCustodianOrganization() != null) {
			CompositionAttesterComponent attester = new CompositionAttesterComponent();
			attester.setMode(CompositionAttestationMode.LEGAL);
			attester.setParty(new Reference(String.format("PractitionerRole/%d", 1)));

			addResource(new FhirPractitionerRole(cda.getLegalAuthenticator(), String.valueOf(1)));

			if (cda.getLegalAuthenticator().getAssignedEntity() != null) {
				addResource(new FhirPractitioner(cda.getLegalAuthenticator().getAssignedEntity().getAssignedPerson(),
						String.valueOf(1)));

				if (cda.getLegalAuthenticator().getAssignedEntity().getRepresentedOrganization() != null) {
					addResource(new FhirOrganization(
							cda.getLegalAuthenticator().getAssignedEntity().getRepresentedOrganization(),
							String.valueOf(1)));
				}
			}

			composition.addAttester(attester);
		}
	}

	/**
	 * This method extracts information about custodian of passed CDA document.
	 * Custodian is extracted as {@link Organization} resource.
	 *
	 * @param cda         CDA document to be extracted
	 * @param composition {@link Composition} to add extracted resources
	 *
	 */
	private void extractCustodian(EimpfDocumentKompletterImmunisierungsstatus cda, Composition composition) {
		if (cda.getCustodian() != null && cda.getCustodian().getAssignedCustodian() != null
				&& cda.getCustodian().getAssignedCustodian().getRepresentedCustodianOrganization() != null) {
			composition.setCustodian(new Reference("Organization/custodian"));
			addResource(new FhirOrganization(
					cda.getCustodian().getAssignedCustodian().getRepresentedCustodianOrganization(), "custodian"));
		}
	}

	/**
	 * This method extracts information about authors of passed CDA document.
	 * Authors are extracted as {@link PractitionerRole} resource with
	 * {@link Practitioner} and {@link Organization} as reference. If document was
	 * created by a device, author is is extracted as {@link Device} resource.
	 *
	 * @param cda         CDA document to be extracted
	 * @param composition {@link Composition} to add extracted resources
	 *
	 */
	private void extractAuthors(EimpfDocumentKompletterImmunisierungsstatus cda, Composition composition) {
		if (cda.getAuthor() != null) {
			int index = 2;
			for (POCDMT000040Author authorHl7cdar2 : cda.getAuthor()) {
				if (authorHl7cdar2 != null && authorHl7cdar2.getAssignedAuthor() != null) {
					if (authorHl7cdar2.getAssignedAuthor().getAssignedAuthoringDevice() != null) {
						composition.addAuthor(new Reference(String.format("Device/%s", String.valueOf(index))));
						addResource(new FhirDevice(authorHl7cdar2, String.valueOf(index)));

					} else {
						composition
								.addAuthor(new Reference(String.format("PractitionerRole/%s", String.valueOf(index))));
						addResource(new FhirPractitionerRole(authorHl7cdar2, String.valueOf(index)));

						if (authorHl7cdar2.getAssignedAuthor().getAssignedPerson() != null) {
							addResource(new FhirPractitioner(authorHl7cdar2.getAssignedAuthor().getAssignedPerson(),
									String.valueOf(index)));
						}
					}

					if (authorHl7cdar2.getAssignedAuthor().getRepresentedOrganization() != null) {
						addResource(
								new FhirOrganization(authorHl7cdar2.getAssignedAuthor().getRepresentedOrganization(),
										String.valueOf(index)));
					}
				}
			}
		}
	}

}
