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

@DatatypeDef(name = "Quantity")
public class FhirQuantity extends Quantity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor
	 */
	public FhirQuantity() {

	}

	public FhirQuantity(PQ pq) {
		fromPq(pq);
	}

	public FhirQuantity(QTY qty) {
		fromQty(qty);
	}

	private void fromPq(PQ pq) {
		if (pq != null && pq.getValue() != null) {
			setValue(Double.valueOf(pq.getValue()));
			setUnit(pq.getUnit());
		}
	}

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
	 * create CDA IVL_PQ from fhir data type quantity {@link Quantity}
	 * 
	 * @param quantitiy fhir quantitiy
	 * @param nf        null flavor, which should be used if quantitiy is null
	 * @return CDA IVL_PQ
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
