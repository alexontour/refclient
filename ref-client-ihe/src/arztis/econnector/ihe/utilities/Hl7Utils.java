package arztis.econnector.ihe.utilities;

import org.apache.commons.lang3.RegExUtils;
import org.hl7.fhir.r4.model.Address;
import org.hl7.fhir.r4.model.HumanName;
import org.hl7.fhir.r4.model.Identifier;
import org.openhealthtools.ihe.common.hl7v2.CX;
import org.openhealthtools.ihe.common.hl7v2.XAD;
import org.openhealthtools.ihe.common.hl7v2.XCN;
import org.openhealthtools.ihe.common.hl7v2.format.HL7V2MessageFormat;
import org.openhealthtools.ihe.common.hl7v2.format.MessageDelimiters;

import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LocalizedStringType;

/**
 * This class contains utility functionalities to extract information from Hl7v2
 * data types.
 *
 * @author Anna Jungwirth
 *
 */
public class Hl7Utils {

	/**
	 * Default constructor.
	 */
	private Hl7Utils() {
		throw new IllegalStateException("Utility class");
	}

	/**
	 * extracts all text fields from {@link InternationalStringType} and concatenate
	 * it to a {@link String}.
	 *
	 * @param ist {@link InternationalStringType} to extract
	 * @return extracted text
	 */
	public static String convertInternationalStringToString(InternationalStringType ist) {
		if (ist != null && (ist.getLocalizedStringArray() != null) && (ist.getLocalizedStringArray().length > 0)) {
			StringBuilder s = new StringBuilder("");
			int arrayLength = ist.getLocalizedStringArray().length;
			for (int i = 0; i < ist.getLocalizedStringArray().length; i++) {
				final LocalizedStringType lst = ist.getLocalizedStringArray(i);
				s.append(lst.getValue());
				if (arrayLength > 1 && arrayLength != i + 1) {
					s.append(System.lineSeparator());
				}
			}
			return s.toString();
		}
		return null;
	}

	/**
	 * extracts {@link Identifier} from passed {@link String} value. Value is Hl7v2 CX
	 * format. This looks like {ID}^^^&amp;{OID}&amp;ISO
	 *
	 * @param value Hl7v2 CX formatted ID
	 *
	 * @return extracted {@link Identifier}
	 */
	public static Identifier extractHl7Cx(String value) {
		CX patientId = HL7V2MessageFormat.buildCXFromMessageString(value, MessageDelimiters.COMPONENT,
				MessageDelimiters.SUBCOMPONENT);
		patientId.setAssigningAuthorityUniversalId(
				RegExUtils.replaceAll(patientId.getAssigningAuthorityUniversalId(), "&amp;|amp;", ""));
		Identifier id = new Identifier();
		id.setSystem(patientId.getAssigningAuthorityUniversalId());
		id.setValue(patientId.getIdNumber());
		return id;
	}

	/**
	 * extracts {@link HumanName} from passed {@link String} value. Value is Hl7v2 XCN
	 * format. This looks like {ID}^{family}^{given}^{further given}^{suffix}^{prefix}^^^{assigning authority}&amp;&amp;ISO
	 *
	 * @param value Hl7v2 XCN formatted name
	 *
	 * @return extracted {@link HumanName}
	 */
	public static HumanName extractHl7Xcn(String value) {
		XCN patientName = HL7V2MessageFormat.buildXCNFromMessageString(value, MessageDelimiters.COMPONENT,
				MessageDelimiters.SUBCOMPONENT);
		HumanName name = new HumanName();
		if (patientName != null) {
			name.addGiven(patientName.getGivenName());
			name.setFamily(patientName.getFamilyName());
			name.addPrefix(patientName.getPrefix());
			name.addSuffix(patientName.getSuffix());
		}

		return name;
	}

	/**
	 * extracts {@link Address} from passed {@link String} value. Value is Hl7v2 XAD
	 * format. This looks like {street address}^{other designation}^{city}^{state or
	 * province}^{postal code}^{country}
	 *
	 * @param value Hl7v2 XAD formatted address
	 *
	 * @return extracted {@link Address}
	 */
	public static Address extractHl7Xad(String value) {
		XAD xad = HL7V2MessageFormat.buildXADFromMessageString(value, MessageDelimiters.COMPONENT);
		Address address = new Address();
		if (xad != null) {
			address.setCity(xad.getCity());
			address.setPostalCode(xad.getZipOrPostalCode());
			address.setCountry(xad.getCountry());
			address.addLine(xad.getStreetAddress());
			address.setState(xad.getStateOrProvince());
		}
		return address;
	}

}
