package arztis.econnector.rest.model.fhir;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.ehealth_connector.common.hl7cdar2.CD;
import org.ehealth_connector.common.hl7cdar2.IVLTS;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Author;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Consumable;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Entry;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040EntryRelationship;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Precondition;
import org.ehealth_connector.common.hl7cdar2.XActRelationshipEntryRelationship;
import org.hl7.fhir.dstu3.model.codesystems.ImmunizationRecommendationDateCriterion;
import org.hl7.fhir.r4.model.CodeableConcept;
import org.hl7.fhir.r4.model.Coding;
import org.hl7.fhir.r4.model.ImmunizationRecommendation;
import org.hl7.fhir.r4.model.Reference;
import org.hl7.fhir.r4.model.Resource;
import org.hl7.fhir.r4.model.StringType;

import ca.uhn.fhir.model.api.annotation.ResourceDef;

@ResourceDef(name = "ImmunizationRecommendation", profile = "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation")
public class FhirImmunizationRecommendation extends ImmunizationRecommendation {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<Resource> resources;

	/**
	 * Default constructor
	 */
	public FhirImmunizationRecommendation() {

	}

	public FhirImmunizationRecommendation(POCDMT000040Entry entry, Date creationDate, String text, int index) {
		resources = new ArrayList<>();
		fromPOCDMT000040Entry(entry, creationDate, text, String.valueOf(index));
	}

	public List<Resource> getResources() {
		return resources;
	}

	private void fromPOCDMT000040Entry(POCDMT000040Entry entry, Date creationDate, String text, String index) {
		if (entry != null && entry.getSubstanceAdministration() != null) {
			setId(entry.getSubstanceAdministration().getId().get(0).getExtension());

			addIdentifier(new FhirIdentifier(entry.getSubstanceAdministration().getId().get(0)));

			setDate(creationDate);
			setPatient(new Reference("Patient/1"));

			ImmunizationRecommendationRecommendationComponent recommendation = new ImmunizationRecommendationRecommendationComponent();

			fromEffectiveTime((IVLTS) entry.getSubstanceAdministration().getEffectiveTime().get(0), recommendation);

			recommendation.setForecastStatus(new FhirCodeableConcept(entry.getSubstanceAdministration().getCode()));
			fromAuthor(entry.getSubstanceAdministration().getAuthor(), index);
			fromConsumable(entry.getSubstanceAdministration().getConsumable(), recommendation);
			fromEntryRelationships(entry.getSubstanceAdministration().getEntryRelationship(), recommendation, text);
			fromPrecondition(entry.getSubstanceAdministration().getPrecondition(), recommendation);
			addRecommendation(recommendation);

		}
	}

	private void fromEffectiveTime(IVLTS time, ImmunizationRecommendationRecommendationComponent recommendation) {
		FhirPeriod period = new FhirPeriod(time);

		if (period.getStart() != null) {
			ImmunizationRecommendationRecommendationDateCriterionComponent dateCriterion = new ImmunizationRecommendationRecommendationDateCriterionComponent();
			dateCriterion.setCode(
					new CodeableConcept(new Coding(ImmunizationRecommendationDateCriterion.RECOMMENDED.getSystem(),
							ImmunizationRecommendationDateCriterion.RECOMMENDED.toCode(),
							ImmunizationRecommendationDateCriterion.RECOMMENDED.getDisplay())));
			dateCriterion.setValue(period.getStart());
			recommendation.addDateCriterion(dateCriterion);
		}

		if (period.getEnd() != null) {
			ImmunizationRecommendationRecommendationDateCriterionComponent dateCriterion = new ImmunizationRecommendationRecommendationDateCriterionComponent();
			dateCriterion.setCode(
					new CodeableConcept(new Coding(ImmunizationRecommendationDateCriterion.RECOMMENDED.getSystem(),
							ImmunizationRecommendationDateCriterion.RECOMMENDED.toCode(),
							ImmunizationRecommendationDateCriterion.RECOMMENDED.getDisplay())));
			dateCriterion.setValue(period.getEnd());
			recommendation.addDateCriterion(dateCriterion);

		}
	}

	private void fromPrecondition(List<POCDMT000040Precondition> preconditions,
			ImmunizationRecommendationRecommendationComponent recommendation) {
		if (preconditions != null && !preconditions.isEmpty() && preconditions.get(0).getCriterion() != null) {
			recommendation.setSeries(preconditions.get(0).getCriterion().getCode().getCode());

			if (preconditions.get(0).getCriterion().getValue() instanceof CD) {
				recommendation
						.setDoseNumber(new StringType(((CD) preconditions.get(0).getCriterion().getValue()).getCode()));
			}
		}
	}

	private void fromAuthor(List<POCDMT000040Author> authors, String index) {
		if (authors != null && !authors.isEmpty() && authors.get(0) != null
				&& authors.get(0).getAssignedAuthor() != null
				&& authors.get(0).getAssignedAuthor().getRepresentedOrganization() != null) {
			setAuthority(new Reference(String.format("Organization/immunizationRecommendation-author-%s", index)));
			resources.add(new FhirOrganization(authors.get(0).getAssignedAuthor().getRepresentedOrganization(),
					String.format("immunizationRecommendation-author-%s", index)));
		}
	}

	private void fromConsumable(POCDMT000040Consumable consumable,
			ImmunizationRecommendationRecommendationComponent recommendation) {
		if (consumable != null && consumable.getManufacturedProduct() != null
				&& consumable.getManufacturedProduct().getManufacturedMaterial() != null) {
			recommendation.addVaccineCode(
					new FhirCodeableConcept(consumable.getManufacturedProduct().getManufacturedMaterial().getCode()));
		}
	}

	private void fromEntryRelationships(List<POCDMT000040EntryRelationship> entryRels,
			ImmunizationRecommendationRecommendationComponent recommendation, String text) {
		if (entryRels != null && !entryRels.isEmpty()) {
			for (POCDMT000040EntryRelationship entryRel : entryRels) {
				if (entryRel != null) {
					if (XActRelationshipEntryRelationship.RSON.equals(entryRel.getTypeCode())
							&& entryRel.getObservation() != null) {
						recommendation.setTargetDisease(new FhirCodeableConcept(entryRel.getObservation().getCode()));
					}
				}
			}
		}
	}

}
