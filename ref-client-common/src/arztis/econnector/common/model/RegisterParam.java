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
 * @author ET-Innovations
 *
 */
public class RegisterParam extends Parameter {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String givenName;
	private String familyName;
	private String prefix;
	private String suffix;
	private String information;
	private String role;
	private String cardReaderId;
	private String password;
	private int productId;
	private String productVersion;
	private String ordId;
	private String producerId;
	private String identityAssertion;
	private String organizationId;
	private String subjectId;
	private String organizationName;

	/**
	 * Creates instance of {@link RegisterParam}
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
	 * @param ordId
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
	 * Default Constructor
	 */
	public RegisterParam() {

	}

	/**
	 * PIN of the Admin-Card. It is needed, if the user registration is executed
	 * with the GINA
	 * 
	 * @return PIN of the Admin-Card
	 */
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * ID of card reader, which should be used for the registration. It is needed,
	 * if the user registration is executed with the GINA
	 * 
	 * @return ID of the card reader
	 */
	public String getCardReaderId() {
		return cardReaderId;
	}

	public void setCardReaderId(String cardReaderId) {
		this.cardReaderId = cardReaderId;
	}

	/**
	 * Given name of the real person, who wants to register. It is needed, if the
	 * user registration is executed with the GINA
	 * 
	 * @return given name of the real person
	 */
	public String getGivenName() {
		return givenName;
	}

	public void setGivenName(String givenName) {
		this.givenName = givenName;
	}

	/**
	 * Family name of the real person, who wants to register. It is needed, if the
	 * user registration is executed with the GINA
	 * 
	 * @return family name of the real person
	 */
	public String getFamilyName() {
		return familyName;
	}

	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}

	/**
	 * Prefix of the real person, who wants to register. It is needed, if the user
	 * registration is executed with the GINA
	 * 
	 * @return prefix of the real person
	 */
	public String getPrefix() {
		return prefix;
	}

	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}

	/**
	 * Suffix of the real person, who wants to register. It is needed, if the user
	 * registration is executed with the GINA
	 * 
	 * @return suffix of the real person
	 */
	public String getSuffix() {
		return suffix;
	}

	public void setSuffix(String suffix) {
		this.suffix = suffix;
	}

	/**
	 * Additional information about the real person, who wants to register. It is
	 * needed, if the user registration is executed with the GINA
	 * 
	 * @return additional information about the real person
	 */
	public String getInformation() {
		return information;
	}

	public void setInformation(String information) {
		this.information = information;
	}

	/**
	 * Role of the health care provider to register (Possible values are available
	 * under https://termpub.gesundheit.gv.at (ELGA_GDA_Aggregatrollen))
	 * 
	 * @return role of the health care provider
	 */
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	/**
	 * Product id of the health care provider to register. It is required since the
	 * SS12 interface version R19b. It is needed, if the user registration is
	 * executed with the GINA
	 * 
	 * @return product id of the health care provider
	 */
	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	/**
	 * Product version of the health care provider to register. It is required since
	 * the SS12 interface version R19b. It is needed, if the user registration is
	 * executed with the GINA
	 * 
	 * @return product version of the health care provider
	 */
	public String getProductVersion() {
		return productVersion;
	}

	public void setProductVersion(String productVersion) {
		this.productVersion = productVersion;
	}

	/**
	 * Surgery ID of the health care provider, which should be used to register. It
	 * is needed, if the user registration is executed with the GINA
	 * 
	 * @return Surgery ID of the health care provider
	 */
	public String getOrdId() {
		return ordId;
	}

	public void setOrdId(String ordId) {
		this.ordId = ordId;
	}

	/**
	 * Producer ID (HerstellerId) of the software producer. It is required since the
	 * SS12 interface version R19b. It is needed, if the user registration is
	 * executed with the GINA
	 * 
	 * @return Producer ID (HerstellerId) of the software producer
	 */
	public String getProducerId() {
		return producerId;
	}

	public void setProducerId(String producerId) {
		this.producerId = producerId;
	}

	/**
	 * Identity assertion or IDA, which should be used to register in ELGA.
	 * 
	 * @return identity assertion
	 */
	public String getIdentityAssertion() {
		return identityAssertion;
	}

	public void setIdentityAssertion(String identityAssertion) {
		this.identityAssertion = identityAssertion;
	}

	/**
	 * Organization ID (OID) of the health care provider, who wants to register. It
	 * is needed, if the user registration is executed as hospital
	 * 
	 * @return Organization ID (OID) of the health care provider
	 */
	public String getOrganizationId() {
		return organizationId;
	}

	public void setOrganizationId(String organizationId) {
		this.organizationId = organizationId;
	}

	/**
	 * Subject ID of the health care provider, who wants to register. It is needed,
	 * if the user registration is executed as hospital
	 * 
	 * @return subject id of the health care provider
	 */
	public String getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}

	/**
	 * Organization name of the health care provider, who wants to register. It is
	 * needed, if the user registration is executed as hospital
	 * 
	 * @return Organization name of the health care provider
	 */
	public String getOrganizationName() {
		return organizationName;
	}

	public void setOrganizationName(String organizationName) {
		this.organizationName = organizationName;
	}
}
