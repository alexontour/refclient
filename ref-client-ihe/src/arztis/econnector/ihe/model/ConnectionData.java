/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.ihe.model;

import java.util.HashMap;
import java.util.Map;
import java.util.Timer;

import arztis.econnector.common.DialogCreator;
import arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType;
import arztis.econnector.ihe.queries.AssertionTransactions;

/**
 * This class includes all data, which are important for the registration of the
 * healthcare service provider (GDA). Moreover it has HCP assertion as
 * attribute, because every user have their own assertion. Furthermore context
 * assertions for different services such as virtual organizations and
 * immunization record are stored for each user. <br/>
 * For users, which registered at GINA, the created dialog is cached in this
 * class.
 *
 * @author Anna Jungwirth
 *
 */
public class ConnectionData {

	/** The user jwt token. */
	private String userJwtToken;

	/** The HCP assertion. */
	protected AssertionType sHcpAssertion;

	/** The context assertion. */
	protected AssertionType hcpContextAssertion;

	/** The electronic immunization context assertion. */
	protected AssertionType hcpEImmunizationContextAssertion;

	/** The context assertions. */
	protected Map<String, AssertionType> contextAssertions;

	/** The timer. */
	protected Timer timer = new Timer();

	/** The assertion transaction. */
	protected AssertionTransactions assertionTransaction;

	/** The dialog. */
	protected DialogCreator dialog;

	/**
	 * Default constructor to create an instance of {@link ConnectionData}. This
	 * constructor assigns an empty Map for context assertions.
	 */
	public ConnectionData() {
		this.contextAssertions = new HashMap<>();
	}

	/**
	 * User JWT Token generated from HCP assertion. There are separate assertions
	 * for each user.
	 *
	 * @param jwt user token
	 */
	public void setUserJwtToken(String jwt) {
		this.userJwtToken = jwt;
	}

	/**
	 * Gets the user jwt token.
	 *
	 * @return user token
	 */
	public String getUserJwtToken() {
		return this.userJwtToken;
	}

	/**
	 * This method returns GINA Dialog ({@link DialogCreator}) with additional
	 * information such as used card readers or information about surgeries.
	 *
	 * @return dialog for a specific user
	 */
	public DialogCreator getDialog() {
		return this.dialog;
	}

	/**
	 * Unique GINA dialog ({@link DialogCreator}) for one user.
	 *
	 * @param dialog created GINA dialog, which should be cached for user
	 */
	public void setDialog(DialogCreator dialog) {
		this.dialog = dialog;
	}

	/**
	 * sets HCP Assertion.
	 *
	 * @param assertion HCP Assertion of user
	 */
	public void setHcpAssertion(AssertionType assertion) {
		this.sHcpAssertion = assertion;
	}

	/**
	 * gets HCP Assertion of user.
	 *
	 * @return HCP Assertion of user
	 */
	public AssertionType getHcpAssertion() {
		return this.sHcpAssertion;
	}

	/**
	 * gets HCP Assertion of user used to request a context assertion for virtual
	 * organizations. This is needed if context assertion has to be requested from
	 * another ELGA area than default. Context assertions are needed for ELGA
	 * eHealth applications such as electronic immunization record (eImpfpass) or
	 * virtual organizations
	 *
	 * @return HCP Assertion of user used to request a context assertion for virtual
	 *         organizations.
	 */
	public AssertionType getHcpContextAssertion() {
		return hcpContextAssertion;
	}

	/**
	 * gets HCP Assertion of user used to request a context assertion for electronic
	 * immunization record. This is needed if context assertion has to be requested
	 * from another ELGA area than default. Context assertions are needed for ELGA
	 * eHealth applications such as electronic immunization record (eImpfpass) or
	 * virtual organizations
	 *
	 * @return HCP Assertion of user used to request a context assertion for
	 *         electronic immunization record.
	 */
	public AssertionType getHcpEImmunizationContextAssertion() {
		return hcpEImmunizationContextAssertion;
	}

	/**
	 * sets HCP Assertion of user used to request a context assertion for virtual
	 * organizations. This is needed if context assertion has to be requested from
	 * another ELGA area than default.
	 *
	 * @param hcpContextAssertion HCP Assertion of user used to request a context
	 *                            assertion for virtual organizations.
	 */
	public void setHcpContextAssertion(AssertionType hcpContextAssertion) {
		this.hcpContextAssertion = hcpContextAssertion;
	}

	/**
	 * sets HCP Assertion of user used to request a context assertion for electronic
	 * immunization record. This is needed if context assertion has to be requested
	 * from another ELGA area than default.
	 *
	 * @param hcpContextAssertion HCP Assertion of user used to request a context
	 *                            assertion for electronic immunization record.
	 */
	public void setHcpEImmunContextAssertion(AssertionType hcpContextAssertion) {
		this.hcpEImmunizationContextAssertion = hcpContextAssertion;
	}

	/**
	 * gets all stored context assertions for virtual organizations and electronic
	 * immunization records. The map consists of a key that is assigned to a
	 * specific context assertion. The key is application id of the eHealth
	 * application for example 103 for electronic immunization record.
	 *
	 * @return stored context assertions as Map
	 */
	public Map<String, AssertionType> getContextAssertions() {
		return this.contextAssertions;
	}

	/**
	 * gets a single context assertions for a specific eHealth application with id,
	 * which is passed as parameter key.
	 *
	 * @param key id of eHealth application for which context assertion is needed
	 *
	 * @return stored context assertion for eHealth application
	 */
	public AssertionType getContextAssertion(String key) {
		return this.contextAssertions.get(key);
	}

	/**
	 * adds context assertion to a map with eHealth application ID as key.
	 *
	 * @param key       id of area (eHealth application) for which context assertion
	 *                  is intended e.g. 103 for eImmunization
	 * @param assertion context assertion
	 */
	public void putContextAssertion(String key, AssertionType assertion) {
		this.contextAssertions.put(key, assertion);
	}

}
