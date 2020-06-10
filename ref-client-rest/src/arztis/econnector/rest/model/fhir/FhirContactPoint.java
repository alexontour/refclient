package arztis.econnector.rest.model.fhir;

import java.util.ArrayList;

import org.ehealth_connector.common.enums.NullFlavor;
import org.ehealth_connector.common.enums.TelecomAddressUse;
import org.ehealth_connector.common.hl7cdar2.TEL;
import org.hl7.fhir.r4.model.ContactPoint;
import org.hl7.fhir.r4.model.Identifier;

import ca.uhn.fhir.model.api.annotation.DatatypeDef;

@DatatypeDef(name = "ContactPoint")
public class FhirContactPoint extends ContactPoint {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor
	 */
	public FhirContactPoint() {

	}

	/**
	 * create fhir contact point from CDA telecom {@link TEL}
	 * 
	 * @param tel tel of CDA
	 */
	public FhirContactPoint(TEL tel) {
		fromTel(tel);
	}

	private void fromTel(TEL hl7CdaR2Value) {
		if (hl7CdaR2Value != null) {
			String usage = null;

			if (hl7CdaR2Value.getUse() != null && !hl7CdaR2Value.getUse().isEmpty()) {
				usage = hl7CdaR2Value.getUse().get(0);
			}

			if (usage != null) {
				setUse(getContactPointUse(TelecomAddressUse.getEnum(usage)));
			}

			setSystem(getContactPointSystem(hl7CdaR2Value.getValue()));
			setValue(getValueWithoutContactPointSystem(getSystem(), hl7CdaR2Value.getValue()));
		}
	}

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

	private static String getValueWithContactPointSystem(ContactPointSystem system, String value) {
		if (system != null) {
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

	private static String concatenateSystemAndValue(String prefix, String value) {
		if (value.contains(prefix)) {
			return value;
		}

		return String.format("%s%s", prefix, value);
	}

	/**
	 * create CDA id from fhir data type id {@link Identifier}
	 * 
	 * @param contactPoint fhir contact details
	 * @param nf           null flavor, which should be used if contactPoint is null
	 * @return CDA telecom
	 */
	public static TEL createHl7CdaR2Tel(ContactPoint contactPoint, NullFlavor nf) {
		org.ehealth_connector.common.hl7cdar2.TEL retVal = new org.ehealth_connector.common.hl7cdar2.TEL();

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
