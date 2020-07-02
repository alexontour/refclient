package arztis.econnector.rest.model.eimpf;

import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.EimpfDocumentKompletterImmunisierungsstatus;
import org.ehealth_connector.cda.at.elga.v2019.enums.ElgaSections;
import org.ehealth_connector.common.hl7cdar2.CE;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Author;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Component3;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040DocumentationOf;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Entry;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040RecordTarget;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040RelatedDocument;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Section;
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

@ResourceDef(name = "Bundle", profile = "http://hl7.org/fhir/StructureDefinition/Bundle")
public class CompleteImmunizationState extends FhirBundle {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public CompleteImmunizationState() {

	}

	public CompleteImmunizationState(EimpfDocumentKompletterImmunisierungsstatus cda) {
		fromCompleteImmunizationState(cda);
	}

	private void fromCompleteImmunizationState(EimpfDocumentKompletterImmunisierungsstatus cda) {
		Composition composition = fromHeader(cda);

		addResource(composition);
		fromStructuredBody(cda, composition);
	}

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

	private void extractPatient(EimpfDocumentKompletterImmunisierungsstatus cda, Composition composition) {
		if (cda.getRecordTarget() != null) {
			for (POCDMT000040RecordTarget target : cda.getRecordTarget()) {
				composition.setSubject(new Reference(String.format("Patient/%d", 1)));
				addResource(new FhirPatientAt(target, "1"));
			}
		}
	}

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

	private void extractCustodian(EimpfDocumentKompletterImmunisierungsstatus cda, Composition composition) {
		if (cda.getCustodian() != null && cda.getCustodian().getAssignedCustodian() != null
				&& cda.getCustodian().getAssignedCustodian().getRepresentedCustodianOrganization() != null) {
			composition.setCustodian(new Reference("Organization/custodian"));
			addResource(new FhirOrganization(
					cda.getCustodian().getAssignedCustodian().getRepresentedCustodianOrganization(), "custodian"));
		}
	}

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
