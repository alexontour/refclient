/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 * 
 */
package arztis.econnector.rest.test.model;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.junit.Test;

import arztis.econnector.rest.model.fhir.FhirPractitioner;

/**
 * Test of {@link FhirPractitioner}.
 *
 * @author Anna Jungwirth
 */
public class FhirPractitionerTest {


	/**
	 * Test method for {@link FhirPractitioner#setRole()}.
	 *
	 */
	@Test
	public void testSetRole() {
		FhirPractitioner practitioner = new FhirPractitioner();
		practitioner.setRole("700");

		assertNotNull(practitioner);
		assertNotNull(practitioner.getQualificationFirstRep());
		assertNotNull(practitioner.getQualificationFirstRep().getCode());
		assertNotNull(practitioner.getQualificationFirstRep().getCode().getCodingFirstRep());

		assertEquals("700", practitioner.getQualificationFirstRep().getCode().getCodingFirstRep().getCode());
		assertEquals("1.2.40.0.34.5.3", practitioner.getQualificationFirstRep().getCode().getCodingFirstRep().getSystem());
	}
}
