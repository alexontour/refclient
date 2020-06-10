/**
 * IHEServiceCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.ihe.generatedClasses.ihe.repository;


/**
 *  IHEServiceCallbackHandler Callback class, Users can extend this class and implement
 *  their own receiveResult and receiveError methods.
 */
public abstract class IHEServiceCallbackHandler {
    protected Object clientData;

    /**
     * User can pass in any object that needs to be accessed once the NonBlocking
     * Web service call is finished and appropriate method of this CallBack is called.
     * @param clientData Object mechanism by which the user can pass in user data
     * that will be avilable at the time this callback is called.
     */
    public IHEServiceCallbackHandler(Object clientData) {
        this.clientData = clientData;
    }

    /**
     * Please use this constructor if you don't want to set any clientData
     */
    public IHEServiceCallbackHandler() {
        this.clientData = null;
    }

    /**
     * Get the client data
     */
    public Object getClientData() {
        return clientData;
    }

    /**
     * auto generated Axis2 call back method for retrieveDocumentSetRequest method
     * override this method for handling normal response from retrieveDocumentSetRequest operation
     */
    public void receiveResultretrieveDocumentSetRequest(
        arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseDocument result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from retrieveDocumentSetRequest operation
     */
    public void receiveErrorretrieveDocumentSetRequest(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for provideAndRegisterDocumentSetbRequest method
     * override this method for handling normal response from provideAndRegisterDocumentSetbRequest operation
     */
    public void receiveResultprovideAndRegisterDocumentSetbRequest(
        arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from provideAndRegisterDocumentSetbRequest operation
     */
    public void receiveErrorprovideAndRegisterDocumentSetbRequest(
        java.lang.Exception e) {
    }
}
