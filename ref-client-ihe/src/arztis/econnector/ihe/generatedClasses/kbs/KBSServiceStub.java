/**
 * KBSServiceStub.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.ihe.generatedClasses.kbs;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/*
 *  KBSServiceStub java implementation
 */
public class KBSServiceStub extends org.apache.axis2.client.Stub {
	private static final Logger LOGGER = LoggerFactory.getLogger(KBSServiceStub.class.getName());
    private static int counter = 0;
    protected org.apache.axis2.description.AxisOperation[] _operations;

    //hashmaps to keep the fault mapping
    private java.util.HashMap faultExceptionNameMap = new java.util.HashMap();
    private java.util.HashMap faultExceptionClassNameMap = new java.util.HashMap();
    private java.util.HashMap faultMessageMap = new java.util.HashMap();

    /////////////////////////////////////////////////////////////////////////
    private javax.xml.namespace.QName[] opNameArray = null;

    //https://10.196.3.66/elga-proxy/1/KBS
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
    public KBSServiceStub(
        org.apache.axis2.context.ConfigurationContext configurationContext,
        java.lang.String targetEndpoint) throws org.apache.axis2.AxisFault {
        this(configurationContext, targetEndpoint, false);
    }

    /**
     * Constructor that takes in a configContext  and useseperate listner
     */
    public KBSServiceStub(
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
     * Constructor taking the target endpoint
     */
    public KBSServiceStub(java.lang.String targetEndpoint)
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
        _service = new org.apache.axis2.description.AxisService("KBSService" +
                getUniqueSuffix());
        addAnonymousOperations();

        //creating the operations
        org.apache.axis2.description.AxisOperation __operation;

        _operations = new org.apache.axis2.description.AxisOperation[5];

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://kbs.spirit.com/", "issueKB"));
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
                "http://kbs.spirit.com/", "delegateKB"));
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
                "http://kbs.spirit.com/", "listKB"));
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
                "http://kbs.spirit.com/", "issueKBeCard"));
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

        __operation = new org.apache.axis2.description.OutInAxisOperation();

        __operation.setName(new javax.xml.namespace.QName(
                "http://kbs.spirit.com/", "cancelKB"));
        _service.addOperation(__operation);

        (__operation).getMessage(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_OUT_VALUE)
         .getPolicySubject()
         .attachPolicy(getPolicy(
                "<wsp:Policy wsu:Id=\"AddressingPolicy\" xmlns:wsp=\"http://www.w3.org/ns/ws-policy\" xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"><wsp:ExactlyOne><wsp:All><wsaw:UsingAddressing xmlns:wsaw=\"http://www.w3.org/2006/05/addressing/wsdl\"></wsaw:UsingAddressing></wsp:All></wsp:ExactlyOne></wsp:Policy>"));

        (__operation).getMessage(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE)
         .getPolicySubject()
         .attachPolicy(getPolicy(
                "<wsp:Policy wsu:Id=\"AddressingPolicy\" xmlns:wsp=\"http://www.w3.org/ns/ws-policy\" xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"><wsp:ExactlyOne><wsp:All><wsaw:UsingAddressing xmlns:wsaw=\"http://www.w3.org/2006/05/addressing/wsdl\"></wsaw:UsingAddressing></wsp:All></wsp:ExactlyOne></wsp:Policy>"));

        _operations[4] = __operation;
    }

    //populates the faults
    private void populateFaults() {
        faultExceptionNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "IssueKB"),
            "arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage");
        faultExceptionClassNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "IssueKB"),
            "arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage");
        faultMessageMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "IssueKB"),
            "arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument");

        faultExceptionNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "DelegateKB"),
            "arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage");
        faultExceptionClassNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "DelegateKB"),
            "arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage");
        faultMessageMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "DelegateKB"),
            "arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument");

        faultExceptionNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "ListKB"),
            "arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage");
        faultExceptionClassNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "ListKB"),
            "arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage");
        faultMessageMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "ListKB"),
            "arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument");

        faultExceptionNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "IssueKBeCard"),
            "arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage");
        faultExceptionClassNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "IssueKBeCard"),
            "arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage");
        faultMessageMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "IssueKBeCard"),
            "arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument");

        faultExceptionNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "CancelKB"),
            "arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage");
        faultExceptionClassNameMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "CancelKB"),
            "arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage");
        faultMessageMap.put(new org.apache.axis2.client.FaultMapKey(
                new javax.xml.namespace.QName(
                    "http://www.w3.org/2003/05/soap-envelope", "Fault"),
                "CancelKB"),
            "arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument");
    }

    /**
     * Auto generated method signature
     *
     * @see arztis.econnector.ihe.generatedClasses.kbs.KBSService#issueKB
     * @param requestSecurityToken12
     * @param security13
     * @throws arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage :
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument issueKB(
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument requestSecurityToken12,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security13)
        throws java.rmi.RemoteException,
            arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage {
        org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[0].getName());
            _operationClient.getOptions()
                            .setAction("http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;

            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    requestSecurityToken12,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://kbs.spirit.com/", "issueKB")),
                    new javax.xml.namespace.QName(
                        "http://docs.oasis-open.org/ws-sx/ws-trust/200512",
                        "RequestSecurityToken"));

            env.build();

            // add the children only if the parameter is not null
            if (security13 != null) {
                org.apache.axiom.om.OMElement omElementsecurity13 = toOM(security13,
                        optimizeContent(
                            new javax.xml.namespace.QName(
                                "http://kbs.spirit.com/", "issueKB")));
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
                    arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.class);

            return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument) object;
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "IssueKB"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "IssueKB"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "IssueKB"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        if (ex instanceof arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) {
                            throw (arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) ex;
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
     * @see arztis.econnector.ihe.generatedClasses.kbs.KBSService#startissueKB
     * @param requestSecurityToken12
     * @param security13
     */
    public void startissueKB(
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument requestSecurityToken12,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security13,
        final arztis.econnector.ihe.generatedClasses.kbs.KBSServiceCallbackHandler callback)
        throws java.rmi.RemoteException {
        org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[0].getName());
        _operationClient.getOptions()
                        .setAction("http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue");
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
                requestSecurityToken12,
                optimizeContent(
                    new javax.xml.namespace.QName("http://kbs.spirit.com/",
                        "issueKB")),
                new javax.xml.namespace.QName(
                    "http://docs.oasis-open.org/ws-sx/ws-trust/200512",
                    "RequestSecurityToken"));

        // add the soap_headers only if they are not null
        if (security13 != null) {
            org.apache.axiom.om.OMElement omElementsecurity13 = toOM(security13,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://kbs.spirit.com/", "issueKB")));
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
                                arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.class);
                        callback.receiveResultissueKB((arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument) object);
                    } catch (org.apache.axis2.AxisFault e) {
                        callback.receiveErrorissueKB(e);
                    }
                }

                public void onError(java.lang.Exception error) {
                    if (error instanceof org.apache.axis2.AxisFault) {
                        org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
                        org.apache.axiom.om.OMElement faultElt = f.getDetail();

                        if (faultElt != null) {
                            if (faultExceptionNameMap.containsKey(
                                        new org.apache.axis2.client.FaultMapKey(
                                            faultElt.getQName(), "IssueKB"))) {
                                //make the fault by reflection
                                try {
                                    java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(), "IssueKB"));
                                    java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                                    java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                                    java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                                    //message class
                                    java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(), "IssueKB"));
                                    java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                                    java.lang.Object messageObject = fromOM(faultElt,
                                            messageClass);
                                    java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                            new java.lang.Class[] { messageClass });
                                    m.invoke(ex,
                                        new java.lang.Object[] { messageObject });

                                    if (ex instanceof arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) {
                                        callback.receiveErrorissueKB((arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) ex);

                                        return;
                                    }

                                    callback.receiveErrorissueKB(new java.rmi.RemoteException(
                                            ex.getMessage(), ex));
                                } catch (java.lang.ClassCastException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorissueKB(f);
                                } catch (java.lang.ClassNotFoundException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorissueKB(f);
                                } catch (java.lang.NoSuchMethodException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorissueKB(f);
                                } catch (java.lang.reflect.InvocationTargetException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorissueKB(f);
                                } catch (java.lang.IllegalAccessException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorissueKB(f);
                                } catch (java.lang.InstantiationException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorissueKB(f);
                                } catch (org.apache.axis2.AxisFault e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorissueKB(f);
                                }
                            } else {
                                callback.receiveErrorissueKB(f);
                            }
                        } else {
                            callback.receiveErrorissueKB(f);
                        }
                    } else {
                        callback.receiveErrorissueKB(error);
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
                        callback.receiveErrorissueKB(axisFault);
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
     * @see arztis.econnector.ihe.generatedClasses.kbs.KBSService#delegateKB
     * @param requestSecurityToken15
     * @param security16
     * @throws arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage :
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument delegateKB(
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument requestSecurityToken15,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security16)
        throws java.rmi.RemoteException,
            arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage {
        org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[1].getName());
            _operationClient.getOptions()
                            .setAction("http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;

            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    requestSecurityToken15,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://kbs.spirit.com/", "delegateKB")),
                    new javax.xml.namespace.QName(
                        "http://docs.oasis-open.org/ws-sx/ws-trust/200512",
                        "RequestSecurityToken"));

            env.build();

            // add the children only if the parameter is not null
            if (security16 != null) {
                org.apache.axiom.om.OMElement omElementsecurity16 = toOM(security16,
                        optimizeContent(
                            new javax.xml.namespace.QName(
                                "http://kbs.spirit.com/", "delegateKB")));
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
                    arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.class);

            return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument) object;
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "DelegateKB"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "DelegateKB"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "DelegateKB"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        if (ex instanceof arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) {
                            throw (arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) ex;
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
     * @see arztis.econnector.ihe.generatedClasses.kbs.KBSService#startdelegateKB
     * @param requestSecurityToken15
     * @param security16
     */
    public void startdelegateKB(
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument requestSecurityToken15,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security16,
        final arztis.econnector.ihe.generatedClasses.kbs.KBSServiceCallbackHandler callback)
        throws java.rmi.RemoteException {
        org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[1].getName());
        _operationClient.getOptions()
                        .setAction("http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue");
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
                requestSecurityToken15,
                optimizeContent(
                    new javax.xml.namespace.QName("http://kbs.spirit.com/",
                        "delegateKB")),
                new javax.xml.namespace.QName(
                    "http://docs.oasis-open.org/ws-sx/ws-trust/200512",
                    "RequestSecurityToken"));

        // add the soap_headers only if they are not null
        if (security16 != null) {
            org.apache.axiom.om.OMElement omElementsecurity16 = toOM(security16,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://kbs.spirit.com/", "delegateKB")));
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
                                arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.class);
                        callback.receiveResultdelegateKB((arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument) object);
                    } catch (org.apache.axis2.AxisFault e) {
                        callback.receiveErrordelegateKB(e);
                    }
                }

                public void onError(java.lang.Exception error) {
                    if (error instanceof org.apache.axis2.AxisFault) {
                        org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
                        org.apache.axiom.om.OMElement faultElt = f.getDetail();

                        if (faultElt != null) {
                            if (faultExceptionNameMap.containsKey(
                                        new org.apache.axis2.client.FaultMapKey(
                                            faultElt.getQName(), "DelegateKB"))) {
                                //make the fault by reflection
                                try {
                                    java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(),
                                                "DelegateKB"));
                                    java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                                    java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                                    java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                                    //message class
                                    java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(),
                                                "DelegateKB"));
                                    java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                                    java.lang.Object messageObject = fromOM(faultElt,
                                            messageClass);
                                    java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                            new java.lang.Class[] { messageClass });
                                    m.invoke(ex,
                                        new java.lang.Object[] { messageObject });

                                    if (ex instanceof arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) {
                                        callback.receiveErrordelegateKB((arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) ex);

                                        return;
                                    }

                                    callback.receiveErrordelegateKB(new java.rmi.RemoteException(
                                            ex.getMessage(), ex));
                                } catch (java.lang.ClassCastException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrordelegateKB(f);
                                } catch (java.lang.ClassNotFoundException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrordelegateKB(f);
                                } catch (java.lang.NoSuchMethodException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrordelegateKB(f);
                                } catch (java.lang.reflect.InvocationTargetException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrordelegateKB(f);
                                } catch (java.lang.IllegalAccessException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrordelegateKB(f);
                                } catch (java.lang.InstantiationException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrordelegateKB(f);
                                } catch (org.apache.axis2.AxisFault e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrordelegateKB(f);
                                }
                            } else {
                                callback.receiveErrordelegateKB(f);
                            }
                        } else {
                            callback.receiveErrordelegateKB(f);
                        }
                    } else {
                        callback.receiveErrordelegateKB(error);
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
                        callback.receiveErrordelegateKB(axisFault);
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
     * @see arztis.econnector.ihe.generatedClasses.kbs.KBSService#listKB
     * @param requestSecurityToken18
     * @param security19
     * @throws arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage :
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument listKB(
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument requestSecurityToken18,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security19)
        throws java.rmi.RemoteException,
            arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage {
        org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[2].getName());
            _operationClient.getOptions()
                            .setAction("http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Validate");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;

            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    requestSecurityToken18,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://kbs.spirit.com/", "listKB")),
                    new javax.xml.namespace.QName(
                        "http://docs.oasis-open.org/ws-sx/ws-trust/200512",
                        "RequestSecurityToken"));

            env.build();

            // add the children only if the parameter is not null
            if (security19 != null) {
                org.apache.axiom.om.OMElement omElementsecurity19 = toOM(security19,
                        optimizeContent(
                            new javax.xml.namespace.QName(
                                "http://kbs.spirit.com/", "listKB")));
                addHeader(omElementsecurity19, env);
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
                    arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.class);

            return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument) object;
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "ListKB"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "ListKB"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "ListKB"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        if (ex instanceof arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) {
                            throw (arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) ex;
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
     * @see arztis.econnector.ihe.generatedClasses.kbs.KBSService#startlistKB
     * @param requestSecurityToken18
     * @param security19
     */
    public void startlistKB(
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument requestSecurityToken18,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security19,
        final arztis.econnector.ihe.generatedClasses.kbs.KBSServiceCallbackHandler callback)
        throws java.rmi.RemoteException {
        org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[2].getName());
        _operationClient.getOptions()
                        .setAction("http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Validate");
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
                requestSecurityToken18,
                optimizeContent(
                    new javax.xml.namespace.QName("http://kbs.spirit.com/",
                        "listKB")),
                new javax.xml.namespace.QName(
                    "http://docs.oasis-open.org/ws-sx/ws-trust/200512",
                    "RequestSecurityToken"));

        // add the soap_headers only if they are not null
        if (security19 != null) {
            org.apache.axiom.om.OMElement omElementsecurity19 = toOM(security19,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://kbs.spirit.com/", "listKB")));
            addHeader(omElementsecurity19, env);
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
                                arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.class);
                        callback.receiveResultlistKB((arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument) object);
                    } catch (org.apache.axis2.AxisFault e) {
                        callback.receiveErrorlistKB(e);
                    }
                }

                public void onError(java.lang.Exception error) {
                    if (error instanceof org.apache.axis2.AxisFault) {
                        org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
                        org.apache.axiom.om.OMElement faultElt = f.getDetail();

                        if (faultElt != null) {
                            if (faultExceptionNameMap.containsKey(
                                        new org.apache.axis2.client.FaultMapKey(
                                            faultElt.getQName(), "ListKB"))) {
                                //make the fault by reflection
                                try {
                                    java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(), "ListKB"));
                                    java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                                    java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                                    java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                                    //message class
                                    java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(), "ListKB"));
                                    java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                                    java.lang.Object messageObject = fromOM(faultElt,
                                            messageClass);
                                    java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                            new java.lang.Class[] { messageClass });
                                    m.invoke(ex,
                                        new java.lang.Object[] { messageObject });

                                    if (ex instanceof arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) {
                                        callback.receiveErrorlistKB((arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) ex);

                                        return;
                                    }

                                    callback.receiveErrorlistKB(new java.rmi.RemoteException(
                                            ex.getMessage(), ex));
                                } catch (java.lang.ClassCastException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorlistKB(f);
                                } catch (java.lang.ClassNotFoundException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorlistKB(f);
                                } catch (java.lang.NoSuchMethodException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorlistKB(f);
                                } catch (java.lang.reflect.InvocationTargetException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorlistKB(f);
                                } catch (java.lang.IllegalAccessException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorlistKB(f);
                                } catch (java.lang.InstantiationException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorlistKB(f);
                                } catch (org.apache.axis2.AxisFault e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorlistKB(f);
                                }
                            } else {
                                callback.receiveErrorlistKB(f);
                            }
                        } else {
                            callback.receiveErrorlistKB(f);
                        }
                    } else {
                        callback.receiveErrorlistKB(error);
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
                        callback.receiveErrorlistKB(axisFault);
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
     * @see arztis.econnector.ihe.generatedClasses.kbs.KBSService#issueKBeCard
     * @param requestSecurityToken21
     * @param security22
     * @throws arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage :
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument issueKBeCard(
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument requestSecurityToken21,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security22)
        throws java.rmi.RemoteException,
            arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage {
        org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[3].getName());
            _operationClient.getOptions()
                            .setAction("http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;

            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    requestSecurityToken21,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://kbs.spirit.com/", "issueKBeCard")),
                    new javax.xml.namespace.QName(
                        "http://docs.oasis-open.org/ws-sx/ws-trust/200512",
                        "RequestSecurityToken"));

            env.build();

            // add the children only if the parameter is not null
            if (security22 != null) {
                org.apache.axiom.om.OMElement omElementsecurity22 = toOM(security22,
                        optimizeContent(
                            new javax.xml.namespace.QName(
                                "http://kbs.spirit.com/", "issueKBeCard")));
                addHeader(omElementsecurity22, env);
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
                    arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.class);

            return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument) object;
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "IssueKBeCard"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "IssueKBeCard"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "IssueKBeCard"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        if (ex instanceof arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) {
                            throw (arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) ex;
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
     * @see arztis.econnector.ihe.generatedClasses.kbs.KBSService#startissueKBeCard
     * @param requestSecurityToken21
     * @param security22
     */
    public void startissueKBeCard(
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument requestSecurityToken21,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security22,
        final arztis.econnector.ihe.generatedClasses.kbs.KBSServiceCallbackHandler callback)
        throws java.rmi.RemoteException {
        org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[3].getName());
        _operationClient.getOptions()
                        .setAction("http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue");
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
                requestSecurityToken21,
                optimizeContent(
                    new javax.xml.namespace.QName("http://kbs.spirit.com/",
                        "issueKBeCard")),
                new javax.xml.namespace.QName(
                    "http://docs.oasis-open.org/ws-sx/ws-trust/200512",
                    "RequestSecurityToken"));

        // add the soap_headers only if they are not null
        if (security22 != null) {
            org.apache.axiom.om.OMElement omElementsecurity22 = toOM(security22,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://kbs.spirit.com/", "issueKBeCard")));
            addHeader(omElementsecurity22, env);
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
                                arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.class);
                        callback.receiveResultissueKBeCard((arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument) object);
                    } catch (org.apache.axis2.AxisFault e) {
                        callback.receiveErrorissueKBeCard(e);
                    }
                }

                public void onError(java.lang.Exception error) {
                    if (error instanceof org.apache.axis2.AxisFault) {
                        org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
                        org.apache.axiom.om.OMElement faultElt = f.getDetail();

                        if (faultElt != null) {
                            if (faultExceptionNameMap.containsKey(
                                        new org.apache.axis2.client.FaultMapKey(
                                            faultElt.getQName(), "IssueKBeCard"))) {
                                //make the fault by reflection
                                try {
                                    java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(),
                                                "IssueKBeCard"));
                                    java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                                    java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                                    java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                                    //message class
                                    java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(),
                                                "IssueKBeCard"));
                                    java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                                    java.lang.Object messageObject = fromOM(faultElt,
                                            messageClass);
                                    java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                            new java.lang.Class[] { messageClass });
                                    m.invoke(ex,
                                        new java.lang.Object[] { messageObject });

                                    if (ex instanceof arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) {
                                        callback.receiveErrorissueKBeCard((arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) ex);

                                        return;
                                    }

                                    callback.receiveErrorissueKBeCard(new java.rmi.RemoteException(
                                            ex.getMessage(), ex));
                                } catch (java.lang.ClassCastException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorissueKBeCard(f);
                                } catch (java.lang.ClassNotFoundException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorissueKBeCard(f);
                                } catch (java.lang.NoSuchMethodException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorissueKBeCard(f);
                                } catch (java.lang.reflect.InvocationTargetException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorissueKBeCard(f);
                                } catch (java.lang.IllegalAccessException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorissueKBeCard(f);
                                } catch (java.lang.InstantiationException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorissueKBeCard(f);
                                } catch (org.apache.axis2.AxisFault e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorissueKBeCard(f);
                                }
                            } else {
                                callback.receiveErrorissueKBeCard(f);
                            }
                        } else {
                            callback.receiveErrorissueKBeCard(f);
                        }
                    } else {
                        callback.receiveErrorissueKBeCard(error);
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
                        callback.receiveErrorissueKBeCard(axisFault);
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

    /**
     * Auto generated method signature
     *
     * @see arztis.econnector.ihe.generatedClasses.kbs.KBSService#cancelKB
     * @param requestSecurityToken24
     * @param security25
     * @throws arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage :
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument cancelKB(
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument requestSecurityToken24,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security25)
        throws java.rmi.RemoteException,
            arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage {
        org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

        try {
            org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[4].getName());
            _operationClient.getOptions()
                            .setAction("http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Cancel");
            _operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

            addPropertyToOperationClient(_operationClient,
                org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR,
                "&");

            // create SOAP envelope with that payload
            org.apache.axiom.soap.SOAPEnvelope env = null;

            env = toEnvelope(getFactory(_operationClient.getOptions()
                                                        .getSoapVersionURI()),
                    requestSecurityToken24,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://kbs.spirit.com/", "cancelKB")),
                    new javax.xml.namespace.QName(
                        "http://docs.oasis-open.org/ws-sx/ws-trust/200512",
                        "RequestSecurityToken"));

            env.build();

            // add the children only if the parameter is not null
            if (security25 != null) {
                org.apache.axiom.om.OMElement omElementsecurity25 = toOM(security25,
                        optimizeContent(
                            new javax.xml.namespace.QName(
                                "http://kbs.spirit.com/", "cancelKB")));
                addHeader(omElementsecurity25, env);
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
                    arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.class);

            return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument) object;
        } catch (org.apache.axis2.AxisFault f) {
            org.apache.axiom.om.OMElement faultElt = f.getDetail();

            if (faultElt != null) {
                if (faultExceptionNameMap.containsKey(
                            new org.apache.axis2.client.FaultMapKey(
                                faultElt.getQName(), "CancelKB"))) {
                    //make the fault by reflection
                    try {
                        java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "CancelKB"));
                        java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                        java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                        java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                        //message class
                        java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                    faultElt.getQName(), "CancelKB"));
                        java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                        java.lang.Object messageObject = fromOM(faultElt,
                                messageClass);
                        java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                new java.lang.Class[] { messageClass });
                        m.invoke(ex, new java.lang.Object[] { messageObject });

                        if (ex instanceof arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) {
                            throw (arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) ex;
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
     * @see arztis.econnector.ihe.generatedClasses.kbs.KBSService#startcancelKB
     * @param requestSecurityToken24
     * @param security25
     */
    public void startcancelKB(
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument requestSecurityToken24,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument security25,
        final arztis.econnector.ihe.generatedClasses.kbs.KBSServiceCallbackHandler callback)
        throws java.rmi.RemoteException {
        org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(_operations[4].getName());
        _operationClient.getOptions()
                        .setAction("http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Cancel");
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
                requestSecurityToken24,
                optimizeContent(
                    new javax.xml.namespace.QName("http://kbs.spirit.com/",
                        "cancelKB")),
                new javax.xml.namespace.QName(
                    "http://docs.oasis-open.org/ws-sx/ws-trust/200512",
                    "RequestSecurityToken"));

        // add the soap_headers only if they are not null
        if (security25 != null) {
            org.apache.axiom.om.OMElement omElementsecurity25 = toOM(security25,
                    optimizeContent(
                        new javax.xml.namespace.QName(
                            "http://kbs.spirit.com/", "cancelKB")));
            addHeader(omElementsecurity25, env);
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
                                arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.class);
                        callback.receiveResultcancelKB((arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument) object);
                    } catch (org.apache.axis2.AxisFault e) {
                        callback.receiveErrorcancelKB(e);
                    }
                }

                public void onError(java.lang.Exception error) {
                    if (error instanceof org.apache.axis2.AxisFault) {
                        org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
                        org.apache.axiom.om.OMElement faultElt = f.getDetail();

                        if (faultElt != null) {
                            if (faultExceptionNameMap.containsKey(
                                        new org.apache.axis2.client.FaultMapKey(
                                            faultElt.getQName(), "CancelKB"))) {
                                //make the fault by reflection
                                try {
                                    java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(), "CancelKB"));
                                    java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
                                    java.lang.reflect.Constructor constructor = exceptionClass.getConstructor(java.lang.String.class);
                                    java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

                                    //message class
                                    java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
                                                faultElt.getQName(), "CancelKB"));
                                    java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
                                    java.lang.Object messageObject = fromOM(faultElt,
                                            messageClass);
                                    java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage",
                                            new java.lang.Class[] { messageClass });
                                    m.invoke(ex,
                                        new java.lang.Object[] { messageObject });

                                    if (ex instanceof arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) {
                                        callback.receiveErrorcancelKB((arztis.econnector.ihe.generatedClasses.kbs.AccessDeniedMessage) ex);

                                        return;
                                    }

                                    callback.receiveErrorcancelKB(new java.rmi.RemoteException(
                                            ex.getMessage(), ex));
                                } catch (java.lang.ClassCastException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorcancelKB(f);
                                } catch (java.lang.ClassNotFoundException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorcancelKB(f);
                                } catch (java.lang.NoSuchMethodException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorcancelKB(f);
                                } catch (java.lang.reflect.InvocationTargetException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorcancelKB(f);
                                } catch (java.lang.IllegalAccessException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorcancelKB(f);
                                } catch (java.lang.InstantiationException e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorcancelKB(f);
                                } catch (org.apache.axis2.AxisFault e) {
                                    // we cannot intantiate the class - throw the original Axis fault
                                    callback.receiveErrorcancelKB(f);
                                }
                            } else {
                                callback.receiveErrorcancelKB(f);
                            }
                        } else {
                            callback.receiveErrorcancelKB(f);
                        }
                    } else {
                        callback.receiveErrorcancelKB(error);
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
                        callback.receiveErrorcancelKB(axisFault);
                    }
                }
            });

        org.apache.axis2.util.CallbackReceiver _callbackReceiver = null;

        if ((_operations[4].getMessageReceiver() == null) &&
                _operationClient.getOptions().isUseSeparateListener()) {
            _callbackReceiver = new org.apache.axis2.util.CallbackReceiver();
            _operations[4].setMessageReceiver(_callbackReceiver);
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
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        return toOM(param);
    }

    private org.apache.axiom.om.OMElement toOM(
        final arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument param)
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
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument param,
        boolean optimizeContent) throws org.apache.axis2.AxisFault {
        return toOM(param);
    }

    private org.apache.axiom.om.OMElement toOM(
        final arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument param)
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

    private org.apache.axiom.soap.SOAPEnvelope toEnvelope(
        org.apache.axiom.soap.SOAPFactory factory,
        arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument param,
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
            if (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.Factory.parse(param.getXMLStreamReader(
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

            if (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.Factory.parse(param.getXMLStreamReader(
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

            if (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.Factory.parse(param.getXMLStreamReader(
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

            if (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.Factory.parse(param.getXMLStreamReader(
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

            if (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument.Factory.parse(param.getXMLStreamReader(
                        false, configuration));
            }

            if (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.class.equals(
                        type)) {
                org.apache.axiom.om.OMXMLStreamReaderConfiguration configuration =
                    new org.apache.axiom.om.OMXMLStreamReaderConfiguration();
                configuration.setPreserveNamespaceContext(true);

                return arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseCollectionDocument.Factory.parse(param.getXMLStreamReader(
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
