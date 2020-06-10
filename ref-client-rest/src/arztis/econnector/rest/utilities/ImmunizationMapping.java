package arztis.econnector.rest.utilities;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.HashMap;
import java.util.Map;

import org.ehealth_connector.common.Code;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.rest.model.eimpf.Vaccine;

public class ImmunizationMapping {

	private static final Logger LOGGER = LoggerFactory.getLogger(ImmunizationMapping.class.getName());
	private static final String CODE = "'code'";
	private static final String CODE_SYSTEM = "'codeSystem'";
	private static final String DISPLAY_NAME = "'displayName'";
	private static final String NAME_APPROVAL = "'Bezeichnung_Arzneispezialitaet_Zulassung'";
	private static final String SHORT_NAME = "'Bezeichnung_Arzneispezialitaet_Kurzname'";
	private static final String APPROVAL_NO = "'ZulassungsNummer'";
	private static final String SIZE = "'GroesseGewicht'";
	private static final String DOSAGE_FORM_CODE = "'ELGA_MedikationArtAnwendung_01_code'";
	private static final String DOSAGE_FORM_TEXT = "'ELGA_MedikationArtAnwendung_01_text'";
	private static final String QUANTITY_TYPE_CODE = "'ELGA_MedikationMengenart_code'";
	private static final String QUANTITY_TYPE_TEXT = "'ELGA_MedikationMengenart_text'";
	private static final String IMMUNIZATION_INDICATION_01_CODE = "'ELGA_ImpfungIndikation_01_code'";
	private static final String IMMUNIZATION_INDICATION_01_TEXT = "'ELGA_ImpfungIndikation_01_text'";
	private static final String IMMUNIZATION_INDICATION_02_CODE = "'ELGA_ImpfungIndikation_02_code'";
	private static final String IMMUNIZATION_INDICATION_02_TEXT = "'ELGA_ImpfungIndikation_02_text'";
	private static final String IMMUNIZATION_INDICATION_03_CODE = "'ELGA_ImpfungIndikation_03_code'";
	private static final String IMMUNIZATION_INDICATION_03_TEXT = "'ELGA_ImpfungIndikation_03_text'";
	private static final String IMMUNIZATION_INDICATION_04_CODE = "'ELGA_ImpfungIndikation_04_code'";
	private static final String IMMUNIZATION_INDICATION_04_TEXT = "'ELGA_ImpfungIndikation_04_text'";
	private static final String IMMUNIZATION_INDICATION_05_CODE = "'ELGA_ImpfungIndikation_05_code'";
	private static final String IMMUNIZATION_INDICATION_05_TEXT = "'ELGA_ImpfungIndikation_05_text'";
	private static final String IMMUNIZATION_INDICATION_06_CODE = "'ELGA_ImpfungIndikation_06_code'";
	private static final String IMMUNIZATION_INDICATION_06_TEXT = "'ELGA_ImpfungIndikation_06_text'";

	private static final String ATC_CODE = "'ELGA_whoATC_01_code'";
	private static final String ATC_TEXT = "'ELGA_whoATC_01_text'";
	private static final String APPLICATION_TYPE_CODE = "'ELGA_MedikationArtAnwendung_01_code'";
	private static final String APPLICATION_TYPE_TEXT = "'ELGA_MedikationArtAnwendung_01_text'";
	private static final String SUBSTANCE_01_CODE = "'ELGA_Substanz_01_code'";
	private static final String SUBSTANCE_01_TEXT = "'ELGA_Substanz_01_text'";
	private static final String SUBSTANCE_02_CODE = "'ELGA_Substanz_02_code'";
	private static final String SUBSTANCE_02_TEXT = "'ELGA_Substanz_02_text'";
	private static final String SUBSTANCE_03_CODE = "'ELGA_Substanz_03_code'";
	private static final String SUBSTANCE_03_TEXT = "'ELGA_Substanz_03_text'";
	private static final String SUBSTANCE_04_CODE = "'ELGA_Substanz_04_code'";
	private static final String SUBSTANCE_04_TEXT = "'ELGA_Substanz_04_text'";
	private static final String SUBSTANCE_05_CODE = "'ELGA_Substanz_05_code'";
	private static final String SUBSTANCE_05_TEXT = "'ELGA_Substanz_05_text'";
	private static final String SUBSTANCE_06_CODE = "'ELGA_Substanz_06_code'";
	private static final String SUBSTANCE_06_TEXT = "'ELGA_Substanz_06_text'";
	private static final String SUBSTANCE_07_CODE = "'ELGA_Substanz_07_code'";
	private static final String SUBSTANCE_07_TEXT = "'ELGA_Substanz_07_text'";
	private static final String SUBSTANCE_08_CODE = "'ELGA_Substanz_08_code'";
	private static final String SUBSTANCE_08_TEXT = "'ELGA_Substanz_08_text'";
	private static final String SUBSTANCE_09_CODE = "'ELGA_Substanz_09_code'";
	private static final String SUBSTANCE_09_TEXT = "'ELGA_Substanz_09_text'";

	private Map<String, Vaccine> vaccineMap;
	private int codeIndex = 0;
	private int codeSystem = 0;
	private int displayName = 0;
	private int approvalName = 0;
	private int shortName = 0;
	private int approvalNo = 0;
	private int sizeIndex = 0;
	private int dosageFormCode = 0;
	private int dosageFormText = 0;
	private int immunizationIndicationCode1 = 0;
	private int immunizationIndicationText1 = 0;
	private int immunizationIndicationCode2 = 0;
	private int immunizationIndicationText2 = 0;
	private int immunizationIndicationCode3 = 0;
	private int immunizationIndicationText3 = 0;
	private int immunizationIndicationCode4 = 0;
	private int immunizationIndicationText4 = 0;
	private int immunizationIndicationCode5 = 0;
	private int immunizationIndicationText5 = 0;
	private int immunizationIndicationCode6 = 0;
	private int immunizationIndicationText6 = 0;
	private int atcCode = 0;
	private int atcText = 0;
	private int applicationTypeCode = 0;
	private int applicationTypeText = 0;
	private int substanceCode1 = 0;
	private int substanceText1 = 0;
	private int substanceCode2 = 0;
	private int substanceText2 = 0;
	private int substanceCode3 = 0;
	private int substanceText3 = 0;
	private int substanceCode4 = 0;
	private int substanceText4 = 0;
	private int substanceCode5 = 0;
	private int substanceText5 = 0;
	private int substanceCode6 = 0;
	private int substanceText6 = 0;
	private int substanceCode7 = 0;
	private int substanceText7 = 0;
	private int substanceCode8 = 0;
	private int substanceText8 = 0;
	private int substanceCode9 = 0;
	private int substanceText9 = 0;
	private int quantityTypeCode = 0;
	private int quantityTypeText = 0;

	private static ImmunizationMapping mapping = new ImmunizationMapping();

	private ImmunizationMapping() {

	}

	public Map<String, Vaccine> getVaccineMap() {
		return vaccineMap;
	}

	public static ImmunizationMapping getInstance() {
		if (mapping.getVaccineMap() == null) {
			mapping.readEImpfImpfstoffeFile();
		}

		return mapping;
	}

	public void readEImpfImpfstoffeFile() {
		File file = new File("resources/eImpf_Impfstoffe.csv");
		String line;

		vaccineMap = new HashMap<>();
		try (BufferedReader serviceFile = new BufferedReader(new FileReader(file))) {
			while ((line = serviceFile.readLine()) != null) {
				String[] row = line.split(";");

				if (CODE.equalsIgnoreCase(row[0].trim())) {
					for (int index = 0; index < row.length; index++) {

						if (CODE.equalsIgnoreCase(row[index].trim())) {
							codeIndex = index;
						} else if (CODE_SYSTEM.equalsIgnoreCase(row[index].trim())) {
							codeSystem = index;
						} else if (DISPLAY_NAME.equalsIgnoreCase(row[index].trim())) {
							displayName = index;
						} else if (NAME_APPROVAL.equalsIgnoreCase(row[index].trim())) {
							approvalName = index;
						} else if (SHORT_NAME.equalsIgnoreCase(row[index].trim())) {
							shortName = index;
						} else if (APPROVAL_NO.equalsIgnoreCase(row[index].trim())) {
							approvalNo = index;
						} else if (SIZE.equalsIgnoreCase(row[index].trim())) {
							sizeIndex = index;
						} else if (DOSAGE_FORM_CODE.equalsIgnoreCase(row[index].trim())) {
							dosageFormCode = index;
						} else if (DOSAGE_FORM_TEXT.equalsIgnoreCase(row[index].trim())) {
							dosageFormText = index;
						} else if (QUANTITY_TYPE_CODE.equalsIgnoreCase(row[index].trim())) {
							quantityTypeCode = index;
						} else if (QUANTITY_TYPE_TEXT.equalsIgnoreCase(row[index].trim())) {
							quantityTypeText = index;
						} else if (IMMUNIZATION_INDICATION_01_CODE.equalsIgnoreCase(row[index].trim())) {
							immunizationIndicationCode1 = index;
						} else if (IMMUNIZATION_INDICATION_01_TEXT.equalsIgnoreCase(row[index].trim())) {
							immunizationIndicationText1 = index;
						} else if (IMMUNIZATION_INDICATION_02_CODE.equalsIgnoreCase(row[index].trim())) {
							immunizationIndicationCode2 = index;
						} else if (IMMUNIZATION_INDICATION_02_TEXT.equalsIgnoreCase(row[index].trim())) {
							immunizationIndicationText2 = index;
						} else if (IMMUNIZATION_INDICATION_03_CODE.equalsIgnoreCase(row[index].trim())) {
							immunizationIndicationCode3 = index;
						} else if (IMMUNIZATION_INDICATION_03_TEXT.equalsIgnoreCase(row[index].trim())) {
							immunizationIndicationText3 = index;
						} else if (IMMUNIZATION_INDICATION_04_CODE.equalsIgnoreCase(row[index].trim())) {
							immunizationIndicationCode4 = index;
						} else if (IMMUNIZATION_INDICATION_04_TEXT.equalsIgnoreCase(row[index].trim())) {
							immunizationIndicationText4 = index;
						} else if (IMMUNIZATION_INDICATION_05_CODE.equalsIgnoreCase(row[index].trim())) {
							immunizationIndicationCode5 = index;
						} else if (IMMUNIZATION_INDICATION_05_TEXT.equalsIgnoreCase(row[index].trim())) {
							immunizationIndicationText5 = index;
						} else if (IMMUNIZATION_INDICATION_06_CODE.equalsIgnoreCase(row[index].trim())) {
							immunizationIndicationCode6 = index;
						} else if (IMMUNIZATION_INDICATION_06_TEXT.equalsIgnoreCase(row[index].trim())) {
							immunizationIndicationText6 = index;
						} else if (ATC_CODE.equalsIgnoreCase(row[index].trim())) {
							atcCode = index;
						} else if (ATC_TEXT.equalsIgnoreCase(row[index].trim())) {
							atcText = index;
						} else if (APPLICATION_TYPE_CODE.equalsIgnoreCase(row[index].trim())) {
							applicationTypeCode = index;
						} else if (APPLICATION_TYPE_TEXT.equalsIgnoreCase(row[index].trim())) {
							applicationTypeText = index;
						} else if (SUBSTANCE_01_CODE.equalsIgnoreCase(row[index].trim())) {
							substanceCode1 = index;
						} else if (SUBSTANCE_01_TEXT.equalsIgnoreCase(row[index].trim())) {
							substanceText1 = index;
						} else if (SUBSTANCE_02_CODE.equalsIgnoreCase(row[index].trim())) {
							substanceCode2 = index;
						} else if (SUBSTANCE_02_TEXT.equalsIgnoreCase(row[index].trim())) {
							substanceText2 = index;
						} else if (SUBSTANCE_03_CODE.equalsIgnoreCase(row[index].trim())) {
							substanceCode3 = index;
						} else if (SUBSTANCE_03_TEXT.equalsIgnoreCase(row[index].trim())) {
							substanceText3 = index;
						} else if (SUBSTANCE_04_CODE.equalsIgnoreCase(row[index].trim())) {
							substanceCode4 = index;
						} else if (SUBSTANCE_04_TEXT.equalsIgnoreCase(row[index].trim())) {
							substanceText4 = index;
						} else if (SUBSTANCE_05_CODE.equalsIgnoreCase(row[index].trim())) {
							substanceCode5 = index;
						} else if (SUBSTANCE_05_TEXT.equalsIgnoreCase(row[index].trim())) {
							substanceText5 = index;
						} else if (SUBSTANCE_06_CODE.equalsIgnoreCase(row[index].trim())) {
							substanceCode6 = index;
						} else if (SUBSTANCE_06_TEXT.equalsIgnoreCase(row[index].trim())) {
							substanceText6 = index;
						} else if (SUBSTANCE_07_CODE.equalsIgnoreCase(row[index].trim())) {
							substanceCode7 = index;
						} else if (SUBSTANCE_07_TEXT.equalsIgnoreCase(row[index].trim())) {
							substanceText7 = index;
						} else if (SUBSTANCE_08_CODE.equalsIgnoreCase(row[index].trim())) {
							substanceCode7 = index;
						} else if (SUBSTANCE_08_TEXT.equalsIgnoreCase(row[index].trim())) {
							substanceText7 = index;
						} else if (SUBSTANCE_09_CODE.equalsIgnoreCase(row[index].trim())) {
							substanceCode7 = index;
						} else if (SUBSTANCE_09_TEXT.equalsIgnoreCase(row[index].trim())) {
							substanceText7 = index;
						}
					}
				} else {
					Vaccine vaccine = new Vaccine();

					String codeValue = row[codeIndex];
					String codeSystemValue = row[codeSystem];
					String codeDisplayName = row[displayName];

					Code codeCode = new Code();
					codeCode.setCode(codeValue.substring(1, codeValue.length() - 1));
					codeCode.setCodeSystem(codeSystemValue.substring(1, codeSystemValue.length() - 1));
					codeCode.setDisplayName(codeDisplayName.substring(1, codeDisplayName.length() - 1));
					vaccine.setCode(codeCode);

					vaccine.setName(row[approvalName].substring(1, row[approvalName].length() - 1));
					vaccine.setShortName(row[shortName].substring(1, row[shortName].length() - 1));
					vaccine.setApprovalNumber(row[approvalNo].substring(1, row[approvalNo].length() - 1));
					vaccine.setPackageSize(Integer.valueOf(row[sizeIndex].substring(1, row[sizeIndex].length() - 1)));

					vaccine.setApplicationType(
							createCodeFromReference(row[applicationTypeCode], row[applicationTypeText]));
					vaccine.setAtc(createCodeFromReference(row[atcCode], row[atcText]));
					vaccine.setDosageForm(createCodeFromReference(row[dosageFormCode], row[dosageFormText]));
					vaccine.setQuantityType(createCodeFromReference(row[quantityTypeCode], row[quantityTypeText]));

					addImmunizationIndications(vaccine, row);
					addSubstances(vaccine, row);

					vaccineMap.put(codeCode.getCode(), vaccine);
				}
			}
		} catch (Exception ex) {
			LOGGER.error(ex.getMessage(), ex);
		}
	}

	private Code createCodeFromReference(String codeCell, String textCell) {
		if (codeCell == null) {
			return null;
		}

		Code code = new Code();
		codeCell = codeCell.substring(1, codeCell.length() - 1);
		textCell = textCell.substring(1, textCell.length() - 1);
		String[] codeCellEntries = codeCell.split(":");

		if (codeCellEntries != null && codeCellEntries.length == 2) {
			code.setCodeSystem(codeCellEntries[0]);
			code.setCode(codeCellEntries[1]);
		}

		code.setDisplayName(textCell);

		return code;
	}

	private void addSubstances(Vaccine vaccine, String[] row) {
		vaccine.addSubstance(createCodeFromReference(row[substanceCode1], row[substanceText1]));
		vaccine.addSubstance(createCodeFromReference(row[substanceCode2], row[substanceText2]));
		vaccine.addSubstance(createCodeFromReference(row[substanceCode3], row[substanceText3]));
		vaccine.addSubstance(createCodeFromReference(row[substanceCode4], row[substanceText4]));
		vaccine.addSubstance(createCodeFromReference(row[substanceCode5], row[substanceText5]));
		vaccine.addSubstance(createCodeFromReference(row[substanceCode6], row[substanceText6]));
		vaccine.addSubstance(createCodeFromReference(row[substanceCode7], row[substanceText7]));
		vaccine.addSubstance(createCodeFromReference(row[substanceCode8], row[substanceText8]));
		vaccine.addSubstance(createCodeFromReference(row[substanceCode9], row[substanceText9]));
	}

	private void addImmunizationIndications(Vaccine vaccine, String[] row) {
		vaccine.addTargetDisease(
				createCodeFromReference(row[immunizationIndicationCode1], row[immunizationIndicationText1]));
		vaccine.addTargetDisease(
				createCodeFromReference(row[immunizationIndicationCode2], row[immunizationIndicationText2]));
		vaccine.addTargetDisease(
				createCodeFromReference(row[immunizationIndicationCode3], row[immunizationIndicationText3]));
		vaccine.addTargetDisease(
				createCodeFromReference(row[immunizationIndicationCode4], row[immunizationIndicationText4]));
		vaccine.addTargetDisease(
				createCodeFromReference(row[immunizationIndicationCode5], row[immunizationIndicationText5]));
		vaccine.addTargetDisease(
				createCodeFromReference(row[immunizationIndicationCode6], row[immunizationIndicationText6]));
	}

}
