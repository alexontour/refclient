package arztis.econnector.rest.test.model;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.HashMap;
import java.util.Map;

import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrSectionImpfungenKodiert;
import org.ehealth_connector.common.hl7cdar2.CD;
import org.ehealth_connector.common.hl7cdar2.EntityDeterminerDetermined;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Consumable;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040EntryRelationship;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Performer2;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Precondition;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040SubstanceAdministration;
import org.ehealth_connector.common.hl7cdar2.ParticipationPhysicalPerformer;
import org.ehealth_connector.common.hl7cdar2.RoleClassManufacturedProduct;
import org.ehealth_connector.common.hl7cdar2.XActClassDocumentEntryAct;
import org.ehealth_connector.common.hl7cdar2.XActMoodDocumentObservation;
import org.ehealth_connector.common.hl7cdar2.XActRelationshipEntryRelationship;
import org.ehealth_connector.common.hl7cdar2.XDocumentActMood;
import org.ehealth_connector.common.utils.DateUtil;
import org.hl7.fhir.r4.model.CodeableConcept;
import org.hl7.fhir.r4.model.Coding;
import org.hl7.fhir.r4.model.DateTimeType;
import org.hl7.fhir.r4.model.Immunization;
import org.hl7.fhir.r4.model.Immunization.ImmunizationPerformerComponent;
import org.hl7.fhir.r4.model.Immunization.ImmunizationProtocolAppliedComponent;
import org.hl7.fhir.r4.model.Immunization.ImmunizationStatus;
import org.hl7.fhir.r4.model.PractitionerRole;
import org.hl7.fhir.r4.model.Reference;
import org.hl7.fhir.r4.model.StringType;
import org.junit.Before;
import org.junit.Test;

import arztis.econnector.ihe.tests.TestUtils;
import arztis.econnector.rest.model.fhir.FhirImmunization;

/**
 * Test of {@link FhirImmunization}.
 *
 * @author Anna Jungwirth
 */
public class FhirImmunizationTest extends TestUtils {

	/** The Constant COMPLETED. */
	private static final String COMPLETED = "completed";
	
	/** The test immunization. */
	private Immunization testImmunization;

	/**
	 * Method implementing.
	 */
	@Before
	public void setUp() {
		super.init();
		testImmunization = new Immunization();
		testImmunization.setId("1");
		testImmunization.addIdentifier(getId1());
		testImmunization.setStatus(ImmunizationStatus.COMPLETED);
		testImmunization.setOccurrence(new DateTimeType(getStartDate()));
		testImmunization.setVaccineCode(
				new CodeableConcept(new Coding("1.2.40.0.34.4.16.1", "2427872", "ENCEPUR FSPR 0,25ML KIND")));
		testImmunization.setLotNumber("12345");
		testImmunization.setExpirationDate(getEndDate());
		testImmunization.addProgramEligibility(getCode2());
		testImmunization.setRecorded(getStartDate());

		ImmunizationPerformerComponent performer = new ImmunizationPerformerComponent();
		performer.setFunction(getCode2());
		performer.setActor(new Reference("PractitionerRole/2"));
		testImmunization.addPerformer(performer);

		ImmunizationProtocolAppliedComponent protocolApplied = new ImmunizationProtocolAppliedComponent();
		protocolApplied.setSeries("SCHEM03");
		protocolApplied.setDoseNumber(new StringType("D1"));
		protocolApplied.setAuthority(new Reference("PractitionerRole/2"));
		protocolApplied.addTargetDisease(getCode1());
		testImmunization.addProtocolApplied(protocolApplied);

	}

	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirImmunization#getAtcdabbrSectionImpfungenKodiert()}.
	 *
	 */
	@Test
	public void testGetAtcdabbrSectionImpfungenKodiert() {
		Map<Immunization, PractitionerRole> immunizationMap = new HashMap<>();
		immunizationMap.put(testImmunization, null);
		final AtcdabbrSectionImpfungenKodiert section = FhirImmunization
				.getAtcdabbrSectionImpfungenKodiert(immunizationMap);

		assertNotNull(section);
		assertEquals("DOCSECT", section.getClassCode().get(0));
		assertEquals("EVN", section.getMoodCode().get(0));
		assertEquals(3, section.getTemplateId().size());
		assertEquals("1.2.40.0.34.6.0.11.2.1", section.getTemplateId().get(0).getRoot());
		assertEquals("2.16.840.1.113883.10.20.1.6", section.getTemplateId().get(1).getRoot());
		assertEquals("1.3.6.1.4.1.19376.1.5.3.1.3.23", section.getTemplateId().get(2).getRoot());
		assertNotNull(section.getCode());
		assertEquals("11369-6", section.getCode().getCode());
		assertEquals("2.16.840.1.113883.6.1", section.getCode().getCodeSystem());
		assertEquals("HISTORY OF IMMUNIZATIONS", section.getCode().getDisplayName());
		assertEquals("Impfungen", section.getTitle().xmlContent);

		assertNotNull(section.getText());

		assertNotNull(section.getEntry());
		assertEquals(1, section.getEntry().size());
		POCDMT000040SubstanceAdministration substance = section.getEntry().get(0).getSubstanceAdministration();
		assertNotNull(substance);
		assertEquals(3, substance.getTemplateId().size());
		assertEquals("1.2.40.0.34.6.0.11.3.1", substance.getTemplateId().get(0).getRoot());
		assertEquals("2.16.840.1.113883.10.20.1.24", substance.getTemplateId().get(1).getRoot());
		assertEquals("1.3.6.1.4.1.19376.1.5.3.1.4.12", substance.getTemplateId().get(2).getRoot());

		assertNotNull(substance.getId());
		assertEquals(1, substance.getId().size());
		assertEquals(getId1().getValue(), substance.getId().get(0).getExtension());
		assertEquals(getId1().getSystem(), substance.getId().get(0).getRoot());

		assertNotNull(substance.getCode());
		assertEquals("IMMUNIZ", substance.getCode().getCode());
		assertEquals("2.16.840.1.113883.5.4", substance.getCode().getCodeSystem());
		assertEquals("ActCode", substance.getCode().getCodeSystemName());

		assertNotNull(substance.getStatusCode());
		assertEquals(COMPLETED, substance.getStatusCode().getCode());

		assertNotNull(substance.getEffectiveTime());
		assertEquals(1, substance.getEffectiveTime().size());
		assertNotNull(substance.getEffectiveTime().get(0));

		assertNotNull(substance.getRouteCode());
		assertNotNull(substance.getRouteCode().getNullFlavor());
		assertEquals("NA", substance.getRouteCode().getNullFlavor().get(0));

		assertNotNull(substance.getApproachSiteCode());
		assertNotNull(substance.getApproachSiteCode().get(0).getNullFlavor());
		assertEquals("NA", substance.getApproachSiteCode().get(0).getNullFlavor().get(0));

		assertNotNull(substance.getDoseQuantity());
		assertNotNull(substance.getDoseQuantity().getNullFlavor());
		assertEquals("UNK", substance.getDoseQuantity().getNullFlavor().get(0));

		// consumable
		assertNotNull(substance.getConsumable());
		POCDMT000040Consumable consumable = substance.getConsumable();
		assertEquals("CSM", consumable.getTypeCode().get(0));

		assertNotNull(consumable.getManufacturedProduct());
		assertEquals(RoleClassManufacturedProduct.MANU, consumable.getManufacturedProduct().getClassCode());

		assertEquals(3, consumable.getManufacturedProduct().getTemplateId().size());
		assertEquals("1.2.40.0.34.6.0.11.9.32", consumable.getManufacturedProduct().getTemplateId().get(0).getRoot());
		assertEquals("1.3.6.1.4.1.19376.1.5.3.1.4.7.2",
				consumable.getManufacturedProduct().getTemplateId().get(1).getRoot());
		assertEquals("2.16.840.1.113883.10.20.1.53",
				consumable.getManufacturedProduct().getTemplateId().get(2).getRoot());

		assertNotNull(consumable.getManufacturedProduct().getManufacturedMaterial());
		assertEquals("MMAT", consumable.getManufacturedProduct().getManufacturedMaterial().getClassCode());
		assertEquals(EntityDeterminerDetermined.KIND,
				consumable.getManufacturedProduct().getManufacturedMaterial().getDeterminerCode());

		assertEquals(1, consumable.getManufacturedProduct().getManufacturedMaterial().getTemplateId().size());
		assertEquals("1.3.6.1.4.1.19376.1.9.1.3.1",
				consumable.getManufacturedProduct().getManufacturedMaterial().getTemplateId().get(0).getRoot());

		assertNotNull(consumable.getManufacturedProduct().getManufacturedMaterial().getCode());
		assertEquals("1.2.40.0.34.4.16.1",
				consumable.getManufacturedProduct().getManufacturedMaterial().getCode().getCodeSystem());
		assertEquals("2427872", consumable.getManufacturedProduct().getManufacturedMaterial().getCode().getCode());
		assertEquals("ENCEPUR FSPR 0,25ML KIND",
				consumable.getManufacturedProduct().getManufacturedMaterial().getCode().getDisplayName());

		assertNotNull(consumable.getManufacturedProduct().getManufacturedMaterial().getLotNumberText());
		assertEquals("12345",
				consumable.getManufacturedProduct().getManufacturedMaterial().getLotNumberText().xmlContent);

		// performer
		assertNotNull(substance.getPerformer());
		assertEquals(1, substance.getPerformer().size());
		POCDMT000040Performer2 performer = substance.getPerformer().get(0);
		assertNotNull(performer);
		assertEquals(ParticipationPhysicalPerformer.PRF, performer.getTypeCode());
		assertEquals(1, performer.getTemplateId().size());
		assertEquals("1.2.40.0.34.6.0.11.9.21", performer.getTemplateId().get(0).getRoot());
		assertNotNull(performer.getAssignedEntity());
		assertEquals("ASSIGNED", performer.getAssignedEntity().getClassCode());

		assertNotNull(substance.getEntryRelationship());
		assertEquals(2, substance.getEntryRelationship().size());

		// test target diseases
		POCDMT000040EntryRelationship entryRel = substance.getEntryRelationship().get(0);
		assertNotNull(entryRel);
		assertEquals(XActRelationshipEntryRelationship.RSON, entryRel.getTypeCode());
		assertNotNull(entryRel.getObservation());
		assertEquals("OBS", entryRel.getObservation().getClassCode().get(0));
		assertEquals(XActMoodDocumentObservation.EVN, entryRel.getObservation().getMoodCode());
		assertEquals(1, entryRel.getObservation().getTemplateId().size());
		assertEquals("1.2.40.0.34.6.0.11.3.2", entryRel.getObservation().getTemplateId().get(0).getRoot());
		assertNotNull(entryRel.getObservation().getCode());
		assertEquals(getCode1().getCodingFirstRep().getCode(), entryRel.getObservation().getCode().getCode());
		assertEquals(getCode1().getCodingFirstRep().getSystem(), entryRel.getObservation().getCode().getCodeSystem());
		assertEquals(getCode1().getCodingFirstRep().getDisplay(), entryRel.getObservation().getCode().getDisplayName());
		assertNotNull(entryRel.getObservation().getStatusCode());
		assertEquals(COMPLETED, entryRel.getObservation().getStatusCode().getCode());

		// test immunization billability
		entryRel = substance.getEntryRelationship().get(1);
		assertNotNull(entryRel);
		assertEquals(XActRelationshipEntryRelationship.SUBJ, entryRel.getTypeCode());
		assertNotNull(entryRel.getAct());
		assertEquals(XActClassDocumentEntryAct.ACT, entryRel.getAct().getClassCode());
		assertEquals(XDocumentActMood.INT, entryRel.getAct().getMoodCode());
		assertEquals(1, entryRel.getAct().getTemplateId().size());
		assertEquals("1.2.40.0.34.6.0.11.3.5", entryRel.getAct().getTemplateId().get(0).getRoot());
		assertNotNull(entryRel.getAct().getCode());
		assertEquals("PAY", entryRel.getAct().getCode().getCode());
		assertEquals("2.16.840.1.113883.5.4", entryRel.getAct().getCode().getCodeSystem());
		assertEquals(getCode2().getCodingFirstRep().getCode(), entryRel.getAct().getId().get(0).getExtension());
		assertEquals(getCode2().getCodingFirstRep().getSystem(), entryRel.getAct().getId().get(0).getRoot());
		assertNotNull(entryRel.getAct().getStatusCode());
		assertEquals(COMPLETED, entryRel.getAct().getStatusCode().getCode());
		assertNotNull(entryRel.getAct().getEffectiveTime());
		assertEquals(DateUtil.formatDateOnly(getEndDate()), entryRel.getAct().getEffectiveTime().getValue());

		assertNotNull(substance.getPrecondition());
		// test precondition
		POCDMT000040Precondition precondition = substance.getPrecondition().get(0);
		assertNotNull(precondition);
		assertEquals("PRCN", precondition.getTypeCode().get(0));
		assertNotNull(precondition.getCriterion());
		assertEquals("OBS", precondition.getCriterion().getClassCode().get(0));
		assertEquals("EVN.CRT", precondition.getCriterion().getMoodCode().get(0));
		assertEquals(1, precondition.getCriterion().getTemplateId().size());
		assertEquals("1.2.40.0.34.6.0.11.3.10", precondition.getCriterion().getTemplateId().get(0).getRoot());
		assertNotNull(precondition.getCriterion().getCode());
		assertEquals("SCHEM03", precondition.getCriterion().getCode().getCode());
		assertNotNull(precondition.getCriterion().getValue());
		assertTrue(precondition.getCriterion().getValue() instanceof CD);
		assertEquals("D1", ((CD) precondition.getCriterion().getValue()).getCode());
	}
}
