package arztis.econnector.rest.model.fhir;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrEntryExternalDocument;
import org.ehealth_connector.common.enums.NullFlavor;
import org.ehealth_connector.common.hl7cdar2.CD;
import org.ehealth_connector.common.hl7cdar2.ED;
import org.ehealth_connector.common.hl7cdar2.INT;
import org.hl7.fhir.r4.model.CodeableConcept;

import arztis.econnector.ihe.utilities.CdaUtil;
import ca.uhn.fhir.model.api.annotation.DatatypeDef;

@DatatypeDef(name = "CodeableConcept")
public class FhirCodeableConcept extends CodeableConcept {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor
	 */
	public FhirCodeableConcept() {

	}

	public FhirCodeableConcept(CD cd) {
		fromCD(cd);
	}

	private void fromCD(org.ehealth_connector.common.hl7cdar2.CD hl7CdaR2Value) {

		if (hl7CdaR2Value != null) {
			addCoding(new FhirCoding(hl7CdaR2Value));

			ED ed = hl7CdaR2Value.getOriginalText();
			if (ed != null) {
				setText(ed.xmlContent);
			}

		}
	}

	/**
	 * Creates the HL7 CDA R2 data type from HL7 FHIR Codeable concept type.
	 *
	 * @param codeableConcept  HL7 FHIR data type
	 * @param nf               null flavor, which should be used if codeableConcept
	 *                         is null
	 * @param translationCodes list of translation codes. It is not implemented in
	 *                         HL7 FHIR to added as child like in HL7 CDA R2
	 * 
	 * @return the HL7 CDA R2 CD data typed value
	 */
	public static org.ehealth_connector.common.hl7cdar2.CD createHl7CdaR2Cd(CodeableConcept codeableConcept,
			NullFlavor nf, List<CodeableConcept> translationCodes) {
		org.ehealth_connector.common.hl7cdar2.CD retVal = new org.ehealth_connector.common.hl7cdar2.CD();

		if (codeableConcept == null && nf != null) {
			if (retVal.nullFlavor == null)
				retVal.nullFlavor = new ArrayList<String>();
			retVal.nullFlavor.add(nf.getCodeValue());
			return retVal;
		}

		if (codeableConcept != null && codeableConcept.hasCoding()) {
			retVal = FhirCoding.createHl7CdaR2Cd(codeableConcept.getCodingFirstRep(), null);

			String value = codeableConcept.getText();
			if (value != null) {
				ED ed = new ED();
				ed.xmlContent = value;
				retVal.setOriginalText(ed);
			}
		}

		if (translationCodes != null) {
			for (CodeableConcept item : translationCodes) {
				if (item != null && retVal.getTranslation() != null) {
					retVal.getTranslation().add(FhirCodeableConcept.createHl7CdaR2Cd(item, null, null));
				}
			}
		}

		return retVal;
	}

	/**
	 * Creates the HL7 CDA R2 CE data type from HL7 FHIR Codeable concept type.
	 *
	 * @param codeableConcept  HL7 FHIR data type
	 * @param nf               null flavor, which should be used if codeableConcept
	 *                         is null
	 * @param translationCodes list of translation codes. It is not implemented in
	 *                         HL7 FHIR to added as child like in HL7 CDA R2
	 * 
	 * @return the HL7 CDA R2 CE data typed value
	 */
	public static org.ehealth_connector.common.hl7cdar2.CE createHl7CdaR2Ce(CodeableConcept codeableConcept,
			NullFlavor nf, List<CodeableConcept> translationCodes) {
		org.ehealth_connector.common.hl7cdar2.CE retVal = new org.ehealth_connector.common.hl7cdar2.CE();

		if ((codeableConcept == null || !codeableConcept.hasCoding()) && nf != null) {
			if (retVal.nullFlavor == null) {
				retVal.nullFlavor = new ArrayList<String>();
			}

			retVal.nullFlavor.add(nf.getCodeValue());
			return retVal;
		}

		if (codeableConcept != null && codeableConcept.hasCoding()) {
			retVal = FhirCoding.createHl7CdaR2Ce(codeableConcept.getCodingFirstRep(), null);

			String value = codeableConcept.getText();
			if (value != null) {
				ED ed = new ED();
				ed.xmlContent = value;
				retVal.setOriginalText(ed);
			}
		}

		if (translationCodes != null) {
			for (CodeableConcept item : translationCodes) {
				if (item != null && retVal.getTranslation() != null) {
					retVal.getTranslation().add(FhirCodeableConcept.createHl7CdaR2Cd(item, null, null));
				}
			}
		}

		return retVal;
	}

	/**
	 * Creates the HL7 CDA R2 CE data type from HL7 FHIR Codeable concept type.
	 *
	 * @param codeableConcept  HL7 FHIR data type
	 * @param nf               null flavor, which should be used if codeableConcept
	 *                         is null
	 * @param translationCodes list of translation codes. It is not implemented in
	 *                         HL7 FHIR to added as child like in HL7 CDA R2
	 * 
	 * @return the HL7 CDA R2 CE data typed value
	 */
	public static org.ehealth_connector.common.hl7cdar2.CS createHl7CdaR2Cs(CodeableConcept codeableConcept,
			NullFlavor nf, List<CodeableConcept> translationCodes) {
		org.ehealth_connector.common.hl7cdar2.CS retVal = new org.ehealth_connector.common.hl7cdar2.CS();

		if (codeableConcept == null && nf != null) {
			if (retVal.nullFlavor == null) {
				retVal.nullFlavor = new ArrayList<String>();
			}

			retVal.nullFlavor.add(nf.getCodeValue());
			return retVal;
		}

		if (codeableConcept != null && codeableConcept.hasCoding()) {
			retVal = FhirCoding.createHl7CdaR2Cs(codeableConcept.getCodingFirstRep(), null);

			String value = codeableConcept.getText();
			if (value != null) {
				ED ed = new ED();
				ed.xmlContent = value;
				retVal.setOriginalText(ed);
			}
		}

		if (translationCodes != null) {
			for (CodeableConcept item : translationCodes) {
				if (item != null && retVal.getTranslation() != null) {
					retVal.getTranslation().add(FhirCodeableConcept.createHl7CdaR2Cd(item, null, null));
				}
			}
		}

		return retVal;
	}

	public static AtcdabbrEntryExternalDocument getAtcdabbrEntryExternalDocument(int index,
			CodeableConcept codeableConcept) {
		AtcdabbrEntryExternalDocument externalDoc = new AtcdabbrEntryExternalDocument();

		if (codeableConcept != null) {
			externalDoc.setHl7Code(FhirCodeableConcept.createHl7CdaR2Cd(codeableConcept, null, null));

			INT versionInt = new INT();
			versionInt.setValue(BigInteger.valueOf(Long.valueOf(codeableConcept.getCodingFirstRep().getVersion())));
			externalDoc.setHl7VersionNumber(versionInt);
		}

		externalDoc.setText(CdaUtil.createReference("#external-doc-" + index));

		return externalDoc;
	}
}
