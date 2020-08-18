package arztis.econnector.ihe.queries.common;

/**
 * This list contains IHE PHARM stored queries. Stored queries are pre-defined
 * queries. There are different stored queries for IHE ITI-18 and PHARM-1
 * request. This class only contains stored queries for PHARM-1 transaction.
 * </br>
 * </br>
 *
 * <ul>
 * <li>FindMedicationTreatmentPlans (find planned medication documents and their
 * related documents)</li>
 * <li>FindPrescriptions (find prescriptions and their related documents)</li>
 * <li>FindDispenses (find dispense documents and their related documents)</li>
 * <li>FindMedicationAdministrations (find administered medication documents and
 * their related documents)</li>
 * <li>FindPrescriptionsForValidation (find prescriptions and their related
 * documents containing prescriptions ready to be validated)</li>
 * <li>FindPrescriptionsForDispense (find prescriptions and their related
 * documents containing prescriptions ready to be dispensed)</li>
 * <li>FindMedicationList (find the medication list to the patient)</li>
 * </ul>
 *
 *
 * </br>
 * More details you can find under <a href=
 * "https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharmacy_Suppl_CMPD_Rev1-8_TI_2020-01-27.pdf">https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharmacy_Suppl_CMPD_Rev1-8_TI_2020-01-27.pdf</a>
 * page 62 and following </br>
 *
 * @author Anna Jungwirth
 *
 */
public enum PharmQueryIds {

	/** stored query to find planned medication documents and their related documents. */
	FIND_MEDICATION_TREATMENT_PLANS("urn:uuid:c85f5ade-81c1-44b6-8f7c-48b9cd6b9489", "FindMedicationTreatmentPlans"),

	/** stored query to find prescriptions and their related documents. */
	FIND_PRESCRIPTIONS("urn:uuid:0e6095c5-dc3d-47d9-a219-047064086d92", "FindPrescriptions"),

	/** stored query to find dispense documents and their related documents. */
	FIND_DISPENSES("urn:uuid:ac79c7c7-f21b-4c88-ab81-57e4889e8758", "FindDispenses"),

	/** stored query to find administered medication documents and their related documents. */
	FIND_MEDICATION_ADMINISTRATIONS("urn:uuid:fdbe8fb8-7b5c-4470-9383-8abc7135f462", "FindMedicationAdministrations"),

	/** stored query to find prescriptions and their related documents containing prescriptions ready to be validated. */
	FIND_PRESCRIPTIONS_FOR_VALIDATION("urn:uuid:c1a43b20-0254-102e-8469-a6af440562e8",
			"FindPrescriptionsForValidation"),

	/** stored query to find prescriptions and their related documents containing prescriptions ready to be dispensed. */
	FIND_PRESCRIPTIONS_FOR_DISPENSES("urn:uuid:c875eb9c-0254-102e-8469-a6af440562e8", "FindPrescriptionsForDispense"),

	/** stored query to find the medication list to the patient. */
	FIND_MEDICATION_LIST("urn:uuid:80ebbd83-53c1-4453-9860-349585962af6", "FindMedicationList");

	/** The value. */
	private String value;
	
	/** The name. */
	private String name;

	/**
	 * Constructor to create stored query with code and name.
	 *
	 * @param value the value
	 * @param name of stored query
	 */
	PharmQueryIds(String value, String name) {
		this.value = value;
		this.name = name;
	}

	/**
	 * Gets the name.
	 *
	 * @return name of stored query
	 */
	public String getName() {
		return name;
	}

	/**
	 * Gets the value.
	 *
	 * @return code of stored query
	 */
	public String getValue() {
		return value;
	}

}
