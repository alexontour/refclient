/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.ihe.utilities;

import org.apache.commons.lang3.RegExUtils;
import org.hl7.fhir.r4.model.Address;
import org.hl7.fhir.r4.model.HumanName;
import org.hl7.fhir.r4.model.Identifier;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.Hl7v2Based;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.Identifiable;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.Person;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.XpnName;

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
		Identifiable patientId = Hl7v2Based.parse(value, Identifiable.class);
		patientId.getAssigningAuthority().setUniversalId(
				RegExUtils.replaceAll(patientId.getAssigningAuthority().getUniversalId(), "&amp;|amp;", ""));
		Identifier id = new Identifier();
		id.setSystem(patientId.getAssigningAuthority().getUniversalId());
		id.setValue(patientId.getId());
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
		Person patientName = Hl7v2Based.parse(value, Person.class);
		HumanName name = new HumanName();
		if (patientName != null) {
			name.addGiven(patientName.getName().getGivenName());
			name.setFamily(patientName.getName().getFamilyName());
			name.addPrefix(patientName.getName().getPrefix());
			name.addSuffix(patientName.getName().getSuffix());
		}

		return name;
	}

	/**
	 * extracts {@link HumanName} from passed {@link String} value. Value is Hl7v2
	 * XPN format. This looks like {family}^{given}^{further
	 * given}^{suffix}^{prefix}^^^{assigning authority}&amp;&amp;ISO
	 *
	 * @param value Hl7v2 XPN formatted name
	 *
	 * @return extracted {@link HumanName}
	 */
	public static HumanName extractHl7Xpn(String value) {
		XpnName patientName = Hl7v2Based.parse(value, XpnName.class);
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
		org.openehealth.ipf.commons.ihe.xds.core.metadata.Address xad = Hl7v2Based.parse(value,
				org.openehealth.ipf.commons.ihe.xds.core.metadata.Address.class);
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
