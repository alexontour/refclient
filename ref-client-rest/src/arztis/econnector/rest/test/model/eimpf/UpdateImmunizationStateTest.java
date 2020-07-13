/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 * 
 */
package arztis.econnector.rest.test.model.eimpf;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.EimpfDocumentUpdateImmunisierungsstatus;
import org.ehealth_connector.common.enums.AdministrativeGender;
import org.ehealth_connector.common.hl7cdar2.ActClinicalDocument;
import org.ehealth_connector.common.hl7cdar2.ActRelationshipHasComponent;
import org.ehealth_connector.common.hl7cdar2.CD;
import org.ehealth_connector.common.hl7cdar2.EntityDeterminerDetermined;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Author;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Consumable;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Custodian;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040DocumentationOf;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040EntryRelationship;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040LegalAuthenticator;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Performer2;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Precondition;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040RecordTarget;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Section;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040StructuredBody;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040SubstanceAdministration;
import org.ehealth_connector.common.hl7cdar2.ParticipationPhysicalPerformer;
import org.ehealth_connector.common.hl7cdar2.RoleClassManufacturedProduct;
import org.ehealth_connector.common.hl7cdar2.XActClassDocumentEntryAct;
import org.ehealth_connector.common.hl7cdar2.XActMoodDocumentObservation;
import org.ehealth_connector.common.hl7cdar2.XActRelationshipEntryRelationship;
import org.ehealth_connector.common.hl7cdar2.XDocumentActMood;
import org.ehealth_connector.common.utils.DateUtil;
import org.hl7.fhir.r4.model.Bundle;
import org.hl7.fhir.r4.model.StringType;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.ihe.tests.TestUtils;
import arztis.econnector.rest.model.eimpf.UpdateImmunizationState;
import arztis.econnector.rest.model.fhir.FhirPeriod;
import ca.uhn.fhir.context.FhirContext;

/**
 * Test of {@link UpdateImmunizationState}.
 *
 * @author Tanja Reiterer und Anna Jungwirth
 */
public class UpdateImmunizationStateTest extends TestUtils {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(UpdateImmunizationStateTest.class.getName());
	
	/** The Constant OID_AUTHOR. */
	private static final String OID_AUTHOR = "1.2.40.0.34.99.3.2.1046167";
	
	/** The Constant OID_LOINC. */
	private static final String OID_LOINC = "2.16.840.1.113883.6.1";
	
	/** The Constant ASSIGNED. */
	private static final String ASSIGNED = "ASSIGNED";
	
	/** The Constant AUTHOR_ADDRESS. */
	private static final String AUTHOR_ADDRESS = "Ernst-Melchior-Gasse 22";
	
	/** The Constant EXAMPLE_TEL. */
	private static final String EXAMPLE_TEL = "tel:0154168899521";
	
	/** The Constant INSTANCE. */
	private static final String INSTANCE = "INSTANCE";
	
	/** The Constant AUTHOR_GIVEN_NAME. */
	private static final String AUTHOR_GIVEN_NAME = "Helga";
	
	/** The Constant AUTHOR_FAMILY_NAME. */
	private static final String AUTHOR_FAMILY_NAME = "Musterärztin";
	
	/** The Constant ORGANIZATION_NAME. */
	private static final String ORGANIZATION_NAME = "Ordination Dr. Musterärztin";
	
	/** The Constant COMPLETED. */
	private static final String COMPLETED = "completed";

	/**
	 * Test method for
	 * {@link arztis.econnector.ihe.model.eimpf.UpdateImmunizationState()}.
	 *
	 * @throws IOException Signals that an I/O exception has occurred.
	 */
	@Test
	public void testUpdateImmunizationState() throws IOException {
		String json = getJsonFromFile("resources/tests/jsons/Composition_Update_Immunizationstate.json");
		Bundle bundle = FhirContext.forR4().newJsonParser().parseResource(Bundle.class, json);

		UpdateImmunizationState updateImmunization = new UpdateImmunizationState(bundle);
		assertNotNull(updateImmunization);

		EimpfDocumentUpdateImmunisierungsstatus immunizationState = updateImmunization.getUpdateImmunizationState();
		assertNotNull(immunizationState);
		assertEquals(ActClinicalDocument.DOCCLIN, immunizationState.getClassCode());
		assertEquals("EVN", immunizationState.getMoodCode().get(0));

		assertNotNull(immunizationState.getRealmCode());
		assertNotNull(immunizationState.getRealmCode().get(0));
		assertEquals("AT", immunizationState.getRealmCode().get(0).getCode());

		assertNotNull(immunizationState.getTemplateId());
		assertEquals(5, immunizationState.getTemplateId().size());
		assertEquals("1.2.40.0.34.6.0.11.0.1", immunizationState.getTemplateId().get(0).getRoot());
		assertEquals("1.2.40.0.34.7.19", immunizationState.getTemplateId().get(1).getRoot());
		assertEquals("1.2.40.0.34.6.0.11.0.2", immunizationState.getTemplateId().get(2).getRoot());
		assertEquals("1.2.40.0.34.6.0.11.0.2.1", immunizationState.getTemplateId().get(3).getRoot());
		assertEquals("XDSdocumentEntry.formatCode^urn:hl7-at:eImpf:2019",
				immunizationState.getTemplateId().get(3).getExtension());
		assertEquals("1.3.6.1.4.1.19376.1.5.3.1.1.18.1.2", immunizationState.getTemplateId().get(4).getRoot());

		assertNotNull(immunizationState.getTypeId());
		assertEquals("2.16.840.1.113883.1.3", immunizationState.getTypeId().getRoot());
		assertEquals("POCD_HD000040", immunizationState.getTypeId().getExtension());

		assertNotNull(immunizationState.getId());
		assertEquals(OID_AUTHOR, immunizationState.getId().getRoot());
		assertEquals("44929e4e-048e-03fc-be6b-108f72287c59_20200221092703", immunizationState.getId().getExtension());

		assertNotNull(immunizationState.getCode());
		assertEquals(OID_LOINC, immunizationState.getCode().getCodeSystem());
		assertEquals("11369-6", immunizationState.getCode().getCode());
		assertEquals("HISTORY OF IMMUNIZATIONS", immunizationState.getCode().getDisplayName());
		assertNotNull(immunizationState.getCode().getTranslation());
		assertEquals(1, immunizationState.getCode().getTranslation().size());
		assertEquals(OID_LOINC, immunizationState.getCode().getTranslation().get(0).getCodeSystem());
		assertEquals("87273-9", immunizationState.getCode().getTranslation().get(0).getCode());
		assertEquals("Immunization note", immunizationState.getCode().getTranslation().get(0).getDisplayName());

		assertNotNull(immunizationState.getTitle());
		assertEquals("Update Immunisierungsstatus", immunizationState.getTitle().xmlContent);

		assertNotNull(immunizationState.getEffectiveTime());
		assertEquals("20200510143002+0200", immunizationState.getEffectiveTime().getValue());

		assertNotNull(immunizationState.getConfidentialityCode());
		assertEquals("N", immunizationState.getConfidentialityCode().getCode());

		assertNotNull(immunizationState.getLanguageCode());
		assertEquals("de-AT", immunizationState.getLanguageCode().getCode());

		assertNotNull(immunizationState.getSetId());
		assertEquals(OID_AUTHOR, immunizationState.getSetId().getRoot());
		assertNotNull(immunizationState.getSetId().getExtension());

		assertNotNull(immunizationState.getVersionNumber());
		assertEquals(1, immunizationState.getVersionNumber().getValue().intValue());

		testRecordTarget(immunizationState.getRecordTarget());
		testAuthors(immunizationState.getAuthor());
		testCustodian(immunizationState.getCustodian());
		testLegalAuthenticator(immunizationState.getLegalAuthenticator());
		testDocumentationOf(immunizationState.getDocumentationOf());

		assertTrue(immunizationState.getRelatedDocument().isEmpty());
		assertNotNull(immunizationState.getComponent());

		testStructuredBody(immunizationState.getComponent().getStructuredBody());

	}

	/**
	 * Test record target.
	 *
	 * @param records the records
	 */
	private void testRecordTarget(List<POCDMT000040RecordTarget> records) {
		// test patient
		assertNotNull(records);
		assertEquals(1, records.size());
		assertEquals("RCT", records.get(0).getTypeCode().get(0));
		assertEquals("OP", records.get(0).getContextControlCode());
		assertNotNull(records.get(0).getPatientRole());
		assertEquals("PAT", records.get(0).getPatientRole().getClassCode().get(0));
		assertNotNull(records.get(0).getPatientRole().getId());
		assertEquals(1, records.get(0).getPatientRole().getId().size());
		assertEquals("1001210995", records.get(0).getPatientRole().getId().get(0).getExtension());
		assertEquals("1.2.40.0.10.1.4.3.1", records.get(0).getPatientRole().getId().get(0).getRoot());
		assertNotNull(records.get(0).getPatientRole().getAddr());
		assertEquals(1, records.get(0).getPatientRole().getAddr().size());
		testAddress(records.get(0).getPatientRole().getAddr().get(0).getContent(),
				List.of(new StringType("Testgasse 35")), "8020", "Graz", "STMK", "AT");

		assertNotNull(records.get(0).getPatientRole().getTelecom());
		assertEquals(1, records.get(0).getPatientRole().getTelecom().size());
		assertEquals("tel:03168899521", records.get(0).getPatientRole().getTelecom().get(0).getValue());
		assertEquals("H", records.get(0).getPatientRole().getTelecom().get(0).getUse().get(0));

		assertNotNull(records.get(0).getPatientRole().getPatient());
		assertNotNull(records.get(0).getPatientRole().getPatient().getName());
		testName(records.get(0).getPatientRole().getPatient().getName().get(0).getContent(), null, null, "Max",
				"Musterpatient");

		assertNotNull(records.get(0).getPatientRole().getPatient().getBirthTime());
		assertEquals("19950921", records.get(0).getPatientRole().getPatient().getBirthTime().getValue());

		assertNotNull(records.get(0).getPatientRole().getPatient().getAdministrativeGenderCode());
		assertEquals(AdministrativeGender.MALE_CODE,
				records.get(0).getPatientRole().getPatient().getAdministrativeGenderCode().getCode());
	}

	/**
	 * Test authors.
	 *
	 * @param authors the authors
	 */
	private void testAuthors(List<POCDMT000040Author> authors) {
		// test patient
		assertNotNull(authors);
		assertEquals(1, authors.size());
		assertEquals("AUT", authors.get(0).getTypeCode().get(0));
		assertEquals("OP", authors.get(0).getContextControlCode());
		assertNull(authors.get(0).getFunctionCode());

		assertNotNull(authors.get(0).getTime());
		assertEquals("UNK", authors.get(0).getTime().getNullFlavor().get(0));

		assertNotNull(authors.get(0).getAssignedAuthor());
		assertEquals(ASSIGNED, authors.get(0).getAssignedAuthor().getClassCode());
		assertNotNull(authors.get(0).getAssignedAuthor().getId());
		assertEquals(1, authors.get(0).getAssignedAuthor().getId().size());
		assertEquals("NI", authors.get(0).getAssignedAuthor().getId().get(0).getNullFlavor().get(0));

		assertNotNull(authors.get(0).getAssignedAuthor().getAddr());
		assertEquals(1, authors.get(0).getAssignedAuthor().getAddr().size());
		testAddress(authors.get(0).getAssignedAuthor().getAddr().get(0).getContent(),
				List.of(new StringType(AUTHOR_ADDRESS)), "1020", "Wien", "W", "AT");

		assertNotNull(authors.get(0).getAssignedAuthor().getTelecom());
		assertEquals(1, authors.get(0).getAssignedAuthor().getTelecom().size());
		assertEquals(EXAMPLE_TEL, authors.get(0).getAssignedAuthor().getTelecom().get(0).getValue());
		assertEquals("WP", authors.get(0).getAssignedAuthor().getTelecom().get(0).getUse().get(0));

		assertNotNull(authors.get(0).getAssignedAuthor().getAssignedPerson());
		assertEquals("PSN", authors.get(0).getAssignedAuthor().getAssignedPerson().getClassCode().get(0));
		assertEquals(INSTANCE, authors.get(0).getAssignedAuthor().getAssignedPerson().getDeterminerCode());
		assertNotNull(authors.get(0).getAssignedAuthor().getAssignedPerson().getName());
		testName(authors.get(0).getAssignedAuthor().getAssignedPerson().getName().get(0).getContent(), "Dr.", null,
				AUTHOR_GIVEN_NAME, AUTHOR_FAMILY_NAME);

		assertNotNull(authors.get(0).getAssignedAuthor().getRepresentedOrganization());
		assertNotNull(authors.get(0).getAssignedAuthor().getRepresentedOrganization().getId());
		assertEquals(OID_AUTHOR,
				authors.get(0).getAssignedAuthor().getRepresentedOrganization().getId().get(0).getExtension());
		assertNotNull(authors.get(0).getAssignedAuthor().getRepresentedOrganization().getName());
		assertEquals(ORGANIZATION_NAME,
				authors.get(0).getAssignedAuthor().getRepresentedOrganization().getName().get(0).xmlContent);

		assertNotNull(authors.get(0).getAssignedAuthor().getRepresentedOrganization().getAddr());
		assertEquals(1, authors.get(0).getAssignedAuthor().getRepresentedOrganization().getAddr().size());
		testAddress(authors.get(0).getAssignedAuthor().getRepresentedOrganization().getAddr().get(0).getContent(),
				List.of(new StringType(AUTHOR_ADDRESS)), "1020", "Wien", "W", "AT");

		assertNotNull(authors.get(0).getAssignedAuthor().getRepresentedOrganization().getTelecom());
		assertEquals(1, authors.get(0).getAssignedAuthor().getRepresentedOrganization().getTelecom().size());
		assertEquals(EXAMPLE_TEL,
				authors.get(0).getAssignedAuthor().getRepresentedOrganization().getTelecom().get(0).getValue());
		assertEquals("WP",
				authors.get(0).getAssignedAuthor().getRepresentedOrganization().getTelecom().get(0).getUse().get(0));
	}

	/**
	 * Test custodian.
	 *
	 * @param custodian the custodian
	 */
	private void testCustodian(POCDMT000040Custodian custodian) {
		assertNotNull(custodian);
		assertEquals("CST", custodian.getTypeCode().get(0));
		assertNotNull(custodian.getAssignedCustodian());
		assertEquals(ASSIGNED, custodian.getAssignedCustodian().getClassCode());
		assertNotNull(custodian.getAssignedCustodian().getRepresentedCustodianOrganization());
		assertEquals("ORG", custodian.getAssignedCustodian().getRepresentedCustodianOrganization().getClassCode());
		assertEquals(INSTANCE,
				custodian.getAssignedCustodian().getRepresentedCustodianOrganization().getDeterminerCode());
		assertNotNull(custodian.getAssignedCustodian().getRepresentedCustodianOrganization().getId());
		assertEquals(OID_AUTHOR,
				custodian.getAssignedCustodian().getRepresentedCustodianOrganization().getId().get(0).getExtension());
		assertNotNull(custodian.getAssignedCustodian().getRepresentedCustodianOrganization().getName());
		assertEquals(ORGANIZATION_NAME,
				custodian.getAssignedCustodian().getRepresentedCustodianOrganization().getName().xmlContent);

		assertNotNull(custodian.getAssignedCustodian().getRepresentedCustodianOrganization().getAddr());
		testAddress(custodian.getAssignedCustodian().getRepresentedCustodianOrganization().getAddr().getContent(),
				List.of(new StringType(AUTHOR_ADDRESS)), "1020", "Wien", "W", "AT");

		assertNotNull(custodian.getAssignedCustodian().getRepresentedCustodianOrganization().getTelecom());
		assertEquals(EXAMPLE_TEL,
				custodian.getAssignedCustodian().getRepresentedCustodianOrganization().getTelecom().getValue());
		assertEquals("WP",
				custodian.getAssignedCustodian().getRepresentedCustodianOrganization().getTelecom().getUse().get(0));
	}

	/**
	 * Test legal authenticator.
	 *
	 * @param legalAuthenticator the legal authenticator
	 */
	private void testLegalAuthenticator(POCDMT000040LegalAuthenticator legalAuthenticator) {
		assertNotNull(legalAuthenticator);
		assertEquals("LA", legalAuthenticator.getTypeCode().get(0));
		assertEquals("OP", legalAuthenticator.getContextControlCode());
		assertNotNull(legalAuthenticator.getTime());
		assertEquals("20200510123002+0200", legalAuthenticator.getTime().getValue());
		assertNotNull(legalAuthenticator.getSignatureCode());
		assertEquals("S", legalAuthenticator.getSignatureCode().getCode());
		assertNotNull(legalAuthenticator.getAssignedEntity());
		assertEquals(ASSIGNED, legalAuthenticator.getAssignedEntity().getClassCode());

		assertNotNull(legalAuthenticator.getAssignedEntity().getId());
		assertEquals(1, legalAuthenticator.getAssignedEntity().getId().size());
		assertEquals("NI", legalAuthenticator.getAssignedEntity().getId().get(0).getNullFlavor().get(0));

		assertNotNull(legalAuthenticator.getAssignedEntity().getAddr());
		assertEquals(1, legalAuthenticator.getAssignedEntity().getAddr().size());
		testAddress(legalAuthenticator.getAssignedEntity().getAddr().get(0).getContent(),
				List.of(new StringType(AUTHOR_ADDRESS)), "1020", "Wien", "W", "AT");

		assertNotNull(legalAuthenticator.getAssignedEntity().getTelecom());
		assertEquals(1, legalAuthenticator.getAssignedEntity().getTelecom().size());
		assertEquals(EXAMPLE_TEL, legalAuthenticator.getAssignedEntity().getTelecom().get(0).getValue());
		assertEquals("WP", legalAuthenticator.getAssignedEntity().getTelecom().get(0).getUse().get(0));

		assertNotNull(legalAuthenticator.getAssignedEntity().getAssignedPerson());
		assertEquals("PSN", legalAuthenticator.getAssignedEntity().getAssignedPerson().getClassCode().get(0));
		assertEquals(INSTANCE, legalAuthenticator.getAssignedEntity().getAssignedPerson().getDeterminerCode());
		assertNotNull(legalAuthenticator.getAssignedEntity().getAssignedPerson().getName());
		testName(legalAuthenticator.getAssignedEntity().getAssignedPerson().getName().get(0).getContent(), "Dr.", null,
				AUTHOR_GIVEN_NAME, AUTHOR_FAMILY_NAME);

		assertNotNull(legalAuthenticator.getAssignedEntity().getRepresentedOrganization());
		assertNotNull(legalAuthenticator.getAssignedEntity().getRepresentedOrganization().getId());
		assertEquals(OID_AUTHOR,
				legalAuthenticator.getAssignedEntity().getRepresentedOrganization().getId().get(0).getExtension());
		assertNotNull(legalAuthenticator.getAssignedEntity().getRepresentedOrganization().getName());
		assertEquals(ORGANIZATION_NAME,
				legalAuthenticator.getAssignedEntity().getRepresentedOrganization().getName().get(0).xmlContent);

		assertNotNull(legalAuthenticator.getAssignedEntity().getRepresentedOrganization().getAddr());
		assertEquals(1, legalAuthenticator.getAssignedEntity().getRepresentedOrganization().getAddr().size());
		testAddress(legalAuthenticator.getAssignedEntity().getRepresentedOrganization().getAddr().get(0).getContent(),
				List.of(new StringType(AUTHOR_ADDRESS)), "1020", "Wien", "W", "AT");

		assertNotNull(legalAuthenticator.getAssignedEntity().getRepresentedOrganization().getTelecom());
		assertEquals(1, legalAuthenticator.getAssignedEntity().getRepresentedOrganization().getTelecom().size());
		assertEquals(EXAMPLE_TEL,
				legalAuthenticator.getAssignedEntity().getRepresentedOrganization().getTelecom().get(0).getValue());
		assertEquals("WP", legalAuthenticator.getAssignedEntity().getRepresentedOrganization().getTelecom().get(0)
				.getUse().get(0));

	}

	/**
	 * Test documentation of.
	 *
	 * @param documentationOf the documentation of
	 */
	private void testDocumentationOf(List<POCDMT000040DocumentationOf> documentationOf) {
		assertNotNull(documentationOf.get(0));
		assertEquals("DOC", documentationOf.get(0).getTypeCode().get(0));

		assertNotNull(documentationOf.get(0).getServiceEvent());
		assertEquals("PCPR", documentationOf.get(0).getServiceEvent().getClassCode().get(0));
		assertEquals("EVN", documentationOf.get(0).getServiceEvent().getMoodCode().get(0));

		assertNotNull(documentationOf.get(0).getServiceEvent().getCode());
		assertEquals("41000179103", documentationOf.get(0).getServiceEvent().getCode().getCode());
		assertEquals("2.16.840.1.113883.6.96", documentationOf.get(0).getServiceEvent().getCode().getCodeSystem());
		assertEquals("SNOMED CT", documentationOf.get(0).getServiceEvent().getCode().getCodeSystemName());
		assertEquals("Immunization record (record artifact)",
				documentationOf.get(0).getServiceEvent().getCode().getDisplayName());

		assertNotNull(documentationOf.get(0).getServiceEvent().getEffectiveTime());

		FhirPeriod period = new FhirPeriod(documentationOf.get(0).getServiceEvent().getEffectiveTime());
		assertEquals("20200509", DateUtil.formatDateOnly(period.getStart()));
		assertEquals("20200510", DateUtil.formatDateOnly(period.getEnd()));
	}

	/**
	 * Test structured body.
	 *
	 * @param body the body
	 */
	private void testStructuredBody(POCDMT000040StructuredBody body) {
		assertNotNull(body);
		assertEquals("DOCBODY", body.getClassCode().get(0));
		assertEquals("EVN", body.getMoodCode().get(0));

		assertNotNull(body.getComponent());
		assertEquals(1, body.getComponent().size());
		assertEquals(ActRelationshipHasComponent.COMP, body.getComponent().get(0).getTypeCode());

		testImmunizationSection(body.getComponent().get(0).getSection());
	}

	/**
	 * Test immunization section.
	 *
	 * @param section the section
	 */
	private void testImmunizationSection(POCDMT000040Section section) {
		assertNotNull(section);
		assertEquals("DOCSECT", section.getClassCode().get(0));
		assertEquals("EVN", section.getMoodCode().get(0));
		assertEquals(3, section.getTemplateId().size());
		assertEquals("1.2.40.0.34.6.0.11.2.1", section.getTemplateId().get(0).getRoot());
		assertEquals("2.16.840.1.113883.10.20.1.6", section.getTemplateId().get(1).getRoot());
		assertEquals("1.3.6.1.4.1.19376.1.5.3.1.3.23", section.getTemplateId().get(2).getRoot());
		assertNotNull(section.getCode());
		assertEquals("11369-6", section.getCode().getCode());
		assertEquals(OID_LOINC, section.getCode().getCodeSystem());
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
		assertEquals("1", substance.getId().get(0).getExtension());
		assertEquals(OID_AUTHOR, substance.getId().get(0).getRoot());

		assertNotNull(substance.getCode());
		assertEquals("IMMUNIZ", substance.getCode().getCode());
		assertEquals("2.16.840.1.113883.5.4", substance.getCode().getCodeSystem());
		assertEquals("ActCode", substance.getCode().getCodeSystemName());

		assertNotNull(substance.getStatusCode());
		assertEquals(COMPLETED, substance.getStatusCode().getCode());

		assertNotNull(substance.getEffectiveTime());
		assertEquals(1, substance.getEffectiveTime().size());
		assertNotNull(substance.getEffectiveTime().get(0));
		assertEquals("20200509", substance.getEffectiveTime().get(0).getValue());

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
		assertEquals("0515738", consumable.getManufacturedProduct().getManufacturedMaterial().getCode().getCode());
		assertEquals("FSME-IMMUN FSPR 0,5ML NAD F",
				consumable.getManufacturedProduct().getManufacturedMaterial().getCode().getDisplayName());

		assertNotNull(consumable.getManufacturedProduct().getManufacturedMaterial().getLotNumberText());
		assertEquals("12345",
				consumable.getManufacturedProduct().getManufacturedMaterial().getLotNumberText().xmlContent);

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
		assertEquals("333699008", entryRel.getObservation().getCode().getCode());
		assertEquals("2.16.840.1.113883.6.96", entryRel.getObservation().getCode().getCodeSystem());
		assertEquals("Frühsommer-Meningoencephalitis Impfstoff", entryRel.getObservation().getCode().getDisplayName());
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
		assertEquals("1234", entryRel.getAct().getId().get(0).getExtension());
		assertEquals(null, entryRel.getAct().getId().get(0).getRoot());
		assertNotNull(entryRel.getAct().getStatusCode());
		assertEquals(COMPLETED, entryRel.getAct().getStatusCode().getCode());
		assertNotNull(entryRel.getAct().getEffectiveTime());
		assertEquals("20250430", entryRel.getAct().getEffectiveTime().getValue());

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

		testPerformer(substance.getPerformer());
	}

	/**
	 * Test performer.
	 *
	 * @param performers the performers
	 */
	private void testPerformer(List<POCDMT000040Performer2> performers) {
		// performer
		assertNotNull(performers);
		assertEquals(1, performers.size());
		POCDMT000040Performer2 performer = performers.get(0);
		assertNotNull(performer);
		assertEquals(ParticipationPhysicalPerformer.PRF, performer.getTypeCode());
		assertEquals(1, performer.getTemplateId().size());
		assertEquals("1.2.40.0.34.6.0.11.9.21", performer.getTemplateId().get(0).getRoot());

		assertNotNull(performer.getTime());
		assertEquals("20200509000000+0200", performer.getTime().getValue());

		assertNotNull(performer.getAssignedEntity());
		assertEquals(ASSIGNED, performer.getAssignedEntity().getClassCode());

		assertEquals(1, performer.getAssignedEntity().getId().size());
		assertEquals("NI", performer.getAssignedEntity().getId().get(0).getNullFlavor().get(0));

		assertNotNull(performer.getAssignedEntity().getCode());
		assertEquals("100", performer.getAssignedEntity().getCode().getCode());

		assertNotNull(performer.getAssignedEntity().getAddr());
		assertEquals(1, performer.getAssignedEntity().getAddr().size());
		testAddress(performer.getAssignedEntity().getAddr().get(0).getContent(),
				List.of(new StringType(AUTHOR_ADDRESS)), "1020", "Wien", "W", "AT");

		assertNotNull(performer.getAssignedEntity().getTelecom());
		assertEquals(1, performer.getAssignedEntity().getTelecom().size());
		assertEquals(EXAMPLE_TEL,performer.getAssignedEntity().getTelecom().get(0).getValue());
		assertEquals("WP", performer.getAssignedEntity().getTelecom().get(0).getUse().get(0));

		assertNotNull(performer.getAssignedEntity().getAssignedPerson());
		assertEquals("PSN", performer.getAssignedEntity().getAssignedPerson().getClassCode().get(0));
		assertEquals(INSTANCE, performer.getAssignedEntity().getAssignedPerson().getDeterminerCode());
		assertNotNull(performer.getAssignedEntity().getAssignedPerson().getName());
		testName(performer.getAssignedEntity().getAssignedPerson().getName().get(0).getContent(), "Dr.", null,
				AUTHOR_GIVEN_NAME, AUTHOR_FAMILY_NAME);

		assertNotNull(performer.getAssignedEntity().getRepresentedOrganization());
		assertNotNull(performer.getAssignedEntity().getRepresentedOrganization().getId());
		assertEquals(OID_AUTHOR,
				performer.getAssignedEntity().getRepresentedOrganization().getId().get(0).getExtension());
		assertNotNull(performer.getAssignedEntity().getRepresentedOrganization().getName());
		assertEquals(ORGANIZATION_NAME,
				performer.getAssignedEntity().getRepresentedOrganization().getName().get(0).xmlContent);

		assertNotNull(performer.getAssignedEntity().getRepresentedOrganization().getAddr());
		assertEquals(1, performer.getAssignedEntity().getRepresentedOrganization().getAddr().size());
		testAddress(performer.getAssignedEntity().getRepresentedOrganization().getAddr().get(0).getContent(),
				List.of(new StringType(AUTHOR_ADDRESS)), "1020", "Wien", "W", "AT");

		assertNotNull(performer.getAssignedEntity().getRepresentedOrganization().getTelecom());
		assertEquals(1, performer.getAssignedEntity().getRepresentedOrganization().getTelecom().size());
		assertEquals(EXAMPLE_TEL,
				performer.getAssignedEntity().getRepresentedOrganization().getTelecom().get(0).getValue());
		assertEquals("WP",
				performer.getAssignedEntity().getRepresentedOrganization().getTelecom().get(0).getUse().get(0));

	}

	/**
	 * Gets the json from file.
	 *
	 * @param path the path
	 * @return the json from file
	 * @throws IOException Signals that an I/O exception has occurred.
	 */
	private String getJsonFromFile(String path) throws IOException {
		File file = FileUtils.getFile(path);

		try (FileInputStream is = new FileInputStream(file)) {
			return new String(is.readAllBytes());
		} catch (Exception ex) {
			LOGGER.error(ex.getMessage(), ex);
		}

		return "";
	}
}
