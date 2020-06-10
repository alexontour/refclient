package arztis.econnector.rest.model.fhir;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrEntryImmunization;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrEntryImmunizationBillability;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrEntryImmunizationImpfungNichtAngegeben;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrEntryImmunizationSchedule;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrEntryImmunizationTarget;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrOtherPerformerBodyImpfendePerson;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrOtherVaccineProduct;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrOtherVaccineProductNichtAngegeben;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrSectionImpfungenKodiert;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.enums.EImpfHistorischeImpfstoffeVs;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.enums.EImpfImmunizationTargetVs;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.enums.EImpfImpfdosisVs;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.enums.EImpfImpfschemaVs;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.enums.EImpfImpfstoffeVs;
import org.ehealth_connector.cda.at.elga.v2019.textbuilder.ImmunizationTextBuilder;
import org.ehealth_connector.common.Code;
import org.ehealth_connector.common.enums.NullFlavor;
import org.ehealth_connector.common.hl7cdar2.CD;
import org.ehealth_connector.common.hl7cdar2.CR;
import org.ehealth_connector.common.hl7cdar2.CS;
import org.ehealth_connector.common.hl7cdar2.II;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Author;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Consumable;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Entry;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040EntryRelationship;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Material;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Performer2;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Precondition;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Reference;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040SubstanceAdministration;
import org.ehealth_connector.common.hl7cdar2.StrucDocText;
import org.ehealth_connector.common.hl7cdar2.TS;
import org.ehealth_connector.common.hl7cdar2.XActRelationshipEntry;
import org.ehealth_connector.common.hl7cdar2.XActRelationshipEntryRelationship;
import org.ehealth_connector.common.hl7cdar2.XActRelationshipExternalReference;
import org.ehealth_connector.common.utils.DateUtil;
import org.hl7.fhir.r4.model.CodeableConcept;
import org.hl7.fhir.r4.model.Coding;
import org.hl7.fhir.r4.model.DateTimeType;
import org.hl7.fhir.r4.model.Identifier;
import org.hl7.fhir.r4.model.Immunization;
import org.hl7.fhir.r4.model.PractitionerRole;
import org.hl7.fhir.r4.model.Reference;
import org.hl7.fhir.r4.model.Resource;
import org.hl7.fhir.r4.model.ResourceType;
import org.hl7.fhir.r4.model.StringType;

import arztis.econnector.ihe.utilities.CdaUtil;
import arztis.econnector.rest.model.eimpf.Vaccine;
import arztis.econnector.rest.utilities.ImmunizationMapping;
import ca.uhn.fhir.model.api.annotation.ResourceDef;

@ResourceDef(name = "Immunization", profile = "http://hl7.org/fhir/StructureDefinition/Immunization")
public class FhirImmunization extends Immunization {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final String REFERENCE_TEXT_EIMPF_DOSE = "#impfEmpf-schedule-dose-";
	private static final String REFERENCE_IMMUNIZATION_INDEX = "immunization-%d";
	private static Map<String, Vaccine> vaccines = ImmunizationMapping.getInstance().getVaccineMap();
	private List<Resource> resources;

	/**
	 * Default constructor
	 */
	public FhirImmunization() {

	}

	public FhirImmunization(POCDMT000040Entry entry, int index) {
		resources = new ArrayList<>();
		fromPOCDMT000040Entry(entry, String.valueOf(index));
	}

	public List<Resource> getResources() {
		return resources;
	}

	private void fromPOCDMT000040Entry(POCDMT000040Entry entry, String index) {
		if (entry != null && entry.getSubstanceAdministration() != null) {
			setId(index);

			if (entry.getSubstanceAdministration().getId() != null) {
				for (II id : entry.getSubstanceAdministration().getId()) {
					if (id != null) {
						addIdentifier(new FhirIdentifier(id));
					}
				}
			}

			if (entry.getSubstanceAdministration().getStatusCode() != null
					&& "completed".equalsIgnoreCase(entry.getSubstanceAdministration().getStatusCode().getCode())) {
				setStatus(ImmunizationStatus.COMPLETED);
			}

			DateTimeType occurenceTime = new DateTimeType(
					CdaUtil.fromSXCMTS(entry.getSubstanceAdministration().getEffectiveTime().get(0)));
			setOccurrence(occurenceTime);

			setDoseQuantity(new FhirQuantity(entry.getSubstanceAdministration().getDoseQuantity()));

			fromConsumable(entry.getSubstanceAdministration().getConsumable(), index);

			ImmunizationProtocolAppliedComponent immunizationProtocolApplied = new ImmunizationProtocolAppliedComponent();

			fromPrecondition(entry.getSubstanceAdministration().getPrecondition(), immunizationProtocolApplied);
			fromAuthor(entry.getSubstanceAdministration().getAuthor(), immunizationProtocolApplied, index);

			fromEntryRelationships(entry.getSubstanceAdministration().getEntryRelationship(),
					immunizationProtocolApplied);

			addProtocolApplied(immunizationProtocolApplied);

			if (entry.getSubstanceAdministration().getReference() != null
					&& !entry.getSubstanceAdministration().getReference().isEmpty()
					&& entry.getSubstanceAdministration().getReference().get(0) != null) {
				// setReportOrigin(new CodeableConcept(new Coding(theSystem, theCode,
				// theDisplay)));
			}

			fromPerformer(entry.getSubstanceAdministration().getPerformer(), index);
		}
	}

	private void fromPrecondition(List<POCDMT000040Precondition> preconditions,
			ImmunizationProtocolAppliedComponent immunizationProtocolApplied) {
		if (preconditions != null && !preconditions.isEmpty() && preconditions.get(0).getCriterion() != null) {
			immunizationProtocolApplied.setSeries(preconditions.get(0).getCriterion().getCode().getCode());

			if (preconditions.get(0).getCriterion().getValue() instanceof CD) {
				immunizationProtocolApplied
						.setDoseNumber(new StringType(((CD) preconditions.get(0).getCriterion().getValue()).getCode()));
			}
		}
	}

	private void fromAuthor(List<POCDMT000040Author> authors,
			ImmunizationProtocolAppliedComponent immunizationProtocolApplied, String id) {

		if (authors != null && !authors.isEmpty() && authors.get(0) != null
				&& authors.get(0).getAssignedAuthor() != null
				&& authors.get(0).getAssignedAuthor().getRepresentedOrganization() != null) {
			immunizationProtocolApplied
					.setAuthority(new Reference(String.format("Organization/immunization-author-%s", id)));
			resources.add(new FhirOrganization(authors.get(0).getAssignedAuthor().getRepresentedOrganization(),
					String.format("immunization-author-%s", id)));
		}
	}

	private void fromPerformer(List<POCDMT000040Performer2> performers, String id) {
		if (performers != null && !performers.isEmpty()) {
			ImmunizationPerformerComponent performerComp = new ImmunizationPerformerComponent();
			performerComp.setActor(new Reference(String.format("PractitionerRole/immunization-performer-%s", id)));

			resources.add(new FhirPractitionerRole(performers.get(0), String.format("immunization-performer-%s", id)));

			if (performers.get(0).getAssignedEntity() != null)
				performerComp.setFunction(new FhirCodeableConcept(performers.get(0).getAssignedEntity().getCode()));
			addPerformer(performerComp);
		}
	}

	private void fromConsumable(POCDMT000040Consumable consumable, String id) {
		if (consumable != null && consumable.getManufacturedProduct() != null) {

			if (consumable.getManufacturedProduct().getManufacturedMaterial() != null) {
				setVaccineCode(new FhirCodeableConcept(
						consumable.getManufacturedProduct().getManufacturedMaterial().getCode()));
				setLotNumber(
						consumable.getManufacturedProduct().getManufacturedMaterial().getLotNumberText().xmlContent);
			}

			if (consumable.getManufacturedProduct().getManufacturerOrganization() != null) {
				setManufacturer(new Reference(String.format("Organization/immunization-manufacturer-%s", id)));
				resources.add(new FhirOrganization(consumable.getManufacturedProduct().getManufacturerOrganization(),
						String.format("immunization-manufacturer-%s", id)));
			}
		}
	}

	private void fromEntryRelationships(List<POCDMT000040EntryRelationship> entryRels,
			ImmunizationProtocolAppliedComponent immunizationProtocolApplied) {
		if (entryRels != null && !entryRels.isEmpty()) {
			for (POCDMT000040EntryRelationship entryRel : entryRels) {
				if (entryRel != null) {
					if (XActRelationshipEntryRelationship.RSON.equals(entryRel.getTypeCode())) {
						immunizationProtocolApplied
								.addTargetDisease(new FhirCodeableConcept(entryRel.getObservation().getCode()));
					} else if (XActRelationshipEntryRelationship.SUBJ.equals(entryRel.getTypeCode())) {
						fromEntryRelationshipSubj(entryRel);
					}
				}

			}

		}
	}

	private void fromEntryRelationshipSubj(POCDMT000040EntryRelationship entryRel) {
		if (entryRel == null || entryRel.getAct() == null) {
			return;
		}

		if (entryRel.getAct().getId() != null && !entryRel.getAct().getId().isEmpty()
				&& entryRel.getAct().getId().get(0) != null) {
			addProgramEligibility(new CodeableConcept(new Coding(entryRel.getAct().getId().get(0).getRoot(),
					entryRel.getAct().getId().get(0).getExtension(), "")));
		}

		String expirationDate = entryRel.getAct().getEffectiveTime().getValue();
		Date expDate = DateUtil.parseDateyyyyMMdd(expirationDate);

		if (expDate != null) {
			expDate = DateUtil.parseDateyyyy(expirationDate);
		}

		if (expDate != null) {
			expDate = DateUtil.parseDateyyyyMM(expirationDate);
		}

		setExpirationDate(expDate);
	}

	public static AtcdabbrSectionImpfungenKodiert getAtcdabbrSectionImpfungenKodiert(List<Immunization> immunizations) {
		if (immunizations == null || immunizations.isEmpty()) {
			return null;
		}

		AtcdabbrSectionImpfungenKodiert vaccinationSection = new AtcdabbrSectionImpfungenKodiert();
		vaccinationSection.setTitle(CdaUtil.createTitle("Impfungen"));

		int index = 0;
		for (Immunization immunization : immunizations) {
			if (immunization != null) {
				vaccinationSection.getEntry().add(getImmunizationEntry(immunization, index++));

				/*
				 * if (immunization.getTranslations() != null) { for (Translation translation :
				 * immunization.getTranslations()) { if (translation != null) {
				 * vaccinationSection.getComponent()
				 * .add(createComp5WithCompleteSection(ActRelationshipHasComponent.COMP, true,
				 * translation.getAtcdabbrSectionUebersetzung())); } } }
				 */
			}
		}

		Map<String, List<EImpfImmunizationTargetVs>> targets = new HashMap<>();
		Map<String, EImpfHistorischeImpfstoffeVs> historicImmunizations = new HashMap<>();
		Map<String, EImpfImpfstoffeVs> immunizationsCodes = new HashMap<>();
		Map<String, EImpfImpfdosisVs> immunizationDose = new HashMap<>();
		Map<String, EImpfImpfschemaVs> immunizationScheme = new HashMap<>();

		int immIndex = 0;
		for (Immunization immunization : immunizations) {
			if (immunization != null) {
				fillMapsForTextBuilder(targets, immunizationDose, immunizationScheme, historicImmunizations,
						immunizationsCodes, immunization, immIndex);
			}
		}

		StrucDocText textKonsUeberwGrund = new StrucDocText();
		ImmunizationTextBuilder textbuilder = new ImmunizationTextBuilder(targets, immunizationScheme, immunizationDose,
				immunizationsCodes, historicImmunizations);
		textKonsUeberwGrund.getContent().add(textbuilder.toString());
		vaccinationSection.setText(textKonsUeberwGrund);

		return vaccinationSection;
	}

	private static void fillMapsForTextBuilder(Map<String, List<EImpfImmunizationTargetVs>> targets,
			Map<String, EImpfImpfdosisVs> immunizationDose, Map<String, EImpfImpfschemaVs> immunizationScheme,
			Map<String, EImpfHistorischeImpfstoffeVs> historicImmunizations,
			Map<String, EImpfImpfstoffeVs> immunizationsCodes, Immunization immunization, int index) {
		if (immunization.hasProtocolApplied()) {

			if (immunization.getProtocolAppliedFirstRep().hasSeries()
					|| immunization.getProtocolAppliedFirstRep().hasDoseNumberStringType()) {
				immunizationScheme.put(String.format(REFERENCE_IMMUNIZATION_INDEX, index),
						EImpfImpfschemaVs.getEnum(immunization.getProtocolAppliedFirstRep().getSeries()));
				immunizationDose.put(String.format(REFERENCE_IMMUNIZATION_INDEX, index), EImpfImpfdosisVs
						.getEnum(immunization.getProtocolAppliedFirstRep().getDoseNumberStringType().asStringValue()));
			}

			if (immunization.getProtocolAppliedFirstRep().hasTargetDisease()) {
				List<EImpfImmunizationTargetVs> immunizationTargets = new ArrayList<>();
				for (CodeableConcept immunizationTarget : immunization.getProtocolAppliedFirstRep()
						.getTargetDisease()) {
					immunizationTargets
							.add(EImpfImmunizationTargetVs.getEnum(immunizationTarget.getCodingFirstRep().getCode()));
				}

				targets.put(String.format(REFERENCE_IMMUNIZATION_INDEX, index), immunizationTargets);
			} else {
				List<EImpfImmunizationTargetVs> immunizationTargets = new ArrayList<>();
				for (Code immunizationTarget : vaccines.get(immunization.getVaccineCode().getCodingFirstRep().getCode())
						.getTargetDisease()) {
					if (immunizationTarget != null && immunizationTarget.getCode() != null) {
						immunizationTargets.add(EImpfImmunizationTargetVs.getEnum(immunizationTarget.getCode()));
					}
				}

				targets.put(String.format(REFERENCE_IMMUNIZATION_INDEX, index), immunizationTargets);
			}
		}

		if (immunization.hasVaccineCode()) {
			Vaccine vaccine = vaccines.get(immunization.getVaccineCode().getCodingFirstRep().getCode());

			if (vaccine != null && vaccine.getCode() != null) {
				immunizationsCodes.put(String.format(REFERENCE_IMMUNIZATION_INDEX, index),
						EImpfImpfstoffeVs.getEnum(vaccine.getCode().getCode()));
			}

			EImpfHistorischeImpfstoffeVs historicVaccination = EImpfHistorischeImpfstoffeVs
					.getEnum(immunization.getVaccineCode().getCodingFirstRep().getCode());

			if (historicVaccination != null) {
				historicImmunizations.put(String.format(REFERENCE_IMMUNIZATION_INDEX, index), historicVaccination);
			}
		}
	}

	public static POCDMT000040Entry getImmunizationEntry(Immunization immunization, int index) {
		POCDMT000040Entry entry = new POCDMT000040Entry();
		entry.setTypeCode(XActRelationshipEntry.DRIV);
		entry.setContextConductionInd(true);

		if (immunization == null) {
			return entry;
		}

		if (immunization.hasVaccineCode()) {
			AtcdabbrEntryImmunization entryImmunization = new AtcdabbrEntryImmunization();
			setProperties(entryImmunization, index, false, immunization);
			entryImmunization.setConsumable(getVaccineProduct(index, false, immunization));
			entry.setSubstanceAdministration(entryImmunization);
		} else {
			AtcdabbrEntryImmunizationImpfungNichtAngegeben immunizationNotDeclared = new AtcdabbrEntryImmunizationImpfungNichtAngegeben();
			setProperties(immunizationNotDeclared, index, true, immunization);
			POCDMT000040Consumable consumable = new POCDMT000040Consumable();
			consumable.getTypeCode().add("CSM");
			AtcdabbrOtherVaccineProductNichtAngegeben otherVaccineProduct = new AtcdabbrOtherVaccineProductNichtAngegeben();
			consumable.setManufacturedProduct(otherVaccineProduct);
			immunizationNotDeclared.setConsumable(consumable);
			entry.setSubstanceAdministration(immunizationNotDeclared);
		}

		return entry;
	}

	private static void setImmunizationProperties(POCDMT000040SubstanceAdministration substanceAdministration,
			int index, Immunization immunization) {
		if (immunization == null) {
			return;
		}

		if (immunization.getOccurrenceDateTimeType() != null) {
			substanceAdministration.getEffectiveTime().clear();
			substanceAdministration.getEffectiveTime()
					.add(CdaUtil.createEffectiveTimeSXCMTS(immunization.getOccurrenceDateTimeType().getValue()));
		}

		substanceAdministration
				.setDoseQuantity(FhirQuantity.createHl7CdaR2Ivlpq(immunization.getDoseQuantity(), NullFlavor.UNKNOWN));

		if (immunization.hasProtocolApplied()) {

			if (immunization.getProtocolAppliedFirstRep().hasSeries()
					|| immunization.getProtocolAppliedFirstRep().hasDoseNumberStringType()) {
				substanceAdministration.getPrecondition().clear();
				substanceAdministration.getPrecondition()
						.add(getImmunizationScheduleEntry(index, immunization.getProtocolAppliedFirstRep().getSeries(),
								immunization.getProtocolAppliedFirstRep().getDoseNumberStringType().getValue()));
			}

			if (immunization.getProtocolAppliedFirstRep().hasAuthority()) {
				substanceAdministration.getAuthor().clear();

				/*
				 * substanceAdministration.getAuthor().add(FhirPractitionerRole.
				 * getAtcdabbrOtherAuthorBodyEImpfpass( immunization.getRecorded(),
				 * immunization.getProtocolAppliedFirstRep().getAuthorityTarget()));
				 */

			}

			if (immunization.getProtocolAppliedFirstRep().hasTargetDisease()) {
				int indexTarget = 0;
				for (CodeableConcept immunizationTarget : immunization.getProtocolAppliedFirstRep()
						.getTargetDisease()) {
					POCDMT000040EntryRelationship entryRel = new POCDMT000040EntryRelationship();
					entryRel.setTypeCode(XActRelationshipEntryRelationship.RSON);
					entryRel.setObservation(
							getAtcdabbrEntryImmunizationTarget(indexTarget++, index, immunizationTarget));
					substanceAdministration.getEntryRelationship().add(entryRel);
				}
			} else {
				int indexTarget = 0;
				for (Code immunizationTarget : vaccines.get(immunization.getVaccineCode().getCodingFirstRep().getCode())
						.getTargetDisease()) {
					if (immunizationTarget != null && immunizationTarget.getCode() != null) {
						POCDMT000040EntryRelationship entryRel = new POCDMT000040EntryRelationship();
						entryRel.setTypeCode(XActRelationshipEntryRelationship.RSON);
						entryRel.setObservation(getAtcdabbrEntryImmunizationTarget(indexTarget++, index,
								new CodeableConcept(new Coding(immunizationTarget.getCodeSystem(),
										immunizationTarget.getCode(), immunizationTarget.getDisplayName()))));
						substanceAdministration.getEntryRelationship().add(entryRel);
					}
				}
			}
		}

		if (immunization.hasPerformer()) {
			substanceAdministration.getPerformer().clear();
			substanceAdministration.getPerformer().add(getAtcdabbrOtherPerformerBodyImpfendePerson(
					immunization.getOccurrenceDateTimeType().getValue(), immunization.getPerformerFirstRep()));
		}

		if (immunization.hasProgramEligibility()) {
			POCDMT000040EntryRelationship entryRel = new POCDMT000040EntryRelationship();
			entryRel.setTypeCode(XActRelationshipEntryRelationship.SUBJ);
			entryRel.setAct(getAtcdabbrEntryImmunizationBillability(immunization));
			substanceAdministration.getEntryRelationship().add(entryRel);
		}

		if (immunization.hasReportOrigin()) {
			POCDMT000040Reference referenceDoc = new POCDMT000040Reference();
			referenceDoc.setTypeCode(XActRelationshipExternalReference.REFR);
			referenceDoc.setExternalDocument(
					FhirCodeableConcept.getAtcdabbrEntryExternalDocument(0, immunization.getReportOrigin()));
			substanceAdministration.getReference().add(referenceDoc);
		}
	}

	private static void setProperties(POCDMT000040SubstanceAdministration substanceAdministration, int index,
			boolean noImmunization, Immunization immunization) {
		if (immunization == null) {
			return;
		}

		if (immunization.getIdentifier() != null) {
			for (Identifier id : immunization.getIdentifier()) {
				if (id != null) {
					substanceAdministration.getId().add(FhirIdentifier.createHl7CdaR2Ii(id, null));
				}
			}
		}

		substanceAdministration.setText(CdaUtil.createReference("#immunization-entry-" + index));

		if (!noImmunization) {
			setImmunizationProperties(substanceAdministration, index, immunization);
		}
	}

	private static AtcdabbrEntryImmunizationTarget getAtcdabbrEntryImmunizationTarget(int indexTarget,
			int indexImmunization, CodeableConcept target) {
		AtcdabbrEntryImmunizationTarget immunizationTargetObservation = new AtcdabbrEntryImmunizationTarget();

		if (target != null) {
			immunizationTargetObservation.setHl7Code(FhirCodeableConcept.createHl7CdaR2Ce(target, null, null));
		}

		immunizationTargetObservation.setText(CdaUtil.createReference(
				String.format("#target-immunization-%d-%d", indexTarget, indexImmunization)));

		return immunizationTargetObservation;
	}

	private static AtcdabbrOtherPerformerBodyImpfendePerson getAtcdabbrOtherPerformerBodyImpfendePerson(
			Date timePerformed, ImmunizationPerformerComponent fhirPerformer) {
		AtcdabbrOtherPerformerBodyImpfendePerson performer = new AtcdabbrOtherPerformerBodyImpfendePerson();

		if (fhirPerformer == null) {
			return performer;
		}

		performer.setHl7Time(CdaUtil.createEffectiveTimePointIVLTS(timePerformed));

		if (fhirPerformer.getActorTarget() != null
				&& ResourceType.PractitionerRole.equals(fhirPerformer.getActorTarget().getResourceType())) {
			performer.setAssignedEntity(FhirPractitionerRole.getHl7CdaR2Pocdmt000040AssignedEntity(
					performer.getAssignedEntity(), (PractitionerRole) fhirPerformer.getActorTarget()));
		}

		performer.getAssignedEntity()
				.setCode(FhirCodeableConcept.createHl7CdaR2Ce(fhirPerformer.getFunction(), NullFlavor.UNKNOWN, null));

		return performer;
	}

	private static AtcdabbrEntryImmunizationBillability getAtcdabbrEntryImmunizationBillability(
			Immunization immunization) {
		AtcdabbrEntryImmunizationBillability immunizationBillabilityAct = new AtcdabbrEntryImmunizationBillability();

		if (immunization.hasReasonCode()) {
			CD cd = immunizationBillabilityAct.getCode();
			cd.getQualifier().clear();

			CR qualifier = new CR();
			qualifier.setValue(FhirCodeableConcept.createHl7CdaR2Cd(immunization.getReasonCodeFirstRep(), null, null));
			cd.getQualifier().add(qualifier);
			immunizationBillabilityAct.setCode(cd);
		}

		if (immunization.hasProgramEligibility() && immunization.getProgramEligibilityFirstRep().hasCoding()) {
			II voucherId = new II();
			voucherId.setExtension(immunization.getProgramEligibilityFirstRep().getCodingFirstRep().getCode());
			voucherId.setRoot(immunization.getProgramEligibilityFirstRep().getCodingFirstRep().getSystem());
			immunizationBillabilityAct.setHl7Id(voucherId);
		}

		if (immunization.getExpirationDate() != null) {
			immunizationBillabilityAct
					.setHl7EffectiveTime(CdaUtil.createEffectiveDate(immunization.getExpirationDate()));
		} else {
			TS effectiveTimeUnk = new TS();
			effectiveTimeUnk.nullFlavor = new ArrayList<>();
			effectiveTimeUnk.nullFlavor.add("UNK");
			immunizationBillabilityAct.setHl7EffectiveTime(effectiveTimeUnk);
		}

		CS cs = new CS();
		cs.setCode("completed");
		immunizationBillabilityAct.setStatusCode(cs);

		return immunizationBillabilityAct;
	}

	public static POCDMT000040Precondition getImmunizationScheduleEntry(int index, String series, String doseNumber) {
		POCDMT000040Precondition precondition = new POCDMT000040Precondition();
		precondition.getTypeCode().add("PRCN");
		AtcdabbrEntryImmunizationSchedule schedule = new AtcdabbrEntryImmunizationSchedule();

		EImpfImpfschemaVs schemaCode = EImpfImpfschemaVs.getEnum(series);
		schedule.setCode(FhirCoding.createHl7CdaR2Ce(
				new Coding(schemaCode.getCodeSystemId(), schemaCode.getCodeValue(), schemaCode.getDisplayName()),
				NullFlavor.NOINFORMATION));

		StringBuilder sbEimpfDose = new StringBuilder(REFERENCE_TEXT_EIMPF_DOSE);
		sbEimpfDose.append(index);

		if (doseNumber != null) {
			EImpfImpfdosisVs codeDose = EImpfImpfdosisVs.getEnum(doseNumber);
			if (codeDose != null) {
				schedule.setValue(FhirCoding.createHl7CdaR2Cd(
						new Coding(codeDose.getCodeSystemId(), codeDose.getCodeValue(), codeDose.getDisplayName()),
						null));
			}
		}

		schedule.setHl7Text(CdaUtil.createReference(sbEimpfDose.toString()));

		precondition.setCriterion(schedule);
		return precondition;
	}

	public static POCDMT000040Consumable getVaccineProduct(int index, boolean immunizationRecommendaction,
			Immunization immunization) {
		POCDMT000040Consumable consumable = new POCDMT000040Consumable();
		consumable.getTypeCode().clear();
		consumable.getTypeCode().add("CSM");
		AtcdabbrOtherVaccineProduct vaccineProd = new AtcdabbrOtherVaccineProduct();
		POCDMT000040Material material = vaccineProd.getHl7ManufacturedMaterial();

		if (immunization == null) {
			return consumable;
		}

		if (immunization.hasVaccineCode()) {
			Vaccine vaccine = vaccines.get(immunization.getVaccineCode().getCodingFirstRep().getCode());
			if (vaccine != null && vaccine.getCode() != null) {
				material.setCode(
						FhirCodeableConcept
								.createHl7CdaR2Ce(
										new CodeableConcept(new Coding(vaccine.getCode().getCodeSystem(),
												vaccine.getCode().getCode(), vaccine.getCode().getDisplayName())),
										null, null));
			}
		}

		if (immunization.getLotNumber() != null && !immunizationRecommendaction) {
			material.setLotNumberText(CdaUtil.createTitle(immunization.getLotNumber()));
		} else if (immunizationRecommendaction) {
			material.setLotNumberText(CdaUtil.createTitleNullFlavor(null, "NA"));
		} else {
			material.setLotNumberText(CdaUtil.createTitleNullFlavor(null, "UNK"));
		}

		/*
		 * if (this.ingredients != null && !this.ingredients.isEmpty()) { for
		 * (Ingredient ingredient : ingredients) { if (ingredient != null) {
		 * material.getIngredient().add(ingredient.getCOCTMT230100UVIngredient()); } } }
		 * 
		 * Name pharmName = new Name(); if (this.name != null) {
		 * pharmName.setName(this.name); } else if (this.vaccination != null) {
		 * pharmName.setName(vaccination.getDisplayName()); } else if
		 * (this.historicVaccination != null) {
		 * pharmName.setName(historicVaccination.getDisplayName()); }
		 */

		// material.getCode().setOriginalText(createReference("#prodcode-" + index));
		// material.setName(pharmName.getHl7CdaR2En());

		vaccineProd.setManufacturedMaterial(material);

		if (immunization.hasManufacturer()) {
			vaccineProd.setManufacturerOrganization(
					FhirOrganization.createHl7CdaR2Pocdmt000040Organization(immunization.getManufacturerTarget()));
		}

		consumable.setManufacturedProduct(vaccineProd);
		return consumable;
	}

}
