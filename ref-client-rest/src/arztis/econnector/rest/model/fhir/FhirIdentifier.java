package arztis.econnector.rest.model.fhir;

import java.util.ArrayList;

import org.ehealth_connector.common.enums.NullFlavor;
import org.ehealth_connector.common.hl7cdar2.II;
import org.hl7.fhir.r4.model.Identifier;

import ca.uhn.fhir.model.api.annotation.DatatypeDef;

@DatatypeDef(name = "Identifier")
public class FhirIdentifier extends Identifier {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor
	 */
	public FhirIdentifier() {

	}

	/**
	 * create fhir identifier from CDA id {@link II}
	 * 
	 * @param id id of CDA
	 */
	public FhirIdentifier(II id) {
		fromII(id);
	}

	private void fromII(II hl7CdaR2Value) {
		if (hl7CdaR2Value != null) {
			setValue(hl7CdaR2Value.getExtension());
			setSystem(hl7CdaR2Value.getRoot());
		}
	}

	/**
	 * create CDA id from fhir data type id {@link Identifier}
	 * 
	 * @param id fhir ID
	 * @param nf null flavor, which should be used if id is null
	 * @return CDA id
	 */
	public static II createHl7CdaR2Ii(Identifier id, NullFlavor nf) {
		org.ehealth_connector.common.hl7cdar2.II retVal = new org.ehealth_connector.common.hl7cdar2.II();

		if (id == null) {
			if (retVal.nullFlavor == null) {
				retVal.nullFlavor = new ArrayList<String>();
			}

			if (nf != null) {
				retVal.nullFlavor.add(nf.getCodeValue());
			}

			return retVal;
		}

		if (id.hasValue()) {
			retVal.setExtension(id.getValue());
		}

		if (id.hasSystem()) {
			retVal.setRoot(id.getSystem());
		}

		return retVal;
	}
}
