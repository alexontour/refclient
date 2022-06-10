/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest.model.fhir;

import java.util.HashMap;
import java.util.Map;

import javax.xml.bind.JAXBElement;

import org.hl7.fhir.r4.model.Period;
import org.husky.common.hl7cdar2.IVLTS;
import org.husky.common.hl7cdar2.IVXBTS;
import org.husky.common.hl7cdar2.QTY;
import org.husky.common.hl7cdar2.TS;

import arztis.econnector.ihe.utilities.DateUtil;
import ca.uhn.fhir.model.api.annotation.DatatypeDef;

/**
 * This class is a subclass of {@link Period}. Therefore it contains time
 * periods.</br>
 *
 * It contains functionalities for converting CDA R2 {@link IVLTS} into HL7 FHIR
 * {@link Period} and vice versa.
 *
 * @author Anna Jungwirth
 *
 */
@DatatypeDef(name = "Period")
public class FhirPeriod extends Period {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public FhirPeriod() {

	}

	/**
	 * Constructor to create an instance of HL7 FHIR {@link Period} of HL7 CDA R2
	 * {@link IVLTS}.
	 *
	 * @param time HL7 CDA R2 {@link IVLTS}
	 */
	public FhirPeriod(IVLTS time) {
		fromIVLTS(time);
	}

	/**
	 * Extracts start and end time from passed {@link IVLTS}. Therefore values of
	 * elements low and high are extracted.
	 *
	 * @param time to be extracted
	 */
	private void fromIVLTS(IVLTS time) {
		if (time != null) {
			Map<String, String> timeMap = getTsElement(time);
			setStart(DateUtil.parseHl7Timestamp(timeMap.get("low")));
			setEnd(DateUtil.parseHl7Timestamp(timeMap.get("high")));
		}
	}

	/**
	 * extracts all {@link TS} elements of passed {@link IVLTS}. Extracted elements
	 * are stored in a map, where key is element name like "high" and value is
	 * element value.
	 *
	 * @param time to be extracted
	 *
	 * @return map of element name and value
	 */
	private Map<String, String> getTsElement(IVLTS time) {
		Map<String, String> tsElements = new HashMap<>();
		if (time != null) {
			for (JAXBElement<? extends QTY> ts : time.getRest()) {
				String value = "";
				String elementName = "";
				if (ts != null && IVXBTS.class.equals(ts.getDeclaredType()) && ts.getValue() != null) {
					value = ((IVXBTS) ts.getValue()).getValue();
				} else if (ts != null && TS.class.equals(ts.getDeclaredType()) && ts.getValue() != null) {
					value = ((TS) ts.getValue()).getValue();
				}

				if (ts != null && ts.getName() != null) {
					elementName = ts.getName().getLocalPart();
				}

				if (value != null && elementName != null) {
					tsElements.put(elementName, value);
				}
			}
		}

		return tsElements;
	}

}
