/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 * 
 */
package arztis.econnector.rest.test.model;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.text.ParseException;
import java.util.List;

import org.ehealth_connector.common.enums.NullFlavor;
import org.ehealth_connector.common.hl7cdar2.CD;
import org.ehealth_connector.common.hl7cdar2.CE;
import org.ehealth_connector.common.hl7cdar2.CS;
import org.hl7.fhir.r4.model.CodeableConcept;
import org.junit.Before;
import org.junit.Test;

import arztis.econnector.ihe.tests.TestUtils;
import arztis.econnector.rest.model.fhir.FhirCodeableConcept;

/**
 * Test of {@link FhirCodeableConcept}.
 *
 * @author Anna Jungwirth
 */
public class FhirCodeableConceptTest extends TestUtils {

	/** The Constant ORIGINAL_TEXT. */
	private static final String ORIGINAL_TEXT = "Original text";
	
	/** The test code. */
	private CodeableConcept testCode;
	
	/** The translaction code. */
	private CodeableConcept translactionCode;

	/**
	 * Method implementing.
	 */
	@Before
	public void setUp() {
		super.init();
		testCode = getCode1();
		testCode.setText(ORIGINAL_TEXT);
		translactionCode =  getCode2();
	}

	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirCodeableConcept#createHl7CdaR2Cd()}.
	 */
	@Test
	public void testCreateHl7CdaR2Cd() {
		final CD cd = FhirCodeableConcept.createHl7CdaR2Cd(testCode, null, List.of(translactionCode));

		assertNotNull(cd);
		assertEquals(testCode.getCodingFirstRep().getCode(), cd.getCode());
		assertEquals(testCode.getCodingFirstRep().getSystem(), cd.getCodeSystem());
		assertEquals(testCode.getCodingFirstRep().getDisplay(), cd.getDisplayName());
		assertEquals(ORIGINAL_TEXT, cd.getOriginalText().xmlContent);

		assertNotNull(cd.getTranslation());
		assertEquals(1, cd.getTranslation().size());
		assertEquals(translactionCode.getCodingFirstRep().getCode(), cd.getTranslation().get(0).getCode());
		assertEquals(translactionCode.getCodingFirstRep().getSystem(), cd.getTranslation().get(0).getCodeSystem());
		assertEquals(translactionCode.getCodingFirstRep().getDisplay(), cd.getTranslation().get(0).getDisplayName());
	}

	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirCodeableConcept#createHl7CdaR2Cd()} with a null flavor.
	 */
	@Test
	public void testCreateHl7CdaR2CdNullFlavor() {
		final CD cd = FhirCodeableConcept.createHl7CdaR2Cd(null, NullFlavor.MASKED, null);

		assertNotNull(cd);
		assertNotNull(cd.getNullFlavor());
		assertNotNull(cd.getNullFlavor().get(0));
		assertEquals("MSK", cd.getNullFlavor().get(0));
	}

	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirCodeableConcept#createHl7CdaR2Cs()}.
	 */
	@Test
	public void testCreateHl7CdaR2Cs() {
		final CS cs = FhirCodeableConcept.createHl7CdaR2Cs(testCode, null, List.of(translactionCode));

		assertNotNull(cs);
		assertEquals(testCode.getCodingFirstRep().getCode(), cs.getCode());
		assertEquals(testCode.getCodingFirstRep().getSystem(), cs.getCodeSystem());
		assertEquals(testCode.getCodingFirstRep().getDisplay(), cs.getDisplayName());
		assertEquals(ORIGINAL_TEXT, cs.getOriginalText().xmlContent);

		assertNotNull(cs.getTranslation());
		assertEquals(1, cs.getTranslation().size());
		assertEquals(translactionCode.getCodingFirstRep().getCode(), cs.getTranslation().get(0).getCode());
		assertEquals(translactionCode.getCodingFirstRep().getSystem(), cs.getTranslation().get(0).getCodeSystem());
		assertEquals(translactionCode.getCodingFirstRep().getDisplay(), cs.getTranslation().get(0).getDisplayName());
	}

	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirCodeableConcept#createHl7CdaR2Cs()} with a null flavor.
	 */
	@Test
	public void testCreateHl7CdaR2CsNullFlavor() {
		final CS cs = FhirCodeableConcept.createHl7CdaR2Cs(null, NullFlavor.NOINFORMATION, null);

		assertNotNull(cs);
		assertNotNull(cs.getNullFlavor());
		assertNotNull(cs.getNullFlavor().get(0));
		assertEquals("NI", cs.getNullFlavor().get(0));
	}

	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirCodeableConcept#createHl7CdaR2Ce()}.
	 */
	@Test
	public void testCreateHl7CdaR2Ce() {
		final CE ce = FhirCodeableConcept.createHl7CdaR2Ce(testCode, null, null);

		assertNotNull(ce);
		assertEquals(testCode.getCodingFirstRep().getCode(), ce.getCode());
		assertEquals(testCode.getCodingFirstRep().getSystem(), ce.getCodeSystem());
		assertEquals(testCode.getCodingFirstRep().getDisplay(), ce.getDisplayName());
		assertEquals(ORIGINAL_TEXT, ce.getOriginalText().xmlContent);

		assertTrue(ce.getTranslation().isEmpty());
	}

	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirCodeableConcept#createHl7CdaR2Cs()} with a null flavor.
	 */
	@Test
	public void testCreateHl7CdaR2CeNullFlavor() {
		final CE ce = FhirCodeableConcept.createHl7CdaR2Ce(null, NullFlavor.NOT_APPLICABLE, null);

		assertNotNull(ce);
		assertNotNull(ce.getNullFlavor());
		assertNotNull(ce.getNullFlavor().get(0));
		assertEquals("NA", ce.getNullFlavor().get(0));
	}
}
