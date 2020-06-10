/**
 * IHERegistryServiceCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.ihe.generatedClasses.ihe.registry;


/**
 *  IHERegistryServiceCallbackHandler Callback class, Users can extend this class and implement
 *  their own receiveResult and receiveError methods.
 */
public abstract class IHERegistryServiceCallbackHandler {
    protected Object clientData;

    /**
     * User can pass in any object that needs to be accessed once the NonBlocking
     * Web service call is finished and appropriate method of this CallBack is called.
     * @param clientData Object mechanism by which the user can pass in user data
     * that will be avilable at the time this callback is called.
     */
    public IHERegistryServiceCallbackHandler(Object clientData) {
        this.clientData = clientData;
    }

    /**
     * Please use this constructor if you don't want to set any clientData
     */
    public IHERegistryServiceCallbackHandler() {
        this.clientData = null;
    }

    /**
     * Get the client data
     */
    public Object getClientData() {
        return clientData;
    }

    /**
     * auto generated Axis2 call back method for registryStoredQuery method
     * override this method for handling normal response from registryStoredQuery operation
     */
    public void receiveResultregistryStoredQuery(
        arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from registryStoredQuery operation
     */
    public void receiveErrorregistryStoredQuery(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for deleteDocumentSetRequest method
     * override this method for handling normal response from deleteDocumentSetRequest operation
     */
    public void receiveResultdeleteDocumentSetRequest(
        arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from deleteDocumentSetRequest operation
     */
    public void receiveErrordeleteDocumentSetRequest(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for updateDocumentSetRequest method
     * override this method for handling normal response from updateDocumentSetRequest operation
     */
    public void receiveResultupdateDocumentSetRequest(
        arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from updateDocumentSetRequest operation
     */
    public void receiveErrorupdateDocumentSetRequest(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for registerDocumentSetbRequest method
     * override this method for handling normal response from registerDocumentSetbRequest operation
     */
    public void receiveResultregisterDocumentSetbRequest(
        arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from registerDocumentSetbRequest operation
     */
    public void receiveErrorregisterDocumentSetbRequest(java.lang.Exception e) {
    }
}
