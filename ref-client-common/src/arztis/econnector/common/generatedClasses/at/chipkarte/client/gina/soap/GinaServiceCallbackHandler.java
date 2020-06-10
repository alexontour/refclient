/**
 * GinaServiceCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap;


/**
 *  GinaServiceCallbackHandler Callback class, Users can extend this class and implement
 *  their own receiveResult and receiveError methods.
 */
public abstract class GinaServiceCallbackHandler {
    protected Object clientData;

    /**
     * User can pass in any object that needs to be accessed once the NonBlocking
     * Web service call is finished and appropriate method of this CallBack is called.
     * @param clientData Object mechanism by which the user can pass in user data
     * that will be avilable at the time this callback is called.
     */
    public GinaServiceCallbackHandler(Object clientData) {
        this.clientData = clientData;
    }

    /**
     * Please use this constructor if you don't want to set any clientData
     */
    public GinaServiceCallbackHandler() {
        this.clientData = null;
    }

    /**
     * Get the client data
     */
    public Object getClientData() {
        return clientData;
    }

    /**
     * auto generated Axis2 call back method for getFreeDialogs method
     * override this method for handling normal response from getFreeDialogs operation
     */
    public void receiveResultgetFreeDialogs(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.GinaServiceStub.GetFreeDialogsResponseE result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from getFreeDialogs operation
     */
    public void receiveErrorgetFreeDialogs(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for getGinaAndServiceavailabilityInformation method
     * override this method for handling normal response from getGinaAndServiceavailabilityInformation operation
     */
    public void receiveResultgetGinaAndServiceavailabilityInformation(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.GinaServiceStub.GetGinaAndServiceavailabilityInformationResponseE result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from getGinaAndServiceavailabilityInformation operation
     */
    public void receiveErrorgetGinaAndServiceavailabilityInformation(
        java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for getCardReaders method
     * override this method for handling normal response from getCardReaders operation
     */
    public void receiveResultgetCardReaders(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.GinaServiceStub.GetCardReadersResponseE result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from getCardReaders operation
     */
    public void receiveErrorgetCardReaders(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for getGinaSoftwareVersion method
     * override this method for handling normal response from getGinaSoftwareVersion operation
     */
    public void receiveResultgetGinaSoftwareVersion(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.GinaServiceStub.GetGinaSoftwareVersionResponseE result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from getGinaSoftwareVersion operation
     */
    public void receiveErrorgetGinaSoftwareVersion(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for releaseCardReader method
     * override this method for handling normal response from releaseCardReader operation
     */
    public void receiveResultreleaseCardReader(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.GinaServiceStub.ReleaseCardReaderResponseE result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from releaseCardReader operation
     */
    public void receiveErrorreleaseCardReader(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for setCardReader method
     * override this method for handling normal response from setCardReader operation
     */
    public void receiveResultsetCardReader(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.GinaServiceStub.SetCardReaderResponseE result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from setCardReader operation
     */
    public void receiveErrorsetCardReader(java.lang.Exception e) {
    }
}
