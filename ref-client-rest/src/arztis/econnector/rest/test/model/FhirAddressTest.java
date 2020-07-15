/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the Eclipse Public License v1.0.
 *
 */
package arztis.econnector.rest.test.model;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.ehealth_connector.common.enums.NullFlavor;
import org.ehealth_connector.common.hl7cdar2.AD;
import org.hl7.fhir.r4.model.Address;
import org.junit.Before;
import org.junit.Test;

import arztis.econnector.ihe.tests.TestUtils;
import arztis.econnector.rest.model.fhir.FhirAddress;

/**
 * Test of {@link FhirAddress}.
 *
 * @author Anna Jungwirth
 */
public class FhirAddressTest extends TestUtils {

	/** The test address. */
	private Address testAddress;

	/**
	 * Method implementing.
	 */
	@Before
	public void setUp() {
		super.init();
		testAddress = getAddress1();
	}

	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirAddress#createHl7CdaR2Ad()}.
	 */
	@Test
	public void testCreateHl7CdaR2Ad() {
		final AD ad = FhirAddress.createHl7CdaR2Ad(testAddress, null);

		assertNotNull(ad);
		testAddress(ad.getContent(),
				testAddress.getLine(), testAddress.getPostalCode(),
				testAddress.getCity(), testAddress.getState(),testAddress.getCountry());
	}

	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirAddress#createHl7CdaR2Ad()} with a null flavor.
	 */
	@Test
	public void testCreateHl7CdaR2AdNullFlavor() {
		final AD ad = FhirAddress.createHl7CdaR2Ad(null, NullFlavor.NOINFORMATION);

		assertNotNull(ad);
		assertNotNull(ad.getNullFlavor());
		assertNotNull(ad.getNullFlavor().get(0));
		assertEquals("NI", ad.getNullFlavor().get(0));
	}

}
