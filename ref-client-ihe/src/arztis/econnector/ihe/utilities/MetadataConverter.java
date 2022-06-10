/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.ihe.utilities;

import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.openehealth.ipf.commons.ihe.core.HL7DTM;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotType1;
import ca.uhn.hl7v2.model.DataTypeException;

/**
 * This class contains utility functionalities to extract retrieved document
 * metadata information from XML elements.
 *
 * @author Anna Jungwirth
 *
 */
public class MetadataConverter {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(MetadataConverter.class.getName());

	/**
	 * Default constructor.
	 */
	private MetadataConverter() {
		throw new IllegalStateException("utility class");
	}

	/**
	 * extracts {@link ZonedDateTime} from passed {@link SlotType1}. Passed slot in
	 * XML format looks as follows:
	 *
	 * <pre>
	 * {@code
	 *   <ns2:Slot name="creationTime">
	 *       <ns2:ValueList>
	 *           <ns2:Value>202002190425</ns2:Value>
	 *       </ns2:ValueList>
	 *   </ns2:Slot>
	 * }
	 * </pre>
	 *
	 * </br>
	 * Included date can have different formats.
	 *
	 * @param slot XML element from which to extract
	 *
	 * @return extracted {@link ZonedDateTime}
	 */
	public static ZonedDateTime convertDateTime(SlotType1 slot) {
		try {
			String time = getStringFromSlot(slot);
			return HL7DTM.toZonedDateTime(time);
		} catch (DataTypeException ex) {
			LOGGER.error(ex.getMessage(), ex);
		}

		return null;
	}

	/**
	 * extracts {@link String} from passed {@link SlotType1}. The slot can contain
	 * different values, such as date values or identifiers. Passed slot in XML
	 * format looks as follows:
	 *
	 * <pre>
	 * {@code
	 *   <ns2:Slot name="creationTime">
	 *       <ns2:ValueList>
	 *           <ns2:Value>202002190425</ns2:Value>
	 *       </ns2:ValueList>
	 *   </ns2:Slot>
	 * }
	 * </pre>
	 *
	 *
	 * @param slot XML element from which to extract
	 *
	 * @return extracted {@link String}
	 */
	public static String getStringFromSlot(SlotType1 slot) {
		if (slot != null && slot.getValueList() != null && slot.getValueList().sizeOfValueArray() >= 1) {
			return slot.getValueList().getValueArray(0);
		}

		return null;
	}

	/**
	 * extracts list of {@link String} from passed {@link SlotType1}. The slot can
	 * contain more than one different values, such as date values or identifiers.
	 * Passed slot in XML format looks as follows:
	 *
	 * <pre>
	 * {@code
	 *   <ns2:Slot name="sourcePatientInfo">
	 *       <ns2:ValueList>
	 *           <ns2:Value>PID-3|70000^^^&amp;1.2.40.0.34.99.3.2.1046167&amp;ISO</ns2:Value>
	 *           <ns2:Value>PID-3|1002120289^^^&amp;1.2.40.0.10.1.4.3.1&amp;ISO</ns2:Value>
	 *           <ns2:Value>PID-5|Musterpatient^Max^^BSc^Dipl.-Ing.</ns2:Value>
	 *           <ns2:Value>PID-7|19890212</ns2:Value>
	 *           <ns2:Value>PID-8|M</ns2:Value>
	 *           <ns2:Value>PID-11|^^Graz^^8020^AUT</ns2:Value>
	 *       </ns2:ValueList>
	 *   </ns2:Slot>
	 * }
	 * </pre>
	 *
	 *
	 * @param slot XML element from which to extract
	 *
	 * @return extracted list of {@link String}
	 */
	public static List<String> getListOfStringsFromSlot(SlotType1 slot) {
		if (slot != null && slot.getValueList() != null && slot.getValueList().getValueArray() != null) {
			return Arrays.asList(slot.getValueList().getValueArray());
		}
		return new ArrayList<>();
	}
}
