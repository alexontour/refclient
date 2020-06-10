/**
 * KBSServiceCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.ihe.generatedClasses.kbs;


/**
 *  KBSServiceCallbackHandler Callback class, Users can extend this class and implement
 *  their own receiveResult and receiveError methods.
 */
public abstract class KBSServiceCallbackHandler {
    protected Object clientData;

    /**
     * User can pass in any object that needs to be accessed once the NonBlocking
     * Web service call is finished and appropriate method of this CallBack is called.
     * @param clientData Object mechanism by which the user can pass in user data
     * that will be avilable at the time this callback is called.
     */
    public KBSServiceCallbackHandler(Object clientData) {
        this.clientData = clientData;
    }

    /**
     * Please use this constructor if you don't want to set any clientData
     */
    public KBSServiceCallbackHandler() {
        this.clientData = null;
    }

    /**
     * Get the client data
     */
    public Object getClientData() {
        return clientData;
    }

    /**
     * auto generated Axis2 call back method for issueKB method
     * override this method for handling normal response from issueKB operation
     */
    public void receiveResultissueKB(
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from issueKB operation
     */
    public void receiveErrorissueKB(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for delegateKB method
     * override this method for handling normal response from delegateKB operation
     */
    public void receiveResultdelegateKB(
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from delegateKB operation
     */
    public void receiveErrordelegateKB(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for listKB method
     * override this method for handling normal response from listKB operation
     */
    public void receiveResultlistKB(
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from listKB operation
     */
    public void receiveErrorlistKB(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for issueKBeCard method
     * override this method for handling normal response from issueKBeCard operation
     */
    public void receiveResultissueKBeCard(
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from issueKBeCard operation
     */
    public void receiveErrorissueKBeCard(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for cancelKB method
     * override this method for handling normal response from cancelKB operation
     */
    public void receiveResultcancelKB(
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from cancelKB operation
     */
    public void receiveErrorcancelKB(java.lang.Exception e) {
    }
}
