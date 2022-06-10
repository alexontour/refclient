/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest.model.fhir;

import java.util.ArrayList;

import org.hl7.fhir.r4.model.Coding;
import org.husky.common.enums.NullFlavor;
import org.husky.common.hl7cdar2.CD;
import org.husky.common.hl7cdar2.CE;
import org.husky.common.hl7cdar2.CS;

import ca.uhn.fhir.model.api.annotation.DatatypeDef;

/**
 * This class is a subclass of {@link Coding}. Therefore it contains
 * reference to a code defined by a terminology or ontology. </br>
 *
 * It contains functionalities for converting CDA R2 {@link CD}, CDA R2
 * {@link CE} and CDA R2 {@link CS} into HL7 FHIR {@link Coding} and
 * vice versa.
 *
 * @author Anna Jungwirth
 *
 */
@DatatypeDef(name="Coding")
public class FhirCoding extends Coding {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public FhirCoding() {

	}

	/**
	 * Constructor to create coding of HL7 CDA R2 CD data type.
	 *
	 * @param cd HL7 CDA R2 data type
	 */
	public FhirCoding(CD cd) {
		fromCD(cd);
	}

	/**
	 * From CD.
	 *
	 * @param hl7CdaR2Value the hl 7 cda R 2 value
	 */
	private void fromCD(org.husky.common.hl7cdar2.CD hl7CdaR2Value) {

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
	public static org.husky.common.hl7cdar2.CD createHl7CdaR2Cd(Coding coding, NullFlavor nf) {
		org.husky.common.hl7cdar2.CD retVal = null;

		if (coding == null && nf != null) {
			retVal = new org.husky.common.hl7cdar2.CD();
			if (retVal.nullFlavor == null)
				retVal.nullFlavor = new ArrayList<String>();
			retVal.nullFlavor.add(nf.getCodeValue());
			return retVal;
		}

		if (coding != null) {
			retVal = new org.husky.common.hl7cdar2.CD();
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
	public static org.husky.common.hl7cdar2.CE createHl7CdaR2Ce(Coding coding, NullFlavor nf) {
		org.husky.common.hl7cdar2.CE retVal = null;

		if (coding == null && nf != null) {
			retVal = new org.husky.common.hl7cdar2.CE();
			if (retVal.nullFlavor == null)
				retVal.nullFlavor = new ArrayList<String>();
			retVal.nullFlavor.add(nf.getCodeValue());
			return retVal;
		}

		if (coding != null) {
			retVal = new org.husky.common.hl7cdar2.CE();
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
	public static org.husky.common.hl7cdar2.CS createHl7CdaR2Cs(Coding coding, NullFlavor nf) {
		org.husky.common.hl7cdar2.CS retVal = null;

		if (coding == null && nf != null) {
			retVal = new org.husky.common.hl7cdar2.CS();
			if (retVal.nullFlavor == null)
				retVal.nullFlavor = new ArrayList<String>();
			retVal.nullFlavor.add(nf.getCodeValue());
			return retVal;
		}

		if (coding != null) {
			retVal = new org.husky.common.hl7cdar2.CS();
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
