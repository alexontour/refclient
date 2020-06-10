package arztis.econnector.rest.model.fhir;

import java.util.HashMap;
import java.util.Map;

import javax.xml.bind.JAXBElement;

import org.ehealth_connector.common.hl7cdar2.IVLTS;
import org.ehealth_connector.common.hl7cdar2.IVXBTS;
import org.ehealth_connector.common.hl7cdar2.QTY;
import org.ehealth_connector.common.hl7cdar2.TS;
import org.ehealth_connector.common.utils.DateUtil;
import org.hl7.fhir.r4.model.Period;

import ca.uhn.fhir.model.api.annotation.DatatypeDef;

@DatatypeDef(name="Period")
public class FhirPeriod extends Period {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * Default constructor
	 */
	public FhirPeriod() {
		
	}

	/**
	 * Constructor to create an instance of fhir period of HL7 CDA R2 IVL TS
	 * 
	 * @param time HL7 CDA R2 IVL TS
	 */
	public FhirPeriod(IVLTS time) {
		fromIVLTS(time);
	}
	
	private void fromIVLTS(IVLTS time) {
		if (time != null) {
			Map<String, String> timeMap = getTsElement(time);
			setStart(DateUtil.parseHl7Timestamp(timeMap.get("low")));
			setEnd(DateUtil.parseHl7Timestamp(timeMap.get("high")));		
		}
	}

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
