/**
 * BaseServiceCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap;


/**
 *  BaseServiceCallbackHandler Callback class, Users can extend this class and implement
 *  their own receiveResult and receiveError methods.
 */
public abstract class BaseServiceCallbackHandler {
    protected Object clientData;

    /**
     * User can pass in any object that needs to be accessed once the NonBlocking
     * Web service call is finished and appropriate method of this CallBack is called.
     * @param clientData Object mechanism by which the user can pass in user data
     * that will be avilable at the time this callback is called.
     */
    public BaseServiceCallbackHandler(Object clientData) {
        this.clientData = clientData;
    }

    /**
     * Please use this constructor if you don't want to set any clientData
     */
    public BaseServiceCallbackHandler() {
        this.clientData = null;
    }

    /**
     * Get the client data
     */
    public Object getClientData() {
        return clientData;
    }

    /**
     * auto generated Axis2 call back method for getBerechtigungen method
     * override this method for handling normal response from getBerechtigungen operation
     */
    public void receiveResultgetBerechtigungen(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetBerechtigungenResponseE result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from getBerechtigungen operation
     */
    public void receiveErrorgetBerechtigungen(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for getMessages method
     * override this method for handling normal response from getMessages operation
     */
    public void receiveResultgetMessages(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMessagesResponseE result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from getMessages operation
     */
    public void receiveErrorgetMessages(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for getMinMsgPollingIntervall method
     * override this method for handling normal response from getMinMsgPollingIntervall operation
     */
    public void receiveResultgetMinMsgPollingIntervall(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMinMsgPollingIntervallResponseE result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from getMinMsgPollingIntervall operation
     */
    public void receiveErrorgetMinMsgPollingIntervall(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for getVertraege method
     * override this method for handling normal response from getVertraege operation
     */
    public void receiveResultgetVertraege(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetVertraegeResponseE result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from getVertraege operation
     */
    public void receiveErrorgetVertraege(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for commonTypes method
     * override this method for handling normal response from commonTypes operation
     */
    public void receiveResultcommonTypes(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CommonTypesResponseE result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from commonTypes operation
     */
    public void receiveErrorcommonTypes(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for checkStatus method
     * override this method for handling normal response from checkStatus operation
     */
    public void receiveResultcheckStatus(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CheckStatusResponseE result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from checkStatus operation
     */
    public void receiveErrorcheckStatus(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for getFachgebieteByOrdId method
     * override this method for handling normal response from getFachgebieteByOrdId operation
     */
    public void receiveResultgetFachgebieteByOrdId(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetFachgebieteByOrdIdResponseE result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from getFachgebieteByOrdId operation
     */
    public void receiveErrorgetFachgebieteByOrdId(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for pollMessages method
     * override this method for handling normal response from pollMessages operation
     */
    public void receiveResultpollMessages(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PollMessagesResponseE result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from pollMessages operation
     */
    public void receiveErrorpollMessages(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for uebersiedelnOrdination method
     * override this method for handling normal response from uebersiedelnOrdination operation
     */
    public void receiveResultuebersiedelnOrdination(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.UebersiedelnOrdinationResponseE result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from uebersiedelnOrdination operation
     */
    public void receiveErroruebersiedelnOrdination(java.lang.Exception e) {
    }
}
