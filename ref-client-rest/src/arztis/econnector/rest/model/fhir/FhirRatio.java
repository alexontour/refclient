package arztis.econnector.rest.model.fhir;

import org.ehealth_connector.common.hl7cdar2.RTO;
import org.ehealth_connector.common.hl7cdar2.RTOPQPQ;
import org.hl7.fhir.r4.model.Ratio;

import ca.uhn.fhir.model.api.annotation.DatatypeDef;

@DatatypeDef(name="Ratio")
public class FhirRatio extends Ratio {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * Default constructor
	 */
	public FhirRatio() {
		
	}
	
	public FhirRatio(RTO rto) {
		fromRTO(rto);
	}
	
	public FhirRatio(RTOPQPQ rto) {
		fromRTOPQPQ(rto);
	}
	
	private void fromRTO(RTO rto) {				
		if (rto != null) {
			setDenominator(new FhirQuantity(rto.getDenominator()));
			setNumerator(new FhirQuantity(rto.getNumerator()));
		}
	}
	
	private void fromRTOPQPQ(RTOPQPQ rto) {
		if (rto != null) {
			setDenominator(new FhirQuantity(rto.getDenominator()));
			setNumerator(new FhirQuantity(rto.getNumerator()));
		}
	}
	
}
