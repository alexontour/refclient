package arztis.econnector.rest.model.fhir;

import java.io.Serializable;
import java.util.ArrayList;

import javax.xml.bind.JAXBElement;
import javax.xml.namespace.QName;

import org.ehealth_connector.common.enums.NullFlavor;
import org.ehealth_connector.common.enums.PostalAddressUse;
import org.ehealth_connector.common.hl7cdar2.AD;
import org.ehealth_connector.common.hl7cdar2.AdxpCity;
import org.ehealth_connector.common.hl7cdar2.AdxpCountry;
import org.ehealth_connector.common.hl7cdar2.AdxpHouseNumber;
import org.ehealth_connector.common.hl7cdar2.AdxpPostalCode;
import org.ehealth_connector.common.hl7cdar2.AdxpState;
import org.ehealth_connector.common.hl7cdar2.AdxpStreetAddressLine;
import org.ehealth_connector.common.hl7cdar2.AdxpStreetName;
import org.hl7.fhir.r4.model.Address;
import org.hl7.fhir.r4.model.StringType;

import arztis.econnector.ihe.utilities.CdaUtil;
import ca.uhn.fhir.model.api.annotation.DatatypeDef;

@DatatypeDef(name = "Address")
public class FhirAddress extends Address {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/** Default constructor */
	public FhirAddress() {

	}

	/**
	 * create fhir address from CDA address {@link AD}
	 * 
	 * @param pn name of CDA
	 */
	public FhirAddress(AD ad) {
		fromAD(ad);
	}

	private void fromAD(AD hl7CdaR2Value) {
		if (hl7CdaR2Value != null) {

			if (!hl7CdaR2Value.getUse().isEmpty()) {
				setUse(getAddressUse(PostalAddressUse.getEnum(hl7CdaR2Value.getUse().get(0))));
			}

			String streetname = null;
			String buildingNumber = null;
			String streetAddressLine1 = null;
			String streetAddressLine2 = null;
			for (Serializable element : hl7CdaR2Value.getContent()) {
				if (element instanceof JAXBElement) {
					JAXBElement<?> elem = (JAXBElement<?>) element;
					if (elem.getValue() instanceof AdxpStreetName) {
						AdxpStreetName obj = (AdxpStreetName) elem.getValue();
						streetname = obj.xmlContent;
					} else if (elem.getValue() instanceof AdxpHouseNumber) {
						AdxpHouseNumber obj = (AdxpHouseNumber) elem.getValue();
						buildingNumber = obj.xmlContent;
					} else if (elem.getValue() instanceof AdxpPostalCode) {
						AdxpPostalCode obj = (AdxpPostalCode) elem.getValue();
						setPostalCode(obj.xmlContent);
					} else if (elem.getValue() instanceof AdxpCity) {
						AdxpCity obj = (AdxpCity) elem.getValue();
						setCity(obj.xmlContent);
					} else if (elem.getValue() instanceof AdxpState) {
						AdxpState obj = (AdxpState) elem.getValue();
						setState(obj.xmlContent);
					} else if (elem.getValue() instanceof AdxpCountry) {
						AdxpCountry obj = (AdxpCountry) elem.getValue();
						setCountry(obj.xmlContent);
					} else if (elem.getValue() instanceof AdxpStreetAddressLine) {
						if (streetAddressLine1 == null) {
							AdxpStreetAddressLine obj = (AdxpStreetAddressLine) elem.getValue();
							streetAddressLine1 = obj.xmlContent;
							addLine(streetAddressLine1);
						} else if (streetAddressLine2 == null) {
							AdxpStreetAddressLine obj = (AdxpStreetAddressLine) elem.getValue();
							streetAddressLine2 = obj.xmlContent;
							addLine(streetAddressLine2);
						}
					}
				}
			}

			if (streetname != null && buildingNumber != null) {
				addLine(String.format("%s %s", streetname, buildingNumber));
			}
		}
	}

	private AddressUse getAddressUse(PostalAddressUse use) {
		switch (use) {
		case HOME_ADDRESS:
			return AddressUse.HOME;
		case WORK_PLACE:
			return AddressUse.WORK;
		case TEMPORARY:
			return AddressUse.TEMP;
		case POSTAL_ADDRESS:
			return AddressUse.BILLING;
		default:
			return AddressUse.NULL;
		}
	}

	private static PostalAddressUse getPostalAddressUse(AddressUse use) {
		switch (use) {
		case HOME:
			return PostalAddressUse.HOME_ADDRESS;
		case WORK:
			return PostalAddressUse.WORK_PLACE;
		case TEMP:
			return PostalAddressUse.TEMPORARY;
		case BILLING:
			return PostalAddressUse.POSTAL_ADDRESS;
		default:
			return PostalAddressUse.BAD_ADDRESS;
		}
	}

	public static AD createHl7CdaR2Ad(Address address, NullFlavor nf) {
		org.ehealth_connector.common.hl7cdar2.AD retVal = new org.ehealth_connector.common.hl7cdar2.AD();

		String value;

		if (address == null) {
			if (retVal.nullFlavor == null) {
				retVal.nullFlavor = new ArrayList<String>();
			}

			if (nf != null) {
				retVal.nullFlavor.add(nf.getCodeValue());
			}

			return retVal;
		}

		value = address.getCity();
		if (value != null) {
			AdxpCity obj = new AdxpCity();
			obj.xmlContent = value;
			retVal.getContent()
					.add(new JAXBElement<AdxpCity>(new QName(CdaUtil.NAMESPACE_HL7_V3, "city"), AdxpCity.class, obj));
		}

		value = address.getCountry();
		if (value != null) {
			AdxpCountry obj = new AdxpCountry();
			obj.xmlContent = value;
			retVal.getContent()
					.add(new JAXBElement<AdxpCountry>(new QName(CdaUtil.NAMESPACE_HL7_V3, "country"), AdxpCountry.class, obj));
		}

		value = address.getPostalCode();
		if (value != null) {
			AdxpPostalCode obj = new AdxpPostalCode();
			obj.xmlContent = value;
			retVal.getContent().add(new JAXBElement<AdxpPostalCode>(new QName(CdaUtil.NAMESPACE_HL7_V3, "postalCode"),
					AdxpPostalCode.class, obj));
		}

		value = address.getState();
		if (value != null) {
			AdxpState obj = new AdxpState();
			obj.xmlContent = value;
			retVal.getContent()
					.add(new JAXBElement<AdxpState>(new QName(CdaUtil.NAMESPACE_HL7_V3, "state"), AdxpState.class, obj));
		}

		if (address.getLine() != null && !address.getLine().isEmpty()) {
			for (StringType line : address.getLine()) {
				if (line != null && line.getValue() != null) {
					AdxpStreetAddressLine obj = new AdxpStreetAddressLine();
					obj.xmlContent = line.getValue();
					retVal.getContent().add(new JAXBElement<AdxpStreetAddressLine>(
							new QName(CdaUtil.NAMESPACE_HL7_V3, "streetAddressLine"), AdxpStreetAddressLine.class, obj));
				}
			}
		}

		AddressUse usage = address.getUse();
		if (usage != null) {
			retVal.getUse().clear();
			retVal.getUse().add(getPostalAddressUse(usage).getCodeValue());
		}

		return retVal;
	}
}
