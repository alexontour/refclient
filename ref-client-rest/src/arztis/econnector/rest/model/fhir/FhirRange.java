/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest.model.fhir;

import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;

import javax.xml.bind.JAXBElement;

import org.ehealth_connector.common.hl7cdar2.INT;
import org.ehealth_connector.common.hl7cdar2.IVLINT;
import org.ehealth_connector.common.hl7cdar2.IVLPQ;
import org.ehealth_connector.common.hl7cdar2.IVXBPQ;
import org.ehealth_connector.common.hl7cdar2.PQ;
import org.ehealth_connector.common.hl7cdar2.QTY;
import org.hl7.fhir.r4.model.Quantity;
import org.hl7.fhir.r4.model.Range;

import ca.uhn.fhir.model.api.annotation.DatatypeDef;

/**
 * This class is a subclass of {@link Range}. Therefore it contains a low and
 * high value.</br>
 *
 * It contains functionalities for converting CDA R2 {@link IVLPQ} and CDA R2
 * {@link IVLINT} into HL7 FHIR {@link Range} and vice versa.
 *
 * @author Anna Jungwirth
 *
 */
@DatatypeDef(name = "Range")
public class FhirRange extends Range {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public FhirRange() {

	}

	/**
	 * Constructor to create an instance of HL7 FHIR {@link Quantity} of HL7 CDA R2
	 * {@link IVLINT}.
	 *
	 * @param ivlint the ivlint
	 */
	public FhirRange(IVLINT ivlint) {
		fromIVLINT(ivlint);
	}

	/**
	 * Constructor to create an instance of HL7 FHIR {@link Quantity} of HL7 CDA R2
	 * {@link IVLPQ}.
	 *
	 * @param ivlpq the ivlpq
	 */
	public FhirRange(IVLPQ ivlpq) {
		fromIvlPq(ivlpq);
	}

	/**
	 * Extracts low and high quantity from passed {@link IVLPQ}. Therefore values of
	 * elements low and high are extracted.
	 *
	 * @param ivlpq to be extracted
	 */
	private void fromIvlPq(IVLPQ ivlpq) {
		if (ivlpq != null) {
			Map<String, PQ> elements = getPqElement(ivlpq);
			setLow(new FhirQuantity(elements.get("low")));
			setHigh(new FhirQuantity(elements.get("high")));
		}
	}

	/**
	 * extracts all {@link PQ} elements of passed {@link IVLPQ}. Extracted elements
	 * are stored in a map, where key is element name like "high" and value is
	 * extracted {@link PQ}.
	 *
	 * @param range to be extracted
	 *
	 * @return map of element name and value
	 */
	protected Map<String, PQ> getPqElement(IVLPQ range) {
		Map<String, PQ> pqElements = new HashMap<>();
		if (range != null) {
			for (JAXBElement<? extends QTY> pq : range.getRest()) {
				PQ value = new PQ();
				String elementName = "";
				if (pq != null && PQ.class.equals(pq.getDeclaredType()) && pq.getValue() != null) {
					value = (PQ) pq.getValue();
				}

				if (pq != null && IVXBPQ.class.equals(pq.getDeclaredType()) && pq.getValue() != null) {
					value = (IVXBPQ) pq.getValue();
				}

				if (pq != null && pq.getName() != null) {
					elementName = pq.getName().getLocalPart();
				}

				if (value != null && elementName != null) {
					pqElements.put(elementName, value);
				}
			}
		}

		return pqElements;
	}

	/**
	 * Extracts low and high quantity from passed {@link IVLPQ}. Therefore values of
	 * elements low and high are extracted.
	 *
	 * @param ivlint to be extracted
	 */
	private void fromIVLINT(IVLINT ivlint) {
		if (ivlint != null) {
			Map<String, Quantity> timeMap = getIntElement(ivlint);

			setLow(timeMap.get("low"));
			setHigh(timeMap.get("high"));
		}
	}

	/**
	 * extracts all {@link INT} elements of passed {@link IVLINT}. Extracted elements
	 * are stored in a map, where key is element name like "high" and value is
	 * extracted {@link Quantity}.
	 *
	 * @param ivlint to be extracted
	 *
	 * @return map of element name and value
	 */
	private Map<String, Quantity> getIntElement(IVLINT ivlint) {
		Map<String, Quantity> intElements = new HashMap<>();
		if (ivlint != null) {
			for (JAXBElement<? extends INT> intVal : ivlint.getRest()) {
				BigInteger value = null;
				String elementName = "";
				if (intVal != null && INT.class.equals(intVal.getDeclaredType()) && intVal.getValue() != null) {
					value = (intVal.getValue()).getValue();
				}

				if (intVal != null && intVal.getName() != null) {
					elementName = intVal.getName().getLocalPart();
				}

				if (value != null && elementName != null) {
					intElements.put(elementName, new Quantity(value.intValue()));
				}
			}
		}

		return intElements;
	}

}
