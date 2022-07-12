/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest.model.fhir;

import java.util.ArrayList;

import org.hl7.fhir.r4.model.Address.AddressUse;
import org.hl7.fhir.r4.model.ContactPoint;
import org.husky.common.enums.NullFlavor;
import org.husky.common.enums.TelecomAddressUse;
import org.husky.common.hl7cdar2.TEL;

import ca.uhn.fhir.model.api.annotation.DatatypeDef;

/**
 * This class is a subclass of {@link ContactPoint}. Therefore it contains
 * details about contact points for persons or organizations. </br>
 *
 *
 * It contains functionalities for converting CDA R2 {@link TEL} into HL7 FHIR
 * {@link ContactPoint} and vice versa.
 *
 * @author Anna Jungwirth
 *
 */
@DatatypeDef(name = "ContactPoint")
public class FhirContactPoint extends ContactPoint {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public FhirContactPoint() {

	}

	/**
	 * create HL7 FHIR contact point from CDA R2 telecom {@link TEL}.
	 *
	 * @param tel telecom element of CDA R2
	 */
	public FhirContactPoint(TEL tel) {
		fromTel(tel);
	}

	/**
	 * create HL7 FHIR contact point from CDA R2 telecom {@link TEL}.
	 *
	 * @param hl7CdaR2Value telecom element of CDA R2
	 */
	private void fromTel(TEL hl7CdaR2Value) {
		if (hl7CdaR2Value != null) {
			String usage = null;

			if (!hl7CdaR2Value.getUse().isEmpty()) {
				usage = hl7CdaR2Value.getUse().get(0);
			}

			if (usage != null) {
				setUse(getContactPointUse(TelecomAddressUse.getEnum(usage)));
			}

			setSystem(getContactPointSystem(hl7CdaR2Value.getValue()));
			setValue(getValueWithoutContactPointSystem(getSystem(), hl7CdaR2Value.getValue()));
		}
	}

	/**
	 * Allocates HL7 FHIR {@link AddressUse} for passed telecom value. The prefix of
	 * passed value is extracted and allocated. In CDA R2 type of contact point is
	 * given as prefix of value like tel:07674/31284. Possible prefixes are
	 * available under <a href=
	 * "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_URLScheme">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_URLScheme</a>
	 * </br>
	 *
	 * <table border="1">
	 * <tr>
	 * <td><b>CDA R2</b></td>
	 * <td><b>HL7 FHIR</b></td>
	 * </tr>
	 * <tr>
	 * <td>fax</td>
	 * <td>fax</td>
	 * </tr>
	 * <tr>
	 * <td>http</td>
	 * <td>url</td>
	 * </tr>
	 * <tr>
	 * <td>mailto</td>
	 * <td>email</td>
	 * </tr>
	 * <tr>
	 * <td>tel</td>
	 * <td>phone</td>
	 * </tr>
	 * </table>
	 *
	 * @param value of contact point like phone number
	 *
	 * @return allocated value or {@link ContactPointSystem.<code>OTHER</code>} if
	 *         no value can be allocated
	 */
	private ContactPointSystem getContactPointSystem(String value) {
		if (value != null && value.contains(":")) {
			String prefix = value.substring(0, value.indexOf(':'));

			if (prefix.contains("fax")) {
				return ContactPointSystem.FAX;
			} else if (prefix.contains("http")) {
				return ContactPointSystem.URL;
			} else if (prefix.contains("mailto")) {
				return ContactPointSystem.EMAIL;
			} else if (prefix.contains("tel")) {
				return ContactPointSystem.PHONE;
			}
		}

		return ContactPointSystem.OTHER;
	}

	/**
	 * Allocates HL7 FHIR {@link ContactPointUse} for passed
	 * {@link TelecomAddressUse}. </br>
	 *
	 * <table border="1">
	 * <tr>
	 * <td><b>CDA R2</b></td>
	 * <td><b>HL7 FHIR</b></td>
	 * </tr>
	 * <tr>
	 * <td>H</td>
	 * <td>home</td>
	 * </tr>
	 * <tr>
	 * <td>WP</td>
	 * <td>work</td>
	 * </tr>
	 * <tr>
	 * <td>TMP</td>
	 * <td>temp</td>
	 * </tr>
	 * <tr>
	 * <td>MC</td>
	 * <td>mobile</td>
	 * </tr>
	 * </table>
	 *
	 * @param use of contact point
	 *
	 * @return allocated value or {@link ContactPointUse.<code>NULL</code>} if no
	 *         value can be allocated
	 */
	private ContactPointUse getContactPointUse(TelecomAddressUse use) {
		switch (use) {
		case PRIVATE:
			return ContactPointUse.HOME;
		case BUSINESS:
			return ContactPointUse.WORK;
		case TEMPORARY:
			return ContactPointUse.TEMP;
		case MOBILE:
			return ContactPointUse.MOBILE;
		default:
			return ContactPointUse.NULL;
		}
	}

	/**
	 * Allocates CDA R2 {@link TelecomAddressUse} for passed
	 * {@link ContactPointUse}. </br>
	 *
	 * <table border="1">
	 * <tr>
	 * <td><b>CDA R2</b></td>
	 * <td><b>HL7 FHIR</b></td>
	 * </tr>
	 * <tr>
	 * <td>H</td>
	 * <td>home</td>
	 * </tr>
	 * <tr>
	 * <td>WP</td>
	 * <td>work</td>
	 * </tr>
	 * <tr>
	 * <td>TMP</td>
	 * <td>temp</td>
	 * </tr>
	 * <tr>
	 * <td>MC</td>
	 * <td>mobile</td>
	 * </tr>
	 * </table>
	 *
	 * @param use of contact point
	 *
	 * @return allocated value or {@link TelecomAddressUse.<code>BAD</code>} if no
	 *         value can be allocated
	 */
	private static TelecomAddressUse getTelecomAddressUse(ContactPointUse use) {
		switch (use) {
		case HOME:
			return TelecomAddressUse.PRIVATE;
		case WORK:
			return TelecomAddressUse.BUSINESS;
		case TEMP:
			return TelecomAddressUse.TEMPORARY;
		case MOBILE:
			return TelecomAddressUse.MOBILE;
		default:
			return TelecomAddressUse.BAD;
		}
	}

	/**
	 * Gets the value without contact point system.
	 *
	 * @param system the system
	 * @param value the value
	 * @return the value without contact point system
	 */
	private static String getValueWithoutContactPointSystem(ContactPointSystem system, String value) {
		if (system != null && value != null) {
			switch (system) {
			case FAX:
				return value.replace("fax:", "");
			case URL:
				return value;
			case EMAIL:
				return value.replace("mailto:", "");
			case PHONE:
				return value.replace("tel:", "");
			default:
				return value;
			}
		}

		return value;
	}

	/**
	 * Adds prefix to passed value according to passed {@link ContactPointSystem}.
	 * In CDA R2 type of contact point is given as prefix of value like
	 * tel:07674/31284. Possible prefixes are available under <a href=
	 * "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_URLScheme">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=ELGA_URLScheme</a>
	 * For example prefix "tel:" is added to value, if {@link ContactPointSystem} is
	 * phone. Following prefixes are added depending on the contact point system </br>
	 *
	 * <table border="1">
	 * <tr>
	 * <td><b>prefixes</b></td>
	 * <td><b>ContactPointSystem</b></td>
	 * </tr>
	 * <tr>
	 * <td>fax:</td>
	 * <td>fax</td>
	 * </tr>
	 * <tr>
	 * <td>http:</td>
	 * <td>url</td>
	 * </tr>
	 * <tr>
	 * <td>mailto:</td>
	 * <td>email</td>
	 * </tr>
	 * <tr>
	 * <td>tel:</td>
	 * <td>phone</td>
	 * </tr>
	 * </table>
	 *
	 * @param system of contact point
	 * @param value of contact point like phone number
	 *
	 * @return concatenated prefix and value
	 */
	private static String getValueWithContactPointSystem(ContactPointSystem system, String value) {
		if (system != null && value != null) {
			switch (system) {
			case FAX:
				return concatenateSystemAndValue("fax:", value);
			case URL:
				return concatenateSystemAndValue("http:", value);
			case EMAIL:
				return concatenateSystemAndValue("mailto:", value);
			case PHONE:
				return concatenateSystemAndValue("tel:", value);
			default:
				return value;
			}
		}

		return value;
	}

	/**
	 * concatenates prefix and value, if the passed value does not contain a prefix.
	 *
	 * @param prefix to concatenate
	 * @param value to concatenate
	 * @return concatenated value
	 */
	private static String concatenateSystemAndValue(String prefix, String value) {
		if (value.contains(prefix)) {
			return value;
		}

		return String.format("%s%s", prefix, value);
	}

	/**
	 * create CDA R2 {@link TEL} from HL7 FHIR {@link ContactPoint}.
	 *
	 * @param contactPoint contact details
	 * @param nf           null flavor, which should be used if contactPoint is null
	 * @return CDA telecom {@link TEL}
	 */
	public static TEL createHl7CdaR2Tel(ContactPoint contactPoint, NullFlavor nf) {
		org.husky.common.hl7cdar2.TEL retVal = new org.husky.common.hl7cdar2.TEL();

		if (contactPoint == null) {
			if (retVal.nullFlavor == null) {
				retVal.nullFlavor = new ArrayList<String>();
			}

			if (nf != null) {
				retVal.nullFlavor.add(nf.getCodeValue());
			}

			return retVal;
		}

		ContactPointUse usage = contactPoint.getUse();
		if (usage != null) {
			retVal.getUse().add(getTelecomAddressUse(usage).getCodeValue());
		}

		String value = getValueWithContactPointSystem(contactPoint.getSystem(), contactPoint.getValue());
		if (value != null) {
			retVal.setValue(value);
		}

		return retVal;

	}
}
