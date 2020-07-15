/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the Eclipse Public License v1.0.
 * 
 */
package arztis.econnector.rest.model.fhir;

import java.util.HashMap;
import java.util.Map;

import org.hl7.fhir.r4.model.CodeableConcept;
import org.hl7.fhir.r4.model.Coding;
import org.hl7.fhir.r4.model.OperationOutcome;

import arztis.econnector.rest.utilities.FhirUtil;
import ca.uhn.fhir.model.api.annotation.ResourceDef;

/**
 * This class is a subclass of {@link OperationOutcome}. Therefore it contains
 * error, warning or information messages that result from an action.</br>
 *
 * It contains functionalities for mapping ELGA error codes to HL7 FHIR error
 * codes.
 *
 * @author Anna Jungwirth
 *
 */
@ResourceDef(name = "OperationOutcome", profile = "http://hl7.org/fhir/StructureDefinition/OperationOutcome")
public class FhirOperationOutcome extends OperationOutcome {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** The error map. */
	private static Map<String, OperationOutcome> errorMap = new HashMap<>();

	/**
	 * Default constructor.
	 */
	public FhirOperationOutcome() {

	}

	/**
	 * Constructor to create HL7 FHIR {@link OperationOutcome}.
	 *
	 * @param severity              severity of outcome
	 * @param type                  error or warning code
	 * @param outcomeCodes          details about an error
	 * @param additionalInformation additional diagnostic information about the
	 *                              issue
	 */
	public FhirOperationOutcome(IssueSeverity severity, IssueType type,
			org.hl7.fhir.r4.model.codesystems.OperationOutcome outcomeCodes, String additionalInformation) {
		super();
		OperationOutcomeIssueComponent issue = new OperationOutcomeIssueComponent();
		issue.setSeverity(severity);
		issue.setCode(type);
		issue.setDiagnostics(additionalInformation);

		if (outcomeCodes != null) {
			CodeableConcept concept = new CodeableConcept();
			Coding coding = new Coding();
			coding.setCode(outcomeCodes.getDefinition());
			coding.setSystem(outcomeCodes.getSystem());
			coding.setDisplay(outcomeCodes.getDisplay());
			concept.addCoding(coding);
			issue.setDetails(concept);
		}

		addIssue(issue);
	}

	/**
	 * creates JSON of this operation outcome instance like specified in
	 * https://www.hl7.org/fhir/operationoutcome.html
	 *
	 * @return JSON string
	 */
	public String toJson() {
		return FhirUtil.getFhirContext().newJsonParser().encodeResourceToString(this);
	}

	/**
	 * maps ERROR codes of GDA-I search to {@link OperationOutcome} codes.
	 */
	private static void addGdaSearchErrors() {
		// Inhalt der Anfrage fehlerhaft!
		errorMap.put("6001",
				new FhirOperationOutcome(IssueSeverity.ERROR, IssueType.INVALID,
						org.hl7.fhir.r4.model.codesystems.OperationOutcome.MSGUNKNOWNCONTENT,
						"Inhalt der Anfrage fehlerhaft!"));

		// ELGA-GDA nicht gefunden!
		errorMap.put("6002", new FhirOperationOutcome(IssueSeverity.ERROR, IssueType.NOTFOUND,
				org.hl7.fhir.r4.model.codesystems.OperationOutcome.MSGNOMATCH, "ELGA-GDA nicht gefunden!"));

		// Es trat ein allgemeiner Fehler bei der Abfrage auf!
		errorMap.put("6003", new FhirOperationOutcome(IssueSeverity.ERROR, IssueType.EXCEPTION, null,
				"Es trat ein allgemeiner Fehler bei der Abfrage auf!"));

		// Attribut X konnte nicht gefunden werden!
		errorMap.put("6004", new FhirOperationOutcome(IssueSeverity.ERROR, IssueType.NOTFOUND,
				org.hl7.fhir.r4.model.codesystems.OperationOutcome.MSGSORTUNKNOWN, null));

		// Maximale Trefferanzahl überschritten.
		errorMap.put("6005", new FhirOperationOutcome(IssueSeverity.ERROR, IssueType.TOOLONG, null,
				"Maximale Trefferanzahl überschritten."));
	}

	/**
	 * Allocates HL7 FHIR {@link OperationOutcome} for passed code.
	 *
	 * @param code to allocate
	 *
	 * @return allocated value or null if no value can
	 *         be allocated
	 */
	public static OperationOutcome getGdaSearchError(String code) {
		if (errorMap.isEmpty()) {
			addGdaSearchErrors();
		}

		return errorMap.get(code);
	}

}
