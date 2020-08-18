package arztis.econnector.rest.test.model.eimpf;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import java.io.IOException;

import javax.xml.bind.JAXBException;

import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.EimpfDocumentKompletterImmunisierungsstatus;
import org.ehealth_connector.common.utils.DateUtil;
import org.hl7.fhir.r4.model.Bundle;
import org.hl7.fhir.r4.model.Bundle.BundleEntryComponent;
import org.hl7.fhir.r4.model.Composition;
import org.hl7.fhir.r4.model.Composition.CompositionStatus;
import org.hl7.fhir.r4.model.Composition.SectionComponent;
import org.hl7.fhir.r4.model.ContactPoint.ContactPointSystem;
import org.hl7.fhir.r4.model.ContactPoint.ContactPointUse;
import org.hl7.fhir.r4.model.Device;
import org.hl7.fhir.r4.model.DocumentReference;
import org.hl7.fhir.r4.model.Enumerations.AdministrativeGender;
import org.hl7.fhir.r4.model.Immunization;
import org.hl7.fhir.r4.model.Immunization.ImmunizationStatus;
import org.hl7.fhir.r4.model.ImmunizationRecommendation;
import org.hl7.fhir.r4.model.Observation;
import org.hl7.fhir.r4.model.Observation.ObservationStatus;
import org.hl7.fhir.r4.model.Organization;
import org.hl7.fhir.r4.model.Patient;
import org.hl7.fhir.r4.model.Practitioner;
import org.hl7.fhir.r4.model.PractitionerRole;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.ihe.tests.TestUtils;
import arztis.econnector.rest.model.eimpf.CompleteImmunizationState;
import arztis.econnector.rest.utilities.FhirUtil;

/**
 *  Test of {@link CompleteImmunizationState}.
 *
 * @author Tanja Reiterer und Anna Jungwirth
 */
public class CompleteImmunizationStateTest extends TestUtils {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(CompleteImmunizationStateTest.class.getName());
	
	/** The Constant SYSTEM_IDENTIFIER. */
	private static final String SYSTEM_IDENTIFIER = "1.2.40.0.34.99.4613.3.1";
	
	/** The Constant SET_ID_SYSTEM_IDENTIFIER. */
	private static final String SET_ID_SYSTEM_IDENTIFIER = "1.2.40.0.34.99.4613.3.1.1";
	
	/** The Constant IMMUNIZATION_SYSTEM. */
	private static final String IMMUNIZATION_SYSTEM = "1.2.40.0.34.99.4613.3.5";
	
	/** The Constant OID_LOINC. */
	private static final String OID_LOINC = "2.16.840.1.113883.6.1";
	
	/** The Constant CLASS_CODE_IMMUNIZATION. */
	private static final String CLASS_CODE_IMMUNIZATION = "11369-6";
	
	/** The Constant OID_SNOMED. */
	private static final String OID_SNOMED = "2.16.840.1.113883.6.96";
	
	/** The Constant NAME_EIMMUNIZATION. */
	private static final String NAME_EIMMUNIZATION = "Zentrale Anwendung e-Impfpass";
	
	/** The Constant VACCINE_CODE. */
	private static final String VACCINE_CODE = "2427872";
	
	/** The Constant VACCINE_OID. */
	private static final String VACCINE_OID = "1.2.40.0.34.4.16.1";
	
	/** The Constant VACCIEN_NAME. */
	private static final String VACCIEN_NAME = "ENCEPUR FSPR 0,25ML KIND";
	
	/** The Constant FSME_CODE. */
	private static final String FSME_CODE = "333699008";
	
	/** The Constant FSME_NAME. */
	private static final String FSME_NAME = "Frühsommer-Meningoencephalitis Impfstoff";

	/**
	 * Test method for
	 * {@link arztis.econnector.ihe.model.eimpf.CompleteImmunizationState()}.
	 *
	 * @throws JAXBException the JAXB exception
	 * @throws IOException Signals that an I/O exception has occurred.
	 */
	@Test
	public void testCompleteImmunizationState() throws JAXBException, IOException {
		EimpfDocumentKompletterImmunisierungsstatus cda = EimpfDocumentKompletterImmunisierungsstatus
				.loadFromFile("resources/tests/xml/eImpf-2019-11-Kompletter_Immunisierungsstatus.xml");

		CompleteImmunizationState completeImmunization = new CompleteImmunizationState(cda);
		assertNotNull(completeImmunization);

		assertTrue(completeImmunization instanceof Bundle);
		assertTrue(completeImmunization.hasIdentifier());
		assertEquals("2", completeImmunization.getIdentifier().getValue());
		assertEquals(SYSTEM_IDENTIFIER, completeImmunization.getIdentifier().getSystem());

		assertTrue(completeImmunization.hasEntry());
		assertEquals(28, completeImmunization.getEntry().size());

		int countTest = 0;
		for (BundleEntryComponent entry : completeImmunization.getEntry()) {
			if (entry.getResource() instanceof Composition) {
				testCompositionEntry((Composition) entry.getResource());
				countTest++;
			} else if (entry.getResource() instanceof Patient) {
				testPatientEntry((Patient) entry.getResource());
				countTest++;
			} else if (entry.getResource() instanceof PractitionerRole) {
				testPractitionerRoleEntry((PractitionerRole) entry.getResource());
				countTest++;
			} else if (entry.getResource() instanceof Practitioner) {
				testPractitionerEntry((Practitioner) entry.getResource());
				countTest++;
			} else if (entry.getResource() instanceof Device) {
				testDeviceEntry((Device) entry.getResource());
				countTest++;
			} else if (entry.getResource() instanceof Organization) {
				testOrganizationEntry((Organization) entry.getResource());
				countTest++;
			} else if (entry.getResource() instanceof Immunization) {
				testImmunizationEntry((Immunization) entry.getResource());
				countTest++;
			} else if (entry.getResource() instanceof ImmunizationRecommendation) {
				testImmunizationRecommendationEntry((ImmunizationRecommendation) entry.getResource());
				countTest++;
			} else if (entry.getResource() instanceof Observation) {
				testObservationEntry((Observation) entry.getResource());
				countTest++;
			} else if (entry.getResource() instanceof DocumentReference) {
				testDocumentReferenceEntry((DocumentReference) entry.getResource());
				countTest++;
			}
		}

		if(completeImmunization != null && LOGGER.isInfoEnabled()) {
			LOGGER.info(FhirUtil.getFhirContext().newJsonParser().encodeResourceToString(completeImmunization));
		}

		assertEquals(28, countTest);

	}

	/**
	 * Test composition entry.
	 *
	 * @param composition the composition
	 */
	private void testCompositionEntry(Composition composition) {
		assertNotNull(composition);

		// set id
		assertTrue(composition.hasIdentifier());
		assertEquals(SET_ID_SYSTEM_IDENTIFIER, composition.getIdentifier().getSystem());
		assertEquals("2", composition.getIdentifier().getValue());

		// type code
		assertTrue(composition.hasType());
		assertTrue(composition.getType().hasCoding());
		assertEquals("82593-5", composition.getType().getCodingFirstRep().getCode());
		assertEquals(OID_LOINC, composition.getType().getCodingFirstRep().getSystem());
		assertEquals("Immunization summary report", composition.getType().getCodingFirstRep().getDisplay());

		// class code
		assertTrue(composition.hasCategory());
		assertTrue(composition.getCategory().get(0).hasCoding());
		assertEquals(CLASS_CODE_IMMUNIZATION, composition.getCategory().get(0).getCodingFirstRep().getCode());
		assertEquals(OID_LOINC, composition.getCategory().get(0).getCodingFirstRep().getSystem());
		assertEquals("HISTORY OF IMMUNIZATIONS", composition.getCategory().get(0).getCodingFirstRep().getDisplay());

		// title
		assertTrue(composition.hasTitle());
		assertEquals("Kompletter Immunisierungsstatus", composition.getTitle());

		// status
		assertTrue(composition.hasStatus());
		assertEquals(CompositionStatus.FINAL, composition.getStatus());

		// effective time
		assertTrue(composition.hasDate());
		assertEquals("20190617122000+0200", DateUtil.formatDateTimeTzon(composition.getDate()));

		// record target
		assertTrue(composition.hasSubject());
		assertEquals("Patient/1", composition.getSubject().getReference());

		// author
		assertTrue(composition.hasAuthor());
		assertEquals(1, composition.getAuthor().size());
		assertEquals("Device/2", composition.getAuthor().get(0).getReference());

		// custodian
		assertTrue(composition.hasCustodian());
		assertEquals("Organization/custodian", composition.getCustodian().getReference());

		// service event
		assertTrue(composition.hasEvent());
		assertEquals(1, composition.getEvent().size());
		assertEquals("41000179103", composition.getEvent().get(0).getCodeFirstRep().getCodingFirstRep().getCode());
		assertEquals(OID_SNOMED,
				composition.getEvent().get(0).getCodeFirstRep().getCodingFirstRep().getSystem());
		assertEquals("Immunization record (record artifact)",
				composition.getEvent().get(0).getCodeFirstRep().getCodingFirstRep().getDisplay());
		assertNotNull(composition.getEventFirstRep().getPeriod());
		assertEquals("20160617121500+0200",
				DateUtil.formatDateTimeTzon(composition.getEventFirstRep().getPeriod().getStart()));
		assertEquals("20170917101500+0200",
				DateUtil.formatDateTimeTzon(composition.getEventFirstRep().getPeriod().getEnd()));

		// body entries
		assertTrue(composition.hasSection());
		assertEquals(5, composition.getSection().size());

		testImmunizationSection(composition.getSection().get(0));

	}

	/**
	 * Test patient entry.
	 *
	 * @param patient the patient
	 */
	private void testPatientEntry(Patient patient) {
		assertNotNull(patient);

		// ids
		assertTrue(patient.hasIdentifier());
		assertEquals(2, patient.getIdentifier().size());
		assertEquals("1.2.40.0.10.2.1.1.149", patient.getIdentifier().get(0).getSystem());
		assertEquals("GH:myBpk", patient.getIdentifier().get(0).getValue());
		assertEquals("1.2.40.0.10.1.4.3.1", patient.getIdentifier().get(1).getSystem());
		assertEquals("1111241261", patient.getIdentifier().get(1).getValue());

		// name
		assertTrue(patient.hasName());
		assertEquals(1, patient.getName().size());
		assertEquals("Johannes", patient.getName().get(0).getGivenAsSingleString());
		assertEquals("Musterkind", patient.getName().get(0).getFamily());

		// gender
		assertTrue(patient.hasGender());
		assertEquals(AdministrativeGender.MALE, patient.getGender());

		// address
		assertTrue(patient.hasAddress());
		assertEquals(1, patient.getAddress().size());
		assertEquals("Musterstraße 13a", patient.getAddress().get(0).getLine().get(0).asStringValue());
		assertEquals("7000", patient.getAddress().get(0).getPostalCode());
		assertEquals("Eisenstadt", patient.getAddress().get(0).getCity());
		assertEquals("Burgenland", patient.getAddress().get(0).getState());
		assertEquals("AUT", patient.getAddress().get(0).getCountry());

		// telecom
		assertTrue(patient.hasTelecom());
		assertEquals(3, patient.getTelecom().size());
		assertEquals("+43.2682.40400", patient.getTelecom().get(0).getValue());
		assertEquals(ContactPointSystem.PHONE, patient.getTelecom().get(0).getSystem());
		assertEquals(ContactPointUse.HOME, patient.getTelecom().get(0).getUse());
		assertEquals("+43.664.1234567", patient.getTelecom().get(1).getValue());
		assertEquals(ContactPointSystem.PHONE, patient.getTelecom().get(1).getSystem());
		assertEquals(ContactPointUse.MOBILE, patient.getTelecom().get(1).getUse());
		assertEquals("johannes@musterkind.at", patient.getTelecom().get(2).getValue());
		assertEquals(ContactPointSystem.EMAIL, patient.getTelecom().get(2).getSystem());

		// birth time
		assertTrue(patient.hasBirthDate());
		assertEquals("20121224", DateUtil.formatDateOnly(patient.getBirthDate()));
	}

	/**
	 * Test device entry.
	 *
	 * @param device the device
	 */
	private void testDeviceEntry(Device device) {
		assertNotNull(device);

		// ids
		assertTrue(device.hasIdentifier());
		assertEquals(1, device.getIdentifier().size());
		assertEquals("1.2.40.0.34.6.104", device.getIdentifier().get(0).getSystem());

		// organization
		assertTrue(device.hasOwner());
		assertEquals("Organization/2", device.getOwner().getReference());

		// device
		assertTrue(device.hasModelNumber());
		assertEquals(NAME_EIMMUNIZATION, device.getModelNumber());
		assertTrue(device.hasDeviceName());
		assertEquals(NAME_EIMMUNIZATION, device.getDeviceNameFirstRep().getName());
	}

	/**
	 * Test organization entry.
	 *
	 * @param organization the organization
	 */
	private void testOrganizationEntry(Organization organization) {
		assertNotNull(organization);

		assertTrue(organization.hasId());
		if (organization.getId().equalsIgnoreCase("2")) {
			testOrganizationAuthorEntry(organization);
		} else if (organization.getId().equalsIgnoreCase("custodian")) {
			testOrganizationCustodianEntry(organization);
		} else if (organization.getId().equalsIgnoreCase("immunization-author-1")) {
			testAuthorFirstImmunizationEntry(organization);
		} else if (organization.getId().equalsIgnoreCase("immunizationRecommendation-author-1")) {
			testAuthorImmunizationRecommendationEntry(organization);
		}
	}

	/**
	 * Test practitioner role entry.
	 *
	 * @param practitioner the practitioner
	 */
	private void testPractitionerRoleEntry(PractitionerRole practitioner) {
		assertNotNull(practitioner);

		assertTrue(practitioner.hasId());
		if (practitioner.getId().equalsIgnoreCase("risk-1-performer")) {
			testPractitionerRoleRiskPerformerEntry(practitioner);
		} else if (practitioner.getId().equalsIgnoreCase("relevant-disease-1-performer")) {
			testPractitionerRoleRiskPerformerEntry(practitioner);
		} else if (practitioner.getId().equalsIgnoreCase("laboratory-report-1-performer")) {
			testPractitionerRoleLaboratoryPerformerEntry(practitioner);
		}
	}

	/**
	 * Test practitioner role laboratory performer entry.
	 *
	 * @param practitioner the practitioner
	 */
	private void testPractitionerRoleLaboratoryPerformerEntry(PractitionerRole practitioner) {
		assertNotNull(practitioner);

		// identifier
		assertTrue(practitioner.hasIdentifier());
		assertEquals("2324", practitioner.getIdentifierFirstRep().getValue());
		assertEquals("1.2.40.0.34.99.4614.3.3", practitioner.getIdentifierFirstRep().getSystem());

		// practitioner reference
		assertTrue(practitioner.hasPractitioner());

		// organization reference
		assertTrue(practitioner.hasOrganization());
	}

	/**
	 * Test practitioner role risk performer entry.
	 *
	 * @param practitioner the practitioner
	 */
	private void testPractitionerRoleRiskPerformerEntry(PractitionerRole practitioner) {
		assertNotNull(practitioner);

		// identifier
		assertTrue(practitioner.hasIdentifier());
		assertEquals("2323", practitioner.getIdentifierFirstRep().getValue());
		assertEquals("1.2.40.0.34.99.4613.3.3", practitioner.getIdentifierFirstRep().getSystem());

		// practitioner reference
		assertTrue(practitioner.hasPractitioner());

		// organization reference
		assertTrue(practitioner.hasOrganization());
	}

	/**
	 * Test practitioner entry.
	 *
	 * @param practitioner the practitioner
	 */
	private void testPractitionerEntry(Practitioner practitioner) {
		assertNotNull(practitioner);

		assertTrue(practitioner.hasId());
		if (practitioner.getId().equalsIgnoreCase("risk-1-performer")) {
			testPractitionerRiskPerformerEntry(practitioner);
		} else if (practitioner.getId().equalsIgnoreCase("relevant-disease-1-performer")) {
			testPractitionerRiskPerformerEntry(practitioner);
		} else if (practitioner.getId().equalsIgnoreCase("laboratory-report-1-performer")) {
			testLaboratoryPerformerEntry(practitioner);
		}
	}

	/**
	 * Test practitioner risk performer entry.
	 *
	 * @param practitioner the practitioner
	 */
	private void testPractitionerRiskPerformerEntry(Practitioner practitioner) {
		assertNotNull(practitioner);

		// name
		assertTrue(practitioner.hasName());
		assertEquals("Hummel", practitioner.getNameFirstRep().getFamily());
		assertEquals("Frank", practitioner.getNameFirstRep().getGivenAsSingleString());
		assertEquals("Dr.", practitioner.getNameFirstRep().getPrefixAsSingleString());
	}

	/**
	 * Test laboratory performer entry.
	 *
	 * @param practitioner the practitioner
	 */
	private void testLaboratoryPerformerEntry(Practitioner practitioner) {
		assertNotNull(practitioner);

		// name
		assertTrue(practitioner.hasName());
		assertEquals("Stern", practitioner.getNameFirstRep().getFamily());
		assertEquals("Isabella", practitioner.getNameFirstRep().getGivenAsSingleString());
		assertEquals("Dr.", practitioner.getNameFirstRep().getPrefixAsSingleString());
	}

	/**
	 * Test organization author entry.
	 *
	 * @param organization the organization
	 */
	private void testOrganizationAuthorEntry(Organization organization) {
		assertNotNull(organization);

		// ids
		assertTrue(organization.hasIdentifier());
		assertEquals(1, organization.getIdentifier().size());
		assertEquals("1.2.40.0.34.6.104", organization.getIdentifier().get(0).getSystem());

		// name
		assertTrue(organization.hasName());
		assertEquals("Für Gesundheit zuständiges Ministerium", organization.getName());

		// address
		assertTrue(organization.hasAddress());
		assertEquals(1, organization.getAddress().size());
		assertEquals("Stubenring 1", organization.getAddress().get(0).getLine().get(0).asStringValue());
		assertEquals("1010", organization.getAddress().get(0).getPostalCode());
		assertEquals("Wien", organization.getAddress().get(0).getCity());
		assertEquals("Wien", organization.getAddress().get(0).getState());
		assertEquals("AUT", organization.getAddress().get(0).getCountry());

		// telecom
		assertTrue(organization.hasTelecom());
		assertEquals(1, organization.getTelecom().size());
		assertEquals("post@sozialministerium.at", organization.getTelecom().get(0).getValue());
		assertEquals(ContactPointSystem.EMAIL, organization.getTelecom().get(0).getSystem());
	}

	/**
	 * Test organization custodian entry.
	 *
	 * @param organization the organization
	 */
	private void testOrganizationCustodianEntry(Organization organization) {
		assertNotNull(organization);

		// ids
		assertTrue(organization.hasIdentifier());
		assertEquals(1, organization.getIdentifier().size());
		assertEquals("1.2.40.0.34.3.99.1", organization.getIdentifier().get(0).getSystem());

		// name
		assertTrue(organization.hasName());
		assertEquals(NAME_EIMMUNIZATION, organization.getName());

		// address
		assertTrue(organization.hasAddress());
		assertEquals(1, organization.getAddress().size());
		assertEquals("Stubenring 1", organization.getAddress().get(0).getLine().get(0).asStringValue());
		assertEquals("1001", organization.getAddress().get(0).getPostalCode());
		assertEquals("Wien", organization.getAddress().get(0).getCity());
		assertEquals("Wien", organization.getAddress().get(0).getState());
		assertEquals("AUT", organization.getAddress().get(0).getCountry());

		// telecom
		assertTrue(organization.hasTelecom());
		assertEquals(1, organization.getTelecom().size());
		assertEquals("+43.(0)50.55460-0", organization.getTelecom().get(0).getValue());
		assertEquals(ContactPointSystem.PHONE, organization.getTelecom().get(0).getSystem());
	}

	/**
	 * Test author first immunization entry.
	 *
	 * @param organization the organization
	 */
	private void testAuthorFirstImmunizationEntry(Organization organization) {
		assertNotNull(organization);

		// ids
		assertTrue(organization.hasIdentifier());
		assertEquals(1, organization.getIdentifier().size());
		assertEquals("1.2.40.0.34.99.4613", organization.getIdentifier().get(0).getSystem());

		// name
		assertTrue(organization.hasName());
		assertEquals("Praxis Dr. Hummel", organization.getName());

		// address
		assertTrue(organization.hasAddress());
		assertEquals(1, organization.getAddress().size());
		assertEquals("Mozartgasse 1-7", organization.getAddress().get(0).getLine().get(0).asStringValue());
		assertEquals("5350", organization.getAddress().get(0).getPostalCode());
		assertEquals("St.Wolfgang", organization.getAddress().get(0).getCity());
		assertEquals("Salzburg", organization.getAddress().get(0).getState());
		assertEquals("AUT", organization.getAddress().get(0).getCountry());

		// telecom
		assertTrue(organization.hasTelecom());
		assertEquals(2, organization.getTelecom().size());
		assertEquals("+43.6138.3453446.0", organization.getTelecom().get(0).getValue());
		assertEquals(ContactPointSystem.PHONE, organization.getTelecom().get(0).getSystem());
		assertEquals(ContactPointUse.WORK, organization.getTelecom().get(0).getUse());
		assertEquals("+43.6138.3453446.4674", organization.getTelecom().get(1).getValue());
		assertEquals(ContactPointSystem.FAX, organization.getTelecom().get(1).getSystem());
		assertEquals(ContactPointUse.WORK, organization.getTelecom().get(1).getUse());
	}

	/**
	 * Test author immunization recommendation entry.
	 *
	 * @param organization the organization
	 */
	private void testAuthorImmunizationRecommendationEntry(Organization organization) {
		assertNotNull(organization);

		// ids
		assertTrue(organization.hasIdentifier());
		assertEquals(1, organization.getIdentifier().size());
		assertEquals("1.2.40.0.34.3.99.1", organization.getIdentifier().get(0).getSystem());

		// name
		assertTrue(organization.hasName());
		assertEquals("Für Gesundheit zuständiges Ministerium", organization.getName());
	}

	/**
	 * Test immunization section.
	 *
	 * @param section the section
	 */
	private void testImmunizationSection(SectionComponent section) {
		assertNotNull(section);
		assertTrue(section.hasCode());
		assertEquals(CLASS_CODE_IMMUNIZATION, section.getCode().getCodingFirstRep().getCode());
		assertEquals(OID_LOINC, section.getCode().getCodingFirstRep().getSystem());
		assertEquals("HISTORY OF IMMUNIZATIONS", section.getCode().getCodingFirstRep().getDisplay());
		assertTrue(section.hasTitle());
		assertEquals("Impfungen", section.getTitle());

		// immunization entries
		assertTrue(section.hasEntry());
		assertEquals(3, section.getEntry().size());
		assertTrue(section.getEntryFirstRep().hasReference());
		assertEquals("Immunization/1", section.getEntry().get(0).getReference());
		assertTrue(section.getEntryFirstRep().hasReference());
		assertEquals("Immunization/2", section.getEntry().get(1).getReference());
		assertTrue(section.getEntryFirstRep().hasReference());
		assertEquals("Immunization/3", section.getEntry().get(2).getReference());
	}

	/**
	 * Test immunization entry.
	 *
	 * @param immunization the immunization
	 */
	private void testImmunizationEntry(Immunization immunization) {
		assertNotNull(immunization);

		assertTrue(immunization.hasId());
		if (immunization.getId().equalsIgnoreCase("1")) {
			testImmunizationFirstEntry(immunization);
		} else if (immunization.getId().equalsIgnoreCase("2")) {
			testImmunizationSecondEntry(immunization);
		} else if (immunization.getId().equalsIgnoreCase("3")) {
			testImmunizationThirdEntry(immunization);
		}
	}

	/**
	 * Test immunization first entry.
	 *
	 * @param immunization the immunization
	 */
	private void testImmunizationFirstEntry(Immunization immunization) {
		assertNotNull(immunization);

		// id
		assertTrue(immunization.hasIdentifier());
		assertEquals(1, immunization.getIdentifier().size());
		assertEquals("1", immunization.getIdentifierFirstRep().getValue());
		assertEquals(IMMUNIZATION_SYSTEM, immunization.getIdentifierFirstRep().getSystem());

		// status
		assertTrue(immunization.hasStatus());
		assertEquals(ImmunizationStatus.COMPLETED, immunization.getStatus());

		// effective time
		assertTrue(immunization.hasOccurrenceDateTimeType());
		assertEquals("2016-06-17T12:15:00+02:00", immunization.getOccurrenceDateTimeType().asStringValue());

		// dose quantity
		assertFalse(immunization.hasDoseQuantity());

		// vaccine
		assertTrue(immunization.hasVaccineCode());
		assertTrue(immunization.getVaccineCode().hasCoding());
		assertEquals(VACCINE_CODE, immunization.getVaccineCode().getCodingFirstRep().getCode());
		assertEquals(VACCINE_OID, immunization.getVaccineCode().getCodingFirstRep().getSystem());
		assertEquals(VACCIEN_NAME, immunization.getVaccineCode().getCodingFirstRep().getDisplay());

		// lot number
		assertTrue(immunization.hasLotNumber());
		assertEquals("6232165-5687", immunization.getLotNumber());

		assertTrue(immunization.hasProtocolApplied());

		// target
		assertTrue(immunization.getProtocolAppliedFirstRep().hasTargetDisease());
		assertEquals(FSME_CODE,
				immunization.getProtocolAppliedFirstRep().getTargetDiseaseFirstRep().getCodingFirstRep().getCode());
		assertEquals(OID_SNOMED,
				immunization.getProtocolAppliedFirstRep().getTargetDiseaseFirstRep().getCodingFirstRep().getSystem());
		assertEquals(FSME_NAME,
				immunization.getProtocolAppliedFirstRep().getTargetDiseaseFirstRep().getCodingFirstRep().getDisplay());

		// dose and scheme
		assertTrue(immunization.getProtocolAppliedFirstRep().hasDoseNumber());
		assertEquals("D1", immunization.getProtocolAppliedFirstRep().getDoseNumberStringType().asStringValue());
		assertNull(immunization.getProtocolAppliedFirstRep().getSeries());

		// author
		assertTrue(immunization.getProtocolAppliedFirstRep().hasAuthority());
		assertEquals("Organization/immunization-author-1",
				immunization.getProtocolAppliedFirstRep().getAuthority().getReference());

	}

	/**
	 * Test immunization second entry.
	 *
	 * @param immunization the immunization
	 */
	private void testImmunizationSecondEntry(Immunization immunization) {
		assertNotNull(immunization);

		// id
		assertTrue(immunization.hasIdentifier());
		assertEquals(1, immunization.getIdentifier().size());
		assertEquals("2", immunization.getIdentifierFirstRep().getValue());
		assertEquals(IMMUNIZATION_SYSTEM, immunization.getIdentifierFirstRep().getSystem());

		// status
		assertTrue(immunization.hasStatus());
		assertEquals(ImmunizationStatus.COMPLETED, immunization.getStatus());

		// effective time
		assertTrue(immunization.hasOccurrenceDateTimeType());
		assertEquals("2016-09-17T15:15:00+02:00", immunization.getOccurrenceDateTimeType().asStringValue());

		// dose quantity
		assertFalse(immunization.hasDoseQuantity());

		// vaccine
		assertTrue(immunization.hasVaccineCode());
		assertTrue(immunization.getVaccineCode().hasCoding());
		assertEquals(VACCINE_CODE, immunization.getVaccineCode().getCodingFirstRep().getCode());
		assertEquals(VACCINE_OID, immunization.getVaccineCode().getCodingFirstRep().getSystem());
		assertEquals(VACCIEN_NAME, immunization.getVaccineCode().getCodingFirstRep().getDisplay());

		// lot number
		assertFalse(immunization.hasLotNumber());

		assertTrue(immunization.hasProtocolApplied());

		// target
		assertTrue(immunization.getProtocolAppliedFirstRep().hasTargetDisease());
		assertEquals(FSME_CODE,
				immunization.getProtocolAppliedFirstRep().getTargetDiseaseFirstRep().getCodingFirstRep().getCode());
		assertEquals(OID_SNOMED,
				immunization.getProtocolAppliedFirstRep().getTargetDiseaseFirstRep().getCodingFirstRep().getSystem());
		assertEquals(FSME_NAME,
				immunization.getProtocolAppliedFirstRep().getTargetDiseaseFirstRep().getCodingFirstRep().getDisplay());

		// dose and scheme
		assertTrue(immunization.getProtocolAppliedFirstRep().hasDoseNumber());
		assertEquals("D2", immunization.getProtocolAppliedFirstRep().getDoseNumberStringType().asStringValue());
		assertNull(immunization.getProtocolAppliedFirstRep().getSeries());

		// author
		assertTrue(immunization.getProtocolAppliedFirstRep().hasAuthority());
		assertEquals("Organization/immunization-author-2",
				immunization.getProtocolAppliedFirstRep().getAuthority().getReference());
	}

	/**
	 * Test immunization third entry.
	 *
	 * @param immunization the immunization
	 */
	private void testImmunizationThirdEntry(Immunization immunization) {
		assertNotNull(immunization);

		// id
		assertTrue(immunization.hasIdentifier());
		assertEquals(1, immunization.getIdentifier().size());
		assertEquals("3", immunization.getIdentifierFirstRep().getValue());
		assertEquals(IMMUNIZATION_SYSTEM, immunization.getIdentifierFirstRep().getSystem());

		// status
		assertTrue(immunization.hasStatus());
		assertEquals(ImmunizationStatus.COMPLETED, immunization.getStatus());

		// effective time
		assertTrue(immunization.hasOccurrenceDateTimeType());
		assertEquals("2017-09-17T10:15:00+02:00", immunization.getOccurrenceDateTimeType().asStringValue());

		// dose quantity
		assertFalse(immunization.hasDoseQuantity());

		// vaccine
		assertTrue(immunization.hasVaccineCode());
		assertTrue(immunization.getVaccineCode().hasCoding());
		assertEquals(VACCINE_CODE, immunization.getVaccineCode().getCodingFirstRep().getCode());
		assertEquals(VACCINE_OID, immunization.getVaccineCode().getCodingFirstRep().getSystem());
		assertEquals(VACCIEN_NAME, immunization.getVaccineCode().getCodingFirstRep().getDisplay());

		// lot number
		assertFalse(immunization.hasLotNumber());

		assertTrue(immunization.hasProtocolApplied());

		// target
		assertTrue(immunization.getProtocolAppliedFirstRep().hasTargetDisease());
		assertEquals(FSME_CODE,
				immunization.getProtocolAppliedFirstRep().getTargetDiseaseFirstRep().getCodingFirstRep().getCode());
		assertEquals(OID_SNOMED,
				immunization.getProtocolAppliedFirstRep().getTargetDiseaseFirstRep().getCodingFirstRep().getSystem());
		assertEquals(FSME_NAME,
				immunization.getProtocolAppliedFirstRep().getTargetDiseaseFirstRep().getCodingFirstRep().getDisplay());

		// dose and scheme
		assertTrue(immunization.getProtocolAppliedFirstRep().hasDoseNumber());
		assertEquals("D3", immunization.getProtocolAppliedFirstRep().getDoseNumberStringType().asStringValue());
		assertNull(immunization.getProtocolAppliedFirstRep().getSeries());

		// author
		assertTrue(immunization.getProtocolAppliedFirstRep().hasAuthority());
		assertEquals("Organization/immunization-author-3",
				immunization.getProtocolAppliedFirstRep().getAuthority().getReference());
	}

	/**
	 * Test immunization recommendation entry.
	 *
	 * @param immunizationRecommendation the immunization recommendation
	 */
	private void testImmunizationRecommendationEntry(ImmunizationRecommendation immunizationRecommendation) {
		assertNotNull(immunizationRecommendation);

		assertTrue(immunizationRecommendation.hasId());
		if (immunizationRecommendation.getId().equalsIgnoreCase("1")) {
			testImmunizationRecommendationFirstEntry(immunizationRecommendation);
		}
	}

	/**
	 * Test immunization recommendation first entry.
	 *
	 * @param immunization the immunization
	 */
	private void testImmunizationRecommendationFirstEntry(ImmunizationRecommendation immunization) {
		assertNotNull(immunization);

		// id
		assertTrue(immunization.hasIdentifier());
		assertEquals(1, immunization.getIdentifier().size());
		assertEquals("1", immunization.getIdentifierFirstRep().getValue());
		assertEquals("1.2.40.0.34.99.4613.3.5.1", immunization.getIdentifierFirstRep().getSystem());

		// author
		assertTrue(immunization.hasAuthority());
		assertEquals("Organization/immunizationRecommendation-author-1", immunization.getAuthority().getReference());

		// patient
		assertTrue(immunization.hasPatient());
		assertEquals("Patient/1", immunization.getPatient().getReference());

		assertTrue(immunization.hasDate());
		assertTrue(immunization.hasRecommendation());
		assertEquals(1, immunization.getRecommendation().size());

		// vaccine
		assertFalse(immunization.getRecommendationFirstRep().hasVaccineCode());

		// target
		assertTrue(immunization.getRecommendationFirstRep().hasTargetDisease());
		assertEquals(FSME_CODE,
				immunization.getRecommendationFirstRep().getTargetDisease().getCodingFirstRep().getCode());
		assertEquals(OID_SNOMED,
				immunization.getRecommendationFirstRep().getTargetDisease().getCodingFirstRep().getSystem());
		assertEquals(FSME_NAME,
				immunization.getRecommendationFirstRep().getTargetDisease().getCodingFirstRep().getDisplay());

		// scheme
		assertTrue(immunization.getRecommendationFirstRep().hasSeries());
		assertEquals("SCHEM03", immunization.getRecommendationFirstRep().getSeries());

		// dose
		assertTrue(immunization.getRecommendationFirstRep().hasDoseNumber());
		assertEquals("B", immunization.getRecommendationFirstRep().getDoseNumberStringType().asStringValue());

		// status
		assertTrue(immunization.getRecommendationFirstRep().hasForecastStatus());
		assertEquals("171258008",
				immunization.getRecommendationFirstRep().getForecastStatus().getCodingFirstRep().getCode());
		assertEquals(OID_SNOMED,
				immunization.getRecommendationFirstRep().getForecastStatus().getCodingFirstRep().getSystem());

		// recommended date
		assertTrue(immunization.getRecommendationFirstRep().hasDateCriterion());
		assertEquals(1, immunization.getRecommendationFirstRep().getDateCriterion().size());
		assertEquals("recommended", immunization.getRecommendationFirstRep().getDateCriterionFirstRep().getCode()
				.getCodingFirstRep().getCode());
		assertEquals("20200917", DateUtil
				.formatDateOnly(immunization.getRecommendationFirstRep().getDateCriterionFirstRep().getValue()));
	}

	/**
	 * Test observation entry.
	 *
	 * @param observation the observation
	 */
	private void testObservationEntry(Observation observation) {
		assertNotNull(observation);

		assertTrue(observation.hasId());
		if (observation.getId().equalsIgnoreCase("risk-1")) {
			testObservationRiskEntry(observation);
		} else if (observation.getId().equalsIgnoreCase("relevant-disease-1")) {
			testObservationDiseaseEntry(observation);
		} else if (observation.getId().equalsIgnoreCase("laboratory-report-1")) {
			testObservationLaboratoryReportEntry(observation);
		}
	}

	/**
	 * Test observation risk entry.
	 *
	 * @param observation the observation
	 */
	private void testObservationRiskEntry(Observation observation) {
		assertNotNull(observation);

		// id
		assertTrue(observation.hasIdentifier());
		assertEquals(1, observation.getIdentifier().size());
		assertEquals("5", observation.getIdentifierFirstRep().getValue());
		assertEquals(IMMUNIZATION_SYSTEM, observation.getIdentifierFirstRep().getSystem());

		// status
		assertTrue(observation.hasStatus());
		assertEquals(ObservationStatus.PRELIMINARY, observation.getStatus());

		// effective time
		assertTrue(observation.hasEffectivePeriod());
		assertEquals("20121224", DateUtil.formatDateOnly(observation.getEffectivePeriod().getStart()));
		assertNull(observation.getEffectivePeriod().getEnd());

		// category
		assertTrue(observation.hasCategory());
		assertEquals("exam", observation.getCategoryFirstRep().getCodingFirstRep().getCode());

		// code
		assertTrue(observation.hasCode());
		assertEquals("11450-4", observation.getCode().getCodingFirstRep().getCode());

		// value
		assertTrue(observation.hasValue());
		assertEquals("420538001", observation.getValueCodeableConcept().getCodingFirstRep().getCode());
		assertEquals(OID_SNOMED, observation.getValueCodeableConcept().getCodingFirstRep().getSystem());
		assertEquals("Tuberkulose Impfstoff", observation.getValueCodeableConcept().getCodingFirstRep().getDisplay());

		// note
		assertFalse(observation.hasNote());

		// author
		assertTrue(observation.hasPerformer());
		assertEquals("PractitionerRole/risk-1-performer", observation.getPerformerFirstRep().getReference());

		// reference
		assertTrue(observation.hasDerivedFrom());
		assertEquals("DocumentReference/risk-1-document", observation.getDerivedFromFirstRep().getReference());

	}

	/**
	 * Test observation disease entry.
	 *
	 * @param observation the observation
	 */
	private void testObservationDiseaseEntry(Observation observation) {
		assertNotNull(observation);

		// id
		assertTrue(observation.hasIdentifier());
		assertEquals(1, observation.getIdentifier().size());
		assertEquals("3", observation.getIdentifierFirstRep().getValue());
		assertEquals(IMMUNIZATION_SYSTEM, observation.getIdentifierFirstRep().getSystem());

		// status
		assertTrue(observation.hasStatus());
		assertEquals(ObservationStatus.PRELIMINARY, observation.getStatus());

		// effective time
		assertTrue(observation.hasEffectivePeriod());
		assertEquals("20160301", DateUtil.formatDateOnly(observation.getEffectivePeriod().getStart()));
		assertNull(observation.getEffectivePeriod().getEnd());

		// category
		assertTrue(observation.hasCategory());
		assertEquals("exam", observation.getCategoryFirstRep().getCodingFirstRep().getCode());

		// code
		assertTrue(observation.hasCode());
		assertEquals("11348-0", observation.getCode().getCodingFirstRep().getCode());

		// value
		assertTrue(observation.hasValue());
		assertEquals("36653000", observation.getValueCodeableConcept().getCodingFirstRep().getCode());
		assertEquals(OID_SNOMED, observation.getValueCodeableConcept().getCodingFirstRep().getSystem());
		assertEquals("Röteln", observation.getValueCodeableConcept().getCodingFirstRep().getDisplay());

		// author
		assertTrue(observation.hasPerformer());
		assertEquals("PractitionerRole/relevant-disease-1-performer",
				observation.getPerformerFirstRep().getReference());

		// reference
		assertTrue(observation.hasDerivedFrom());
		assertEquals("DocumentReference/relevant-disease-1-document",
				observation.getDerivedFromFirstRep().getReference());

	}

	/**
	 * Test observation laboratory report entry.
	 *
	 * @param observation the observation
	 */
	private void testObservationLaboratoryReportEntry(Observation observation) {
		assertNotNull(observation);

		// status
		assertTrue(observation.hasStatus());
		assertEquals(ObservationStatus.FINAL, observation.getStatus());

		// category
		assertTrue(observation.hasCategory());
		assertEquals("exam", observation.getCategoryFirstRep().getCodingFirstRep().getCode());

		// code
		assertTrue(observation.hasCode());
		assertEquals("26436-6", observation.getCode().getCodingFirstRep().getCode());

		// author
		assertTrue(observation.hasPerformer());
		assertEquals("PractitionerRole/laboratory-report-1-performer",
				observation.getPerformerFirstRep().getReference());

		// reference
		assertTrue(observation.hasDerivedFrom());
		assertEquals("DocumentReference/laboratory-report-1-document",
				observation.getDerivedFromFirstRep().getReference());

		// component
		assertTrue(observation.hasComponent());
		assertEquals(1, observation.getComponent().size());

		// code
		assertTrue(observation.getComponentFirstRep().hasCode());
		assertEquals("7961-6", observation.getComponentFirstRep().getCode().getCodingFirstRep().getCode());
		assertEquals(OID_LOINC,
				observation.getComponentFirstRep().getCode().getCodingFirstRep().getSystem());
		assertEquals("Masern IG AK qn.", observation.getComponentFirstRep().getCode().getCodingFirstRep().getDisplay());

		// value
		assertTrue(observation.getComponentFirstRep().hasValue());
		assertTrue(0.07 == observation.getComponentFirstRep().getValueQuantity().getValue().doubleValue());
		assertEquals("[IU]/mL", observation.getComponentFirstRep().getValueQuantity().getUnit());

		// interpretation
		assertTrue(observation.getComponentFirstRep().hasInterpretation());
		assertEquals(1, observation.getComponentFirstRep().getInterpretation().size());
		assertEquals("NEG", observation.getComponentFirstRep().getInterpretationFirstRep().getCodingFirstRep().getCode());
		assertEquals("http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation", observation.getComponentFirstRep().getInterpretationFirstRep().getCodingFirstRep().getSystem());
		assertEquals("Negative", observation.getComponentFirstRep().getInterpretationFirstRep().getCodingFirstRep().getDisplay());

		// reference range
		assertTrue(observation.getComponentFirstRep().hasReferenceRange());
		assertEquals(1, observation.getComponentFirstRep().getReferenceRange().size());
		assertEquals("POS", observation.getComponentFirstRep().getReferenceRange().get(0).getType().getCodingFirstRep().getCode());
		assertEquals("http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
				observation.getComponentFirstRep().getReferenceRange().get(0).getType().getCodingFirstRep().getSystem());
		assertTrue(0.16 == observation.getComponentFirstRep().getReferenceRange().get(0).getLow().getValue().doubleValue());
		assertEquals("[IU]/mL",
				observation.getComponentFirstRep().getReferenceRange().get(0).getLow().getUnit());
		assertNull(observation.getComponentFirstRep().getReferenceRange().get(0).getHigh().getValue());
	}

	/**
	 * Test document reference entry.
	 *
	 * @param documentReference the document reference
	 */
	private void testDocumentReferenceEntry(DocumentReference documentReference) {
		assertNotNull(documentReference);

		assertTrue(documentReference.hasId());
		if (documentReference.getId().equalsIgnoreCase("relevant-disease-1-document")) {
			testDocumentReferenceRelevantDiseaseEntry(documentReference);
		} else if (documentReference.getId().equalsIgnoreCase("risk-1-document")) {
			testDocumentReferenceRelevantDiseaseEntry(documentReference);
		} else if (documentReference.getId().equalsIgnoreCase("lab-report-1-document")) {
			testDocumentReferenceLabReportEntry(documentReference);
		}
	}

	/**
	 * Test document reference relevant disease entry.
	 *
	 * @param documentReference the document reference
	 */
	private void testDocumentReferenceRelevantDiseaseEntry(DocumentReference documentReference) {
		assertNotNull(documentReference);

		// id
		assertTrue(documentReference.hasIdentifier());
		assertEquals(1, documentReference.getIdentifier().size());
		assertEquals("1", documentReference.getIdentifierFirstRep().getValue());
		assertEquals(SYSTEM_IDENTIFIER, documentReference.getIdentifierFirstRep().getSystem());

		// set id
		assertTrue(documentReference.hasMasterIdentifier());
		assertEquals("1", documentReference.getMasterIdentifier().getValue());
		assertEquals(SET_ID_SYSTEM_IDENTIFIER, documentReference.getMasterIdentifier().getSystem());

		// code
		assertTrue(documentReference.hasType());
		assertEquals(CLASS_CODE_IMMUNIZATION, documentReference.getType().getCodingFirstRep().getCode());
		assertEquals(OID_LOINC, documentReference.getType().getCodingFirstRep().getSystem());
		assertEquals("History of Immunization", documentReference.getType().getCodingFirstRep().getDisplay());

	}

	/**
	 * Test document reference lab report entry.
	 *
	 * @param documentReference the document reference
	 */
	private void testDocumentReferenceLabReportEntry(DocumentReference documentReference) {
		assertNotNull(documentReference);

		// id
		assertTrue(documentReference.hasIdentifier());
		assertEquals(1, documentReference.getIdentifier().size());
		assertEquals("mySampleID", documentReference.getIdentifierFirstRep().getValue());
		assertEquals(SYSTEM_IDENTIFIER, documentReference.getIdentifierFirstRep().getSystem());

		// set id
		assertTrue(documentReference.hasMasterIdentifier());
		assertEquals("mySampleID", documentReference.getMasterIdentifier().getValue());
		assertEquals(SET_ID_SYSTEM_IDENTIFIER, documentReference.getMasterIdentifier().getSystem());

		// code
		assertTrue(documentReference.hasType());
		assertEquals(CLASS_CODE_IMMUNIZATION, documentReference.getType().getCodingFirstRep().getCode());
		assertEquals(OID_LOINC, documentReference.getType().getCodingFirstRep().getSystem());
		assertEquals("History of Immunization", documentReference.getType().getCodingFirstRep().getDisplay());

	}
}
