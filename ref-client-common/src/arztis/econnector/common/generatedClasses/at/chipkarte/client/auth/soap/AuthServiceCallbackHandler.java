/**
 * AuthServiceCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap;


/**
 *  AuthServiceCallbackHandler Callback class, Users can extend this class and implement
 *  their own receiveResult and receiveError methods.
 */
public abstract class AuthServiceCallbackHandler {
    protected Object clientData;

    /**
     * User can pass in any object that needs to be accessed once the NonBlocking
     * Web service call is finished and appropriate method of this CallBack is called.
     * @param clientData Object mechanism by which the user can pass in user data
     * that will be avilable at the time this callback is called.
     */
    public AuthServiceCallbackHandler(Object clientData) {
        this.clientData = clientData;
    }

    /**
     * Please use this constructor if you don't want to set any clientData
     */
    public AuthServiceCallbackHandler() {
        this.clientData = null;
    }

    /**
     * Get the client data
     */
    public Object getClientData() {
        return clientData;
    }

    /**
     * auto generated Axis2 call back method for setDialogAddress method
     * override this method for handling normal response from setDialogAddress operation
     */
    public void receiveResultsetDialogAddress(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.SetDialogAddressResponseE result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from setDialogAddress operation
     */
    public void receiveErrorsetDialogAddress(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for authenticateDialog method
     * override this method for handling normal response from authenticateDialog operation
     */
    public void receiveResultauthenticateDialog(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogResponseE result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from authenticateDialog operation
     */
    public void receiveErrorauthenticateDialog(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for authenticateDialogEnt method
     * override this method for handling normal response from authenticateDialogEnt operation
     */
    public void receiveResultauthenticateDialogEnt(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogEntResponseE result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from authenticateDialogEnt operation
     */
    public void receiveErrorauthenticateDialogEnt(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for closeDialog method
     * override this method for handling normal response from closeDialog operation
     */
    public void receiveResultcloseDialog(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.CloseDialogResponseE result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from closeDialog operation
     */
    public void receiveErrorcloseDialog(java.lang.Exception e) {
    }
}
