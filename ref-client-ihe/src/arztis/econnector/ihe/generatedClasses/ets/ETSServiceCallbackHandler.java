/**
 * ETSServiceCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.ihe.generatedClasses.ets;


/**
 *  ETSServiceCallbackHandler Callback class, Users can extend this class and implement
 *  their own receiveResult and receiveError methods.
 */
public abstract class ETSServiceCallbackHandler {
    protected Object clientData;

    /**
     * User can pass in any object that needs to be accessed once the NonBlocking
     * Web service call is finished and appropriate method of this CallBack is called.
     * @param clientData Object mechanism by which the user can pass in user data
     * that will be avilable at the time this callback is called.
     */
    public ETSServiceCallbackHandler(Object clientData) {
        this.clientData = clientData;
    }

    /**
     * Please use this constructor if you don't want to set any clientData
     */
    public ETSServiceCallbackHandler() {
        this.clientData = null;
    }

    /**
     * Get the client data
     */
    public Object getClientData() {
        return clientData;
    }

    /**
     * auto generated Axis2 call back method for issueAssertion method
     * override this method for handling normal response from issueAssertion operation
     */
    public void receiveResultissueAssertion(
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from issueAssertion operation
     */
    public void receiveErrorissueAssertion(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for cancelAssertion method
     * override this method for handling normal response from cancelAssertion operation
     */
    public void receiveResultcancelAssertion(
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from cancelAssertion operation
     */
    public void receiveErrorcancelAssertion(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for renewAssertion method
     * override this method for handling normal response from renewAssertion operation
     */
    public void receiveResultrenewAssertion(
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from renewAssertion operation
     */
    public void receiveErrorrenewAssertion(java.lang.Exception e) {
    }
}
