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

@DatatypeDef(name="Range")
public class FhirRange extends Range {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * Default constructor
	 */
	public FhirRange() {
		
	}
	
	public FhirRange(IVLINT ivlint) {
		fromIVLINT(ivlint);
	}
	
	public FhirRange(IVLPQ ivlpq) {
		fromIvlPq(ivlpq);
	}
	
	private void fromIvlPq(IVLPQ ivlpq) {
		if (ivlpq != null) {
			Map<String, PQ> elements = getPqElement(ivlpq);
			setLow(new FhirQuantity(elements.get("low")));
			setHigh(new FhirQuantity(elements.get("high")));
		} 
	}
	
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
	
	private void fromIVLINT(IVLINT ivlint) {
		if (ivlint != null) {
			Map<String, Quantity> timeMap = getIntElement(ivlint);

			setLow(timeMap.get("low"));
			setHigh(timeMap.get("high"));
		}
	}

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
					intElements.put(elementName,  new Quantity(value.intValue()));
				}
			}
		}

		return intElements;
	}

}
