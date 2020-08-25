/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.ihe.utilities;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.ehealth_connector.common.utils.DateUtil;

import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotType1;

/**
 * This class contains utility functionalities to extract retrieved document
 * metadata information from XML elements.
 *
 * @author Anna Jungwirth
 *
 */
public class MetadataConverter {

	/**
	 * Default constructor.
	 */
	private MetadataConverter() {
		throw new IllegalStateException("utility class");
	}

	/**
	 * extracts {@link Date} from passed {@link SlotType1}. Passed slot in XML
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
	 * </br>
	 * Included date can have different formats.
	 *
	 * @param slot XML element from which to extract
	 *
	 * @return extracted {@link Date}
	 */
	public static Date convertDateTime(SlotType1 slot) {
		String time = getStringFromSlot(slot);
		return DateUtil.parseHl7Timestamp(time);
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
