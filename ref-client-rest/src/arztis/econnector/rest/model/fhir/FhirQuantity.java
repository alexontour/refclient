/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest.model.fhir;

import java.util.ArrayList;

import org.ehealth_connector.common.enums.NullFlavor;
import org.ehealth_connector.common.hl7cdar2.INT;
import org.ehealth_connector.common.hl7cdar2.IVLINT;
import org.ehealth_connector.common.hl7cdar2.IVLPQ;
import org.ehealth_connector.common.hl7cdar2.PQ;
import org.ehealth_connector.common.hl7cdar2.QTY;
import org.hl7.fhir.r4.model.Quantity;

import ca.uhn.fhir.model.api.annotation.DatatypeDef;

/**
 * This class is a subclass of {@link Quantity}. Therefore it contains measured
 * amount.</br>
 *
 * It contains functionalities for converting CDA R2 {@link PQ} and CDA R2
 * {@link QTY} into HL7 FHIR {@link Quantity} and vice versa.
 *
 * @author Anna Jungwirth
 *
 */
@DatatypeDef(name = "Quantity")
public class FhirQuantity extends Quantity {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public FhirQuantity() {

	}

	/**
	 * Constructor to create an instance of HL7 FHIR {@link Quantity} of HL7 CDA R2
	 * {@link PQ}.
	 *
	 * @param pq the pq
	 */
	public FhirQuantity(PQ pq) {
		fromPq(pq);
	}

	/**
	 * Constructor to create an instance of HL7 FHIR {@link Quantity} of HL7 CDA R2
	 * {@link QTY}.
	 *
	 * @param qty the qty
	 */
	public FhirQuantity(QTY qty) {
		fromQty(qty);
	}

	/**
	 * Creates an instance of HL7 FHIR {@link Quantity} of HL7 CDA R2 {@link PQ}.
	 * Value and unit are used, whereby the value is always a double.
	 *
	 * @param pq quantity HL7 CDA R2 {@link PQ}
	 */
	private void fromPq(PQ pq) {
		if (pq != null && pq.getValue() != null) {
			setValue(Double.valueOf(pq.getValue()));
			setUnit(pq.getUnit());
		}
	}

	/**
	 * Creates an instance of HL7 FHIR {@link Quantity} of HL7 CDA R2 {@link QTY}.
	 * This method distinguishes between 3 different data types. If passed value is
	 * of data type {@link INT}, only the value is set. If passed value is of data
	 * type {@link IVLINT}, low and high value and the comparator are extracted. If
	 * passed value is of data type {@link PQ}, value and unit are used.
	 *
	 * @param qty measured quantity HL7 CDA R2 {@link QTY}
	 */
	private void fromQty(QTY qty) {
		if (qty instanceof INT) {
			setValue(((INT) qty).getValue().intValue());
		} else if (qty instanceof IVLINT) {
			FhirRange range = new FhirRange((IVLINT) qty);

			if (range.getLow() != null && range.getLow().getValue() != null) {
				setValue(range.getLow().getValue());
				setComparator(range.getLow().getComparator());
			} else if (range.getHigh() != null && range.getHigh().getValue() != null) {
				setValue(range.getHigh().getValue());
				setComparator(range.getLow().getComparator());
			}
		} else if (qty instanceof PQ) {
			fromPq((PQ) qty);
		}
	}

	/**
	 * create CDA R2 {@link IVLPQ} from HL7 FHIR data type {@link Quantity}. If
	 * passed {@link Quantity} is null, null flavor is added.
	 *
	 * @param quantitiy to be extracted
	 * @param nf        null flavor, which should be used if quantity is null
	 *
	 * @return created CDA R2 {@link IVLPQ}
	 */
	public static IVLPQ createHl7CdaR2Ivlpq(Quantity quantitiy, NullFlavor nf) {
		org.ehealth_connector.common.hl7cdar2.IVLPQ retVal = new org.ehealth_connector.common.hl7cdar2.IVLPQ();

		if (quantitiy != null && quantitiy.getUnit() != null) {
			retVal.setValue(String.valueOf(quantitiy.getValue()));
			retVal.setUnit(quantitiy.getUnit());
		} else {
			retVal.nullFlavor = new ArrayList<String>();
			retVal.getNullFlavor().add(nf.getCodeValue());
		}

		return retVal;
	}

}
