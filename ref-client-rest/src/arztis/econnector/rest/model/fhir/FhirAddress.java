/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 * 
 */
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

/**
 * This class is a subclass of {@link Address}. Therefore it expresses postal
 * address. </br>
 * It contains functionalities for converting CDA R2 {@link AD} into HL7 FHIR
 * {@link Address} and vice versa.
 *
 * @author Anna Jungwirth
 *
 */
@DatatypeDef(name = "Address")
public class FhirAddress extends Address {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/**
	 *  Default constructor.
	 */
	public FhirAddress() {

	}

	/**
	 * creates HL7 FHIR address from CDA address {@link AD}.
	 *
	 * @param ad address element of CDA
	 */
	public FhirAddress(AD ad) {
		fromAD(ad);
	}

	/**
	 * create HL7 FHIR address from CDA address {@link AD}. </br>
	 * Every element is added to FHIR resource. Street name, house number and street
	 * address lines of {@link AD} are added as line to HL7 FHIR address. Street
	 * name and house number are concatenated to one line.
	 *
	 * @param hl7CdaR2Value address element of CDA
	 */
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

	/**
	 * Allocates HL7 FHIR {@link AddressUse} for passed CDA R2 postal address use.
	 * </br>
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
	 * <td>PST</td>
	 * <td>billing</td>
	 * </tr>
	 * </table>
	 *
	 * @param use of address
	 *
	 * @return allocated value or {@link AddressUse.<code>null</code>} if no value
	 *         can be allocated
	 */
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

	/**
	 * Allocates CDA R2 postal address use for passed HL7 FHIR {@link AddressUse}.
	 * </br>
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
	 * <td>PST</td>
	 * <td>billing</td>
	 * </tr>
	 * </table>
	 *
	 * @param use of address
	 *
	 * @return allocated value or
	 *         {@link PostalAddressUse.<code>PHYSICAL_VISIT_ADDRESS</code>} (PHYS)
	 *         if no value can be allocated
	 */
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
			return PostalAddressUse.PHYSICAL_VISIT_ADDRESS;
		}
	}

	/**
	 * create CDA R2 address {@link AD} from HL7 FHIR address. </br>
	 * Every element of FHIR resource is added to {@link AD}. HL7 FHIR address lines
	 * are added as {@link AdxpStreetAddressLine}. If passed address null flavor is
	 * added.
	 *
	 * @param address resource to be extracted
	 * @param nf      null flavor, which should be added if passed address is null
	 *
	 * @return created {@link AD}
	 */
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
			retVal.getContent().add(new JAXBElement<AdxpCountry>(new QName(CdaUtil.NAMESPACE_HL7_V3, "country"),
					AdxpCountry.class, obj));
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
			retVal.getContent().add(
					new JAXBElement<AdxpState>(new QName(CdaUtil.NAMESPACE_HL7_V3, "state"), AdxpState.class, obj));
		}

		if (address.getLine() != null && !address.getLine().isEmpty()) {
			for (StringType line : address.getLine()) {
				if (line != null && line.getValue() != null) {
					AdxpStreetAddressLine obj = new AdxpStreetAddressLine();
					obj.xmlContent = line.getValue();
					retVal.getContent()
							.add(new JAXBElement<AdxpStreetAddressLine>(
									new QName(CdaUtil.NAMESPACE_HL7_V3, "streetAddressLine"),
									AdxpStreetAddressLine.class, obj));
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
