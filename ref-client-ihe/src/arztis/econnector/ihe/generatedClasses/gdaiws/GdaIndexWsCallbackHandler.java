/**
 * GdaIndexWsCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.ihe.generatedClasses.gdaiws;


/**
 *  GdaIndexWsCallbackHandler Callback class, Users can extend this class and implement
 *  their own receiveResult and receiveError methods.
 */
public abstract class GdaIndexWsCallbackHandler {
    protected Object clientData;

    /**
     * User can pass in any object that needs to be accessed once the NonBlocking
     * Web service call is finished and appropriate method of this CallBack is called.
     * @param clientData Object mechanism by which the user can pass in user data
     * that will be avilable at the time this callback is called.
     */
    public GdaIndexWsCallbackHandler(Object clientData) {
        this.clientData = clientData;
    }

    /**
     * Please use this constructor if you don't want to set any clientData
     */
    public GdaIndexWsCallbackHandler() {
        this.clientData = null;
    }

    /**
     * Get the client data
     */
    public Object getClientData() {
        return clientData;
    }

    /**
     * auto generated Axis2 call back method for gdaIndexSuche method
     * override this method for handling normal response from gdaIndexSuche operation
     */
    public void receiveResultgdaIndexSuche(
        arztis.econnector.ihe.generatedClasses.gdaiws.GdaIndexWsStub.GdaIndexResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from gdaIndexSuche operation
     */
    public void receiveErrorgdaIndexSuche(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for gdaIndexPersonenSuche method
     * override this method for handling normal response from gdaIndexPersonenSuche operation
     */
    public void receiveResultgdaIndexPersonenSuche(
        arztis.econnector.ihe.generatedClasses.gdaiws.GdaIndexWsStub.GdaIndexResponseList result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from gdaIndexPersonenSuche operation
     */
    public void receiveErrorgdaIndexPersonenSuche(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for gdaIndexListenSuche method
     * override this method for handling normal response from gdaIndexListenSuche operation
     */
    public void receiveResultgdaIndexListenSuche(
        arztis.econnector.ihe.generatedClasses.gdaiws.GdaIndexWsStub.GdaIndexResponseList result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from gdaIndexListenSuche operation
     */
    public void receiveErrorgdaIndexListenSuche(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for gdaIndexSuche_aktiv method
     * override this method for handling normal response from gdaIndexSuche_aktiv operation
     */
    public void receiveResultgdaIndexSuche_aktiv(
        arztis.econnector.ihe.generatedClasses.gdaiws.GdaIndexWsStub.GdaIndexResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from gdaIndexSuche_aktiv operation
     */
    public void receiveErrorgdaIndexSuche_aktiv(java.lang.Exception e) {
    }
}
