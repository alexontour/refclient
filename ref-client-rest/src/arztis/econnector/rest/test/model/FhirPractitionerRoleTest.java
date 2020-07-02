package arztis.econnector.rest.test.model;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.ehealth_connector.cda.at.elga.v2019.cdabuilder.PractitionerAt;
import org.ehealth_connector.cda.at.elga.v2019.enums.ElgaAuthorSpeciality;
import org.ehealth_connector.common.enums.TelecomAddressUse;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Author;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Performer2;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040ResponsibleParty;
import org.ehealth_connector.common.hl7cdar2.ParticipationPhysicalPerformer;
import org.hl7.fhir.r4.model.Address;
import org.hl7.fhir.r4.model.CodeableConcept;
import org.hl7.fhir.r4.model.Coding;
import org.hl7.fhir.r4.model.ContactPoint;
import org.hl7.fhir.r4.model.ContactPoint.ContactPointSystem;
import org.hl7.fhir.r4.model.Device;
import org.hl7.fhir.r4.model.Device.DeviceDeviceNameComponent;
import org.hl7.fhir.r4.model.HumanName;
import org.hl7.fhir.r4.model.Identifier;
import org.hl7.fhir.r4.model.Organization;
import org.hl7.fhir.r4.model.Practitioner;
import org.hl7.fhir.r4.model.PractitionerRole;
import org.hl7.fhir.r4.model.StringType;
import org.junit.Before;
import org.junit.Test;

import arztis.econnector.ihe.tests.TestUtils;
import arztis.econnector.rest.model.fhir.FhirPractitionerRole;

/**
 * Test of {@link PractitionerAt}
 *
 */
public class FhirPractitionerRoleTest extends TestUtils {

	private static final String EXMAMPLE_SYSTEM = "1.2.3.4.5";
	private static final String HOSPITAL_NAME = "Amadeus Spital - Chirurgische Abteilung";
	private static final String MAILTO = "mailto:";
	private static final String ASSIGNED = "ASSIGNED";
	private static final String EXAMPLE_TEL = "tel:+43.6138.3453446.0";
	private static final String EXAMPLE_FAX = "fax:+43.6138.3453446.4674";
	private static final String EXAMPLE_MAILTO = "mailto:info@amadeusspital.at";
	private PractitionerRole testAuthorBodyPs;
	private PractitionerRole testHeaderAuthor;
	private PractitionerRole testPerformerBodyLaboratory;
	private PractitionerRole testResponsibleParty;
	private Device testAtcdabbrHeaderAuthorDevice;

	/**
	 * Method implementing
	 *
	 */
	@Before
	public void setUp() {
		super.init();
		createAuthorBodyPs();
		createHeaderAuthor();
		createPerformerLaboratory();
		createResponsibleParty();
		createAtcdabbrHeaderAuthorDevice();
	}

	private void createAuthorBodyPs() {
		testAuthorBodyPs = getAuthor1();

		List<Identifier> ids = new ArrayList<>();
		Identifier id = new Identifier();
		id.setSystem("1.2.3.999");
		id.setValue("123");
		ids.add(id);
		testAuthorBodyPs.setIdentifier(ids);

		testAuthorBodyPs.getSpecialty().clear();
		testAuthorBodyPs.addSpecialty(createCodeFromEnum(ElgaAuthorSpeciality.FACHARZT_HERZCHIRURGIE.getCode()));

		Practitioner practitioner = new Practitioner();
		practitioner.addAddress(getAddress1());

		testAuthorBodyPs.setTelecom(getTelecoms1());

		practitioner.setName(Arrays.asList(getName1()));
		testAuthorBodyPs.setOrganizationTarget(getOrganization1());
		testAuthorBodyPs.setPractitionerTarget(practitioner);
	}

	private void createHeaderAuthor() {
		testHeaderAuthor = new PractitionerRole();
		CodeableConcept concept = new CodeableConcept();
		Coding code = new Coding();
		code.setCode("OA");
		code.setDisplay("Diensthabender Oberarzt");
		code.setSystem("1.2.40.0.34.99.111.2.1");
		concept.addCoding(code);
		testHeaderAuthor.addCode(concept);
		testHeaderAuthor
				.addSpecialty(createCodeFromEnum(ElgaAuthorSpeciality.FACHARZT_HYGIENE_MIKROBIOLOGIE.getCode()));

		Identifier internalId = new Identifier();
		internalId.setSystem("1.2.40.0.34.99.111.1.3");
		internalId.setValue("1111");
		testHeaderAuthor.setIdentifier(Arrays.asList(internalId));

		ContactPoint telecom = new ContactPoint();
		telecom.setSystem(ContactPointSystem.PHONE);
		telecom.setValue("+43.1.40400");

		ContactPoint telecomMail = new ContactPoint();
		telecomMail.setSystem(ContactPointSystem.EMAIL);
		telecomMail.setValue("herbert.mustermann@organization.at");

		testHeaderAuthor.setTelecom(Arrays.asList(telecom, telecomMail));

		Practitioner practitioner = new Practitioner();
		HumanName name = new HumanName();
		name.addPrefix("Univ.-Prof. Dr.");
		name.addGiven("Isabella");
		name.setFamily("Stern");
		practitioner.setName(Arrays.asList(name));
		testHeaderAuthor.setPractitionerTarget(practitioner);
		testHeaderAuthor.setOrganizationTarget(getOrganization1());
	}

	private void createPerformerLaboratory() {
		testPerformerBodyLaboratory = new PractitionerRole();

		Identifier id = new Identifier();
		id.setSystem(EXMAMPLE_SYSTEM);
		id.setValue("11");
		testPerformerBodyLaboratory.addIdentifier(id);

		Practitioner practitioner = new Practitioner();

		Address address = new Address();
		address.addLine("Wienergasse 12-17");
		address.addLine("4010 Linz");
		address.setState("Oberösterreich");
		address.setCountry("AUT");
		practitioner.setAddress(Arrays.asList(address));

		HumanName name = new HumanName();
		name.setFamily("Grünbach");
		name.addGiven("Angelika");
		practitioner.setName(Arrays.asList(name));

		testPerformerBodyLaboratory.setPractitionerTarget(practitioner);

		Organization organization = new Organization();
		Identifier idOrg = new Identifier();
		idOrg.setSystem("1.2.40.0.34.99.4613.3");
		organization.addIdentifier(idOrg);
		organization.setName(HOSPITAL_NAME);
		organization.addAddress(getAddress1());

		List<ContactPoint> telecomBaseTypes = new ArrayList<>();
		ContactPoint telecomBaseType = new ContactPoint();
		telecomBaseType.setSystem(ContactPointSystem.PHONE);
		telecomBaseType.setValue("+43.6138.3453446.0");
		telecomBaseTypes.add(telecomBaseType);

		telecomBaseType = new ContactPoint();
		telecomBaseType.setSystem(ContactPointSystem.FAX);
		telecomBaseType.setValue("+43.6138.3453446.4674");
		telecomBaseTypes.add(telecomBaseType);

		telecomBaseType = new ContactPoint();
		telecomBaseType.setSystem(ContactPointSystem.EMAIL);
		telecomBaseType.setValue("info@amadeusspital.at");
		telecomBaseTypes.add(telecomBaseType);
		organization.setTelecom(telecomBaseTypes);

		testPerformerBodyLaboratory.setOrganizationTarget(organization);
	}

	private CodeableConcept createCodeFromEnum(org.ehealth_connector.common.mdht.Code mdhtCode) {
		CodeableConcept concept = new CodeableConcept();
		Coding code = new Coding();
		code.setCode(mdhtCode.getCode());
		code.setSystem(mdhtCode.getCodeSystem());
		concept.addCoding(code);
		return concept;
	}

	/**
	 * Test method for
	 * {@link org.ehealth_connector.cda.at.cdabuilder.PractitionerAt#getAuthorBodyPs()}.
	 * 
	 * @throws ParseException
	 */
	@Test
	public void testGetAuthorBodyPs() throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
		String date = "2020-04-14T16:02:12";
		String expectedDate = "20200414160212+0200";

		final POCDMT000040Author authorBodyPs = FhirPractitionerRole.getAtcdabbrHeaderAuthor(sdf.parse(date),
				testAuthorBodyPs);
		testFixedValues(authorBodyPs, expectedDate);

		assertNotNull(authorBodyPs.getAssignedAuthor());
		assertEquals("1.2.3.999", authorBodyPs.getAssignedAuthor().getId().get(0).getRoot());
		assertEquals("123", authorBodyPs.getAssignedAuthor().getId().get(0).getExtension());

		assertNotNull(authorBodyPs.getAssignedAuthor().getCode());
		assertEquals("112", authorBodyPs.getAssignedAuthor().getCode().getCode());
		assertEquals("1.2.40.0.34.5.160", authorBodyPs.getAssignedAuthor().getCode().getCodeSystem());

		assertNotNull(authorBodyPs.getAssignedAuthor().getTelecom());
		assertEquals(6, authorBodyPs.getAssignedAuthor().getTelecom().size());

		assertNotNull(authorBodyPs.getAssignedAuthor().getTelecom().get(0));
		assertNotNull(authorBodyPs.getAssignedAuthor().getTelecom().get(1));
		assertNotNull(authorBodyPs.getAssignedAuthor().getTelecom().get(2));
		assertNotNull(authorBodyPs.getAssignedAuthor().getTelecom().get(3));
		assertNotNull(authorBodyPs.getAssignedAuthor().getTelecom().get(4));
		assertNotNull(authorBodyPs.getAssignedAuthor().getTelecom().get(5));
		assertEquals(MAILTO + getTelS1(), authorBodyPs.getAssignedAuthor().getTelecom().get(0).getValue());
		assertEquals(TelecomAddressUse.BUSINESS.getCodeValue(),
				authorBodyPs.getAssignedAuthor().getTelecom().get(0).getUse().get(0));
		assertEquals(MAILTO + getTelS2(), authorBodyPs.getAssignedAuthor().getTelecom().get(1).getValue());
		assertEquals(TelecomAddressUse.PRIVATE.getCodeValue(),
				authorBodyPs.getAssignedAuthor().getTelecom().get(1).getUse().get(0));
		assertEquals("fax:" + getTelS1(), authorBodyPs.getAssignedAuthor().getTelecom().get(2).getValue());
		assertEquals(TelecomAddressUse.BUSINESS.getCodeValue(),
				authorBodyPs.getAssignedAuthor().getTelecom().get(2).getUse().get(0));
		assertEquals("fax:" + getTelS2(), authorBodyPs.getAssignedAuthor().getTelecom().get(3).getValue());
		assertEquals(TelecomAddressUse.PRIVATE.getCodeValue(),
				authorBodyPs.getAssignedAuthor().getTelecom().get(3).getUse().get(0));
		assertEquals("tel:" + getTelS1(), authorBodyPs.getAssignedAuthor().getTelecom().get(4).getValue());
		assertEquals(TelecomAddressUse.BUSINESS.getCodeValue(),
				authorBodyPs.getAssignedAuthor().getTelecom().get(4).getUse().get(0));
		assertEquals("tel:" + getTelS2(), authorBodyPs.getAssignedAuthor().getTelecom().get(5).getValue());
		assertEquals(TelecomAddressUse.PRIVATE.getCodeValue(),
				authorBodyPs.getAssignedAuthor().getTelecom().get(5).getUse().get(0));

		assertNotNull(authorBodyPs.getAssignedAuthor().getAssignedPerson());
		assertNotNull(authorBodyPs.getAssignedAuthor().getAssignedPerson().getName());
		assertFalse(authorBodyPs.getAssignedAuthor().getAssignedPerson().getName().isEmpty());
		assertNotNull(authorBodyPs.getAssignedAuthor().getAssignedPerson().getName().get(0));

		testName(authorBodyPs.getAssignedAuthor().getAssignedPerson().getName().get(0).getContent(), getName1().getPrefixAsSingleString(),
				getName1().getSuffixAsSingleString(), getName1().getGivenAsSingleString(), getName1().getFamily());

		assertNotNull(authorBodyPs.getAssignedAuthor().getRepresentedOrganization());
		assertNotNull(authorBodyPs.getAssignedAuthor().getRepresentedOrganization().getId());
		assertEquals(getNumS1(),
				authorBodyPs.getAssignedAuthor().getRepresentedOrganization().getId().get(0).getExtension());

		assertNotNull(authorBodyPs.getAssignedAuthor().getRepresentedOrganization().getName());
		assertNotNull(authorBodyPs.getAssignedAuthor().getRepresentedOrganization().getName().get(0));
		assertNotNull(authorBodyPs.getAssignedAuthor().getRepresentedOrganization().getName().get(0).getContent());
		assertEquals(getTs1(), authorBodyPs.getAssignedAuthor().getRepresentedOrganization().getName().get(0).xmlContent);

	}

	/**
	 * Test method for
	 * {@link org.ehealth_connector.cda.at.cdabuilder.PractitionerAt#getAtcdabbrOtherPerformerBodyLaboratory()}.
	 * 
	 * @throws ParseException
	 */
	@Test
	public void testGetAtcdabbrOtherPerformerBodyLaboratory() throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZZZZ");
		String date = "2020-04-14T03:02:12+0200";
		String expectedDate = "20200414030212+0200";

		final POCDMT000040Performer2 laboratoryPerformer = FhirPractitionerRole
				.getAtcdabbrOtherPerformerBodyLaboratory(sdf.parse(date), testPerformerBodyLaboratory);

		assertNotNull(laboratoryPerformer);
		assertEquals(ParticipationPhysicalPerformer.PRF, laboratoryPerformer.getTypeCode());

		assertNotNull(laboratoryPerformer.getTemplateId());
		assertEquals(2, laboratoryPerformer.getTemplateId().size());
		assertTrue("1.2.40.0.34.6.0.11.9.28".equalsIgnoreCase(laboratoryPerformer.getTemplateId().get(0).getRoot())
				|| "1.3.6.1.4.1.19376.1.3.3.1.7"
						.equalsIgnoreCase(laboratoryPerformer.getTemplateId().get(0).getRoot()));

		assertTrue("1.2.40.0.34.6.0.11.9.28".equalsIgnoreCase(laboratoryPerformer.getTemplateId().get(1).getRoot())
				|| "1.3.6.1.4.1.19376.1.3.3.1.7"
						.equalsIgnoreCase(laboratoryPerformer.getTemplateId().get(1).getRoot()));

		assertNotNull(laboratoryPerformer.getTime());
		assertEquals(expectedDate, laboratoryPerformer.getTime().getValue());

		assertNotNull(laboratoryPerformer.getAssignedEntity());
		assertEquals(ASSIGNED, laboratoryPerformer.getAssignedEntity().getClassCode());

		assertNotNull(laboratoryPerformer.getAssignedEntity().getId());
		assertEquals(1, laboratoryPerformer.getAssignedEntity().getId().size());
		assertEquals(EXMAMPLE_SYSTEM, laboratoryPerformer.getAssignedEntity().getId().get(0).getRoot());
		assertEquals("11", laboratoryPerformer.getAssignedEntity().getId().get(0).getExtension());

		assertNotNull(laboratoryPerformer.getAssignedEntity().getCode());
		assertNotNull(laboratoryPerformer.getAssignedEntity().getCode().getNullFlavor());
		assertEquals("UNK", laboratoryPerformer.getAssignedEntity().getCode().getNullFlavor().get(0));

		assertNotNull(laboratoryPerformer.getAssignedEntity().getAddr());
		assertNotNull(laboratoryPerformer.getAssignedEntity().getAddr().get(0));
		assertNotNull(laboratoryPerformer.getAssignedEntity().getAddr().get(0).getContent());
		
		StringType line1 = new StringType("Wienergasse 12-17");
		StringType line2 = new StringType("4010 Linz");
		
		testAddress(laboratoryPerformer.getAssignedEntity().getAddr().get(0).getContent(), Arrays.asList(line1, line2), null, null,
				"Oberösterreich", "AUT");

		assertNotNull(laboratoryPerformer.getAssignedEntity().getTelecom());
		assertEquals(0, laboratoryPerformer.getAssignedEntity().getTelecom().size());

		assertNotNull(laboratoryPerformer.getAssignedEntity().getAssignedPerson());
		assertNotNull(laboratoryPerformer.getAssignedEntity().getAssignedPerson().getName());
		assertNotNull(laboratoryPerformer.getAssignedEntity().getAssignedPerson().getName().get(0));
		testName(laboratoryPerformer.getAssignedEntity().getAssignedPerson().getName().get(0).getContent(), null, null,
				"Angelika", "Grünbach");

		assertNotNull(laboratoryPerformer.getAssignedEntity().getRepresentedOrganization());
		assertEquals("ORG", laboratoryPerformer.getAssignedEntity().getRepresentedOrganization().getClassCode());
		assertEquals("INSTANCE",
				laboratoryPerformer.getAssignedEntity().getRepresentedOrganization().getDeterminerCode());

		assertNotNull(laboratoryPerformer.getAssignedEntity().getRepresentedOrganization().getName());
		assertNotNull(laboratoryPerformer.getAssignedEntity().getRepresentedOrganization().getName().get(0));
		assertEquals(HOSPITAL_NAME,
				laboratoryPerformer.getAssignedEntity().getRepresentedOrganization().getName().get(0).xmlContent);

		assertNotNull(laboratoryPerformer.getAssignedEntity().getRepresentedOrganization().getTelecom());
		assertEquals(3, laboratoryPerformer.getAssignedEntity().getRepresentedOrganization().getTelecom().size());

		assertTrue(EXAMPLE_TEL.equalsIgnoreCase(
				laboratoryPerformer.getAssignedEntity().getRepresentedOrganization().getTelecom().get(0).getValue())
				|| EXAMPLE_FAX.equalsIgnoreCase(laboratoryPerformer.getAssignedEntity()
						.getRepresentedOrganization().getTelecom().get(0).getValue())
				|| EXAMPLE_MAILTO.equalsIgnoreCase(laboratoryPerformer.getAssignedEntity()
						.getRepresentedOrganization().getTelecom().get(0).getValue()));
		assertTrue(EXAMPLE_TEL.equalsIgnoreCase(
				laboratoryPerformer.getAssignedEntity().getRepresentedOrganization().getTelecom().get(1).getValue())
				|| EXAMPLE_FAX.equalsIgnoreCase(laboratoryPerformer.getAssignedEntity()
						.getRepresentedOrganization().getTelecom().get(1).getValue())
				|| EXAMPLE_MAILTO.equalsIgnoreCase(laboratoryPerformer.getAssignedEntity()
						.getRepresentedOrganization().getTelecom().get(1).getValue()));
		assertTrue(EXAMPLE_TEL.equalsIgnoreCase(
				laboratoryPerformer.getAssignedEntity().getRepresentedOrganization().getTelecom().get(2).getValue())
				|| EXAMPLE_FAX.equalsIgnoreCase(laboratoryPerformer.getAssignedEntity()
						.getRepresentedOrganization().getTelecom().get(2).getValue())
				|| EXAMPLE_MAILTO.equalsIgnoreCase(laboratoryPerformer.getAssignedEntity()
						.getRepresentedOrganization().getTelecom().get(2).getValue()));

		assertNotNull(laboratoryPerformer.getAssignedEntity().getRepresentedOrganization().getAddr());
		assertNotNull(laboratoryPerformer.getAssignedEntity().getRepresentedOrganization().getAddr().get(0));
		
		line1 = new StringType("Teststraße 54a");
		testAddress(laboratoryPerformer.getAssignedEntity().getRepresentedOrganization().getAddr().get(0).getContent(),
				Arrays.asList(line1), "1040", "Wien", null, "Austria");
	}

	private void createResponsibleParty() {
		testResponsibleParty = new PractitionerRole();

		testResponsibleParty.setIdentifier(null);

		Practitioner practitioner = new Practitioner();

		List<Address> addresses = new ArrayList<>();
		addresses.add(getAddress1());
		practitioner.setAddress(addresses);
		testResponsibleParty.setTelecom(getTelecoms1());
		practitioner.setName(Arrays.asList(getName1()));
		testResponsibleParty.setOrganizationTarget(getOrganization1());
		testResponsibleParty.setPractitionerTarget(practitioner);
	}

	/**
	 * Test method for
	 * {@link org.ehealth_connector.cda.at.cdabuilder.PractitionerAt#getPOCDMT000040ResponsibleParty()}.
	 * 
	 * @throws ParseException
	 */
	@Test
	public void testGetPOCDMT000040ResponsibleParty() {
		final POCDMT000040ResponsibleParty responsibleParty = FhirPractitionerRole.getPOCDMT000040ResponsibleParty(testResponsibleParty);
		assertNotNull(responsibleParty);
		assertNotNull(responsibleParty.getAssignedEntity());
		assertEquals(ASSIGNED, responsibleParty.getAssignedEntity().getClassCode());

		assertNotNull(responsibleParty.getAssignedEntity().getId());
		assertEquals(1, responsibleParty.getAssignedEntity().getId().size());
		assertNotNull(responsibleParty.getAssignedEntity().getId().get(0).getNullFlavor());
		assertEquals("NI", responsibleParty.getAssignedEntity().getId().get(0).getNullFlavor().get(0));

		assertNotNull(responsibleParty.getAssignedEntity().getTelecom());
		assertEquals(6, responsibleParty.getAssignedEntity().getTelecom().size());

		assertNotNull(responsibleParty.getAssignedEntity().getTelecom().get(0));
		assertNotNull(responsibleParty.getAssignedEntity().getTelecom().get(1));
		assertNotNull(responsibleParty.getAssignedEntity().getTelecom().get(2));
		assertNotNull(responsibleParty.getAssignedEntity().getTelecom().get(3));
		assertNotNull(responsibleParty.getAssignedEntity().getTelecom().get(4));
		assertNotNull(responsibleParty.getAssignedEntity().getTelecom().get(5));
		assertEquals(MAILTO + getTelS1(), responsibleParty.getAssignedEntity().getTelecom().get(0).getValue());
		assertEquals(TelecomAddressUse.BUSINESS.getCodeValue(),
				responsibleParty.getAssignedEntity().getTelecom().get(0).getUse().get(0));
		assertEquals(MAILTO + getTelS2(), responsibleParty.getAssignedEntity().getTelecom().get(1).getValue());
		assertEquals(TelecomAddressUse.PRIVATE.getCodeValue(),
				responsibleParty.getAssignedEntity().getTelecom().get(1).getUse().get(0));
		assertEquals("fax:" + getTelS1(), responsibleParty.getAssignedEntity().getTelecom().get(2).getValue());
		assertEquals(TelecomAddressUse.BUSINESS.getCodeValue(),
				responsibleParty.getAssignedEntity().getTelecom().get(2).getUse().get(0));
		assertEquals("fax:" + getTelS2(), responsibleParty.getAssignedEntity().getTelecom().get(3).getValue());
		assertEquals(TelecomAddressUse.PRIVATE.getCodeValue(),
				responsibleParty.getAssignedEntity().getTelecom().get(3).getUse().get(0));
		assertEquals("tel:" + getTelS1(), responsibleParty.getAssignedEntity().getTelecom().get(4).getValue());
		assertEquals(TelecomAddressUse.BUSINESS.getCodeValue(),
				responsibleParty.getAssignedEntity().getTelecom().get(4).getUse().get(0));
		assertEquals("tel:" + getTelS2(), responsibleParty.getAssignedEntity().getTelecom().get(5).getValue());
		assertEquals(TelecomAddressUse.PRIVATE.getCodeValue(),
				responsibleParty.getAssignedEntity().getTelecom().get(5).getUse().get(0));

		assertNotNull(responsibleParty.getAssignedEntity().getAssignedPerson());
		assertNotNull(responsibleParty.getAssignedEntity().getAssignedPerson().getName());
		assertFalse(responsibleParty.getAssignedEntity().getAssignedPerson().getName().isEmpty());
		assertNotNull(responsibleParty.getAssignedEntity().getAssignedPerson().getName().get(0));

		testName(responsibleParty.getAssignedEntity().getAssignedPerson().getName().get(0).getContent(),
				getName1().getPrefixAsSingleString(), getName1().getSuffixAsSingleString(), getName1().getGivenAsSingleString(),
				getName1().getFamily());

		assertNotNull(responsibleParty.getAssignedEntity().getRepresentedOrganization());
		assertNotNull(responsibleParty.getAssignedEntity().getRepresentedOrganization().getId());
		assertEquals(getNumS1(),
				responsibleParty.getAssignedEntity().getRepresentedOrganization().getId().get(0).getExtension());

		assertNotNull(responsibleParty.getAssignedEntity().getRepresentedOrganization().getName());
		assertNotNull(responsibleParty.getAssignedEntity().getRepresentedOrganization().getName().get(0));
		assertNotNull(responsibleParty.getAssignedEntity().getRepresentedOrganization().getName().get(0).getContent());
		assertEquals(getOrganization1().getName(),
				responsibleParty.getAssignedEntity().getRepresentedOrganization().getName().get(0).xmlContent);

	}

	private void createAtcdabbrHeaderAuthorDevice() {
		testAtcdabbrHeaderAuthorDevice = new Device();
		Identifier deviceId = new Identifier();
		deviceId.setSystem(getTs2());
		testAtcdabbrHeaderAuthorDevice.setIdentifier(Arrays.asList(deviceId));

		DeviceDeviceNameComponent deviceName = new DeviceDeviceNameComponent();
		deviceName.setName("Best Health Software Application");
		testAtcdabbrHeaderAuthorDevice.addDeviceName(deviceName);
		testAtcdabbrHeaderAuthorDevice.setModelNumber("Good Health System");

		Organization organization = new Organization();
		organization.addIdentifier(getId2());
		organization.setName(HOSPITAL_NAME);
		organization.addAddress(getAddress1());

		List<ContactPoint> telecomBaseTypes = new ArrayList<>();
		ContactPoint telecomBaseType = new ContactPoint();
		telecomBaseType.setSystem(ContactPointSystem.PHONE);
		telecomBaseType.setValue("+43.6138.3453446.0");
		telecomBaseTypes.add(telecomBaseType);

		telecomBaseType = new ContactPoint();
		telecomBaseType.setSystem(ContactPointSystem.FAX);
		telecomBaseType.setValue("+43.6138.3453446.4674");
		telecomBaseTypes.add(telecomBaseType);

		telecomBaseType = new ContactPoint();
		telecomBaseType.setSystem(ContactPointSystem.EMAIL);
		telecomBaseType.setValue("info@amadeusspital.at");
		telecomBaseTypes.add(telecomBaseType);
		organization.setTelecom(telecomBaseTypes);

		testAtcdabbrHeaderAuthorDevice.setOwnerTarget(organization);
	}

	private void testFixedValues(POCDMT000040Author author, String time) {
		assertNotNull(author);
		assertNotNull(author.getTypeCode());
		assertNotNull(author.getTypeCode().get(0));
		assertEquals("AUT", author.getTypeCode().get(0));
		assertEquals("OP", author.getContextControlCode());

		assertNotNull(author.getTime());
		assertEquals(time, author.getTime().getValue());

		assertNotNull(author.getAssignedAuthor());
		assertNotNull(author.getAssignedAuthor().getClassCode());
		assertEquals(ASSIGNED, author.getAssignedAuthor().getClassCode());

		assertNotNull(author.getAssignedAuthor().getId());
		assertFalse(author.getAssignedAuthor().getId().isEmpty());
		assertNotNull(author.getAssignedAuthor().getId().get(0));

		assertNotNull(author.getAssignedAuthor().getRepresentedOrganization());
		assertEquals("ORG", author.getAssignedAuthor().getRepresentedOrganization().getClassCode());
		assertEquals("INSTANCE", author.getAssignedAuthor().getRepresentedOrganization().getDeterminerCode());

		assertNotNull(author.getAssignedAuthor().getRepresentedOrganization().getId());
		assertFalse(author.getAssignedAuthor().getRepresentedOrganization().getId().isEmpty());
		assertNotNull(author.getAssignedAuthor().getRepresentedOrganization().getName());
		assertFalse(author.getAssignedAuthor().getRepresentedOrganization().getName().isEmpty());
	}
}