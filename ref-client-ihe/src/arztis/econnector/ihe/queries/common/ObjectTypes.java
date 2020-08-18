package arztis.econnector.ihe.queries.common;

/**
 * This list contains IHE object types for
 *
 * <ul>
 * <li>Classification</li>
 * <li>Association</li>
 * <li>External identifier</li>
 * <li>Registry package</li>
 * <li>Stable or On-Demand documents</li>
 * </ul>
 *
 *
 * </br>
 * More details you can find under <a href=
 * "https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol3.pdf">https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol3.pdf</a>
 * </br>
 *
 * @author Anna Jungwirth
 *
 */
public enum ObjectTypes {

	/**
	 * Represents object type for classification elements. Fixed value identifying
	 * the type of object.
	 */
	CLASSIFICATION("urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:Classification"),

	/**
	 * Represents object type for association elements. Fixed value identifying the
	 * type of object.
	 */
	ASSOCIATION("urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:Association"),

	/**
	 * Represents object type for external identifier elements. Fixed value
	 * identifying the type of object.
	 */
	EXTERNAL_IDENTIFIER("urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:ExternalIdentifier"),

	/**
	 * Represents code for stable documents. This documents are not generated
	 * dynamically. Fixed value identifying the type of object.
	 */
	STABLE_DOCUMENT("urn:uuid:7edca82f-054d-47f2-a032-9b2a5b5186c1"),

	/**
	 * Represents code for on-demand documents. These documents are generated
	 * dynamically when they are called. Fixed value identifying the type of object.
	 */
	ON_DEMAND_DOCUMENT("urn:uuid:34268e47-fdf5-41a6-ba33-82133c465248"),

	/**
	 * Represents object type for registry package elements. Fixed value identifying
	 * the type of object.
	 */
	REGSITRY_PACKAGE("urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:RegistryPackage");

	/** The code. */
	private String code;

	/**
	 * Constructor to create object type with code.
	 *
	 * @param code object type
	 */
	private ObjectTypes(String code) {
		this.code = code;
	}

	/**
	 * Code of object type.
	 *
	 * @return object type
	 */
	public String getCode() {
		return code;
	}

}
