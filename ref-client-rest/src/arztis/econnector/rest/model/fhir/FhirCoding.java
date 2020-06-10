package arztis.econnector.rest.model.fhir;

import java.util.ArrayList;

import org.ehealth_connector.common.enums.NullFlavor;
import org.ehealth_connector.common.hl7cdar2.CD;
import org.hl7.fhir.r4.model.Coding;

import ca.uhn.fhir.model.api.annotation.DatatypeDef;

@DatatypeDef(name="Coding")
public class FhirCoding extends Coding {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor
	 */
	public FhirCoding() {
		
	}
	
	/**
	 * Constructor to create coding of HL7 CDA R2 CD data type
	 * 
	 * @param cd HL7 CDA R2 data type
	 */
	public FhirCoding(CD cd) {
		fromCD(cd);
	}

	private void fromCD(org.ehealth_connector.common.hl7cdar2.CD hl7CdaR2Value) {

		if (hl7CdaR2Value != null) {
			setCode(hl7CdaR2Value.getCode());
			setSystem(hl7CdaR2Value.getCodeSystem());
			setVersion(hl7CdaR2Value.getCodeSystemVersion());
			setDisplay(hl7CdaR2Value.getDisplayName());
		}
	}
	
	/**
	 * Creates the HL7 CDA R2 CD data type from HL7 FHIR Coding type.
	 *
	 * @param coding HL7 FHIR coding
	 * @param nf     null flavor, which should be used if coding is null
	 * 
	 * @return the HL7 CDA R2 CD data typed value
	 */
	public static org.ehealth_connector.common.hl7cdar2.CD createHl7CdaR2Cd(Coding coding, NullFlavor nf) {
		org.ehealth_connector.common.hl7cdar2.CD retVal = null;

		if (coding == null && nf != null) {
			retVal = new org.ehealth_connector.common.hl7cdar2.CD();
			if (retVal.nullFlavor == null)
				retVal.nullFlavor = new ArrayList<String>();
			retVal.nullFlavor.add(nf.getCodeValue());
			return retVal;
		}

		if (coding != null) {
			retVal = new org.ehealth_connector.common.hl7cdar2.CD();
			String value = coding.getCode();
			if (value != null) {
				retVal.setCode(value);
			}

			value = coding.getSystem();
			if (value != null) {
				retVal.setCodeSystem(value);
			}

			value = coding.getVersion();
			if (value != null) {
				retVal.setCodeSystemVersion(value);
			}

			value = coding.getDisplay();
			if (value != null) {
				retVal.setDisplayName(value);
			}
		}

		return retVal;
	}

	/**
	 * Creates the HL7 CDA R2 CE data type from HL7 FHIR Coding type.
	 *
	 * @param coding HL7 FHIR coding
	 * @param nf     null flavor, which should be used if coding is null
	 * @return the HL7 CDA R2 CE data typed value
	 */
	public static org.ehealth_connector.common.hl7cdar2.CE createHl7CdaR2Ce(Coding coding, NullFlavor nf) {
		org.ehealth_connector.common.hl7cdar2.CE retVal = null;

		if (coding == null && nf != null) {
			retVal = new org.ehealth_connector.common.hl7cdar2.CE();
			if (retVal.nullFlavor == null)
				retVal.nullFlavor = new ArrayList<String>();
			retVal.nullFlavor.add(nf.getCodeValue());
			return retVal;
		}

		if (coding != null) {
			retVal = new org.ehealth_connector.common.hl7cdar2.CE();
			String value = coding.getCode();
			if (value != null) {
				retVal.setCode(value);
			}

			value = coding.getSystem();
			if (value != null) {
				retVal.setCodeSystem(value);
			}

			value = coding.getVersion();
			if (value != null) {
				retVal.setCodeSystemVersion(value);
			}

			value = coding.getDisplay();
			if (value != null) {
				retVal.setDisplayName(value);
			}
		}

		return retVal;
	}
	
	/**
	 * Creates the HL7 CDA R2 CS data type from HL7 FHIR Coding type.
	 *
	 * @param coding HL7 FHIR coding
	 * @param nf     null flavor, which should be used if coding is null
	 * 
	 * @return the HL7 CDA R2 CS data typed value
	 */
	public static org.ehealth_connector.common.hl7cdar2.CS createHl7CdaR2Cs(Coding coding, NullFlavor nf) {
		org.ehealth_connector.common.hl7cdar2.CS retVal = null;

		if (coding == null && nf != null) {
			retVal = new org.ehealth_connector.common.hl7cdar2.CS();
			if (retVal.nullFlavor == null)
				retVal.nullFlavor = new ArrayList<String>();
			retVal.nullFlavor.add(nf.getCodeValue());
			return retVal;
		}

		if (coding != null) {
			retVal = new org.ehealth_connector.common.hl7cdar2.CS();
			String value = coding.getCode();
			if (value != null) {
				retVal.setCode(value);
			}

			value = coding.getSystem();
			if (value != null) {
				retVal.setCodeSystem(value);
			}

			value = coding.getVersion();
			if (value != null) {
				retVal.setCodeSystemVersion(value);
			}

			value = coding.getDisplay();
			if (value != null) {
				retVal.setDisplayName(value);
			}
		}

		return retVal;
	}
}
