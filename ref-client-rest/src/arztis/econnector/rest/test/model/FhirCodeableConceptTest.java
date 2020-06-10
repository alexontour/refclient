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
 * Test of {@link FhirCodeableConcept}
 *
 */
public class FhirCodeableConceptTest extends TestUtils {

	private CodeableConcept testCode;
	private CodeableConcept translactionCode;

	/**
	 * Method implementing
	 *
	 * @throws java.lang.Exception
	 */
	@Before
	public void setUp() throws Exception {
		super.init();
		testCode = getCode1();
		testCode.setText("Original text");
		translactionCode =  getCode2();
	}

	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirCodeableConcept#createHl7CdaR2Cd()}.
	 * 
	 * @throws ParseException
	 */
	@Test
	public void testCreateHl7CdaR2Cd() throws ParseException {
		final CD cd = FhirCodeableConcept.createHl7CdaR2Cd(testCode, null, List.of(translactionCode));
		
		assertNotNull(cd);
		assertEquals(testCode.getCodingFirstRep().getCode(), cd.getCode());
		assertEquals(testCode.getCodingFirstRep().getSystem(), cd.getCodeSystem());
		assertEquals(testCode.getCodingFirstRep().getDisplay(), cd.getDisplayName());
		assertEquals("Original text", cd.getOriginalText().xmlContent);	
		
		assertNotNull(cd.getTranslation());
		assertEquals(1, cd.getTranslation().size());
		assertEquals(translactionCode.getCodingFirstRep().getCode(), cd.getTranslation().get(0).getCode());
		assertEquals(translactionCode.getCodingFirstRep().getSystem(), cd.getTranslation().get(0).getCodeSystem());
		assertEquals(translactionCode.getCodingFirstRep().getDisplay(), cd.getTranslation().get(0).getDisplayName());
	}
	
	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirCodeableConcept#createHl7CdaR2Cd()} with a null flavor.
	 * 
	 * @throws ParseException
	 */
	@Test
	public void testCreateHl7CdaR2CdNullFlavor() throws ParseException {
		final CD cd = FhirCodeableConcept.createHl7CdaR2Cd(null, NullFlavor.MASKED, null);
		
		assertNotNull(cd);
		assertNotNull(cd.getNullFlavor());
		assertNotNull(cd.getNullFlavor().get(0));
		assertEquals("MSK", cd.getNullFlavor().get(0));
	}
	
	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirCodeableConcept#createHl7CdaR2Cs()}.
	 * 
	 * @throws ParseException
	 */
	@Test
	public void testCreateHl7CdaR2Cs() throws ParseException {
		final CS cs = FhirCodeableConcept.createHl7CdaR2Cs(testCode, null, List.of(translactionCode));
		
		assertNotNull(cs);
		assertEquals(testCode.getCodingFirstRep().getCode(), cs.getCode());
		assertEquals(testCode.getCodingFirstRep().getSystem(), cs.getCodeSystem());
		assertEquals(testCode.getCodingFirstRep().getDisplay(), cs.getDisplayName());
		assertEquals("Original text", cs.getOriginalText().xmlContent);	
		
		assertNotNull(cs.getTranslation());
		assertEquals(1, cs.getTranslation().size());
		assertEquals(translactionCode.getCodingFirstRep().getCode(), cs.getTranslation().get(0).getCode());
		assertEquals(translactionCode.getCodingFirstRep().getSystem(), cs.getTranslation().get(0).getCodeSystem());
		assertEquals(translactionCode.getCodingFirstRep().getDisplay(), cs.getTranslation().get(0).getDisplayName());
	}
	
	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirCodeableConcept#createHl7CdaR2Cs()} with a null flavor.
	 * 
	 * @throws ParseException
	 */
	@Test
	public void testCreateHl7CdaR2CsNullFlavor() throws ParseException {
		final CS cs = FhirCodeableConcept.createHl7CdaR2Cs(null, NullFlavor.NOINFORMATION, null);
		
		assertNotNull(cs);
		assertNotNull(cs.getNullFlavor());
		assertNotNull(cs.getNullFlavor().get(0));
		assertEquals("NI", cs.getNullFlavor().get(0));
	}
	
	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirCodeableConcept#createHl7CdaR2Ce()}.
	 * 
	 * @throws ParseException
	 */
	@Test
	public void testCreateHl7CdaR2Ce() throws ParseException {
		final CE ce = FhirCodeableConcept.createHl7CdaR2Ce(testCode, null, null);
		
		assertNotNull(ce);
		assertEquals(testCode.getCodingFirstRep().getCode(), ce.getCode());
		assertEquals(testCode.getCodingFirstRep().getSystem(), ce.getCodeSystem());
		assertEquals(testCode.getCodingFirstRep().getDisplay(), ce.getDisplayName());
		assertEquals("Original text", ce.getOriginalText().xmlContent);	
		
		assertTrue(ce.getTranslation().isEmpty());
	}
	
	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirCodeableConcept#createHl7CdaR2Cs()} with a null flavor.
	 * 
	 * @throws ParseException
	 */
	@Test
	public void testCreateHl7CdaR2CeNullFlavor() throws ParseException {
		final CE ce = FhirCodeableConcept.createHl7CdaR2Ce(null, NullFlavor.NOT_APPLICABLE, null);
		
		assertNotNull(ce);
		assertNotNull(ce.getNullFlavor());
		assertNotNull(ce.getNullFlavor().get(0));
		assertEquals("NA", ce.getNullFlavor().get(0));
	}
}
