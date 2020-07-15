/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the Eclipse Public License v1.0.
 * 
 */
package arztis.econnector.rest.model.fhir;

import java.util.ArrayList;

import org.ehealth_connector.common.enums.NullFlavor;
import org.ehealth_connector.common.hl7cdar2.II;
import org.hl7.fhir.r4.model.Identifier;

import ca.uhn.fhir.model.api.annotation.DatatypeDef;

/**
 * This class is a subclass of {@link Identifier}.</br>
 *
 * It contains functionalities for converting CDA R2 {@link II} into HL7 FHIR
 * {@link Identifier} and vice versa.
 *
 * @author Anna Jungwirth
 *
 */
@DatatypeDef(name = "Identifier")
public class FhirIdentifier extends Identifier {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public FhirIdentifier() {

	}

	/**
	 * Constructor to create HL7 FHIR identifier from CDA R2 {@link II}.
	 *
	 * @param id of CDA
	 */
	public FhirIdentifier(II id) {
		fromII(id);
	}

	/**
	 * creates HL7 FHIR identifier from CDA R2 {@link II}.
	 *
	 * @param hl7CdaR2Value the hl 7 cda R 2 value
	 */
	private void fromII(II hl7CdaR2Value) {
		if (hl7CdaR2Value != null) {
			setValue(hl7CdaR2Value.getExtension());
			setSystem(hl7CdaR2Value.getRoot());
		}
	}

	/**
	 * creates CDA R2 {@link II} from HL7 FHIR data type {@link Identifier}. If
	 * passed id is null passed null flavor is added.
	 *
	 * @param id to be extracted
	 * @param nf null flavor, which should be used if id is null
	 *
	 * @return created CDA R2 {@link II}
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
