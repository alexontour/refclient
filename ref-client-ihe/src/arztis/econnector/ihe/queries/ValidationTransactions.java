package arztis.econnector.ihe.queries;

import java.io.File;
import java.util.List;

import org.ehealth_connector.common.enums.LanguageCode;
import org.ehealth_connector.validation.service.api.CdaValidator;
import org.ehealth_connector.validation.service.api.ValidationResult;
import org.ehealth_connector.validation.service.config.ConfigurationException;
import org.ehealth_connector.validation.service.schematron.RuleSet;
import org.ehealth_connector.validation.service.schematron.bind.FailedAssert;
import org.ehealth_connector.validation.service.schematron.bind.SuccessfulReport;
import org.ehealth_connector.validation.service.schematron.result.ActivePatternResult;
import org.ehealth_connector.validation.service.schematron.result.FiredRuleResult;
import org.ehealth_connector.validation.service.schematron.result.SchematronValidationResult;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ValidationTransactions {

	private static final Logger LOGGER = LoggerFactory.getLogger(ValidationTransactions.class.getName());
	private static final CdaValidator CDA_VALIDATOR = new CdaValidator();

	private ValidationTransactions() {
		throw new IllegalStateException("Utility class");
	}

	public static String validateCDADocument(boolean validateSchema, boolean validateSchematron, boolean validatePdf,
			byte[] cdaDocument) throws ConfigurationException {

		CDA_VALIDATOR.setConfiguration(
				CdaValidator.configure(new File("resources/cdavalidator_config.xml").getAbsoluteFile()));

		List<RuleSet> ruleSets = CDA_VALIDATOR.getConfiguration().getRuleSetList();

		for (RuleSet set : ruleSets) {
			LOGGER.debug("rule set: {} {} {} {}", set.getPath().getAbsolutePath(), set.getDescription(),
					set.getDisplayName(), set.getId());
		}
		
		System.out.println(new String(cdaDocument));

		ValidationResult result = new ValidationResult();

		if (validateSchema && validateSchematron && validatePdf) {
			result = CDA_VALIDATOR.validate(cdaDocument);
		} else {
			if (validateSchema) {
				result.setXsdValidationResult(CDA_VALIDATOR.validateXsd(cdaDocument));
			}
			if (validateSchematron) {
				result.setSchValidationResult(CDA_VALIDATOR.validateSch(cdaDocument));
			}
			if (validatePdf) {
				result.setPdfValidationResult(CDA_VALIDATOR.validatePdf(cdaDocument));
			}
		}

		return formatValidationResults(result);
	}

	private static String formatValidationResults(ValidationResult result) {
		StringBuilder value = new StringBuilder();

		if (result != null) {
			value.append(formatXsdValidationResult(value, result));
			value.append(formatSchematronValidationResult(value, result));
		}
		return value.toString();
	}

	private static String formatXsdValidationResult(StringBuilder value, ValidationResult result) {
		if (result.isXsdValidationPerformed()) {
			value.append("Schema validation:\n");
			if (result.isXsdValid()) {
				value.append("SUCCESSFUL \n");
			} else {
				value.append("FAILED. Messages: " + result.getXsdValidationResult().getXsdValidationMsg() + "\n");
			}
		}

		return value.toString();
	}

	private static void formatRuleSetResult(StringBuilder value, RuleSet ruleset) {
		if (ruleset != null) {
			String valTemp = "not set";
			if (ruleset.getPath() != null) {
				valTemp = ruleset.getPath().getName();
			}
			value.append("Schematron: " + valTemp + "\n");

			valTemp = "not set";
			if (ruleset.getTemplateId() != null) {
				valTemp = ruleset.getTemplateId();
			}
			value.append("Rule-set template id: " + valTemp + "\n");

			valTemp = "not set";
			if (ruleset.getDisplayName() != null) {
				valTemp = ruleset.getDisplayName();
			}
			value.append("Rule-set name: " + valTemp + "\n");

			valTemp = "not set";
			if (ruleset.getDescription() != null) {
				valTemp = ruleset.getDisplayName();
			}
			value.append("Rule-set description: " + valTemp + "\n");
		}
	}

	private static void formatFailedAssert(StringBuilder value, FiredRuleResult tempFrr) {
		if (tempFrr == null) {
			return;
		}

		for (FailedAssert tempFA : tempFrr.getFailedAssert()) {
			String role = tempFA.getRole();
			if (role == null) {
				role = "";
			}

			if ("".equals(role) || "error".equalsIgnoreCase(role) || "warning".equalsIgnoreCase(role)) {
				String idStr = "";
				if (tempFA.getId() != null) {
					idStr = tempFA.getId();
				}

				value.append("failed-assert: \n");
				value.append("  id:       " + idStr + "\n");
				value.append("  test:     " + tempFA.getTest() + "\n");
				value.append("  role:     " + tempFA.getRole() + "\n");
				value.append("  location: " + tempFA.getLocation() + "\n");
				value.append("  text:     "
						+ ActivePatternResult.getLangText(tempFA.getText(), LanguageCode.ENGLISH, LanguageCode.GERMAN)
						+ "\n");

			}
		}
	}

	private static void formatSuccessfulReport(StringBuilder value, FiredRuleResult tempFrr) {
		if (tempFrr == null) {
			return;
		}

		for (SuccessfulReport tempSR : tempFrr.getSuccessfulReport()) {
			String role = tempSR.getRole();
			if (role == null)
				role = "";
			if ("error".equalsIgnoreCase(role) || "warning".equalsIgnoreCase(role)) {
				String idStr = "";
				if (tempSR.getId() != null)
					idStr = tempSR.getId();
				value.append("successful-report:\n");
				value.append("  id:       " + idStr + "\n");
				value.append("  test:     " + tempSR.getTest() + "\n");
				value.append("  role:     " + tempSR.getRole() + "\n");
				value.append("  location: " + tempSR.getLocation() + "\n");
				value.append("  text:     "
						+ ActivePatternResult.getLangText(tempSR.getText(), LanguageCode.ENGLISH, LanguageCode.GERMAN)
						+ "\n");
			}
		}
	}

	private static String formatSchematronValidationResult(StringBuilder value, ValidationResult result) {
		if (result.isSchValidationPerformed()) {
			value.append("Schematron validation:\n");
			if (result.isSchValid()) {
				value.append("SUCCESSFUL \n");
			} else {
				value.append("FAILED. Messages: ");
				String exMsg = result.getSchValidationResult().getException();
				if (exMsg != null) {
					value.append("Exception: " + exMsg + "\n");
				}

				String valTemp = "not set";
				if (result.getSchValidationResult().getSourceFile() != null) {
					valTemp = result.getSchValidationResult().getSourceFile().getName();
				}
				value.append("Input document: " + valTemp + "\n");

				if (exMsg == null) {
					RuleSet ruleset = result.getSchValidationResult().getRuleSet();
					formatRuleSetResult(value, ruleset);
				}

				if (!result.isSchValid()) {
					value.append("Validation messages:\n");
				}

				SchematronValidationResult schValRes = result.getSchValidationResult();
				for (ActivePatternResult tempAPRes : schValRes.getActivePatternResultFull()) {
					for (FiredRuleResult tempFrr : tempAPRes.getFiredRulesSuccessFailed()) {
						formatFailedAssert(value, tempFrr);
						formatSuccessfulReport(value, tempFrr);
					}
				}
			}
		}

		return value.toString();
	}

}
