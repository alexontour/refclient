/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest.utilities;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.HashMap;
import java.util.Map;

import org.husky.common.model.Code;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.rest.model.eimpf.Vaccine;

/**
 * This class is a singleton. It extracts information about vaccines from file
 * at resources/eImpf_Impfstoffe.csv. </br>
 *
 * @author Anna Jungwirth
 *
 */
public class ImmunizationMapping {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(ImmunizationMapping.class.getName());
	
	/** The Constant CODE. */
	private static final String CODE = "'code'";
	
	/** The Constant CODE_SYSTEM. */
	private static final String CODE_SYSTEM = "'codeSystem'";
	
	/** The Constant DISPLAY_NAME. */
	private static final String DISPLAY_NAME = "'displayName'";
	
	/** The Constant NAME_APPROVAL. */
	private static final String NAME_APPROVAL = "'Bezeichnung_Arzneispezialitaet_Zulassung'";
	
	/** The Constant SHORT_NAME. */
	private static final String SHORT_NAME = "'Bezeichnung_Arzneispezialitaet_Kurzname'";
	
	/** The Constant APPROVAL_NO. */
	private static final String APPROVAL_NO = "'ZulassungsNummer'";
	
	/** The Constant SIZE. */
	private static final String SIZE = "'GroesseGewicht'";
	
	/** The Constant DOSAGE_FORM_CODE. */
	private static final String DOSAGE_FORM_CODE = "'ELGA_MedikationArtAnwendung_01_code'";
	
	/** The Constant DOSAGE_FORM_TEXT. */
	private static final String DOSAGE_FORM_TEXT = "'ELGA_MedikationArtAnwendung_01_text'";
	
	/** The Constant QUANTITY_TYPE_CODE. */
	private static final String QUANTITY_TYPE_CODE = "'ELGA_MedikationMengenart_code'";
	
	/** The Constant QUANTITY_TYPE_TEXT. */
	private static final String QUANTITY_TYPE_TEXT = "'ELGA_MedikationMengenart_text'";
	
	/** The Constant IMMUNIZATION_INDICATION_01_CODE. */
	private static final String IMMUNIZATION_INDICATION_01_CODE = "'ELGA_ImpfungIndikation_01_code'";
	
	/** The Constant IMMUNIZATION_INDICATION_01_TEXT. */
	private static final String IMMUNIZATION_INDICATION_01_TEXT = "'ELGA_ImpfungIndikation_01_text'";
	
	/** The Constant IMMUNIZATION_INDICATION_02_CODE. */
	private static final String IMMUNIZATION_INDICATION_02_CODE = "'ELGA_ImpfungIndikation_02_code'";
	
	/** The Constant IMMUNIZATION_INDICATION_02_TEXT. */
	private static final String IMMUNIZATION_INDICATION_02_TEXT = "'ELGA_ImpfungIndikation_02_text'";
	
	/** The Constant IMMUNIZATION_INDICATION_03_CODE. */
	private static final String IMMUNIZATION_INDICATION_03_CODE = "'ELGA_ImpfungIndikation_03_code'";
	
	/** The Constant IMMUNIZATION_INDICATION_03_TEXT. */
	private static final String IMMUNIZATION_INDICATION_03_TEXT = "'ELGA_ImpfungIndikation_03_text'";
	
	/** The Constant IMMUNIZATION_INDICATION_04_CODE. */
	private static final String IMMUNIZATION_INDICATION_04_CODE = "'ELGA_ImpfungIndikation_04_code'";
	
	/** The Constant IMMUNIZATION_INDICATION_04_TEXT. */
	private static final String IMMUNIZATION_INDICATION_04_TEXT = "'ELGA_ImpfungIndikation_04_text'";
	
	/** The Constant IMMUNIZATION_INDICATION_05_CODE. */
	private static final String IMMUNIZATION_INDICATION_05_CODE = "'ELGA_ImpfungIndikation_05_code'";
	
	/** The Constant IMMUNIZATION_INDICATION_05_TEXT. */
	private static final String IMMUNIZATION_INDICATION_05_TEXT = "'ELGA_ImpfungIndikation_05_text'";
	
	/** The Constant IMMUNIZATION_INDICATION_06_CODE. */
	private static final String IMMUNIZATION_INDICATION_06_CODE = "'ELGA_ImpfungIndikation_06_code'";
	
	/** The Constant IMMUNIZATION_INDICATION_06_TEXT. */
	private static final String IMMUNIZATION_INDICATION_06_TEXT = "'ELGA_ImpfungIndikation_06_text'";

	/** The Constant ATC_CODE. */
	private static final String ATC_CODE = "'ELGA_whoATC_01_code'";
	
	/** The Constant ATC_TEXT. */
	private static final String ATC_TEXT = "'ELGA_whoATC_01_text'";
	
	/** The Constant SUBSTANCE_01_CODE. */
	private static final String SUBSTANCE_01_CODE = "'ELGA_Substanz_01_code'";
	
	/** The Constant SUBSTANCE_01_TEXT. */
	private static final String SUBSTANCE_01_TEXT = "'ELGA_Substanz_01_text'";
	
	/** The Constant SUBSTANCE_02_CODE. */
	private static final String SUBSTANCE_02_CODE = "'ELGA_Substanz_02_code'";
	
	/** The Constant SUBSTANCE_02_TEXT. */
	private static final String SUBSTANCE_02_TEXT = "'ELGA_Substanz_02_text'";
	
	/** The Constant SUBSTANCE_03_CODE. */
	private static final String SUBSTANCE_03_CODE = "'ELGA_Substanz_03_code'";
	
	/** The Constant SUBSTANCE_03_TEXT. */
	private static final String SUBSTANCE_03_TEXT = "'ELGA_Substanz_03_text'";
	
	/** The Constant SUBSTANCE_04_CODE. */
	private static final String SUBSTANCE_04_CODE = "'ELGA_Substanz_04_code'";
	
	/** The Constant SUBSTANCE_04_TEXT. */
	private static final String SUBSTANCE_04_TEXT = "'ELGA_Substanz_04_text'";
	
	/** The Constant SUBSTANCE_05_CODE. */
	private static final String SUBSTANCE_05_CODE = "'ELGA_Substanz_05_code'";
	
	/** The Constant SUBSTANCE_05_TEXT. */
	private static final String SUBSTANCE_05_TEXT = "'ELGA_Substanz_05_text'";
	
	/** The Constant SUBSTANCE_06_CODE. */
	private static final String SUBSTANCE_06_CODE = "'ELGA_Substanz_06_code'";
	
	/** The Constant SUBSTANCE_06_TEXT. */
	private static final String SUBSTANCE_06_TEXT = "'ELGA_Substanz_06_text'";
	
	/** The Constant SUBSTANCE_07_CODE. */
	private static final String SUBSTANCE_07_CODE = "'ELGA_Substanz_07_code'";
	
	/** The Constant SUBSTANCE_07_TEXT. */
	private static final String SUBSTANCE_07_TEXT = "'ELGA_Substanz_07_text'";
	
	/** The Constant SUBSTANCE_08_CODE. */
	private static final String SUBSTANCE_08_CODE = "'ELGA_Substanz_08_code'";
	
	/** The Constant SUBSTANCE_08_TEXT. */
	private static final String SUBSTANCE_08_TEXT = "'ELGA_Substanz_08_text'";
	
	/** The Constant SUBSTANCE_09_CODE. */
	private static final String SUBSTANCE_09_CODE = "'ELGA_Substanz_09_code'";
	
	/** The Constant SUBSTANCE_09_TEXT. */
	private static final String SUBSTANCE_09_TEXT = "'ELGA_Substanz_09_text'";

	/** The vaccine map. */
	private Map<String, Vaccine> vaccineMap;
	
	/** The code index. */
	private int codeIndex = 0;
	
	/** The code system. */
	private int codeSystem = 0;
	
	/** The display name. */
	private int displayName = 0;
	
	/** The approval name. */
	private int approvalName = 0;
	
	/** The short name. */
	private int shortName = 0;
	
	/** The approval no. */
	private int approvalNo = 0;
	
	/** The size index. */
	private int sizeIndex = 0;
	
	/** The dosage form code. */
	private int dosageFormCode = 0;
	
	/** The dosage form text. */
	private int dosageFormText = 0;
	
	/** The immunization indication code 1. */
	private int immunizationIndicationCode1 = 0;
	
	/** The immunization indication text 1. */
	private int immunizationIndicationText1 = 0;
	
	/** The immunization indication code 2. */
	private int immunizationIndicationCode2 = 0;
	
	/** The immunization indication text 2. */
	private int immunizationIndicationText2 = 0;
	
	/** The immunization indication code 3. */
	private int immunizationIndicationCode3 = 0;
	
	/** The immunization indication text 3. */
	private int immunizationIndicationText3 = 0;
	
	/** The immunization indication code 4. */
	private int immunizationIndicationCode4 = 0;
	
	/** The immunization indication text 4. */
	private int immunizationIndicationText4 = 0;
	
	/** The immunization indication code 5. */
	private int immunizationIndicationCode5 = 0;
	
	/** The immunization indication text 5. */
	private int immunizationIndicationText5 = 0;
	
	/** The immunization indication code 6. */
	private int immunizationIndicationCode6 = 0;
	
	/** The immunization indication text 6. */
	private int immunizationIndicationText6 = 0;
	
	/** The atc code. */
	private int atcCode = 0;
	
	/** The atc text. */
	private int atcText = 0;
	
	/** The substance code 1. */
	private int substanceCode1 = 0;
	
	/** The substance text 1. */
	private int substanceText1 = 0;
	
	/** The substance code 2. */
	private int substanceCode2 = 0;
	
	/** The substance text 2. */
	private int substanceText2 = 0;
	
	/** The substance code 3. */
	private int substanceCode3 = 0;
	
	/** The substance text 3. */
	private int substanceText3 = 0;
	
	/** The substance code 4. */
	private int substanceCode4 = 0;
	
	/** The substance text 4. */
	private int substanceText4 = 0;
	
	/** The substance code 5. */
	private int substanceCode5 = 0;
	
	/** The substance text 5. */
	private int substanceText5 = 0;
	
	/** The substance code 6. */
	private int substanceCode6 = 0;
	
	/** The substance text 6. */
	private int substanceText6 = 0;
	
	/** The substance code 7. */
	private int substanceCode7 = 0;
	
	/** The substance text 7. */
	private int substanceText7 = 0;
	
	/** The substance code 8. */
	private int substanceCode8 = 0;
	
	/** The substance text 8. */
	private int substanceText8 = 0;
	
	/** The substance code 9. */
	private int substanceCode9 = 0;
	
	/** The substance text 9. */
	private int substanceText9 = 0;
	
	/** The quantity type code. */
	private int quantityTypeCode = 0;
	
	/** The quantity type text. */
	private int quantityTypeText = 0;

	/** The mapping. */
	private static ImmunizationMapping mapping = new ImmunizationMapping();

	/**
	 * Instantiates a new immunization mapping.
	 */
	private ImmunizationMapping() {

	}

	/**
	 * Gets the vaccine map.
	 *
	 * @return the vaccine map
	 */
	public Map<String, Vaccine> getVaccineMap() {
		return vaccineMap;
	}

	/**
	 * Creates instance if it is null.
	 *
	 * @return instance of {@link ImmunizationMapping}
	 */
	public static ImmunizationMapping getInstance() {
		if (mapping.getVaccineMap() == null) {
			mapping.readEImpfImpfstoffeFile();
		}

		return mapping;
	}

	/**
	 * reads the csv file and saves it in {@link #vaccineMap}. Following information
	 * are read:
	 *
	 * <ul>
	 * <li>PZN of vaccine</li>
	 * <li>name of vaccine</li>
	 * <li>short name of vaccine</li>
	 * <li>approval number of vaccine</li>
	 * <li>package size of vaccine</li>
	 * <li>quantity type of vaccine like Stück</li>
	 * <li>indications of vaccine (target diseases)</li>
	 * <li>ATC codes of vaccine</li>
	 * <li>substances of vaccine</li>
	 * <li>dosage form of vaccine like "intramuskuläre Anwendung"</li>
	 * </ul>
	 *
	 * First index of column names are stored. And afterwards values of columns are
	 * read by stored index. Therefore it is not important to know index of column,
	 * only name of columns have to be correct.
	 */
	private void readEImpfImpfstoffeFile() {
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

	/**
	 * extracts {@link Code} from reference value at row. There are two cells that
	 * belong together regarding the reference. One cell contains code and code
	 * system in following format {code system}:{code}. The other cell contains
	 * display name.
	 *
	 * @param codeCell code and code system of value
	 * @param textCell display name of code
	 *
	 * @return created {@link Code}
	 */
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

	/**
	 * Adds substances from passed <code>row</code> to passed {@link Vaccine}.
	 *
	 * @param vaccine to add details
	 * @param row     to be extracted
	 */
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

	/**
	 * Adds substances from passed <code>row</code> to passed {@link Vaccine}.
	 *
	 * @param vaccine to add details
	 * @param row     to be extracted
	 */
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
