/**
 * IHEServiceStub.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.ihe.generatedClasses.ihe.repository;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.ihe.generatedClasses.ets.ETSServiceStub;

/*
 *  IHEServiceStub java implementation
 */
public class IHEServiceStub extends org.apache.axis2.client.Stub {
	private static final Logger LOGGER = LoggerFactory.getLogger(IHEServiceStub.class.getName());
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
    public IHEServiceStub(
        org.apache.axis2.context.ConfigurationContext configurationContext,
        java.lang.String targetEndpoint) throws org.apache.axis2.AxisFault {
        this(configurationContext, targetEndpoint, false);
    }

    /**
     * Constructor that takes in a configContext  and useseperate listner
     */
    public IHEServiceStub(
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
    public IHEServiceStub(
        org.apache.axis2.context.ConfigurationContext configurationContext)
        throws org.apache.axis2.AxisFault {
        this(configurationContext, "http://zgf1:8181/ACSFacade/XDS/eBefunde");
    }

    /**
     * Default Constructor
     */
    public IHEServiceStub() throws org.apache.axis2.AxisFault {
        this("http://zgf1:8181/ACSFacade/XDS/eBefunde");
    }

    /**
     * Constructor taking the target endpoint
     */
    public IHEServiceStub(java.lang.String targetEndpoint)
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
        _service = new org.apache.axis2.description.AxisService("IHEService" +
                getUniqueSuffix());
        addAnonymousOperations();

        //creating the operations
        org.apache.axis2.description.AxisOperation __operation;

        _operations = new org.apache.axis2.description.AxisOperation[2];

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://ihe.spirit.com/", "retrieveDocumentSetRequest"));
        _service.addOperation(__operation);

        (__operation).getMessage(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_OUT_VALUE)
         .getPolicySubject()
         .attachPolicy(getPolicy(
                "<wsp:Policy xmlns:wsp=\"http://www.w3.org/ns/ws-policy\"><wsp:ExactlyOne><wsp:All><wsaw:UsingAddressing xmlns:wsaw=\"http://www.w3.org/2006/05/addressing/wsdl\"></wsaw:UsingAddressing><wsoma:OptimizedMimeSerialization xmlns:wsoma=\"http://schemas.xmlsoap.org/ws/2004/09/policy/optimizedmimeserialization\"/></wsp:All></wsp:ExactlyOne></wsp:Policy>"));

        (__operation).getMessage(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE)
         .getPolicySubject()
         .attachPolicy(getPolicy(
                "<wsp:Policy xmlns:wsp=\"http://www.w3.org/ns/ws-policy\"><wsp:ExactlyOne><wsp:All><wsaw:UsingAddressing xmlns:wsaw=\"http://www.w3.org/2006/05/addressing/wsdl\"></wsaw:UsingAddressing><wsoma:OptimizedMimeSerialization xmlns:wsoma=\"http://schemas.xmlsoap.org/ws/2004/09/policy/optimizedmimeserialization\"/></wsp:All></wsp:ExactlyOne></wsp:Policy>"));

        _operations[0] = __operation;

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://ihe.spirit.com/",
                "provideAndRegisterDocumentSetbRequest"));
        _service.addOperation(__operation);

        (__operation).getMessage(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_OUT_VALUE)
         .getPolicySubject()
         .attachPolicy(getPolicy(
                "<wsp:Policy xmlns:wsp=\"http://www.w3.org/ns/ws-policy\"><wsp:ExactlyOne><wsp:All><wsaw:UsingAddressing xmlns:wsaw=\"http://www.w3.org/2006/05/addressing/wsdl\"></wsaw:UsingAddressing><wsoma:OptimizedMimeSerialization xmlns:wsoma=\"http://schemas.xmlsoap.org/ws/2004/09/policy/optimizedmimeserialization\"/></wsp:All></wsp:ExactlyOne></wsp:Policy>"));

        (__operation).getMessage(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE)
         .getPolicySubject()
         .attachPolicy(getPolicy(
                "<wsp:Policy xmlns:wsp=\"http://www.w3.org/ns/ws-policy\"><wsp:ExactlyOne><wsp:All><wsaw:UsingAddressing xmlns:wsaw=\"http://www.w3.org/2006/05/addressing/wsdl\"></wsaw:UsingAddressing><wsoma:OptimizedMimeSerialization xmlns:wsoma=\"http://schemas.xmlsoap.org/ws/2004/09/policy/optimizedmimeserialization\"/></wsp:All></wsp:ExactlyOne></wsp:Policy>"));

        _operations[1] = __operation;
    }

    //populates the faults
    private void populateFaults() {
        faultExceptionNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "RetrieveDocumentSetRequest"),
            "arztis.econnector.ihe.generatedClasses.ihe.repository.AccessDeniedMessage");
        faultExceptionClassNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "RetrieveDocumentSetRequest"),
            "arztis.econnector.ihe.generatedClasses.ihe.repository.AccessDeniedMessage");
        faultMessageMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "RetrieveDocumentSetRequest"),
            "arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument");

        faultExceptionNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "ProvideAndRegisterDocumentSetbRequest"),
            "arztis.econnector.ihe.generatedClasses.ihe.repository.AccessDeniedMessage");
        faultExceptionClassNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "ProvideAndRegisterDocumentSetbRequest"),
            "arztis.econnector.ihe.generatedClasses.ihe.repository.AccessDeniedMessage");
        faultMessageMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "ProvideAndRegisterDocumentSetbRequest"),
            "arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument");
    }

    /**
     * Auto generated method signature
     *
     * @see arztis.econnector.ihe.generatedClasses.ihe.repository.IHEService#retrieveDocumentSetRequest
     * @param retrieveDocumentSetRequest1
     * @param security2
     * @throws arztis.econnector.ihe.generatedClasses.ihe.repository.AccessDeniedMessage :
     */
    public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseDocument retrieveDocumentSetRequest(
        arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestDocument retrieveDocumentSetRequest1,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security2)
        throws java.rmi.RemoteException,
            arztis.econnector.ihe.generatedClasses.ihe.repository.AccessDeniedMessage {
        org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[0].getName());
            _operationClient.getOptions()
                            .setAction("urn:ihe:iti:2007:RetrieveDocumentSet");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;

            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    retrieveDocumentSetRequest1,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ihe.spirit.com/",
                            "retrieveDocumentSetRequest")),
                    new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007",
                        "RetrieveDocumentSetRequest"));

            env.build();

            // add the children only if the parameter is not null
            if (security2 != null) {
                org.apache.axiom.om.OMElement omElementsecurity2 = toOM(security2,
                        optimizeContent(
                            new javax.xml.namespace.QName(
                                "http://ihe.spirit.com/",
                                "retrieveDocumentSetRequest")));
                addHeader(omElementsecurity2, env);
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
                    arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseDocument.class);

            return (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseDocument) object;
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(),
                                "RetrieveDocumentSetRequest"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "RetrieveDocumentSetRequest"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "RetrieveDocumentSetRequest"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        if (ex instanceof arztis.econnector.ihe.generatedClasses.ihe.repository.AccessDeniedMessage) {
                            throw (arztis.econnector.ihe.generatedClasses.ihe.repository.AccessDeniedMessage) ex;
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
     * @see arztis.econnector.ihe.generatedClasses.ihe.repository.IHEService#startretrieveDocumentSetRequest
     * @param retrieveDocumentSetRequest1
     * @param security2
     */
    public void startretrieveDocumentSetRequest(
        arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestDocument retrieveDocumentSetRequest1,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security2,
        final arztis.econnector.ihe.generatedClasses.ihe.repository.IHEServiceCallbackHandler callback)
        throws java.rmi.RemoteException {
        org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[0].getName());
        _operationClient.getOptions()
                        .setAction("urn:ihe:iti:2007:RetrieveDocumentSet");
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
                retrieveDocumentSetRequest1,
                optimizeContent(
                    new javax.xml.namespace.QName("http://ihe.spirit.com/",
                        "retrieveDocumentSetRequest")),
                new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007",
                    "RetrieveDocumentSetRequest"));

        // add the soap_headers only if they are not null
        if (security2 != null) {
            org.apache.axiom.om.OMElement omElementsecurity2 = toOM(security2,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ihe.spirit.com/",
                            "retrieveDocumentSetRequest")));
            addHeader(omElementsecurity2, env);
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
                                arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseDocument.class);
                        callback.receiveResultretrieveDocumentSetRequest((arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseDocument) object);
                    } catch (org.apache.axis2.AxisFault e) {
                        callback.receiveErrorretrieveDocumentSetRequest(e);
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
                                            "RetrieveDocumentSetRequest"))) {
                                //make the fault by reflection
                                try {
                                    java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(),
                                                "RetrieveDocumentSetRequest"));
                                    java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                                    java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                                    java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                                    //message class
                                    java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(),
                                                "RetrieveDocumentSetRequest"));
                                    java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                                    java.lang.Object messageObject = fromOM(faultElt,
                                            messageClass);
                                    java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                            new java.lang.Class[] { messageClass });
                                    m.invoke(ex,
                                        new java.lang.Object[] { messageObject });

                                    if (ex instanceof arztis.econnector.ihe.generatedClasses.ihe.repository.AccessDeniedMessage) {
                                        callback.receiveErrorretrieveDocumentSetRequest((arztis.econnector.ihe.generatedClasses.ihe.repository.AccessDeniedMessage) ex);

                                        return;
                                    }

                                    callback.receiveErrorretrieveDocumentSetRequest(new java.rmi.RemoteException(
                                            ex.getMessage(), ex));
                                } catch (java.lang.ClassCastException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorretrieveDocumentSetRequest(f);
                                } catch (java.lang.ClassNotFoundException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorretrieveDocumentSetRequest(f);
                                } catch (java.lang.NoSuchMethodException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorretrieveDocumentSetRequest(f);
                                } catch (java.lang.reflect.InvocationTargetException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorretrieveDocumentSetRequest(f);
                                } catch (java.lang.IllegalAccessException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorretrieveDocumentSetRequest(f);
                                } catch (java.lang.InstantiationException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorretrieveDocumentSetRequest(f);
                                } catch (org.apache.axis2.AxisFault e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorretrieveDocumentSetRequest(f);
                                }
                            } else {
                                callback.receiveErrorretrieveDocumentSetRequest(f);
                            }
                        } else {
                            callback.receiveErrorretrieveDocumentSetRequest(f);
                        }
                    } else {
                        callback.receiveErrorretrieveDocumentSetRequest(error);
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
                        callback.receiveErrorretrieveDocumentSetRequest(axisFault);
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
     * @see arztis.econnector.ihe.generatedClasses.ihe.repository.IHEService#provideAndRegisterDocumentSetbRequest
     * @param provideAndRegisterDocumentSetRequest4
     * @param security5
     * @throws arztis.econnector.ihe.generatedClasses.ihe.repository.AccessDeniedMessage :
     */
    public arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument provideAndRegisterDocumentSetbRequest(
        arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument provideAndRegisterDocumentSetRequest4,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security5)
        throws java.rmi.RemoteException,
            arztis.econnector.ihe.generatedClasses.ihe.repository.AccessDeniedMessage {
        org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[1].getName());
            _operationClient.getOptions()
                            .setAction("urn:ihe:iti:2007:ProvideAndRegisterDocumentSet-b");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;

            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    provideAndRegisterDocumentSetRequest4,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ihe.spirit.com/",
                            "provideAndRegisterDocumentSetbRequest")),
                    new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007",
                        "ProvideAndRegisterDocumentSetRequest"));

            env.build();

            // add the children only if the parameter is not null
            if (security5 != null) {
                org.apache.axiom.om.OMElement omElementsecurity5 = toOM(security5,
                        optimizeContent(
                            new javax.xml.namespace.QName(
                                "http://ihe.spirit.com/",
                                "provideAndRegisterDocumentSetbRequest")));
                addHeader(omElementsecurity5, env);
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
                                "ProvideAndRegisterDocumentSetbRequest"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "ProvideAndRegisterDocumentSetbRequest"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(),
                                    "ProvideAndRegisterDocumentSetbRequest"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        if (ex instanceof arztis.econnector.ihe.generatedClasses.ihe.repository.AccessDeniedMessage) {
                            throw (arztis.econnector.ihe.generatedClasses.ihe.repository.AccessDeniedMessage) ex;
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
     * @see arztis.econnector.ihe.generatedClasses.ihe.repository.IHEService#startprovideAndRegisterDocumentSetbRequest
     * @param provideAndRegisterDocumentSetRequest4
     * @param security5
     */
    public void startprovideAndRegisterDocumentSetbRequest(
        arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument provideAndRegisterDocumentSetRequest4,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security5,
        final arztis.econnector.ihe.generatedClasses.ihe.repository.IHEServiceCallbackHandler callback)
        throws java.rmi.RemoteException {
        org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[1].getName());
        _operationClient.getOptions()
                        .setAction("urn:ihe:iti:2007:ProvideAndRegisterDocumentSet-b");
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
                provideAndRegisterDocumentSetRequest4,
                optimizeContent(
                    new javax.xml.namespace.QName("http://ihe.spirit.com/",
                        "provideAndRegisterDocumentSetbRequest")),
                new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007",
                    "ProvideAndRegisterDocumentSetRequest"));

        // add the soap_headers only if they are not null
        if (security5 != null) {
            org.apache.axiom.om.OMElement omElementsecurity5 = toOM(security5,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://ihe.spirit.com/",
                            "provideAndRegisterDocumentSetbRequest")));
            addHeader(omElementsecurity5, env);
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
                        callback.receiveResultprovideAndRegisterDocumentSetbRequest((arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseDocument) object);
                    } catch (org.apache.axis2.AxisFault e) {
                        callback.receiveErrorprovideAndRegisterDocumentSetbRequest(e);
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
                                            "ProvideAndRegisterDocumentSetbRequest"))) {
                                //make the fault by reflection
                                try {
                                    java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(),
                                                "ProvideAndRegisterDocumentSetbRequest"));
                                    java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                                    java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                                    java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                                    //message class
                                    java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(),
                                                "ProvideAndRegisterDocumentSetbRequest"));
                                    java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                                    java.lang.Object messageObject = fromOM(faultElt,
                                            messageClass);
                                    java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                            new java.lang.Class[] { messageClass });
                                    m.invoke(ex,
                                        new java.lang.Object[] { messageObject });

                                    if (ex instanceof arztis.econnector.ihe.generatedClasses.ihe.repository.AccessDeniedMessage) {
                                        callback.receiveErrorprovideAndRegisterDocumentSetbRequest((arztis.econnector.ihe.generatedClasses.ihe.repository.AccessDeniedMessage) ex);

                                        return;
                                    }

                                    callback.receiveErrorprovideAndRegisterDocumentSetbRequest(new java.rmi.RemoteException(
                                            ex.getMessage(), ex));
                                } catch (java.lang.ClassCastException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorprovideAndRegisterDocumentSetbRequest(f);
                                } catch (java.lang.ClassNotFoundException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorprovideAndRegisterDocumentSetbRequest(f);
                                } catch (java.lang.NoSuchMethodException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorprovideAndRegisterDocumentSetbRequest(f);
                                } catch (java.lang.reflect.InvocationTargetException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorprovideAndRegisterDocumentSetbRequest(f);
                                } catch (java.lang.IllegalAccessException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorprovideAndRegisterDocumentSetbRequest(f);
                                } catch (java.lang.InstantiationException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorprovideAndRegisterDocumentSetbRequest(f);
                                } catch (org.apache.axis2.AxisFault e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorprovideAndRegisterDocumentSetbRequest(f);
                                }
                            } else {
                                callback.receiveErrorprovideAndRegisterDocumentSetbRequest(f);
                            }
                        } else {
                            callback.receiveErrorprovideAndRegisterDocumentSetbRequest(f);
                        }
                    } else {
                        callback.receiveErrorprovideAndRegisterDocumentSetbRequest(error);
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
                        callback.receiveErrorprovideAndRegisterDocumentSetbRequest(axisFault);
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
        arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestDocument param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        return toOM(param);
    }

    private org.apache.axiom.om.OMElement toOM(
        final arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestDocument param)
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
        arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseDocument param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        return toOM(param);
    }

    private org.apache.axiom.om.OMElement toOM(
        final arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseDocument param)
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
        arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        return toOM(param);
    }

    private org.apache.axiom.om.OMElement toOM(
        final arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument param)
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

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory,
        arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestDocument param,
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
        arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument param,
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
            if (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseDocument.Factory.parse(param.getXMLStreamReader(
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

            if (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestDocument.Factory.parse(param.getXMLStreamReader(
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
