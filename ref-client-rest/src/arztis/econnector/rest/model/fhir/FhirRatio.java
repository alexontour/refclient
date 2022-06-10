/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest.model.fhir;

import org.hl7.fhir.r4.model.Ratio;
import org.husky.common.hl7cdar2.RTO;
import org.husky.common.hl7cdar2.RTOPQPQ;

import ca.uhn.fhir.model.api.annotation.DatatypeDef;

/**
 * This class is a subclass of {@link Ratio}. Therefore it contains a numerator
 * and a denominator.</br>
 *
 * It contains functionalities for converting CDA R2 {@link RTO} and CDA R2
 * {@link RTOPQPQ} into HL7 FHIR {@link Ratio} and vice versa.
 *
 * @author Anna Jungwirth
 *
 */
@DatatypeDef(name = "Ratio")
public class FhirRatio extends Ratio {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public FhirRatio() {

	}

	/**
	 * Constructor to create an instance of HL7 FHIR {@link Ratio} of HL7 CDA R2
	 * {@link RTO}.
	 *
	 * @param rto the rto
	 */
	public FhirRatio(RTO rto) {
		fromRTO(rto);
	}

	/**
	 * Constructor to create an instance of HL7 FHIR {@link Ratio} of HL7 CDA R2
	 * {@link RTOPQPQ}.
	 *
	 * @param rto the rto
	 */
	public FhirRatio(RTOPQPQ rto) {
		fromRTOPQPQ(rto);
	}

	/**
	 * Extracts denominator and numerator quantity from passed {@link RTO}.
	 *
	 * @param rto to be extracted
	 */
	private void fromRTO(RTO rto) {
		if (rto != null) {
			setDenominator(new FhirQuantity(rto.getDenominator()));
			setNumerator(new FhirQuantity(rto.getNumerator()));
		}
	}

	/**
	 * Extracts denominator and numerator quantity from passed {@link RTOPQPQ}.
	 *
	 * @param rto to be extracted
	 */
	private void fromRTOPQPQ(RTOPQPQ rto) {
		if (rto != null) {
			setDenominator(new FhirQuantity(rto.getDenominator()));
			setNumerator(new FhirQuantity(rto.getNumerator()));
		}
	}

}
