/**
 * Provides the classes which are needed to handle REST requests for ELGA reference client. 
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
 * healthcare service provider (GDA). Moreover it has the HCP assertion as
 * attribute, because every user have their own assertion. In this class a timer
 * was set to renew the HCP assertion after 3h 55m. Furthermore the context
 * assertions for different services such as virtual organizations and
 * immunization record are stored for each user. <br/>
 * For users, which registered for the GINA, the created dialog is cached in
 * this class.
 * 
 * @author ET-Innovations
 *
 */

public class ConnectionData {

	private String userJwtToken;
	protected AssertionType sHcpAssertion;
	protected AssertionType hcpContextAssertion;
	protected AssertionType hcpEImmunizationContextAssertion;
	protected Map<String, AssertionType> contextAssertions;
	protected Timer oTimer = new Timer();
	protected AssertionTransactions oAssertionTransaction;
	protected DialogCreator oDialog;

	/**
	 * Default constructor to create an instance of {@link ConnectionData}. This
	 * constructor assigns an empty Map to the context assertions.
	 */
	public ConnectionData() {
		this.contextAssertions = new HashMap<>();
	}

	/**
	 * User JWT Token generated from the hcp assertion. There are separate assertions for each user.
	 * 
	 * @param jwt user token
	 */
	public void setUserJwtToken(String jwt) {
		this.userJwtToken = jwt;
	}

	/**
	 * 
	 * @return user token
	 */
	public String getUserJwtToken() {
		return this.userJwtToken;
	}

	/**
	 * This method returns the GINA Dialog ({@link DialogCreator}) with all cached
	 * information such as used card readers or information about the surgeries.
	 * 
	 * @return dialog for a specific user
	 */
	public DialogCreator getDialog() {
		return this.oDialog;
	}

	/**
	 * Unique GINA dialog ({@link DialogCreator}) for the user.
	 * 
	 * @param dialog created GINA dialog, which should be cached for the user
	 */
	public void setDialog(DialogCreator dialog) {
		this.oDialog = dialog;
	}

	/**
	 * sets the HCP Assertion
	 * 
	 * @param assertion HCP Assertion of the user
	 */
	public void setHcpAssertion(AssertionType assertion) {
		this.sHcpAssertion = assertion;
	}

	/**
	 * gets the HCP Assertion of the user
	 * 
	 * @return HCP Assertion of the user
	 */
	public AssertionType getHcpAssertion() {
		return this.sHcpAssertion;
	}

	/**
	 * gets the HCP Assertion of the user used to request a context assertion for
	 * the virtual organizations. This is needed if the context assertion has to be
	 * requested from another ELGA area than the default. Context assertions are
	 * needed for ELGA eHealth applications such as electronic immunization record
	 * (eImpfpass) or virtual organizations
	 * 
	 * @return HCP Assertion of the user used to request a context assertion for
	 *         virtual organizations.
	 */
	public AssertionType getHcpContextAssertion() {
		return hcpContextAssertion;
	}

	/**
	 * gets the HCP Assertion of the user used to request a context assertion for
	 * the electronic immunization record. This is needed if the context assertion
	 * has to be requested from another ELGA area than the default. Context
	 * assertions are needed for ELGA eHealth applications such as electronic
	 * immunization record (eImpfpass) or virtual organizations
	 * 
	 * @return HCP Assertion of the user used to request a context assertion for
	 *         electronic immunization record.
	 */
	public AssertionType getHcpEImmunizationContextAssertion() {
		return hcpEImmunizationContextAssertion;
	}

	/**
	 * sets the HCP Assertion of the user used to request a context assertion for
	 * the virtual organizations. This is needed if the context assertion has to be
	 * requested from another ELGA area than the default.
	 * 
	 * @param hcpContextAssertion HCP Assertion of the user used to request a
	 *                            context assertion for virtual organizations.
	 */
	public void setHcpContextAssertion(AssertionType hcpContextAssertion) {
		this.hcpContextAssertion = hcpContextAssertion;
	}

	/**
	 * sets the HCP Assertion of the user used to request a context assertion for
	 * the electronic immunization record. This is needed if the context assertion
	 * has to be requested from another ELGA area than the default.
	 * 
	 * @param hcpContextAssertion HCP Assertion of the user used to request a
	 *                            context assertion for electronic immunization
	 *                            record.
	 */
	public void setHcpEImmunContextAssertion(AssertionType hcpContextAssertion) {
		this.hcpEImmunizationContextAssertion = hcpContextAssertion;
	}

	/**
	 * gets all stored context assertions for virtual organizations and electronic
	 * immunization records. The map consists of a key that is assigned to a
	 * specific context assertion. The key is the application id of the eHealth
	 * application for example 103 for the electronic immunization record.
	 * 
	 * @return stored context assertions as Map
	 */
	public Map<String, AssertionType> getContextAssertions() {
		return this.contextAssertions;
	}

	/**
	 * gets a single context assertions for a specific eHealth application with the
	 * id, which is passed as parameter key.
	 *
	 * @param key id of the eHealth application for which the context assertion is
	 *            needed
	 * 
	 * @return stored context assertion for eHealth application
	 */
	public AssertionType getContextAssertion(String key) {
		return this.contextAssertions.get(key);
	}

	/**
	 * adds the context Assertion to a map with eHealth application ID as key
	 * 
	 * @param key           id of the area (eHealth application) for which the context assertion is
	 *                      intended e.g. 103 for eImmunization
	 * @param assertion     context assertion
	 * 
	 */
	public void putContextAssertion(String key, AssertionType assertion) {
		this.contextAssertions.put(key, assertion);		
	}

}
