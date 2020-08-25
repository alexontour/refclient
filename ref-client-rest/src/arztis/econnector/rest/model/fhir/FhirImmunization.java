/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest.model.fhir;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

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
import org.hl7.fhir.r4.model.Address.AddressUse;
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

/**
 * This class is a subclass of {@link Immunization}. Therefore it includes
 * information about vaccination of patients</br>
 *
 * It contains functionalities for converting CDA R2 {@link POCDMT000040Entry}
 * into HL7 FHIR {@link Immunization} and vice versa.
 *
 * @author Anna Jungwirth
 *
 */
@ResourceDef(name = "Immunization", profile = "http://hl7.org/fhir/StructureDefinition/Immunization")
public class FhirImmunization extends Immunization {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;
	
	/** The Constant REFERENCE_TEXT_EIMPF_DOSE. */
	private static final String REFERENCE_TEXT_EIMPF_DOSE = "#schedule-immunization-";
	
	/** The Constant REFERENCE_IMMUNIZATION_INDEX. */
	private static final String REFERENCE_IMMUNIZATION_INDEX = "immunization-%d";

	/** map of vaccines. */
	private static Map<String, Vaccine> vaccines = ImmunizationMapping.getInstance().getVaccineMap();
	
	/** The resources. */
	private List<Resource> resources;

	/**
	 * Default constructor.
	 */
	public FhirImmunization() {

	}

	/**
	 * Constructor to create {@link Immunization} from passed
	 * {@link POCDMT000040Entry}.
	 *
	 * @param entry immunization entry
	 * @param index of passed entry
	 */
	public FhirImmunization(POCDMT000040Entry entry, int index) {
		resources = new ArrayList<>();
		fromPOCDMT000040Entry(entry, String.valueOf(index));
	}

	/**
	 * all referenced resources of immunization entry.
	 *
	 * @return list of referenced resources
	 */
	public List<Resource> getResources() {
		return resources;
	}

	/**
	 * extracts information about vaccination from passed {@link POCDMT000040Entry}.
	 *
	 * @param entry element for extracting information
	 * @param index of immunization
	 */
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

			fromPerformer(entry.getSubstanceAdministration().getPerformer(), index);
		}
	}

	/**
	 * Extracts information about immunization schema from passed
	 * <code>preconditions</code>.
	 *
	 * @param preconditions               list of {@link POCDMT000040Precondition}
	 *                                    from which information is extracted
	 * @param immunizationProtocolApplied resource to add information
	 *
	 */
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

	/**
	 * Extracts information about person, who is responsible for documentation of
	 * vaccination from passed <code>authors</code>.
	 *
	 * @param authors                     list of {@link POCDMT000040Author} from
	 *                                    which information is extracted
	 * @param immunizationProtocolApplied resource to add information
	 * @param id                          of immunization
	 */
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

	/**
	 * Extracts information about person, who administers the vaccination, e.g. a
	 * physician or a midwife from passed <code>performers</code>.
	 *
	 * @param performers list of {@link POCDMT000040Performer2} from which
	 *                   information is extracted
	 * @param id         of immunization
	 */
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

	/**
	 * Extracts information about vaccine, lot number and manufacturer of vaccine
	 * from passed {@link POCDMT000040Consumable}.
	 *
	 * @param consumable to be extracted
	 * @param id         of immunization
	 */
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

	/**
	 * Extracts information of all passed {@link POCDMT000040EntryRelationship}. In
	 * immunization entry there are two types of
	 * {@link POCDMT000040EntryRelationship}. Entry relationship of type "RSON"
	 * contains information about target diseases. Entry relationship of type "SUBJ"
	 * contains information about settlement.
	 *
	 * @param entryRels the entry rels
	 * @param immunizationProtocolApplied the immunization protocol applied
	 */
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

	/**
	 * Extracts information about settlement from passed
	 * {@link POCDMT000040EntryRelationship}.Expiration date of vaccine and ID of
	 * vaccination voucher are extracted.
	 *
	 * @param entryRel {@link POCDMT000040EntryRelationship} to extract
	 */
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

	/**
	 * Creates {@link AtcdabbrSectionImpfungenKodiert} of passed
	 * <code>immunizations</code>.
	 *
	 * @param immunizations map of immunizations and their author
	 *
	 * @return created {@link AtcdabbrSectionImpfungenKodiert}
	 *
	 */
	public static AtcdabbrSectionImpfungenKodiert getAtcdabbrSectionImpfungenKodiert(
			Map<Immunization, PractitionerRole> immunizations) {
		if (immunizations == null || immunizations.isEmpty()) {
			return null;
		}

		AtcdabbrSectionImpfungenKodiert vaccinationSection = new AtcdabbrSectionImpfungenKodiert();
		vaccinationSection.setTitle(CdaUtil.createTitle("Impfungen"));

		int index = 0;
		for (Entry<Immunization, PractitionerRole> immunization : immunizations.entrySet()) {
			if (immunization != null && immunization.getValue() != null && immunization.getKey() != null) {
				vaccinationSection.getEntry()
						.add(getImmunizationEntry(immunization.getKey(), index++, immunization.getValue()));
			}
		}

		Map<String, List<EImpfImmunizationTargetVs>> targets = new HashMap<>();
		Map<String, EImpfHistorischeImpfstoffeVs> historicImmunizations = new HashMap<>();
		Map<String, EImpfImpfstoffeVs> immunizationsCodes = new HashMap<>();
		Map<String, EImpfImpfdosisVs> immunizationDose = new HashMap<>();
		Map<String, EImpfImpfschemaVs> immunizationScheme = new HashMap<>();

		int immIndex = 0;
		for (Entry<Immunization, PractitionerRole> immunization : immunizations.entrySet()) {
			if (immunization != null && immunization.getKey() != null) {
				fillMapsForTextBuilder(targets, immunizationDose, immunizationScheme, historicImmunizations,
						immunizationsCodes, immunization.getKey(), immIndex);
			}
		}

		StrucDocText textKonsUeberwGrund = new StrucDocText();
		ImmunizationTextBuilder textbuilder = new ImmunizationTextBuilder(targets, immunizationScheme, immunizationDose,
				immunizationsCodes, historicImmunizations);
		textKonsUeberwGrund.getContent().add(textbuilder.toString());
		vaccinationSection.setText(textKonsUeberwGrund);

		return vaccinationSection;
	}

	/**
	 * fills passed maps with values of passed {@link Immunization}. Key of map is
	 * immunization reference, e.g. immunization-1. These maps are intended to
	 * create human readable text in immunization CDA document.
	 *
	 * @param targets               map for target diseases
	 * @param immunizationDose      map for dose
	 * @param immunizationScheme    map for scheme
	 * @param historicImmunizations map for historic vaccine
	 * @param immunizationsCodes    map for vaccine
	 * @param immunization          resource to extract from
	 * @param index                 of immunization entry
	 */
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

	/**
	 * Creates {@link POCDMT000040Entry} for passed {@link Immunization}. If vaccine
	 * code is available in <code>immunization</code>,
	 * {@link AtcdabbrEntryImmunization} is created, otherwise
	 * {@link AtcdabbrEntryImmunizationImpfungNichtAngegeben} is created.
	 *
	 * @param immunization     resource to be extracted
	 * @param index            of immunization entry
	 * @param practitionerRole author of immunization
	 *
	 * @return created {@link POCDMT000040Entry}
	 */
	private static POCDMT000040Entry getImmunizationEntry(Immunization immunization, int index,
			PractitionerRole practitionerRole) {
		POCDMT000040Entry entry = new POCDMT000040Entry();
		entry.setTypeCode(XActRelationshipEntry.DRIV);
		entry.setContextConductionInd(true);

		if (immunization == null) {
			return entry;
		}

		if (immunization.hasVaccineCode()) {
			AtcdabbrEntryImmunization entryImmunization = new AtcdabbrEntryImmunization();
			setProperties(entryImmunization, index, false, immunization, practitionerRole);
			entryImmunization.setConsumable(getVaccineProduct(false, immunization));
			entry.setSubstanceAdministration(entryImmunization);
		} else {
			AtcdabbrEntryImmunizationImpfungNichtAngegeben immunizationNotDeclared = new AtcdabbrEntryImmunizationImpfungNichtAngegeben();
			setProperties(immunizationNotDeclared, index, true, immunization, practitionerRole);
			POCDMT000040Consumable consumable = new POCDMT000040Consumable();
			consumable.getTypeCode().add("CSM");
			AtcdabbrOtherVaccineProductNichtAngegeben otherVaccineProduct = new AtcdabbrOtherVaccineProductNichtAngegeben();
			consumable.setManufacturedProduct(otherVaccineProduct);
			immunizationNotDeclared.setConsumable(consumable);
			entry.setSubstanceAdministration(immunizationNotDeclared);
		}

		return entry;
	}

	/**
	 * sets various properties such as occurrence date, dose quantity, author,
	 * performer, scheme and target diseases to the passed
	 * {@link POCDMT000040SubstanceAdministration}.
	 *
	 * @param substanceAdministration element to add properties
	 * @param index                   of immunization entry
	 * @param immunization            resource to be extracted
	 * @param practitionerRole        author of immunization
	 */
	private static void setImmunizationProperties(POCDMT000040SubstanceAdministration substanceAdministration,
			int index, Immunization immunization, PractitionerRole practitionerRole) {
		if (immunization == null) {
			return;
		}

		if (immunization.getOccurrenceDateTimeType() != null) {
			substanceAdministration.getEffectiveTime().clear();
			substanceAdministration.getEffectiveTime()
					.add(CdaUtil.createEffectiveTimeSXCMTS(immunization.getOccurrenceDateTimeType().getValue(), true));
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
				substanceAdministration.getAuthor()
						.add(FhirPractitionerRole.getAuthorBodyPs(immunization.getRecorded(), practitionerRole));
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

	/**
	 * sets various properties such as occurrence date, dose quantity, author,
	 * performer, scheme and target diseases to the passed
	 * {@link POCDMT000040SubstanceAdministration}.
	 *
	 * @param substanceAdministration element to add properties
	 * @param index                   of immunization entry
	 * @param noImmunization          indicates whether vaccine code is available or
	 *                                not
	 * @param immunization            resource to be extracted
	 * @param practitionerRole        author of immunization
	 */
	private static void setProperties(POCDMT000040SubstanceAdministration substanceAdministration, int index,
			boolean noImmunization, Immunization immunization, PractitionerRole practitionerRole) {
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
			setImmunizationProperties(substanceAdministration, index, immunization, practitionerRole);
		}
	}

	/**
	 * creates {@link AtcdabbrEntryImmunizationTarget} with passed information about
	 * target disease. Only mandatory fields are set.
	 *
	 * @param indexTarget       index of target disease
	 * @param indexImmunization index of immunization
	 * @param target            code of target disease
	 *
	 * @return created {@link AtcdabbrEntryImmunizationTarget}
	 */
	private static AtcdabbrEntryImmunizationTarget getAtcdabbrEntryImmunizationTarget(int indexTarget,
			int indexImmunization, CodeableConcept target) {
		AtcdabbrEntryImmunizationTarget immunizationTargetObservation = new AtcdabbrEntryImmunizationTarget();

		if (target != null) {
			immunizationTargetObservation.setHl7Code(FhirCodeableConcept.createHl7CdaR2Ce(target, null, null));
		}

		immunizationTargetObservation
				.setText(CdaUtil.createReference(String.format("#target-immunization-%d", indexImmunization)));

		return immunizationTargetObservation;
	}

	/**
	 * creates {@link AtcdabbrOtherPerformerBodyImpfendePerson} with passed
	 * information about person, who administers the vaccination, e.g. a physician
	 * or a midwife.
	 *
	 * @param timePerformed Time at which the performer was occupied with
	 *                      vaccination
	 * @param fhirPerformer resource to be extracted
	 *
	 * @return created {@link AtcdabbrOtherPerformerBodyImpfendePerson}
	 */
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
					performer.getAssignedEntity(), (PractitionerRole) fhirPerformer.getActorTarget(), AddressUse.NULL));
		}

		performer.getAssignedEntity()
				.setCode(FhirCodeableConcept.createHl7CdaR2Ce(fhirPerformer.getFunction(), NullFlavor.UNKNOWN, null));

		return performer;
	}

	/**
	 * creates {@link AtcdabbrEntryImmunizationBillability} with passed information
	 * about settlement. Expiration date of vaccine and ID of vaccination voucher
	 * are set as properties.
	 *
	 * @param immunization resource to be extracted
	 *
	 * @return created {@link AtcdabbrEntryImmunizationBillability}
	 */
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

	/**
	 * creates {@link POCDMT000040Precondition} with passed information about
	 * immunization schema. Vaccination scheme and dose number of vaccination are
	 * set as properties.
	 *
	 * @param index      of immunization entry
	 * @param series     vaccination scheme. Possible values are available under
	 *                   <a href=
	 *                   "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=eImpf_Impfschema_VS">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=eImpf_Impfschema_VS</a>
	 * @param doseNumber indication of the vaccination or partial vaccination.
	 *                   Possible values are available under <a href=
	 *                   "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=eImpf_Impfdosis_VS">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=eImpf_Impfdosis_VS</a>
	 *
	 * @return created {@link POCDMT000040Precondition}
	 */
	private static POCDMT000040Precondition getImmunizationScheduleEntry(int index, String series, String doseNumber) {
		POCDMT000040Precondition precondition = new POCDMT000040Precondition();
		precondition.getTypeCode().add("PRCN");
		AtcdabbrEntryImmunizationSchedule schedule = new AtcdabbrEntryImmunizationSchedule();

		EImpfImpfschemaVs schemaCode = EImpfImpfschemaVs.getEnum(series);
		
		if(schemaCode == null) {
			schedule.setCode(FhirCoding.createHl7CdaR2Ce(
					new Coding("1.2.40.0.34.5.183", series, ""),
					NullFlavor.NOINFORMATION));
		} else {
			schedule.setCode(FhirCoding.createHl7CdaR2Ce(
					new Coding(schemaCode.getCodeSystemId(), schemaCode.getCodeValue(), schemaCode.getDisplayName()),
					NullFlavor.NOINFORMATION));
		}
		
		StringBuilder sbEimpfDose = new StringBuilder(REFERENCE_TEXT_EIMPF_DOSE);
		sbEimpfDose.append(index);

		if (doseNumber != null) {
			EImpfImpfdosisVs codeDose = EImpfImpfdosisVs.getEnum(doseNumber);
			if (codeDose != null) {
				schedule.setValue(FhirCoding.createHl7CdaR2Cd(
						new Coding(codeDose.getCodeSystemId(), codeDose.getCodeValue(), codeDose.getDisplayName()),
						null));
			} else {
				schedule.setValue(FhirCoding.createHl7CdaR2Cd(
						new Coding("1.2.40.0.34.5.183", doseNumber, ""),
						null));
			}
		}

		schedule.setHl7Text(CdaUtil.createReference(sbEimpfDose.toString()));

		precondition.setCriterion(schedule);
		return precondition;
	}

	/**
	 * creates {@link POCDMT000040Consumable} with passed information about vaccine.
	 * This method extracts details about a vaccine such as indications from
	 * {@link #vaccines}. The lot number and information about the manufacturer are
	 * also used.
	 *
	 * @param immunizationRecommendaction specifies whether element should be
	 *                                    created for a recommendation or not
	 * @param immunization                to be extracted
	 *
	 * @return created {@link POCDMT000040Consumable}
	 */
	private static POCDMT000040Consumable getVaccineProduct(boolean immunizationRecommendaction,
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

		vaccineProd.setManufacturedMaterial(material);

		if (immunization.hasManufacturer()) {
			vaccineProd.setManufacturerOrganization(
					FhirOrganization.createHl7CdaR2Pocdmt000040Organization(immunization.getManufacturerTarget()));
		}

		consumable.setManufacturedProduct(vaccineProd);
		return consumable;
	}

}
