package arztis.econnector.common.model;

/**
 * This class is used to pass details to register a user in ELGA. It can be used
 * for
 *
 * <ul>
 * <li>requesting IDA from SVC - for physicians with GINA</li>
 * <li>requesting IDA from ELGA - for hospitals</li>
 * <li>requesting HCP assertion</li>
 * <li>requesting context assertion</li>
 * </ul>
 *
 * @author Anna Jungwirth
 *
 */
public class RegisterParam extends Parameter {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** The given name. */
	private String givenName;

	/** The family name. */
	private String familyName;

	/** The prefix. */
	private String prefix;

	/** The suffix. */
	private String suffix;

	/** The information. */
	private String information;

	/** The role. */
	private String role;

	/** The card reader id. */
	private String cardReaderId;

	/** The password. */
	private String password;

	/** The product id. */
	private int productId;

	/** The product version. */
	private String productVersion;

	/** The ord id. */
	private String ordId;

	/** The producer id. */
	private String producerId;

	/** The identity assertion. */
	private String identityAssertion;

	/** The organization id. */
	private String organizationId;

	/** The subject id. */
	private String subjectId;

	/** The organization name. */
	private String organizationName;

	/**
	 * Creates instance of {@link RegisterParam}.
	 *
	 * @param givenName         given name of the real person, who wants to register
	 * @param familyName        family name of the real person, who wants to
	 *                          register
	 * @param role              role of the health care provider to register
	 *                          (Possible values are available under
	 *                          https://termpub.gesundheit.gv.at
	 *                          (ELGA_GDA_Aggregatrollen))
	 * @param cardReaderId      ID of the card reader, which should be used to
	 *                          register with the Admin-Card
	 * @param prefix            prefix of the real person, who wants to register
	 * @param suffix            suffix of the real person, who wants to register
	 * @param information       additional information about the real person
	 * @param password          PIN of the Admin-Card
	 * @param ordId             ID of surgery to register
	 * @param identityAssertion already existing IDA of the user
	 */
	public RegisterParam(String givenName, String familyName, String role, String cardReaderId, String prefix,
			String suffix, String information, String password, String ordId, String identityAssertion) {
		this.givenName = givenName;
		this.familyName = familyName;
		this.role = role;
		this.cardReaderId = cardReaderId;
		this.prefix = prefix;
		this.suffix = suffix;
		this.information = information;
		this.password = password;
		this.ordId = ordId;
		this.identityAssertion = identityAssertion;
	}

	/**
	 * Default Constructor.
	 */
	public RegisterParam() {

	}

	/**
	 * PIN of Admin-Card. It is needed, if user registration is executed with GINA
	 *
	 * @return PIN of Admin-Card
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * Sets the password.
	 *
	 * @param password the new password
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * Gets ID of card reader, which should be used for registration. It is needed,
	 * if user registration is executed with GINA
	 *
	 * @return ID of card reader
	 */
	public String getCardReaderId() {
		return cardReaderId;
	}

	/**
	 * Sets the card reader id.
	 *
	 * @param cardReaderId the new card reader id
	 */
	public void setCardReaderId(String cardReaderId) {
		this.cardReaderId = cardReaderId;
	}

	/**
	 * Gets given name of real person, who wants to register. It is needed, if user
	 * registration is executed with GINA
	 *
	 * @return given name of real person
	 */
	public String getGivenName() {
		return givenName;
	}

	/**
	 * Sets the given name.
	 *
	 * @param givenName the new given name
	 */
	public void setGivenName(String givenName) {
		this.givenName = givenName;
	}

	/**
	 * Gets family name of real person, who wants to register. It is needed, if user
	 * registration is executed with GINA
	 *
	 * @return family name of real person
	 */
	public String getFamilyName() {
		return familyName;
	}

	/**
	 * Sets the family name.
	 *
	 * @param familyName the new family name
	 */
	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}

	/**
	 * Gets prefix of real person, who wants to register. It is needed, if user
	 * registration is executed with GINA
	 *
	 * @return prefix of real person
	 */
	public String getPrefix() {
		return prefix;
	}

	/**
	 * Sets the prefix.
	 *
	 * @param prefix the new prefix
	 */
	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}

	/**
	 * Gets suffix of real person, who wants to register. It is needed, if user
	 * registration is executed with GINA
	 *
	 * @return suffix of real person
	 */
	public String getSuffix() {
		return suffix;
	}

	/**
	 * Sets the suffix.
	 *
	 * @param suffix the new suffix
	 */
	public void setSuffix(String suffix) {
		this.suffix = suffix;
	}

	/**
	 * Gets additional information about real person, who wants to register. It is
	 * needed, if user registration is executed with GINA
	 *
	 * @return additional information about real person
	 */
	public String getInformation() {
		return information;
	}

	/**
	 * Sets the information.
	 *
	 * @param information the new information
	 */
	public void setInformation(String information) {
		this.information = information;
	}

	/**
	 * Gets role of health care provider to register (Possible values are available
	 * under https://termpub.gesundheit.gv.at (ELGA_GDA_Aggregatrollen))
	 *
	 * @return role of health care provider
	 */
	public String getRole() {
		return role;
	}

	/**
	 * Sets the role.
	 *
	 * @param role the new role
	 */
	public void setRole(String role) {
		this.role = role;
	}

	/**
	 * Gets product ID of health care provider to register. It is required since
	 * SS12 interface version R19b. It is needed, if user registration is executed
	 * with GINA
	 *
	 * @return product id of health care provider
	 */
	public int getProductId() {
		return productId;
	}

	/**
	 * Sets the product id.
	 *
	 * @param productId the new product id
	 */
	public void setProductId(int productId) {
		this.productId = productId;
	}

	/**
	 * Gets product version of health care provider to register. It is required
	 * since SS12 interface version R19b. It is needed, if user registration is
	 * executed with GINA
	 *
	 * @return product version of the health care provider
	 */
	public String getProductVersion() {
		return productVersion;
	}

	/**
	 * Sets the product version.
	 *
	 * @param productVersion the new product version
	 */
	public void setProductVersion(String productVersion) {
		this.productVersion = productVersion;
	}

	/**
	 * Gets surgery ID of the health care provider, which should be used to
	 * register. It is needed, if user registration is executed with GINA and more
	 * than one surgery is available for same health care provider.
	 *
	 * @return Surgery ID of health care provider
	 */
	public String getOrdId() {
		return ordId;
	}

	/**
	 * Sets the ord id.
	 *
	 * @param ordId the new ord id
	 */
	public void setOrdId(String ordId) {
		this.ordId = ordId;
	}

	/**
	 * Gets producer ID (HerstellerId) of software producer. It is required since
	 * SS12 interface version R19b. It is needed, if user registration is executed
	 * with GINA
	 *
	 * @return Producer ID (HerstellerId) of software producer
	 */
	public String getProducerId() {
		return producerId;
	}

	/**
	 * Sets the producer id.
	 *
	 * @param producerId the new producer id
	 */
	public void setProducerId(String producerId) {
		this.producerId = producerId;
	}

	/**
	 * Gets identity assertion or IDA, which should be used to register in ELGA.
	 *
	 * @return identity assertion
	 */
	public String getIdentityAssertion() {
		return identityAssertion;
	}

	/**
	 * Sets the identity assertion.
	 *
	 * @param identityAssertion the new identity assertion
	 */
	public void setIdentityAssertion(String identityAssertion) {
		this.identityAssertion = identityAssertion;
	}

	/**
	 * Gets organization ID (OID) of health care provider, who wants to register. It
	 * is needed, if user registration is executed as hospital
	 *
	 * @return Organization ID (OID) of health care provider
	 */
	public String getOrganizationId() {
		return organizationId;
	}

	/**
	 * Sets the organization id.
	 *
	 * @param organizationId the new organization id
	 */
	public void setOrganizationId(String organizationId) {
		this.organizationId = organizationId;
	}

	/**
	 * Gets subject ID of health care provider, who wants to register. It is needed,
	 * if user registration is executed as hospital
	 *
	 * @return subject id of the health care provider
	 */
	public String getSubjectId() {
		return subjectId;
	}

	/**
	 * Sets the subject id.
	 *
	 * @param subjectId the new subject id
	 */
	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}

	/**
	 * Gets organization name of health care provider, who wants to register. It is
	 * needed, if user registration is executed as hospital
	 *
	 * @return Organization name of the health care provider
	 */
	public String getOrganizationName() {
		return organizationName;
	}

	/**
	 * Sets the organization name.
	 *
	 * @param organizationName the new organization name
	 */
	public void setOrganizationName(String organizationName) {
		this.organizationName = organizationName;
	}
}
