package arztis.econnector.rest.test.model;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.text.ParseException;

import org.ehealth_connector.common.enums.NullFlavor;
import org.ehealth_connector.common.hl7cdar2.EN;
import org.ehealth_connector.common.hl7cdar2.ON;
import org.ehealth_connector.common.hl7cdar2.PN;
import org.hl7.fhir.r4.model.HumanName;
import org.junit.Before;
import org.junit.Test;

import arztis.econnector.ihe.tests.TestUtils;
import arztis.econnector.rest.model.fhir.FhirHumanName;

/**
 * Test of {@link FhirHumanName}
 *
 */
public class FhirHumanNameTest extends TestUtils {

	private HumanName testName;

	/**
	 * Method implementing
	 *
	 * @throws java.lang.Exception
	 */
	@Before
	public void setUp() throws Exception {
		super.init();
		testName = getName1();
	}

	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirHumanName#createHl7CdaR2En()}.
	 * 
	 * @throws ParseException
	 */
	@Test
	public void testCreateHl7CdaR2En() throws ParseException {
		final EN en = FhirHumanName.createHl7CdaR2En(testName, null);
		
		assertNotNull(en);
		testName(en.getContent(), testName.getPrefixAsSingleString(), testName.getSuffixAsSingleString(), testName.getGivenAsSingleString(), testName.getFamily());
	}
	
	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirHumanName#createHl7CdaR2En()} with a null flavor.
	 * 
	 * @throws ParseException
	 */
	@Test
	public void testCreateHl7CdaR2EnNullFlavor() throws ParseException {
		final EN en = FhirHumanName.createHl7CdaR2En(null, NullFlavor.NOINFORMATION);
		
		assertNotNull(en);
		assertNotNull(en.getNullFlavor());
		assertNotNull(en.getNullFlavor().get(0));
		assertEquals("NI", en.getNullFlavor().get(0));
	}
	
	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirHumanName#createHl7CdaR2On()}.
	 * 
	 * @throws ParseException
	 */
	@Test
	public void testCreateHl7CdaROn() throws ParseException {
		final ON on = FhirHumanName.createHl7CdaR2On("Ordination Dr. Musterärztin");
		
		assertNotNull(on);		
		assertNotNull(on.getContent());
		assertEquals("Ordination Dr. Musterärztin", on.xmlContent);
	}
	
	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirHumanName#createHl7CdaR2Pn()}.
	 * 
	 * @throws ParseException
	 */
	@Test
	public void testCreateHl7CdaR2Pn() throws ParseException {
		final PN pn = FhirHumanName.createHl7CdaR2Pn(testName, null);
		
		assertNotNull(pn);
		testName(pn.getContent(), testName.getPrefixAsSingleString(), testName.getSuffixAsSingleString(), testName.getGivenAsSingleString(), testName.getFamily());
	}
	
	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirHumanName#createHl7CdaR2Pn()} with a null flavor.
	 * 
	 * @throws ParseException
	 */
	@Test
	public void testCreateHl7CdaR2PnNullFlavor() throws ParseException {
		final PN pn = FhirHumanName.createHl7CdaR2Pn(null, NullFlavor.UNKNOWN);
		
		assertNotNull(pn);
		assertNotNull(pn.getNullFlavor());
		assertNotNull(pn.getNullFlavor().get(0));
		assertEquals("UNK", pn.getNullFlavor().get(0));
	}

}
