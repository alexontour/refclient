/*
 * The authorship of this project and accompanying materials is held by medshare GmbH, Switzerland.
 * All rights reserved. https://medshare.net
 *
 * Source code, documentation and other resources have been contributed by various people.
 * Project Team: https://gitlab.com/ehealth-connector/api/wikis/Team/
 * For exact developer information, please refer to the commit history of the forge.
 *
 * This code is made available under the terms of the Eclipse Public License v1.0.
 *
 * Accompanying materials are made available under the terms of the Creative Commons
 * Attribution-ShareAlike 4.0 License.
 *
 * This line is intended for UTF-8 encoding checks, do not modify/delete: äöüéè
 *
 */
package arztis.econnector.ihe.tests;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.xml.bind.JAXBElement;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathFactory;

import org.hl7.fhir.r4.model.Address;
import org.hl7.fhir.r4.model.Address.AddressUse;
import org.hl7.fhir.r4.model.CodeableConcept;
import org.hl7.fhir.r4.model.Coding;
import org.hl7.fhir.r4.model.ContactPoint;
import org.hl7.fhir.r4.model.ContactPoint.ContactPointSystem;
import org.hl7.fhir.r4.model.ContactPoint.ContactPointUse;
import org.hl7.fhir.r4.model.Enumerations.AdministrativeGender;
import org.hl7.fhir.r4.model.HumanName;
import org.hl7.fhir.r4.model.Identifier;
import org.hl7.fhir.r4.model.Organization;
import org.hl7.fhir.r4.model.Patient;
import org.hl7.fhir.r4.model.Practitioner;
import org.hl7.fhir.r4.model.PractitionerRole;
import org.hl7.fhir.r4.model.Reference;
import org.hl7.fhir.r4.model.StringType;
import org.husky.cda.elga.generated.artdecor.enums.EImpfImpfrollenVs;
import org.husky.cda.elga.models.Appendix;
import org.husky.common.at.PractitionerAt;
import org.husky.common.enums.CodeSystems;
import org.husky.common.hl7cdar2.AdxpCity;
import org.husky.common.hl7cdar2.AdxpCountry;
import org.husky.common.hl7cdar2.AdxpPostalCode;
import org.husky.common.hl7cdar2.AdxpState;
import org.husky.common.hl7cdar2.AdxpStreetAddressLine;
import org.husky.common.hl7cdar2.EnFamily;
import org.husky.common.hl7cdar2.EnGiven;
import org.husky.common.hl7cdar2.EnPrefix;
import org.husky.common.hl7cdar2.EnSuffix;
import org.husky.common.hl7cdar2.INT;
import org.husky.common.hl7cdar2.IVLINT;
import org.husky.common.hl7cdar2.IVLPQ;
import org.husky.common.hl7cdar2.IVLTS;
import org.husky.common.hl7cdar2.PQ;
import org.husky.common.hl7cdar2.QTY;
import org.husky.common.hl7cdar2.TS;
import org.husky.common.model.Code;

import arztis.econnector.ihe.utilities.DateUtil;

public class TestUtils {

	public static final int NUMBER_OF_RANDOM_STRING_LETTERS = 129;
	static final Random rng = new Random();

	public static String generateString(int length) {
		final String characters = "abcëÙdÀÿeŒfúgËÛùhijàÊkÇlŸmœ�?çÚnÔÈoæûèp»ÙÈqùôêîïÆrsâÉtéÎuvwèxylïäüìöÄ�?ÒÜÂÖÌ?ßÓ/òó:#\\í�?~*É'é,´Àà";

		final char[] text = new char[length];
		for (int i = 0; i < length; i++) {
			text[i] = characters.charAt(rng.nextInt(characters.length()));
		}
		return new String(text);
	}

	public static boolean isEqual(PractitionerAt a1, PractitionerAt a2) {
		if (a1.getIdentifier() == null || a1.getIdentifier().isEmpty() || a2.getIdentifier() == null
				|| a2.getIdentifier().isEmpty()) {
			return false;
		}
		for (int i = 0; i < a1.getIdentifier().size(); i++) {
			if (!a1.getIdentifier().get(i).equals(a2.getIdentifier().get(i)))
				return false;
		}
		return true;
	}

	public static boolean isEqual(IVLTS time1, String lowTime, String highTime) {
		boolean result = true;
		if (time1 == null) {
			return false;
		}

		for (JAXBElement<? extends QTY> element : time1.getRest()) {
			if (element == null) {
				return false;
			}

			if ("low".equalsIgnoreCase(element.getName().getLocalPart()) && element.getValue() instanceof TS
					&& !((org.husky.common.hl7cdar2.TS) element.getValue()).getValue()
							.equalsIgnoreCase(lowTime)) {
				result = false;
			} else if ("high".equalsIgnoreCase(element.getName().getLocalPart()) && element.getValue() instanceof TS
					&& !((org.husky.common.hl7cdar2.TS) element.getValue()).getValue()
							.equalsIgnoreCase(highTime)) {
				result = false;
			}

		}

		return result;
	}

	public boolean isEqual(IVLPQ ivlpq, String expectedLowValue, String expectedHighValue, String expectedUnit) {
		boolean result = true;
		boolean expectNullFlavor = false;
		if (ivlpq == null) {
			return false;
		}

		if (expectedHighValue == null) {
			expectNullFlavor = true;
		}

		for (JAXBElement<? extends PQ> element : ivlpq.getRest()) {
			if (element == null) {
				return false;
			}

			if ("low".equalsIgnoreCase(element.getName().getLocalPart()) && element.getValue() instanceof PQ
					&& (!(element.getValue()).getValue().equalsIgnoreCase(expectedLowValue)
							|| !(element.getValue()).getUnit().equalsIgnoreCase(expectedUnit))) {
				result = false;
			} else if (!expectNullFlavor && "high".equalsIgnoreCase(element.getName().getLocalPart())
					&& element.getValue() instanceof PQ
					&& !(element.getValue()).getValue().equalsIgnoreCase(expectedHighValue)) {
				result = false;
			} else if (expectNullFlavor && "high".equalsIgnoreCase(element.getName().getLocalPart())
					&& (element.getValue().getNullFlavor().isEmpty())) {
				result = false;
			}
		}

		return result;
	}

	public boolean isEqual(IVLINT ivlint, Integer expectedLowValue, Integer expectedHighValue) {
		boolean result = true;
		boolean expectNullFlavor = false;
		if (ivlint == null || ivlint.getRest() == null) {
			return false;
		}

		if (expectedHighValue == null) {
			expectNullFlavor = true;
		}

		for (JAXBElement<? extends INT> element : ivlint.getRest()) {
			if (element == null) {
				return false;
			}

			if ("low".equalsIgnoreCase(element.getName().getLocalPart()) && element.getValue() instanceof INT
					&& (element.getValue()).getValue().intValue() != expectedLowValue) {
				result = false;
			} else if (!expectNullFlavor && "high".equalsIgnoreCase(element.getName().getLocalPart())
					&& element.getValue() instanceof INT
					&& (element.getValue()).getValue().intValue() != expectedHighValue) {
				result = false;
			} else if (expectNullFlavor && "high".equalsIgnoreCase(element.getName().getLocalPart())
					&& (element.getValue().getNullFlavor() != null && !element.getValue().getNullFlavor().isEmpty())) {
				result = false;
			}
		}

		return result;
	}

	public void testAddress(List<Serializable> list, List<StringType> lines, String postalCode, String city,
			String state, String country) {
		assertNotNull(list);
		for (Serializable element : list) {
			assertNotNull(element);

			if (element instanceof JAXBElement) {
				JAXBElement<?> elem = (JAXBElement<?>) element;
				if (elem.getValue() instanceof AdxpPostalCode) {
					AdxpPostalCode obj = (AdxpPostalCode) elem.getValue();
					assertEquals(postalCode, obj.getMergedXmlMixed());
				} else if (elem.getValue() instanceof AdxpCity) {
					AdxpCity obj = (AdxpCity) elem.getValue();
					assertEquals(city, obj.getMergedXmlMixed());
				} else if (elem.getValue() instanceof AdxpCountry) {
					AdxpCountry obj = (AdxpCountry) elem.getValue();
					assertEquals(country, obj.getMergedXmlMixed());
				} else if (elem.getValue() instanceof AdxpState) {
					AdxpState obj = (AdxpState) elem.getValue();
					assertEquals(state, obj.getMergedXmlMixed());
				} else if (elem.getValue() instanceof AdxpStreetAddressLine) {
					AdxpStreetAddressLine obj = (AdxpStreetAddressLine) elem.getValue();
					assertTrue(lines.get(0).asStringValue().equalsIgnoreCase(obj.getMergedXmlMixed())
							|| lines.get(1).asStringValue().equalsIgnoreCase(obj.getMergedXmlMixed()));
				}
			}
		}
	}

	public void testName(List<Serializable> list, String prefix, String suffix, String givenName, String familyName) {
		assertNotNull(list);
		for (Serializable element : list) {
			assertNotNull(element);

			if (element != null) {
				JAXBElement<?> elem = (JAXBElement<?>) element;
				if (elem.getValue() instanceof EnFamily) {
					EnFamily obj = (EnFamily) elem.getValue();
					assertEquals(familyName, obj.getMergedXmlMixed());
				} else if (elem.getValue() instanceof EnGiven) {
					EnGiven obj = (EnGiven) elem.getValue();
					assertEquals(givenName, obj.getMergedXmlMixed());
				} else if (elem.getValue() instanceof EnPrefix) {
					EnPrefix obj = (EnPrefix) elem.getValue();
					assertEquals(prefix, obj.getMergedXmlMixed());
				} else if (elem.getValue() instanceof EnSuffix) {
					EnSuffix obj = (EnSuffix) elem.getValue();
					assertEquals(suffix, obj.getMergedXmlMixed());
				}
			}
		}
	}

	private Address address1;
	private PractitionerRole author1;

	private PractitionerRole author2;
	private CodeableConcept code1;
	private CodeableConcept code2;
	private Date endDate;
	private String endDateString;
	private CodeableConcept gtinCode;
	private Identifier id1;
	private Identifier id2;
	private CodeableConcept loincCode;
	private HumanName name1;
	private HumanName name2;
	private Double number;
	private String numS1;
	private String numS2;
	private Organization organization1;
	private Patient patient1;
	private Appendix appendix;

	private CodeableConcept problemCode;

	private Date startDate;
	private String startDateString;

	private List<ContactPoint> telecoms1;

	private String telS1;

	private String telS2;

	private String ts1;

	private String ts2;

	private String ts3;

	private String ts4;

	private String ts5;

	protected XPath xpath;

	protected XPathFactory xpathFactory;

	public Address getAddress1() {
		return address1;
	}

	public void setAddress1(Address address1) {
		this.address1 = address1;
	}

	public PractitionerRole getAuthor1() {
		return author1;
	}

	public void setAuthor1(PractitionerRole author1) {
		this.author1 = author1;
	}

	public PractitionerRole getAuthor2() {
		return author2;
	}

	public void setAuthor2(PractitionerRole author2) {
		this.author2 = author2;
	}

	public CodeableConcept getCode1() {
		return code1;
	}

	public void setCode1(CodeableConcept code1) {
		this.code1 = code1;
	}

	public CodeableConcept getCode2() {
		return code2;
	}

	public void setCode2(CodeableConcept code2) {
		this.code2 = code2;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getEndDateString() {
		return endDateString;
	}

	public void setEndDateString(String endDateString) {
		this.endDateString = endDateString;
	}

	public CodeableConcept getGtinCode() {
		return gtinCode;
	}

	public void setGtinCode(CodeableConcept gtinCode) {
		this.gtinCode = gtinCode;
	}

	public Identifier getId1() {
		return id1;
	}

	public void setId1(Identifier id1) {
		this.id1 = id1;
	}

	public Identifier getId2() {
		return id2;
	}

	public void setId2(Identifier id2) {
		this.id2 = id2;
	}

	public CodeableConcept getLoincCode() {
		return loincCode;
	}

	public void setLoincCode(CodeableConcept loincCode) {
		this.loincCode = loincCode;
	}

	public HumanName getName1() {
		return name1;
	}

	public void setName1(HumanName name1) {
		this.name1 = name1;
	}

	public HumanName getName2() {
		return name2;
	}

	public void setName2(HumanName name2) {
		this.name2 = name2;
	}

	public Double getNumber() {
		return number;
	}

	public void setNumber(Double number) {
		this.number = number;
	}

	public String getNumS1() {
		return numS1;
	}

	public void setNumS1(String numS1) {
		this.numS1 = numS1;
	}

	public String getNumS2() {
		return numS2;
	}

	public void setNumS2(String numS2) {
		this.numS2 = numS2;
	}

	public Organization getOrganization1() {
		return organization1;
	}

	public void setOrganization1(Organization organization1) {
		this.organization1 = organization1;
	}

	public Patient getPatient1() {
		return patient1;
	}

	public void setPatient1(Patient patient1) {
		this.patient1 = patient1;
	}

	public Appendix getAppendix() {
		return appendix;
	}

	public void setAppendix(Appendix appendix) {
		this.appendix = appendix;
	}

	public CodeableConcept getProblemCode() {
		return problemCode;
	}

	public void setProblemCode(CodeableConcept problemCode) {
		this.problemCode = problemCode;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public String getStartDateString() {
		return startDateString;
	}

	public void setStartDateString(String startDateString) {
		this.startDateString = startDateString;
	}

	public List<ContactPoint> getTelecoms1() {
		return telecoms1;
	}

	public void setTelecoms1(List<ContactPoint> telecoms1) {
		this.telecoms1 = telecoms1;
	}

	public String getTelS1() {
		return telS1;
	}

	public void setTelS1(String telS1) {
		this.telS1 = telS1;
	}

	public String getTelS2() {
		return telS2;
	}

	public void setTelS2(String telS2) {
		this.telS2 = telS2;
	}

	public String getTs1() {
		return ts1;
	}

	public void setTs1(String ts1) {
		this.ts1 = ts1;
	}

	public String getTs2() {
		return ts2;
	}

	public void setTs2(String ts2) {
		this.ts2 = ts2;
	}

	public String getTs3() {
		return ts3;
	}

	public void setTs3(String ts3) {
		this.ts3 = ts3;
	}

	public String getTs4() {
		return ts4;
	}

	public void setTs4(String ts4) {
		this.ts4 = ts4;
	}

	public String getTs5() {
		return ts5;
	}

	public void setTs5(String ts5) {
		this.ts5 = ts5;
	}

	public TestUtils() {
		xpathFactory = XPathFactory.newInstance();
		xpath = xpathFactory.newXPath();
	}

	public Address createAddress1() {
		final Address address = new Address();
		address.addLine("Teststraße 54a");
		address.setCity("Wien");
		address.setPostalCode("1040");
		address.setCountry("Austria");
		address.setUse(AddressUse.WORK);
		return address;
	}

	public PractitionerRole createAuthor1() {
		final PractitionerRole a = new PractitionerRole();
		Practitioner p = new Practitioner();
		p.addName(createName1());

		Identifier identifier = new Identifier();
		identifier.setValue(numS1);
		a.addIdentifier(identifier);

		p.setAddress(Arrays.asList(createAddress1()));

		a.setTelecom(createTelecoms1());
		a.addCode(createCode1());

		a.setOrganization(new Reference("Organization/2"));

		a.addSpecialty(createCode2());

		a.setPractitioner(new Reference("Practitioner/2"));
		return a;
	}

	public PractitionerRole createAuthor2() {
		final PractitionerRole a = new PractitionerRole();
		Practitioner p = new Practitioner();
		p.setName(Arrays.asList(createName2()));

		Identifier id = new Identifier();
		id.setSystem(numS2);
		a.addIdentifier(id);
		a.setOrganization(new Reference("Organization/2"));
		return a;
	}

	// Create Test Objects
	public CodeableConcept createCode1() {
		final CodeableConcept code = new CodeableConcept();
		Coding coding = new Coding();
		coding.setCode(ts1);
		coding.setSystem(ts2);
		coding.setDisplay(ts4);
		code.addCoding(coding);
		return code;
	}

	public CodeableConcept createCode2() {
		final CodeableConcept code = new CodeableConcept();
		Coding coding = new Coding();
		coding.setCode(ts5);
		coding.setSystem(ts4);
		coding.setDisplay(ts2);
		code.addCoding(coding);
		return code;
	}

	public CodeableConcept createGtinCode() {
		final CodeableConcept code = new CodeableConcept();
		Coding coding = new Coding();
		coding.setCode(ts3);
		coding.setSystem(CodeSystems.GTIN.getCodeSystemId());
		code.addCoding(coding);
		return code;
	}

	public CodeableConcept createLoincCode() {
		final CodeableConcept code = new CodeableConcept();
		Coding coding = new Coding();
		coding.setCode(numS1);
		coding.setSystem("2.16.840.1.113883.6.1");
		code.addCoding(coding);
		return code;
	}

	public CodeableConcept createProblemCode() {
		final CodeableConcept code = new CodeableConcept();
		Coding coding = new Coding();
		coding.setCode(numS2);
		coding.setSystem("2.16.840.1.113883.6.139");
		code.addCoding(coding);
		return code;
	}

	public Identifier createIdentificator1() {
		final Identifier id = new Identifier();
		id.setSystem(CodeSystems.GLN.getCodeSystemId());
		id.setValue(numS1);
		return id;
	}

	public Identifier createIdentificator2() {
		final Identifier id = new Identifier();
		id.setSystem(CodeSystems.ICD10.getCodeSystemId());
		id.setValue(numS2);
		return id;
	}

	public HumanName createName1() {
		final HumanName name = new HumanName();
		name.addPrefix(ts1);
		name.addSuffix(ts2);
		name.addGiven(ts3);
		name.setFamily(ts4);
		return name;
	}

	public HumanName createName2() {
		final HumanName name = new HumanName();
		name.addPrefix(ts5);
		name.addSuffix(ts4);
		name.addGiven(ts3);
		name.setFamily(ts2);
		return name;
	}

	public Organization createOrganization1() {
		final Organization o = new Organization();
		o.setName(ts1);

		Identifier id = new Identifier();
		id.setValue(numS1);
		o.addIdentifier(id);

		List<ContactPoint> telecomList = new ArrayList<>();
		ContactPoint telecom = new ContactPoint();
		telecom.setValue("testMail");
		telecom.setSystem(ContactPointSystem.EMAIL);
		telecom.setUse(ContactPointUse.WORK);
		telecomList.add(telecom);
		ContactPoint telecom1 = new ContactPoint();
		telecom1.setValue(numS1);
		telecom1.setSystem(ContactPointSystem.PHONE);
		telecom1.setUse(ContactPointUse.HOME);
		telecomList.add(telecom1);
		o.setTelecom(telecomList);

		return o;
	}

	public Patient createPatient() {
		Patient patient = new Patient();
		patient.addName(createName1());
		patient.setGender(AdministrativeGender.FEMALE);
		patient.setBirthDate(createStartDate());
		patient.setAddress(Arrays.asList(createAddress1()));
		patient.setTelecom(createTelecoms1());
		return patient;
	}

	public PractitionerRole createPerformer1() {
		final PractitionerRole p = createAuthor1();
		p.getCode().clear();

		Code code = EImpfImpfrollenVs.DIPLOMIERTE_GESUNDHEITS_UND_KRANKENSCHWESTER_DIPLOMIERTER_GESUNDHEITS_UND_KRANKENPFLEGER
				.getCode();

		p.addCode(new CodeableConcept(new Coding(code.getCodeSystem(), code.getCode(), code.getDisplayName())));
		return p;
	}

	public PractitionerRole createPerformer2() {
		final PractitionerRole p = createAuthor2();
		p.getCode().clear();

		Code code = EImpfImpfrollenVs.FACH_RZTIN_FACHARZT.getCode();

		p.addCode(new CodeableConcept(new Coding(code.getCodeSystem(), code.getCode(), code.getDisplayName())));
		return p;
	}

	public Date createStartDate() {
		return DateUtil.parseDateyyyyMMdd("20200406");
	}

	public List<ContactPoint> createTelecoms1() {
		List<ContactPoint> telecoms = new ArrayList<>();

		final ContactPoint t = new ContactPoint();
		t.setValue(telS1);
		t.setSystem(ContactPointSystem.EMAIL);
		t.setUse(ContactPointUse.WORK);
		telecoms.add(t);

		final ContactPoint t1 = new ContactPoint();
		t1.setValue(telS2);
		t1.setSystem(ContactPointSystem.EMAIL);
		t1.setUse(ContactPointUse.HOME);
		telecoms.add(t1);

		final ContactPoint t2 = new ContactPoint();
		t2.setValue(telS1);
		t2.setSystem(ContactPointSystem.FAX);
		t2.setUse(ContactPointUse.WORK);
		telecoms.add(t2);

		final ContactPoint t3 = new ContactPoint();
		t3.setValue(telS2);
		t3.setSystem(ContactPointSystem.FAX);
		t3.setUse(ContactPointUse.HOME);
		telecoms.add(t3);

		final ContactPoint t4 = new ContactPoint();
		t4.setValue(telS1);
		t4.setSystem(ContactPointSystem.PHONE);
		t4.setUse(ContactPointUse.WORK);
		telecoms.add(t4);

		final ContactPoint t5 = new ContactPoint();
		t5.setValue(telS2);
		t5.setSystem(ContactPointSystem.PHONE);
		t5.setUse(ContactPointUse.HOME);
		telecoms.add(t5);

		return telecoms;
	}

	protected Appendix createPdfAttachment() {
		appendix = new Appendix();
		appendix.setMediaType("application/pdf");
		appendix.setDocument(generateString(NUMBER_OF_RANDOM_STRING_LETTERS));
		return appendix;
	}

	public String getTempFilePath(String aFileName) {
		String tmpPath = "";
		if (System.getProperty("java.io.tmpdir") != null) {
			tmpPath = System.getProperty("java.io.tmpdir");
		} else if (System.getenv("TMP") != null) {
			tmpPath = System.getenv("TMP");
		} else if (System.getenv("TEMP") != null) {
			tmpPath = System.getenv("TEMP");
		}
		tmpPath += File.separator + aFileName;
		return tmpPath;
	}

	public void init() {

		// Dates
		startDateString = "28.02.2015";
		endDateString = "28.02.2018";

		startDate = DateUtil.parseDateyyyyMMdd("20190928");
		endDate = DateUtil.parseDateyyyyMMdd("20200221");

		// Test String with German, French and Italic special characters
		ts1 = TestUtils.generateString(NUMBER_OF_RANDOM_STRING_LETTERS);
		ts2 = TestUtils.generateString(NUMBER_OF_RANDOM_STRING_LETTERS);
		ts3 = TestUtils.generateString(NUMBER_OF_RANDOM_STRING_LETTERS);
		ts4 = TestUtils.generateString(NUMBER_OF_RANDOM_STRING_LETTERS);
		ts5 = TestUtils.generateString(NUMBER_OF_RANDOM_STRING_LETTERS);
		numS1 = "1231425352";
		numS2 = "987653";
		number = 121241241.212323;
		telS1 = "+43.32.234.66.77";
		telS2 = "+44.32.234.66.99";

		// Convenience API Types
		code1 = createCode1();
		code2 = createCode2();
		loincCode = createLoincCode();
		problemCode = createProblemCode();
		gtinCode = createGtinCode();
		id1 = createIdentificator1();
		id2 = createIdentificator2();
		telecoms1 = createTelecoms1();
		name1 = createName1();
		name2 = createName2();
		author1 = createAuthor1();
		author2 = createAuthor2();
		organization1 = createOrganization1();
		address1 = createAddress1();

		// Patient
		patient1 = createPatient();

		// Different CDA elements
		appendix = createPdfAttachment();
	}
}
