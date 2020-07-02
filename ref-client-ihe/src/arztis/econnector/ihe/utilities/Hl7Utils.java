package arztis.econnector.ihe.utilities;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.RegExUtils;
import org.hl7.fhir.r4.model.Address;
import org.hl7.fhir.r4.model.HumanName;
import org.hl7.fhir.r4.model.Identifier;
import org.openhealthtools.ihe.common.hl7v2.CX;
import org.openhealthtools.ihe.common.hl7v2.XAD;
import org.openhealthtools.ihe.common.hl7v2.XCN;
import org.openhealthtools.ihe.common.hl7v2.format.HL7V2MessageFormat;
import org.openhealthtools.ihe.common.hl7v2.format.MessageDelimiters;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LocalizedStringType;
import arztis.econnector.ihe.model.Hl7Cxi;

public class Hl7Utils {

	private static final Logger LOGGER = LoggerFactory.getLogger(Hl7Utils.class.getName());

	private Hl7Utils() {
		throw new IllegalStateException("Utility class");
	}

	public static List<Hl7Cxi> convertToHl7Cxi(List<String> values) {
		List<Hl7Cxi> referencedIds = new ArrayList<>();

		for (String value : values) {
			if (value != null) {
				String[] elements = value.split("\\^|\\&amp;|\\&");

				if (elements != null && elements.length >= 10) {
					if (LOGGER.isDebugEnabled()) {
						LOGGER.debug("converted string {} to {}, {} and {}", value, elements[0], elements[4],
								elements[8]);
					}

					referencedIds.add(new Hl7Cxi(elements[0], elements[4], elements[8]));
				}
			}
		}

		return referencedIds;
	}

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
