package arztis.econnector.rest.test.model;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.text.ParseException;

import org.ehealth_connector.common.hl7cdar2.POCDMT000040Custodian;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Organization;
import org.hl7.fhir.r4.model.Organization;
import org.junit.Before;
import org.junit.Test;

import arztis.econnector.ihe.tests.TestUtils;
import arztis.econnector.rest.model.fhir.FhirOrganization;

/**
 * Test of {@link FhirOrganization}
 *
 */
public class FhirOrganizationTest extends TestUtils {

	private Organization testOrganization;

	/**
	 * Method implementing
	 *
	 * @throws java.lang.Exception
	 */
	@Before
	public void setUp() throws Exception {
		super.init();
		testOrganization = getOrganization1();
		testOrganization.addAddress(getAddress1());
	}

	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirOrganization#createHeaderCustodian()}.
	 * 
	 * @throws ParseException
	 */
	@Test
	public void testCreateHeaderCustodian() throws ParseException {
		final POCDMT000040Custodian custodian = FhirOrganization.createHeaderCustodian(testOrganization);

		assertNotNull(custodian);
		assertNotNull(custodian.getTypeCode());
		assertEquals("CST", custodian.getTypeCode().get(0));
		assertNotNull(custodian.getAssignedCustodian());
		assertEquals("ASSIGNED", custodian.getAssignedCustodian().getClassCode());
		assertNotNull(custodian.getAssignedCustodian().getRepresentedCustodianOrganization());
		assertEquals("ORG", custodian.getAssignedCustodian().getRepresentedCustodianOrganization().getClassCode());
		assertEquals("INSTANCE",
				custodian.getAssignedCustodian().getRepresentedCustodianOrganization().getDeterminerCode());

		assertNotNull(custodian.getAssignedCustodian().getRepresentedCustodianOrganization().getId());
		assertNotNull(custodian.getAssignedCustodian().getRepresentedCustodianOrganization().getId().get(0));
		assertEquals(getNumS1(),
				custodian.getAssignedCustodian().getRepresentedCustodianOrganization().getId().get(0).getExtension());

		assertEquals(getTs1(), custodian.getAssignedCustodian().getRepresentedCustodianOrganization().getName().xmlContent);

		assertNotNull(custodian.getAssignedCustodian().getRepresentedCustodianOrganization().getAddr());

		testAddress(custodian.getAssignedCustodian().getRepresentedCustodianOrganization().getAddr().getContent(),
				getAddress1().getLine(), getAddress1().getPostalCode(), getAddress1().getCity(), getAddress1().getState(),
				getAddress1().getCountry());
	}
	
	/**
	 * Test method for
	 * {@link arztis.econnector.rest.model.fhir.FhirOrganization#createHl7CdaR2Pocdmt000040Organization()}.
	 * 
	 * @throws ParseException
	 */
	@Test
	public void testCreateHl7CdaR2Pocdmt000040Organization() throws ParseException {
		final POCDMT000040Organization organization = FhirOrganization.createHl7CdaR2Pocdmt000040Organization(testOrganization);

		assertNotNull(organization);
		assertEquals("ORG", organization.getClassCode());
		assertEquals("INSTANCE",
				organization.getDeterminerCode());

		assertNotNull(organization.getId());
		assertNotNull(organization.getId().get(0));
		assertEquals(getNumS1(),
				organization.getId().get(0).getExtension());

		assertNotNull(organization.getName());
		assertEquals(1, organization.getName().size());
		assertEquals(getTs1(), organization.getName().get(0).xmlContent);

		assertNotNull(organization.getAddr());
		assertEquals(1, organization.getAddr().size());
		testAddress(organization.getAddr().get(0).getContent(),
				getAddress1().getLine(), getAddress1().getPostalCode(), getAddress1().getCity(), getAddress1().getState(),
				getAddress1().getCountry());
	}
}
