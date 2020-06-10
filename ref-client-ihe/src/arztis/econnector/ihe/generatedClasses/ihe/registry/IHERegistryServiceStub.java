/**
 * IHERegistryServiceStub.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.ihe.generatedClasses.ihe.registry;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/*
 *  IHERegistryServiceStub java implementation
 */
public class IHERegistryServiceStub extends org.apache.axis2.client.Stub {
	private static final Logger LOGGER = LoggerFactory.getLogger(IHERegistryServiceStub.class.getName());
    private static int counter = 0;
    protected org.apache.axis2.description.AxisOperation[] _operations;

    //hashmaps to keep the fault mapping
    private java.util.HashMap faultExceptionNameMap = new java.util.HashMap();
    private java.util.HashMap faultExceptionClassNameMap = new java.util.HashMap();
    private java.util.HashMap faultMessageMap = new java.util.HashMap();

    /////////////////////////////////////////////////////////////////////////
    private javax.xml.namespace.QName[] opNameArray = null;

    //http://zgf1:8181/ACSFacade/XDS/eBefunde
    private final org.apache.xmlbeans.XmlOptions _xmlOptions;

    {
        _xmlOptions = new org.apache.xmlbeans.XmlOptions();
        _xmlOptions.setSaveNoXmlDecl();
        _xmlOptions.setSaveAggressiveNamespaces();
        _xmlOptions.setSaveNamespacesFirst();
    }

    /**
     *Constructor that takes in a configContext
     */
    public IHERegistryServiceStub(
        org.apache.axis2.context.ConfigurationContext configurationContext,
        java.lang.String targetEndpoint) throws org.apache.axis2.AxisFault {
        this(configurationContext, targetEndpoint, false);
    }

    /**
     * Constructor that takes in a configContext  and useseperate listner
     */
    public IHERegistryServiceStub(
        org.apache.axis2.context.ConfigurationContext configurationContext,
        java.lang.String targetEndpoint, boolean useSeparateListener)
        throws org.apache.axis2.AxisFault {
        //To populate AxisService
        populateAxisService();
        populateFaults();

        _serviceClient = new org.apache.axis2.client.ServiceClient(configurationContext,
                _service);

        _service.applyPolicy();

        _serviceClient.getOptions()
                      .setTo(new org.apache.axis2.addressing.EndpointReference(
                targetEndpoint));
        _serviceClient.getOptions().setUseSeparateListener(useSeparateListener);

        //Set the soap version
        _serviceClient.getOptions()
                      .setSoapVersionURI(org.apache.axiom.soap.SOAP12Constants.SOAP_ENVELOPE_NAMESPACE_URI);
    }

    /**
     * Default Constructor
     */
    public IHERegistryServiceStub(
        org.apache.axis2.context.ConfigurationContext configurationContext)
        throws org.apache.axis2.AxisFault {
        this(configurationContext, "http://zgf1:8181/ACSFacade/XDS/eBefunde");
    }

    /**
     * Default Constructor
     */
    public IHERegistryServiceStub() throws org.apache.axis2.AxisFault {
        this("http://zgf1:8181/ACSFacade/XDS/eBefunde");
    }

    /**
     * Constructor taking the target endpoint
     */
    public IHERegistryServiceStub(java.lang.String targetEndpoint)
        throws org.apache.axis2.AxisFault {
        this(null, targetEndpoint);
    }

    private static synchronized java.lang.String getUniqueSuffix() {
        // reset the counter if it is greater than 99999
        if (counter > 99999) {
            counter = 0;
        }

        counter = counter + 1;

        return java.lang.Long.toString(java.lang.System.currentTimeMillis()) +
        "_" + counter;
    }

    private void populateAxisService() throws org.apache.axis2.AxisFault {
        //creating the Service with a unique name
        _service = new org.apache.axis2.description.AxisService(
                "IHERegistryService" + getUniqueSuffix());
        addAnonymousOperations();

        //creating the operations
        org.apache.axis2.description.AxisOperation __operation;

        _operations = new org.apache.axis2.description.AxisOperation[4];

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://ihe.spirit.com/", "registryStoredQuery"));
        _service.addOperation(__operation);

        (__operation).getMessage(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_OUT_VALUE)
         .getPolicySubject()
         .attachPolicy(getPolicy(
                "<wsp:Policy wsu:Id=\"AddressingPolicy\" xmlns:wsp=\"http://www.w3.org/ns/ws-policy\" xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"><wsp:ExactlyOne><wsp:All><wsaw:UsingAddressing xmlns:wsaw=\"http://www.w3.org/2006/05/addressing/wsdl\"></wsaw:UsingAddressing></wsp:All></wsp:ExactlyOne></wsp:Policy>"));

        (__operation).getMessage(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE)
         .getPolicySubject()
         .attachPolicy(getPolicy(
                "<wsp:Policy wsu:Id=\"AddressingPolicy\" xmlns:wsp=\"http://www.w3.org/ns/ws-policy\" xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"><wsp:ExactlyOne><wsp:All><wsaw:UsingAddressing xmlns:wsaw=\"http://www.w3.org/2006/05/addressing/wsdl\"></wsaw:UsingAddressing></wsp:All></wsp:ExactlyOne></wsp:Policy>"));

        _operations[0] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://ihe.spirit.com/", "deleteDocumentSetRequest"));
        _service.addOperation(__operation);

        (__operation).getMessage(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_OUT_VALUE)
         .getPolicySubject()
         .attachPolicy(getPolicy(
                "<wsp:Policy wsu:Id=\"AddressingPolicy\" xmlns:wsp=\"http://www.w3.org/ns/ws-policy\" xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"><wsp:ExactlyOne><wsp:All><wsaw:UsingAddressing xmlns:wsaw=\"http://www.w3.org/2006/05/addressing/wsdl\"></wsaw:UsingAddressing></wsp:All></wsp:ExactlyOne></wsp:Policy>"));

        (__operation).getMessage(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE)
         .getPolicySubject()
         .attachPolicy(getPolicy(
                "<wsp:Policy wsu:Id=\"AddressingPolicy\" xmlns:wsp=\"http://www.w3.org/ns/ws-policy\" xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"><wsp:ExactlyOne><wsp:All><wsaw:UsingAddressing xmlns:wsaw=\"http://www.w3.org/2006/05/addressing/wsdl\"></wsaw:UsingAddressing></wsp:All></wsp:ExactlyOne></wsp:Policy>"));

        _operations[1] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://ihe.spirit.com/", "updateDocumentSetRequest"));
        _service.addOperation(__operation);

        (__operation).getMessage(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_OUT_VALUE)
         .getPolicySubject()
         .attachPolicy(getPolicy(
                "<wsp:Policy wsu:Id=\"AddressingPolicy\" xmlns:wsp=\"http://www.w3.org/ns/ws-policy\" xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"><wsp:ExactlyOne><wsp:All><wsaw:UsingAddressing xmlns:wsaw=\"http://www.w3.org/2006/05/addressing/wsdl\"></wsaw:UsingAddressing></wsp:All></wsp:ExactlyOne></wsp:Policy>"));

        (__operation).getMessage(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE)
         .getPolicySubject()
         .attachPolicy(getPolicy(
                "<wsp:Policy wsu:Id=\"AddressingPolicy\" xmlns:wsp=\"http://www.w3.org/ns/ws-policy\" xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"><wsp:ExactlyOne><wsp:All><wsaw:UsingAddressing xmlns:wsaw=\"http://www.w3.org/2006/05/addressing/wsdl\"></wsaw:UsingAddressing></wsp:All></wsp:ExactlyOne></wsp:Policy>"));

        _operations[2] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://ihe.spirit.com/", "registerDocumentSetbRequest"));
        _service.addOperation(__operation);

        (__operation).getMessage(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_OUT_VALUE)
         .getPolicySubject()
         .attachPolicy(getPolicy(
                "<wsp:Policy wsu:Id=\"AddressingPolicy\" xmlns:wsp=\"http://www.w3.org/ns/ws-policy\" xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"><wsp:ExactlyOne><wsp:All><wsaw:UsingAddressing xmlns:wsaw=\"http://www.w3.org/2006/05/addressing/wsdl\"></wsaw:UsingAddressing></wsp:All></wsp:ExactlyOne></wsp:Policy>"));

        (__operation).getMessage(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE)
         .getPolicySubject()
         .attachPolicy(getPolicy(
                "<wsp:Policy wsu:Id=\"AddressingPolicy\" xmlns:wsp=\"http://www.w3.org/ns/ws-policy\" xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"><wsp:ExactlyOne><wsp:All><wsaw:UsingAddressing xmlns:wsaw=\"http://www.w3.org/2006/05/addressing/wsdl\"></wsaw:UsingAddressing></wsp:All></wsp:ExactlyOne></wsp:Policy>"));

        _operations[3] = __operation;
    }

    //populates the faults
    private void populateFaults() {
        faultExceptionNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "RegistryStoredQuery"),
            "arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage");
        faultExceptionClassNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "RegistryStoredQuery"),
            "arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage");
        faultMessageMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "RegistryStoredQuery"),
            "arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument");

        faultExceptionNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "DeleteDocumentSetRequest"),
            "arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage");
        faultExceptionClassNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "DeleteDocumentSetRequest"),
            "arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage");
        faultMessageMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "DeleteDocumentSetRequest"),
            "arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument");

        faultExceptionNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "UpdateDocumentSetRequest"),
            "arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage");
        faultExceptionClassNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "UpdateDocumentSetRequest"),
            "arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage");
        faultMessageMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "UpdateDocumentSetRequest"),
            "arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument");

        faultExceptionNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "RegisterDocumentSetbRequest"),
            "arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage");
        faultExceptionClassNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "RegisterDocumentSetbRequest"),
            "arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage");
        faultMessageMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "RegisterDocumentSetbRequest"),
            "arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument");
    }

    /**
     * Auto generated method signature
     *
     * @see arztis.econnector.ihe.generatedClasses.ihe.registry.IHERegistryService#registryStoredQuery
     * @param adhocQueryRequest6
     * @param security7
     * @throws arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage :
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument registryStoredQuery(
        arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument adhocQueryRequest6,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security7)
        throws java.rmi.RemoteException,
            arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage {
        org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[0].getName());
            _operationClient.getOptions()
                            .setAction("urn:ihe:iti:2007:RegistryStoredQuery");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;

            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    adhocQueryRequest6,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ihe.spirit.com/", "registryStoredQuery")),
                    new javax.xml.namespace.QName(
                        "urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0",
                        "AdhocQueryRequest"));

            env.build();

            // add the children only if the parameter is not null
            if (security7 != null) {
                org.apache.axiom.om.OMElement omElementsecurity7 = toOM(security7,
                        optimizeContent(
                            new javax.xml.namespace.QName(
                                "http://ihe.spirit.com/", "registryStoredQuery")));
                addHeader(omElementsecurity7, env);
            }

            //adding SOAP soap_headers
            _serviceClient.addHeadersToEnvelope(env);
            // set the message context with that soap envelope
            _messageContext.setEnvelope(env);

            // add the message contxt to the operation client
            _operationClient.addMessageContext(_messageContext);

            //execute the operation client
            _operationClient.execute(true);

            org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
            org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();
            
            if (LOGGER.isInfoEnabled()) {
                LOGGER.info(_messageContext.getEnvelope().toString());
            }
			
			if (LOGGER.isInfoEnabled()) {
                LOGGER.info(_returnEnv.toString());
            }

            java.lang.Object object = fromOM(_returnEnv.getBody()
                                                       .getFirstElement(),
                    arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument.class);

            return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument) object;
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "RegistryStoredQuery"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "RegistryStoredQuery"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "RegistryStoredQuery"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        if (ex instanceof arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage) {
                            throw (arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage) ex;
                        }

                        throw new java.rmi.RemoteException(ex.getMessage(), ex);
                    } catch (java.lang.ClassCastException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.ClassNotFoundException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.NoSuchMethodException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.reflect.InvocationTargetException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.IllegalAccessException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.InstantiationException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    }
                } else {
                    throw f;
                }
            } else {
                throw f;
            }
        } finally {
            if (_messageContext.getTransportOut() != null) {
                _messageContext.getTransportOut().getSender()
                               .cleanup(_messageContext);
            }
        }
    }

    /**
     * Auto generated method signature for Asynchronous Invocations
     *
     * @see arztis.econnector.ihe.generatedClasses.ihe.registry.IHERegistryService#startregistryStoredQuery
     * @param adhocQueryRequest6
     * @param security7
     */
    public void startregistryStoredQuery(
        arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument adhocQueryRequest6,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security7,
        final arztis.econnector.ihe.generatedClasses.ihe.registry.IHERegistryServiceCallbackHandler callback)
        throws java.rmi.RemoteException {
        org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[0].getName());
        _operationClient.getOptions()
                        .setAction("urn:ihe:iti:2007:RegistryStoredQuery");
        _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

        addPropertyToOperationClient(_operationClient,
            org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
            "&");

        // create SOAP envelope with that payload
        org.apache.axiom.soap.SOAPEnvelope env = null;
        final org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

        //Style is Doc.
        env = toEnvelope(getFactory(_operationClient.getOptions()
                                                    .getSoapVersionURI()),
                adhocQueryRequest6,
                optimizeContent(
                    new javax.xml.namespace.QName("http://ihe.spirit.com/",
                        "registryStoredQuery")),
                new javax.xml.namespace.QName(
                    "urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0",
                    "AdhocQueryRequest"));

        // add the soap_headers only if they are not null
        if (security7 != null) {
            org.apache.axiom.om.OMElement omElementsecurity7 = toOM(security7,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ihe.spirit.com/", "registryStoredQuery")));
            addHeader(omElementsecurity7, env);
        }

        // adding SOAP soap_headers
        _serviceClient.addHeadersToEnvelope(env);
        // create message context with that soap envelope
        _messageContext.setEnvelope(env);

        // add the message context to the operation client
        _operationClient.addMessageContext(_messageContext);

        _operationClient.setCallback(new org.apache.axis2.client.async.AxisCallback() {
                public void onMessage(
                    org.apache.axis2.context.MessageContext resultContext) {
                    try {
                        org.apache.axiom.soap.SOAPEnvelope resultEnv = resultContext.getEnvelope();

                        java.lang.Object object = fromOM(resultEnv.getBody()
                                                                  .getFirstElement(),
                                arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument.class);
                        callback.receiveResultregistryStoredQuery((arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument) object);
                    } catch (org.apache.axis2.AxisFault e) {
                        callback.receiveErrorregistryStoredQuery(e);
                    }
                }

                public void onError(java.lang.Exception error) {
                    if (error instanceof org.apache.axis2.AxisFault) {
                        org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
                        org.apache.axiom.om.OMElement faultElt = f.getDetail();

                        if (faultElt != null) {
                            if (faultExceptionNameMap.containsKey(
                                        new org.apache.axis2.client.FaultMapKey(
                                            faultElt.getQName(),
                                            "RegistryStoredQuery"))) {
                                //make the fault by reflection
                                try {
                                    java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(),
                                                "RegistryStoredQuery"));
                                    java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                                    java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                                    java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                                    //message class
                                    java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(),
                                                "RegistryStoredQuery"));
                                    java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                                    java.lang.Object messageObject = fromOM(faultElt,
                                            messageClass);
                                    java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                            new java.lang.Class[] { messageClass });
                                    m.invoke(ex,
                                        new java.lang.Object[] { messageObject });

                                    if (ex instanceof arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage) {
                                        callback.receiveErrorregistryStoredQuery((arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage) ex);

                                        return;
                                    }

                                    callback.receiveErrorregistryStoredQuery(new java.rmi.RemoteException(
                                            ex.getMessage(), ex));
                                } catch (java.lang.ClassCastException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorregistryStoredQuery(f);
                                } catch (java.lang.ClassNotFoundException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorregistryStoredQuery(f);
                                } catch (java.lang.NoSuchMethodException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorregistryStoredQuery(f);
                                } catch (java.lang.reflect.InvocationTargetException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorregistryStoredQuery(f);
                                } catch (java.lang.IllegalAccessException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorregistryStoredQuery(f);
                                } catch (java.lang.InstantiationException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorregistryStoredQuery(f);
                                } catch (org.apache.axis2.AxisFault e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorregistryStoredQuery(f);
                                }
                            } else {
                                callback.receiveErrorregistryStoredQuery(f);
                            }
                        } else {
                            callback.receiveErrorregistryStoredQuery(f);
                        }
                    } else {
                        callback.receiveErrorregistryStoredQuery(error);
                    }
                }

                public void onFault(
                    org.apache.axis2.context.MessageContext faultContext) {
                    org.apache.axis2.AxisFault fault = org.apache.axis2.util.Utils.getInboundFaultFromMessageContext(faultContext);
                    onError(fault);
                }

                public void onComplete() {
                    try {
                        _messageContext.getTransportOut().getSender()
                                       .cleanup(_messageContext);
                    } catch (org.apache.axis2.AxisFault axisFault) {
                        callback.receiveErrorregistryStoredQuery(axisFault);
                    }
                }
            });

        org.apache.axis2.util.CallbackReceiver _callbackReceiver = null;

        if ((_operations[0].getMessageReceiver() == null) &&
                _operationClient.getOptions().isUseSeparateListener()) {
            _callbackReceiver = new org.apache.axis2.util.CallbackReceiver();
            _operations[0].setMessageReceiver(_callbackReceiver);
        }

        //execute the operation client
        _operationClient.execute(false);
    }

    /**
     * Auto generated method signature
     *
     * @see arztis.econnector.ihe.generatedClasses.ihe.registry.IHERegistryService#deleteDocumentSetRequest
     * @param removeObjectsRequest9
     * @param security10
     * @throws arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage :
     */
    public arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument deleteDocumentSetRequest(
        arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RemoveObjectsRequestDocument removeObjectsRequest9,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security10)
        throws java.rmi.RemoteException,
            arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage {
        org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[1].getName());
            _operationClient.getOptions()
                            .setAction("urn:ihe:iti:2010:DeleteDocumentSet");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;

            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    removeObjectsRequest9,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ihe.spirit.com/", "deleteDocumentSetRequest")),
                    new javax.xml.namespace.QName(
                        "urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0",
                        "RemoveObjectsRequest"));

            env.build();

            // add the children only if the parameter is not null
            if (security10 != null) {
                org.apache.axiom.om.OMElement omElementsecurity10 = toOM(security10,
                        optimizeContent(
                            new javax.xml.namespace.QName(
                                "http://ihe.spirit.com/",
                                "deleteDocumentSetRequest")));
                addHeader(omElementsecurity10, env);
            }

            //adding SOAP soap_headers
            _serviceClient.addHeadersToEnvelope(env);
            // set the message context with that soap envelope
            _messageContext.setEnvelope(env);

            // add the message contxt to the operation client
            _operationClient.addMessageContext(_messageContext);

            //execute the operation client
            _operationClient.execute(true);

            org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
            org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();
            
            if (LOGGER.isInfoEnabled()) {
                LOGGER.info(_messageContext.getEnvelope().toString());
            }
			
			if (LOGGER.isInfoEnabled()) {
                LOGGER.info(_returnEnv.toString());
            }

            java.lang.Object object = fromOM(_returnEnv.getBody()
                                                       .getFirstElement(),
                    arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument.class);

            return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument) object;
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "DeleteDocumentSetRequest"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "DeleteDocumentSetRequest"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "DeleteDocumentSetRequest"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        if (ex instanceof arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage) {
                            throw (arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage) ex;
                        }

                        throw new java.rmi.RemoteException(ex.getMessage(), ex);
                    } catch (java.lang.ClassCastException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.ClassNotFoundException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.NoSuchMethodException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.reflect.InvocationTargetException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.IllegalAccessException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.InstantiationException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    }
                } else {
                    throw f;
                }
            } else {
                throw f;
            }
        } finally {
            if (_messageContext.getTransportOut() != null) {
                _messageContext.getTransportOut().getSender()
                               .cleanup(_messageContext);
            }
        }
    }

    /**
     * Auto generated method signature for Asynchronous Invocations
     *
     * @see arztis.econnector.ihe.generatedClasses.ihe.registry.IHERegistryService#startdeleteDocumentSetRequest
     * @param removeObjectsRequest9
     * @param security10
     */
    public void startdeleteDocumentSetRequest(
        arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RemoveObjectsRequestDocument removeObjectsRequest9,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security10,
        final arztis.econnector.ihe.generatedClasses.ihe.registry.IHERegistryServiceCallbackHandler callback)
        throws java.rmi.RemoteException {
        org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[1].getName());
        _operationClient.getOptions()
                        .setAction("urn:ihe:iti:2010:DeleteDocumentSet");
        _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

        addPropertyToOperationClient(_operationClient,
            org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
            "&");

        // create SOAP envelope with that payload
        org.apache.axiom.soap.SOAPEnvelope env = null;
        final org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

        //Style is Doc.
        env = toEnvelope(getFactory(_operationClient.getOptions()
                                                    .getSoapVersionURI()),
                removeObjectsRequest9,
                optimizeContent(
                    new javax.xml.namespace.QName("http://ihe.spirit.com/",
                        "deleteDocumentSetRequest")),
                new javax.xml.namespace.QName(
                    "urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0",
                    "RemoveObjectsRequest"));

        // add the soap_headers only if they are not null
        if (security10 != null) {
            org.apache.axiom.om.OMElement omElementsecurity10 = toOM(security10,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ihe.spirit.com/", "deleteDocumentSetRequest")));
            addHeader(omElementsecurity10, env);
        }

        // adding SOAP soap_headers
        _serviceClient.addHeadersToEnvelope(env);
        // create message context with that soap envelope
        _messageContext.setEnvelope(env);

        // add the message context to the operation client
        _operationClient.addMessageContext(_messageContext);

        _operationClient.setCallback(new org.apache.axis2.client.async.AxisCallback() {
                public void onMessage(
                    org.apache.axis2.context.MessageContext resultContext) {
                    try {
                        org.apache.axiom.soap.SOAPEnvelope resultEnv = resultContext.getEnvelope();

                        java.lang.Object object = fromOM(resultEnv.getBody()
                                                                  .getFirstElement(),
                                arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument.class);
                        callback.receiveResultdeleteDocumentSetRequest((arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument) object);
                    } catch (org.apache.axis2.AxisFault e) {
                        callback.receiveErrordeleteDocumentSetRequest(e);
                    }
                }

                public void onError(java.lang.Exception error) {
                    if (error instanceof org.apache.axis2.AxisFault) {
                        org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
                        org.apache.axiom.om.OMElement faultElt = f.getDetail();

                        if (faultElt != null) {
                            if (faultExceptionNameMap.containsKey(
                                        new org.apache.axis2.client.FaultMapKey(
                                            faultElt.getQName(),
                                            "DeleteDocumentSetRequest"))) {
                                //make the fault by reflection
                                try {
                                    java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(),
                                                "DeleteDocumentSetRequest"));
                                    java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                                    java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                                    java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                                    //message class
                                    java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(),
                                                "DeleteDocumentSetRequest"));
                                    java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                                    java.lang.Object messageObject = fromOM(faultElt,
                                            messageClass);
                                    java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                            new java.lang.Class[] { messageClass });
                                    m.invoke(ex,
                                        new java.lang.Object[] { messageObject });

                                    if (ex instanceof arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage) {
                                        callback.receiveErrordeleteDocumentSetRequest((arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage) ex);

                                        return;
                                    }

                                    callback.receiveErrordeleteDocumentSetRequest(new java.rmi.RemoteException(
                                            ex.getMessage(), ex));
                                } catch (java.lang.ClassCastException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrordeleteDocumentSetRequest(f);
                                } catch (java.lang.ClassNotFoundException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrordeleteDocumentSetRequest(f);
                                } catch (java.lang.NoSuchMethodException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrordeleteDocumentSetRequest(f);
                                } catch (java.lang.reflect.InvocationTargetException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrordeleteDocumentSetRequest(f);
                                } catch (java.lang.IllegalAccessException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrordeleteDocumentSetRequest(f);
                                } catch (java.lang.InstantiationException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrordeleteDocumentSetRequest(f);
                                } catch (org.apache.axis2.AxisFault e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrordeleteDocumentSetRequest(f);
                                }
                            } else {
                                callback.receiveErrordeleteDocumentSetRequest(f);
                            }
                        } else {
                            callback.receiveErrordeleteDocumentSetRequest(f);
                        }
                    } else {
                        callback.receiveErrordeleteDocumentSetRequest(error);
                    }
                }

                public void onFault(
                    org.apache.axis2.context.MessageContext faultContext) {
                    org.apache.axis2.AxisFault fault = org.apache.axis2.util.Utils.getInboundFaultFromMessageContext(faultContext);
                    onError(fault);
                }

                public void onComplete() {
                    try {
                        _messageContext.getTransportOut().getSender()
                                       .cleanup(_messageContext);
                    } catch (org.apache.axis2.AxisFault axisFault) {
                        callback.receiveErrordeleteDocumentSetRequest(axisFault);
                    }
                }
            });

        org.apache.axis2.util.CallbackReceiver _callbackReceiver = null;

        if ((_operations[1].getMessageReceiver() == null) &&
                _operationClient.getOptions().isUseSeparateListener()) {
            _callbackReceiver = new org.apache.axis2.util.CallbackReceiver();
            _operations[1].setMessageReceiver(_callbackReceiver);
        }

        //execute the operation client
        _operationClient.execute(false);
    }

    /**
     * Auto generated method signature
     *
     * @see arztis.econnector.ihe.generatedClasses.ihe.registry.IHERegistryService#updateDocumentSetRequest
     * @param submitObjectsRequest12
     * @param security13
     * @throws arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage :
     */
    public arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument updateDocumentSetRequest(
        arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument submitObjectsRequest12,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security13)
        throws java.rmi.RemoteException,
            arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage {
        org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[2].getName());
            _operationClient.getOptions()
                            .setAction("urn:ihe:iti:2010:UpdateDocumentSet");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;

            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    submitObjectsRequest12,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ihe.spirit.com/", "updateDocumentSetRequest")),
                    new javax.xml.namespace.QName(
                        "urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0",
                        "SubmitObjectsRequest"));

            env.build();

            // add the children only if the parameter is not null
            if (security13 != null) {
                org.apache.axiom.om.OMElement omElementsecurity13 = toOM(security13,
                        optimizeContent(
                            new javax.xml.namespace.QName(
                                "http://ihe.spirit.com/",
                                "updateDocumentSetRequest")));
                addHeader(omElementsecurity13, env);
            }

            //adding SOAP soap_headers
            _serviceClient.addHeadersToEnvelope(env);
            // set the message context with that soap envelope
            _messageContext.setEnvelope(env);

            // add the message contxt to the operation client
            _operationClient.addMessageContext(_messageContext);

            //execute the operation client
            _operationClient.execute(true);

            org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
            org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();
            
            if (LOGGER.isInfoEnabled()) {
                LOGGER.info(_messageContext.getEnvelope().toString());
            }
			
			if (LOGGER.isInfoEnabled()) {
                LOGGER.info(_returnEnv.toString());
            }

            java.lang.Object object = fromOM(_returnEnv.getBody()
                                                       .getFirstElement(),
                    arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument.class);

            return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument) object;
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "UpdateDocumentSetRequest"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "UpdateDocumentSetRequest"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "UpdateDocumentSetRequest"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        if (ex instanceof arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage) {
                            throw (arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage) ex;
                        }

                        throw new java.rmi.RemoteException(ex.getMessage(), ex);
                    } catch (java.lang.ClassCastException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.ClassNotFoundException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.NoSuchMethodException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.reflect.InvocationTargetException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.IllegalAccessException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.InstantiationException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    }
                } else {
                    throw f;
                }
            } else {
                throw f;
            }
        } finally {
            if (_messageContext.getTransportOut() != null) {
                _messageContext.getTransportOut().getSender()
                               .cleanup(_messageContext);
            }
        }
    }

    /**
     * Auto generated method signature for Asynchronous Invocations
     *
     * @see arztis.econnector.ihe.generatedClasses.ihe.registry.IHERegistryService#startupdateDocumentSetRequest
     * @param submitObjectsRequest12
     * @param security13
     */
    public void startupdateDocumentSetRequest(
        arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument submitObjectsRequest12,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security13,
        final arztis.econnector.ihe.generatedClasses.ihe.registry.IHERegistryServiceCallbackHandler callback)
        throws java.rmi.RemoteException {
        org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[2].getName());
        _operationClient.getOptions()
                        .setAction("urn:ihe:iti:2010:UpdateDocumentSet");
        _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

        addPropertyToOperationClient(_operationClient,
            org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
            "&");

        // create SOAP envelope with that payload
        org.apache.axiom.soap.SOAPEnvelope env = null;
        final org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

        //Style is Doc.
        env = toEnvelope(getFactory(_operationClient.getOptions()
                                                    .getSoapVersionURI()),
                submitObjectsRequest12,
                optimizeContent(
                    new javax.xml.namespace.QName("http://ihe.spirit.com/",
                        "updateDocumentSetRequest")),
                new javax.xml.namespace.QName(
                    "urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0",
                    "SubmitObjectsRequest"));

        // add the soap_headers only if they are not null
        if (security13 != null) {
            org.apache.axiom.om.OMElement omElementsecurity13 = toOM(security13,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ihe.spirit.com/", "updateDocumentSetRequest")));
            addHeader(omElementsecurity13, env);
        }

        // adding SOAP soap_headers
        _serviceClient.addHeadersToEnvelope(env);
        // create message context with that soap envelope
        _messageContext.setEnvelope(env);

        // add the message context to the operation client
        _operationClient.addMessageContext(_messageContext);

        _operationClient.setCallback(new org.apache.axis2.client.async.AxisCallback() {
                public void onMessage(
                    org.apache.axis2.context.MessageContext resultContext) {
                    try {
                        org.apache.axiom.soap.SOAPEnvelope resultEnv = resultContext.getEnvelope();

                        java.lang.Object object = fromOM(resultEnv.getBody()
                                                                  .getFirstElement(),
                                arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument.class);
                        callback.receiveResultupdateDocumentSetRequest((arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument) object);
                    } catch (org.apache.axis2.AxisFault e) {
                        callback.receiveErrorupdateDocumentSetRequest(e);
                    }
                }

                public void onError(java.lang.Exception error) {
                    if (error instanceof org.apache.axis2.AxisFault) {
                        org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
                        org.apache.axiom.om.OMElement faultElt = f.getDetail();

                        if (faultElt != null) {
                            if (faultExceptionNameMap.containsKey(
                                        new org.apache.axis2.client.FaultMapKey(
                                            faultElt.getQName(),
                                            "UpdateDocumentSetRequest"))) {
                                //make the fault by reflection
                                try {
                                    java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(),
                                                "UpdateDocumentSetRequest"));
                                    java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                                    java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                                    java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                                    //message class
                                    java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(),
                                                "UpdateDocumentSetRequest"));
                                    java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                                    java.lang.Object messageObject = fromOM(faultElt,
                                            messageClass);
                                    java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                            new java.lang.Class[] { messageClass });
                                    m.invoke(ex,
                                        new java.lang.Object[] { messageObject });

                                    if (ex instanceof arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage) {
                                        callback.receiveErrorupdateDocumentSetRequest((arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage) ex);

                                        return;
                                    }

                                    callback.receiveErrorupdateDocumentSetRequest(new java.rmi.RemoteException(
                                            ex.getMessage(), ex));
                                } catch (java.lang.ClassCastException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorupdateDocumentSetRequest(f);
                                } catch (java.lang.ClassNotFoundException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorupdateDocumentSetRequest(f);
                                } catch (java.lang.NoSuchMethodException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorupdateDocumentSetRequest(f);
                                } catch (java.lang.reflect.InvocationTargetException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorupdateDocumentSetRequest(f);
                                } catch (java.lang.IllegalAccessException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorupdateDocumentSetRequest(f);
                                } catch (java.lang.InstantiationException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorupdateDocumentSetRequest(f);
                                } catch (org.apache.axis2.AxisFault e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorupdateDocumentSetRequest(f);
                                }
                            } else {
                                callback.receiveErrorupdateDocumentSetRequest(f);
                            }
                        } else {
                            callback.receiveErrorupdateDocumentSetRequest(f);
                        }
                    } else {
                        callback.receiveErrorupdateDocumentSetRequest(error);
                    }
                }

                public void onFault(
                    org.apache.axis2.context.MessageContext faultContext) {
                    org.apache.axis2.AxisFault fault = org.apache.axis2.util.Utils.getInboundFaultFromMessageContext(faultContext);
                    onError(fault);
                }

                public void onComplete() {
                    try {
                        _messageContext.getTransportOut().getSender()
                                       .cleanup(_messageContext);
                    } catch (org.apache.axis2.AxisFault axisFault) {
                        callback.receiveErrorupdateDocumentSetRequest(axisFault);
                    }
                }
            });

        org.apache.axis2.util.CallbackReceiver _callbackReceiver = null;

        if ((_operations[2].getMessageReceiver() == null) &&
                _operationClient.getOptions().isUseSeparateListener()) {
            _callbackReceiver = new org.apache.axis2.util.CallbackReceiver();
            _operations[2].setMessageReceiver(_callbackReceiver);
        }

        //execute the operation client
        _operationClient.execute(false);
    }

    /**
     * Auto generated method signature
     *
     * @see arztis.econnector.ihe.generatedClasses.ihe.registry.IHERegistryService#registerDocumentSetbRequest
     * @param submitObjectsRequest15
     * @param security16
     * @throws arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage :
     */
    public arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument registerDocumentSetbRequest(
        arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument submitObjectsRequest15,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security16)
        throws java.rmi.RemoteException,
            arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage {
        org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[3].getName());
            _operationClient.getOptions()
                            .setAction("urn:ihe:iti:2007:RegisterDocumentSet-b");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;

            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    submitObjectsRequest15,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ihe.spirit.com/",
                            "registerDocumentSetbRequest")),
                    new javax.xml.namespace.QName(
                        "urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0",
                        "SubmitObjectsRequest"));

            env.build();

            // add the children only if the parameter is not null
            if (security16 != null) {
                org.apache.axiom.om.OMElement omElementsecurity16 = toOM(security16,
                        optimizeContent(
                            new javax.xml.namespace.QName(
                                "http://ihe.spirit.com/",
                                "registerDocumentSetbRequest")));
                addHeader(omElementsecurity16, env);
            }

            //adding SOAP soap_headers
            _serviceClient.addHeadersToEnvelope(env);
            // set the message context with that soap envelope
            _messageContext.setEnvelope(env);

            // add the message contxt to the operation client
            _operationClient.addMessageContext(_messageContext);

            //execute the operation client
            _operationClient.execute(true);

            org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
            org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();
            
            if (LOGGER.isInfoEnabled()) {
                LOGGER.info(_messageContext.getEnvelope().toString());
            }
			
			if (LOGGER.isInfoEnabled()) {
                LOGGER.info(_returnEnv.toString());
            }

            java.lang.Object object = fromOM(_returnEnv.getBody()
                                                       .getFirstElement(),
                    arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument.class);

            return (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument) object;
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(),
                                "RegisterDocumentSetbRequest"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "RegisterDocumentSetbRequest"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "RegisterDocumentSetbRequest"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        if (ex instanceof arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage) {
                            throw (arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage) ex;
                        }

                        throw new java.rmi.RemoteException(ex.getMessage(), ex);
                    } catch (java.lang.ClassCastException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.ClassNotFoundException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.NoSuchMethodException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.reflect.InvocationTargetException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.IllegalAccessException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    } catch (java.lang.InstantiationException e) {
                        // we cannot intantiate the class - throw the original Axis fault
                        throw f;
                    }
                } else {
                    throw f;
                }
            } else {
                throw f;
            }
        } finally {
            if (_messageContext.getTransportOut() != null) {
                _messageContext.getTransportOut().getSender()
                               .cleanup(_messageContext);
            }
        }
    }

    /**
     * Auto generated method signature for Asynchronous Invocations
     *
     * @see arztis.econnector.ihe.generatedClasses.ihe.registry.IHERegistryService#startregisterDocumentSetbRequest
     * @param submitObjectsRequest15
     * @param security16
     */
    public void startregisterDocumentSetbRequest(
        arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument submitObjectsRequest15,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security16,
        final arztis.econnector.ihe.generatedClasses.ihe.registry.IHERegistryServiceCallbackHandler callback)
        throws java.rmi.RemoteException {
        org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[3].getName());
        _operationClient.getOptions()
                        .setAction("urn:ihe:iti:2007:RegisterDocumentSet-b");
        _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

        addPropertyToOperationClient(_operationClient,
            org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
            "&");

        // create SOAP envelope with that payload
        org.apache.axiom.soap.SOAPEnvelope env = null;
        final org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

        //Style is Doc.
        env = toEnvelope(getFactory(_operationClient.getOptions()
                                                    .getSoapVersionURI()),
                submitObjectsRequest15,
                optimizeContent(
                    new javax.xml.namespace.QName("http://ihe.spirit.com/",
                        "registerDocumentSetbRequest")),
                new javax.xml.namespace.QName(
                    "urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0",
                    "SubmitObjectsRequest"));

        // add the soap_headers only if they are not null
        if (security16 != null) {
            org.apache.axiom.om.OMElement omElementsecurity16 = toOM(security16,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ihe.spirit.com/",
                            "registerDocumentSetbRequest")));
            addHeader(omElementsecurity16, env);
        }

        // adding SOAP soap_headers
        _serviceClient.addHeadersToEnvelope(env);
        // create message context with that soap envelope
        _messageContext.setEnvelope(env);

        // add the message context to the operation client
        _operationClient.addMessageContext(_messageContext);

        _operationClient.setCallback(new org.apache.axis2.client.async.AxisCallback() {
                public void onMessage(
                    org.apache.axis2.context.MessageContext resultContext) {
                    try {
                        org.apache.axiom.soap.SOAPEnvelope resultEnv = resultContext.getEnvelope();

                        java.lang.Object object = fromOM(resultEnv.getBody()
                                                                  .getFirstElement(),
                                arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument.class);
                        callback.receiveResultregisterDocumentSetbRequest((arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument) object);
                    } catch (org.apache.axis2.AxisFault e) {
                        callback.receiveErrorregisterDocumentSetbRequest(e);
                    }
                }

                public void onError(java.lang.Exception error) {
                    if (error instanceof org.apache.axis2.AxisFault) {
                        org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
                        org.apache.axiom.om.OMElement faultElt = f.getDetail();

                        if (faultElt != null) {
                            if (faultExceptionNameMap.containsKey(
                                        new org.apache.axis2.client.FaultMapKey(
                                            faultElt.getQName(),
                                            "RegisterDocumentSetbRequest"))) {
                                //make the fault by reflection
                                try {
                                    java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(),
                                                "RegisterDocumentSetbRequest"));
                                    java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                                    java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                                    java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                                    //message class
                                    java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(),
                                                "RegisterDocumentSetbRequest"));
                                    java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                                    java.lang.Object messageObject = fromOM(faultElt,
                                            messageClass);
                                    java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                            new java.lang.Class[] { messageClass });
                                    m.invoke(ex,
                                        new java.lang.Object[] { messageObject });

                                    if (ex instanceof arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage) {
                                        callback.receiveErrorregisterDocumentSetbRequest((arztis.econnector.ihe.generatedClasses.ihe.registry.AccessDeniedMessage) ex);

                                        return;
                                    }

                                    callback.receiveErrorregisterDocumentSetbRequest(new java.rmi.RemoteException(
                                            ex.getMessage(), ex));
                                } catch (java.lang.ClassCastException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorregisterDocumentSetbRequest(f);
                                } catch (java.lang.ClassNotFoundException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorregisterDocumentSetbRequest(f);
                                } catch (java.lang.NoSuchMethodException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorregisterDocumentSetbRequest(f);
                                } catch (java.lang.reflect.InvocationTargetException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorregisterDocumentSetbRequest(f);
                                } catch (java.lang.IllegalAccessException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorregisterDocumentSetbRequest(f);
                                } catch (java.lang.InstantiationException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorregisterDocumentSetbRequest(f);
                                } catch (org.apache.axis2.AxisFault e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorregisterDocumentSetbRequest(f);
                                }
                            } else {
                                callback.receiveErrorregisterDocumentSetbRequest(f);
                            }
                        } else {
                            callback.receiveErrorregisterDocumentSetbRequest(f);
                        }
                    } else {
                        callback.receiveErrorregisterDocumentSetbRequest(error);
                    }
                }

                public void onFault(
                    org.apache.axis2.context.MessageContext faultContext) {
                    org.apache.axis2.AxisFault fault = org.apache.axis2.util.Utils.getInboundFaultFromMessageContext(faultContext);
                    onError(fault);
                }

                public void onComplete() {
                    try {
                        _messageContext.getTransportOut().getSender()
                                       .cleanup(_messageContext);
                    } catch (org.apache.axis2.AxisFault axisFault) {
                        callback.receiveErrorregisterDocumentSetbRequest(axisFault);
                    }
                }
            });

        org.apache.axis2.util.CallbackReceiver _callbackReceiver = null;

        if ((_operations[3].getMessageReceiver() == null) &&
                _operationClient.getOptions().isUseSeparateListener()) {
            _callbackReceiver = new org.apache.axis2.util.CallbackReceiver();
            _operations[3].setMessageReceiver(_callbackReceiver);
        }

        //execute the operation client
        _operationClient.execute(false);
    }

    ////////////////////////////////////////////////////////////////////////
    private static org.apache.neethi.Policy getPolicy(
        java.lang.String policyString) {
        return org.apache.neethi.PolicyEngine.getPolicy(org.apache.axiom.om.OMXMLBuilderFactory.createOMBuilder(
                new java.io.StringReader(policyString)).getDocument()
                                                                                               .getXMLStreamReader(false));
    }

    private boolean optimizeContent(javax.xml.namespace.QName opName) {
        if (opNameArray == null) {
            return false;
        }

        for (int i = 0; i < opNameArray.length; i++) {
            if (opName.equals(opNameArray[i])) {
                return true;
            }
        }

        return false;
    }

    /**
     * Get the {@link org.apache.xmlbeans.XmlOptions} object that the stub uses when
     * serializing objects to XML.
     *
     * @return the options used for serialization
     */
    public org.apache.xmlbeans.XmlOptions _getXmlOptions() {
        return _xmlOptions;
    }

    private org.apache.axiom.om.OMElement toOM(
        arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        return toOM(param);
    }

    private org.apache.axiom.om.OMElement toOM(
        final arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument param)
        throws org.apache.axis2.AxisFault {
        org.apache.axiom.om.OMXMLParserWrapper builder = org.apache.axiom.om.OMXMLBuilderFactory.createOMBuilder(new javax.xml.transform.sax.SAXSource(
                    new org.apache.axis2.xmlbeans.XmlBeansXMLReader(param,
                        _xmlOptions), new org.xml.sax.InputSource()));

        try {
            return builder.getDocumentElement(true);
        } catch (java.lang.Exception e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        return toOM(param);
    }

    private org.apache.axiom.om.OMElement toOM(
        final arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument param)
        throws org.apache.axis2.AxisFault {
        org.apache.axiom.om.OMXMLParserWrapper builder = org.apache.axiom.om.OMXMLBuilderFactory.createOMBuilder(new javax.xml.transform.sax.SAXSource(
                    new org.apache.axis2.xmlbeans.XmlBeansXMLReader(param,
                        _xmlOptions), new org.xml.sax.InputSource()));

        try {
            return builder.getDocumentElement(true);
        } catch (java.lang.Exception e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        return toOM(param);
    }

    private org.apache.axiom.om.OMElement toOM(
        final arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument param)
        throws org.apache.axis2.AxisFault {
        org.apache.axiom.om.OMXMLParserWrapper builder = org.apache.axiom.om.OMXMLBuilderFactory.createOMBuilder(new javax.xml.transform.sax.SAXSource(
                    new org.apache.axis2.xmlbeans.XmlBeansXMLReader(param,
                        _xmlOptions), new org.xml.sax.InputSource()));

        try {
            return builder.getDocumentElement(true);
        } catch (java.lang.Exception e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        return toOM(param);
    }

    private org.apache.axiom.om.OMElement toOM(
        final arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument param)
        throws org.apache.axis2.AxisFault {
        org.apache.axiom.om.OMXMLParserWrapper builder = org.apache.axiom.om.OMXMLBuilderFactory.createOMBuilder(new javax.xml.transform.sax.SAXSource(
                    new org.apache.axis2.xmlbeans.XmlBeansXMLReader(param,
                        _xmlOptions), new org.xml.sax.InputSource()));

        try {
            return builder.getDocumentElement(true);
        } catch (java.lang.Exception e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RemoveObjectsRequestDocument param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        return toOM(param);
    }

    private org.apache.axiom.om.OMElement toOM(
        final arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RemoveObjectsRequestDocument param)
        throws org.apache.axis2.AxisFault {
        org.apache.axiom.om.OMXMLParserWrapper builder = org.apache.axiom.om.OMXMLBuilderFactory.createOMBuilder(new javax.xml.transform.sax.SAXSource(
                    new org.apache.axis2.xmlbeans.XmlBeansXMLReader(param,
                        _xmlOptions), new org.xml.sax.InputSource()));

        try {
            return builder.getDocumentElement(true);
        } catch (java.lang.Exception e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        return toOM(param);
    }

    private org.apache.axiom.om.OMElement toOM(
        final arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument param)
        throws org.apache.axis2.AxisFault {
        org.apache.axiom.om.OMXMLParserWrapper builder = org.apache.axiom.om.OMXMLBuilderFactory.createOMBuilder(new javax.xml.transform.sax.SAXSource(
                    new org.apache.axis2.xmlbeans.XmlBeansXMLReader(param,
                        _xmlOptions), new org.xml.sax.InputSource()));

        try {
            return builder.getDocumentElement(true);
        } catch (java.lang.Exception e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.om.OMElement toOM(
        arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        return toOM(param);
    }

    private org.apache.axiom.om.OMElement toOM(
        final arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument param)
        throws org.apache.axis2.AxisFault {
        org.apache.axiom.om.OMXMLParserWrapper builder = org.apache.axiom.om.OMXMLBuilderFactory.createOMBuilder(new javax.xml.transform.sax.SAXSource(
                    new org.apache.axis2.xmlbeans.XmlBeansXMLReader(param,
                        _xmlOptions), new org.xml.sax.InputSource()));

        try {
            return builder.getDocumentElement(true);
        } catch (java.lang.Exception e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory,
        arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument param,
        boolean optimizeContent, javax.xml.namespace.QName elementQName)
        throws org.apache.axis2.AxisFault {
        org.apache.axiom.soap.SOAPEnvelope envelope = factory.getDefaultEnvelope();

        if (param != null) {
            envelope.getBody().addChild(toOM(param, optimizeContent));
        }

        return envelope;
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory,
        arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RemoveObjectsRequestDocument param,
        boolean optimizeContent, javax.xml.namespace.QName elementQName)
        throws org.apache.axis2.AxisFault {
        org.apache.axiom.soap.SOAPEnvelope envelope = factory.getDefaultEnvelope();

        if (param != null) {
            envelope.getBody().addChild(toOM(param, optimizeContent));
        }

        return envelope;
    }

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory,
        arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument param,
        boolean optimizeContent, javax.xml.namespace.QName elementQName)
        throws org.apache.axis2.AxisFault {
        org.apache.axiom.soap.SOAPEnvelope envelope = factory.getDefaultEnvelope();

        if (param != null) {
            envelope.getBody().addChild(toOM(param, optimizeContent));
        }

        return envelope;
    }

    /**
     *  get the default envelope
     */
    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory) {
        return factory.getDefaultEnvelope();
    }

    public org.apache.xmlbeans.XmlObject fromOM(
        org.apache.axiom.om.OMElement param, java.lang.Class type)
        throws org.apache.axis2.AxisFault {
        try {
            if (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RemoveObjectsRequestDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RemoveObjectsRequestDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }
        } catch (java.lang.Exception e) {
            throw org.apache.axis2.AxisFault.makeFault(e);
        }

        return null;
    }
}
