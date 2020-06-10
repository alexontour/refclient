package arztis.econnector.ihe.tests.utilities;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.ArrayList;
import java.util.List;

import org.hl7.fhir.r4.model.HumanName;
import org.hl7.fhir.r4.model.Identifier;
import org.junit.Assert;
import org.junit.Test;

import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LocalizedStringType;
import arztis.econnector.ihe.model.Hl7Cxi;
import arztis.econnector.ihe.utilities.Hl7Utils;

public class Hl7UtilsTest {

	@Test
	public void testConvertToHl7Cxi() {
		List<String> values = new ArrayList<>();
		values.add(
				"ZZZZZZZZZZZZZZZZZZZ^^^&1.2.40.0.34.99.111.1.1&ISO^urn:elga:iti:xds:2014:ownDocument_setId^&1.2.40.0.34.99.999&ISO");
		values.add("1234^^^&1.2.3.4.5.6.1&ISO^urn:elga:iti:xds:2014:ownDocument_setId^&1.2.40.0.34.99.9&ISO");

		List<Hl7Cxi> actualValues = Hl7Utils.convertToHl7Cxi(values);
		Assert.assertEquals("ZZZZZZZZZZZZZZZZZZZ", actualValues.get(0).getIdentificator().getExtension());
		Assert.assertEquals("1.2.40.0.34.99.111.1.1", actualValues.get(0).getIdentificator().getRoot());
		Assert.assertEquals("1.2.40.0.34.99.999", actualValues.get(0).getHomeCommunityId());

		Assert.assertEquals("1234", actualValues.get(1).getIdentificator().getExtension());
		Assert.assertEquals("1.2.3.4.5.6.1", actualValues.get(1).getIdentificator().getRoot());
		Assert.assertEquals("1.2.40.0.34.99.9", actualValues.get(1).getHomeCommunityId());
	}

	@Test
	public void testConvertInvalidStringValuesToHl7Cxi() {
		List<String> values = new ArrayList<>();
		values.add("^^^&1.2.40.0.34.99.111.1.1&ISO^urn:elga:iti:xds:2014:ownDocument_setId^&1.2.40.0.34.99.999&ISO");
		values.add("1234^^^^^^&&1.2.40.0.34.99.9&ISO");
		values.add("12345^^^&1.2.40.0.34.99.9&ISO^^^^^^^^^^");
		values.add("1234^^^^");
		values.add("");
		values.add(null);

		List<Hl7Cxi> actualValues = Hl7Utils.convertToHl7Cxi(values);
		Assert.assertEquals(2, actualValues.size());

		Assert.assertEquals("", actualValues.get(0).getIdentificator().getExtension());
		Assert.assertEquals("1.2.40.0.34.99.111.1.1", actualValues.get(0).getIdentificator().getRoot());
		Assert.assertEquals("1.2.40.0.34.99.999", actualValues.get(0).getHomeCommunityId());

		Assert.assertEquals("1234", actualValues.get(1).getIdentificator().getExtension());
		Assert.assertEquals("", actualValues.get(1).getIdentificator().getRoot());
		Assert.assertEquals("1.2.40.0.34.99.9", actualValues.get(1).getHomeCommunityId());
	}

	@Test
	public void testConvertInternationalStringToString() {
		InternationalStringType stringType = InternationalStringType.Factory.newInstance();
		stringType.addNewLocalizedString();
		LocalizedStringType string = LocalizedStringType.Factory.newInstance();
		string.setLang("UTF-8");
		string.setValue("asdfg");
		stringType.setLocalizedStringArray(0, string);

		Assert.assertEquals(string.getValue(), Hl7Utils.convertInternationalStringToString(stringType));

		stringType.addNewLocalizedString();
		LocalizedStringType string1 = LocalizedStringType.Factory.newInstance();
		string1.setValue("Medikamente");
		stringType.setLocalizedStringArray(1, string1);

		Assert.assertEquals(string.getValue() + System.lineSeparator() + "Medikamente",
				Hl7Utils.convertInternationalStringToString(stringType));
	}

	@Test
	public void testConvertInvalidInternationalStringToString() {
		InternationalStringType stringType1 = InternationalStringType.Factory.newInstance();
		stringType1.addNewLocalizedString();
		stringType1.setLocalizedStringArray(0, null);

		Assert.assertEquals("null", Hl7Utils.convertInternationalStringToString(stringType1));

		InternationalStringType stringType2 = InternationalStringType.Factory.newInstance();
		Assert.assertEquals(null, Hl7Utils.convertInternationalStringToString(stringType2));

		Assert.assertNull(Hl7Utils.convertInternationalStringToString(null));
	}

	@Test
	public void testExtractHl7Cx() {
		Identifier id = Hl7Utils.extractHl7Cx("123^^^Ordination&1.2.3.4.5");

		assertNotNull(id);
		assertEquals("123", id.getValue());
		assertEquals("1.2.3.4.5", id.getSystem());
	}

	@Test
	public void testExtractHl7Xcn() {
		HumanName name = Hl7Utils.extractHl7Xcn("^Huber^Herbert^^MBA^Dr.");

		assertNotNull(name);
		assertEquals("Herbert", name.getGivenAsSingleString());
		assertEquals("Huber", name.getFamily());
		assertEquals("MBA", name.getSuffixAsSingleString());
		assertEquals("Dr.", name.getPrefixAsSingleString());
	}

	@Test
	public void testExtractHl7Xad() {
		org.hl7.fhir.r4.model.Address address = Hl7Utils.extractHl7Xad("Testgasse 11^^Graz^Steiermark^1050^Austria");

		assertNotNull(address);
		assertEquals("[Testgasse 11]", address.getLine().toString());
		assertEquals("Graz", address.getCity());
		assertEquals("Steiermark", address.getState());
		assertEquals("1050", address.getPostalCode());
		assertEquals("Austria", address.getCountry());
	}
}
