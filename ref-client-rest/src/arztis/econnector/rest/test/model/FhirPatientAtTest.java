/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 * 
 */
package arztis.econnector.rest.test.model;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.util.Arrays;

import org.ehealth_connector.cda.at.elga.v2019.HeaderRecordTarget;
import org.ehealth_connector.cda.at.elga.v2019.cdabuilder.PatientAt;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrHeaderRecordTargetEImpfpass;
import org.ehealth_connector.common.enums.TelecomAddressUse;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040RecordTarget;
import org.hl7.fhir.r4.model.HumanName;
import org.hl7.fhir.r4.model.Identifier;
import org.hl7.fhir.r4.model.Patient;
import org.hl7.fhir.r4.model.Patient.ContactComponent;
import org.junit.Before;
import org.junit.Test;

import arztis.econnector.ihe.tests.TestUtils;
import arztis.econnector.rest.model.fhir.FhirPatientAt;

/**
 * Test of {@link PatientAt}.
 *
 * @author Anna Jungwirth
 */
public class FhirPatientAtTest extends TestUtils {

	/** The Constant MAILTO. */
	private static final String MAILTO = "mailto:";
	
	/** The test record target E impfpass. */
	private Patient testRecordTargetEImpfpass;
	
	/** The test record target. */
	private Patient testRecordTarget;

	/**
	 * Method implementing.
	 */
	@Before
	public void setUp() {
		super.init();
		testRecordTargetEImpfpass = getPatient1();
		Identifier id = new Identifier();
		id.setSystem("1.2.3.4.5.6");
		id.setValue(getNumS1());
		testRecordTargetEImpfpass.getIdentifier().clear();
		testRecordTargetEImpfpass.addIdentifier(id);

		Identifier ssno = new Identifier();
		ssno.setSystem("1.2.40.0.10.1.4.3.1");
		ssno.setValue("1002120945");
		testRecordTargetEImpfpass.addIdentifier(ssno);

		testRecordTarget = getPatient1();
		testRecordTarget.getIdentifier().clear();
		testRecordTarget.addIdentifier(id);
		testRecordTarget.addIdentifier(ssno);
		testRecordTarget.setContact(Arrays.asList(getGuardian()));
	}

	/**
	 * Gets the guardian.
	 *
	 * @return the guardian
	 */
	private ContactComponent getGuardian() {
		ContactComponent guardian = new ContactComponent();
		HumanName name = new HumanName();
		name.setText("SOS Kinderdorf Hinterbühl");
		guardian.setName(name);
		guardian.setAddress(getAddress1());
		guardian.setTelecom(getTelecoms1());
		return guardian;
	}

	/**
	 * Test method for
	 * {@link org.ehealth_connector.cda.at.cdabuilder.PatientAt#getAtcdabbrHeaderRecordTargetEImpfpass()}.
	 *
	 */
	@Test
	public void testGetAtcdabbrHeaderRecordTargetEImpfpass() {
		final AtcdabbrHeaderRecordTargetEImpfpass recordTarget = FhirPatientAt
				.getAtcdabbrHeaderRecordTargetEImpfpass(testRecordTargetEImpfpass);
		testFixedValues(recordTarget);

		assertNotNull(recordTarget.getPatientRole().getAddr());
		assertNotNull(recordTarget.getPatientRole().getAddr().get(0));
		testAddress(recordTarget.getPatientRole().getAddr().get(0).getContent(),
				getPatient1().getAddress().get(0).getLine(), getPatient1().getAddress().get(0).getPostalCode(),
				getPatient1().getAddress().get(0).getCity(), getPatient1().getAddress().get(0).getState(),
				getPatient1().getAddress().get(0).getCountry());

		assertNotNull(recordTarget.getPatientRole().getTelecom().get(0));
		assertNotNull(recordTarget.getPatientRole().getTelecom().get(1));
		assertNotNull(recordTarget.getPatientRole().getTelecom().get(2));
		assertNotNull(recordTarget.getPatientRole().getTelecom().get(3));
		assertNotNull(recordTarget.getPatientRole().getTelecom().get(4));
		assertNotNull(recordTarget.getPatientRole().getTelecom().get(5));
		assertEquals(MAILTO + getTelS1(), recordTarget.getPatientRole().getTelecom().get(0).getValue());
		assertEquals(TelecomAddressUse.BUSINESS.getCodeValue(),
				recordTarget.getPatientRole().getTelecom().get(0).getUse().get(0));
		assertEquals(MAILTO + getTelS2(), recordTarget.getPatientRole().getTelecom().get(1).getValue());
		assertEquals(TelecomAddressUse.PRIVATE.getCodeValue(),
				recordTarget.getPatientRole().getTelecom().get(1).getUse().get(0));
		assertEquals("fax:" + getTelS1(), recordTarget.getPatientRole().getTelecom().get(2).getValue());
		assertEquals(TelecomAddressUse.BUSINESS.getCodeValue(),
				recordTarget.getPatientRole().getTelecom().get(2).getUse().get(0));
		assertEquals("fax:" + getTelS2(), recordTarget.getPatientRole().getTelecom().get(3).getValue());
		assertEquals(TelecomAddressUse.PRIVATE.getCodeValue(),
				recordTarget.getPatientRole().getTelecom().get(3).getUse().get(0));
		assertEquals("tel:" + getTelS1(), recordTarget.getPatientRole().getTelecom().get(4).getValue());
		assertEquals(TelecomAddressUse.BUSINESS.getCodeValue(),
				recordTarget.getPatientRole().getTelecom().get(4).getUse().get(0));
		assertEquals("tel:" + getTelS2(), recordTarget.getPatientRole().getTelecom().get(5).getValue());
		assertEquals(TelecomAddressUse.PRIVATE.getCodeValue(),
				recordTarget.getPatientRole().getTelecom().get(5).getUse().get(0));

		assertNotNull(recordTarget.getPatientRole().getPatient().getName().get(0));
		testName(recordTarget.getPatientRole().getPatient().getName().get(0).getContent(), getTs1(), getTs2(), getTs3(),
				getTs4());

		assertEquals("F", recordTarget.getPatientRole().getPatient().getAdministrativeGenderCode().getCode());

		assertEquals("20200406", recordTarget.getPatientRole().getPatient().getBirthTime().getValue());
	}

	/**
	 * Test method for
	 * {@link org.ehealth_connector.cda.at.cdabuilder.PatientAt#getHeaderRecordTarget()}.
	 *
	 */
	@Test
	public void testGetHeaderRecordTarget() {
		final HeaderRecordTarget headerRecordTarget = FhirPatientAt.getHeaderRecordTarget(testRecordTarget);
		testFixedValues(headerRecordTarget);

		assertNotNull(headerRecordTarget.getPatientRole().getAddr());
		assertNotNull(headerRecordTarget.getPatientRole().getAddr().get(0));
		testAddress(headerRecordTarget.getPatientRole().getAddr().get(0).getContent(),
				getPatient1().getAddress().get(0).getLine(), getPatient1().getAddress().get(0).getPostalCode(),
				getPatient1().getAddress().get(0).getCity(), getPatient1().getAddress().get(0).getState(),
				getPatient1().getAddress().get(0).getCountry());

		assertNotNull(headerRecordTarget.getPatientRole().getTelecom().get(0));
		assertNotNull(headerRecordTarget.getPatientRole().getTelecom().get(1));
		assertNotNull(headerRecordTarget.getPatientRole().getTelecom().get(2));
		assertNotNull(headerRecordTarget.getPatientRole().getTelecom().get(3));
		assertNotNull(headerRecordTarget.getPatientRole().getTelecom().get(4));
		assertNotNull(headerRecordTarget.getPatientRole().getTelecom().get(5));
		assertEquals(MAILTO + getTelS1(), headerRecordTarget.getPatientRole().getTelecom().get(0).getValue());
		assertEquals(TelecomAddressUse.BUSINESS.getCodeValue(),
				headerRecordTarget.getPatientRole().getTelecom().get(0).getUse().get(0));
		assertEquals(MAILTO + getTelS2(), headerRecordTarget.getPatientRole().getTelecom().get(1).getValue());
		assertEquals(TelecomAddressUse.PRIVATE.getCodeValue(),
				headerRecordTarget.getPatientRole().getTelecom().get(1).getUse().get(0));
		assertEquals("fax:" + getTelS1(), headerRecordTarget.getPatientRole().getTelecom().get(2).getValue());
		assertEquals(TelecomAddressUse.BUSINESS.getCodeValue(),
				headerRecordTarget.getPatientRole().getTelecom().get(2).getUse().get(0));
		assertEquals("fax:" + getTelS2(), headerRecordTarget.getPatientRole().getTelecom().get(3).getValue());
		assertEquals(TelecomAddressUse.PRIVATE.getCodeValue(),
				headerRecordTarget.getPatientRole().getTelecom().get(3).getUse().get(0));
		assertEquals("tel:" + getTelS1(), headerRecordTarget.getPatientRole().getTelecom().get(4).getValue());
		assertEquals(TelecomAddressUse.BUSINESS.getCodeValue(),
				headerRecordTarget.getPatientRole().getTelecom().get(4).getUse().get(0));
		assertEquals("tel:" + getTelS2(), headerRecordTarget.getPatientRole().getTelecom().get(5).getValue());
		assertEquals(TelecomAddressUse.PRIVATE.getCodeValue(),
				headerRecordTarget.getPatientRole().getTelecom().get(5).getUse().get(0));

		assertNotNull(headerRecordTarget.getPatientRole().getPatient().getName().get(0));
		testName(headerRecordTarget.getPatientRole().getPatient().getName().get(0).getContent(), getTs1(), getTs2(),
				getTs3(), getTs4());

		assertEquals("F", headerRecordTarget.getPatientRole().getPatient().getAdministrativeGenderCode().getCode());

		assertEquals("20200406", headerRecordTarget.getPatientRole().getPatient().getBirthTime().getValue());

		assertNull(headerRecordTarget.getPatientRole().getPatient().getBirthplace());

		assertNotNull(headerRecordTarget.getPatientRole().getPatient().getGuardian());
		assertNotNull(headerRecordTarget.getPatientRole().getPatient().getGuardian().get(0));
		assertEquals(1, headerRecordTarget.getPatientRole().getPatient().getGuardian().size());
	}

	/**
	 * Test fixed values.
	 *
	 * @param patient the patient
	 */
	private void testFixedValues(POCDMT000040RecordTarget patient) {
		assertNotNull(patient);
		assertNotNull(patient.getTypeCode());
		assertNotNull(patient.getTypeCode().get(0));
		assertEquals("RCT", patient.getTypeCode().get(0));
		assertEquals("OP", patient.getContextControlCode());

		assertNotNull(patient.getPatientRole());
		assertNotNull(patient.getPatientRole().getClassCode());
		assertEquals("PAT", patient.getPatientRole().getClassCode().get(0));

		assertNotNull(patient.getPatientRole().getId());
		assertEquals(2, patient.getPatientRole().getId().size());
		assertNotNull(patient.getPatientRole().getId().get(1));
		assertEquals("1002120945", patient.getPatientRole().getId().get(1).getExtension());
		assertEquals("1.2.40.0.10.1.4.3.1", patient.getPatientRole().getId().get(1).getRoot());

		assertNotNull(patient.getPatientRole().getId().get(0));
		assertEquals(getNumS1(), patient.getPatientRole().getId().get(0).getExtension());
		assertEquals("1.2.3.4.5.6", patient.getPatientRole().getId().get(0).getRoot());

		assertNotNull(patient.getPatientRole().getPatient());
		assertNotNull(patient.getPatientRole().getPatient().getAdministrativeGenderCode());
		assertNotNull(patient.getPatientRole().getPatient().getBirthTime());
		assertNotNull(patient.getPatientRole().getPatient().getBirthTime().getValue());
		assertNotNull(patient.getPatientRole().getPatient().getName());
		assertEquals(1, patient.getPatientRole().getPatient().getName().size());

	}

}