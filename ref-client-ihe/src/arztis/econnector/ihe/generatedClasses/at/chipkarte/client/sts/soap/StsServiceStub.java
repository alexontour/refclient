/**
 * StsServiceStub.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap;

import org.apache.axis2.client.FaultMapKey;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/*
 *  StsServiceStub java implementation
 */
public class StsServiceStub extends org.apache.axis2.client.Stub {
	private static final Logger LOGGER = LoggerFactory.getLogger(StsServiceStub.class.getName());
	private static final String LITERAL_TICKET_SUBJECT = "ticketSubject";
	private static final String LITERAL_SAML_TICKET = "samlTicket";
	private static final String LITERAL_CARD_TOKEN = "cardToken";
	private static final String LITERAL_DIALOG_ID = "dialogId";
	private static final String LITERAL_REQUEST_SAML_ASSERTION = "requestSamlAssertion";
	private static final String LITERAL_REQUET_SAML_ASSERTION_RESPONSE = "requestSamlAssertionResponse";
	private static final String LITERAL_REQUEST_SAML_ASSERTION_REQUEST = "requestSamlAssertionReq";
	private static final String LITERAL_REQUEST_SAML_ASSERTION_RESP = "requestSamlAssertionResp";
	private static final String LITERAL_RESPONSE_URL = "responseURL";
	private static final String LITERAL_MESSAGE = "message";
	private static final String LITERAL_ACCESS_EXCEPTION_CONTENT = "accessExceptionContent";
	private static final String LITERAL_BASE_EXCEPTION_CONTENT = "baseExceptionContent";
	private static final String LITERAL_DIALOG_EXCEPTION_CONTENT = "dialogExceptionContent";
	private static final String LITERAL_SERVICE_EXCEPTION_CONTENT = "serviceExceptionContent";
	private static final String LITERAL_STS_EXCEPTION_CONTENT = "stsExceptionContent";
	private static final String LITERAL_INVALID_PARAMETER_EXCEPTION_CONTENT = "invalidParameterStsExceptionContent";
	private static final String LITERAL_ERROR_CODE = "errorCode";
	private static final String LITERAL_SET_FAULT_MESSAGE = "setFaultMessage";
	private static final String LITERAL_ACCESS_EXCEPTION = "AccessException";
	private static final String SERVICE_EXCEPTION_LITERAL = "ServiceException";
	private static final String DIALOG_EXCEPTION_LITERAL = "DialogException";
	private static final String STS_EXCEPTION_LITERAL = "StsException";
	private static final String INVALID_PARAMETER_STS_EXCEPTION_LITERAL = "InvalidParameterStsException";
	private static final String NAMESPACE_STS = "http://soap.sts.client.chipkarte.at";
	private static final String NAMESPACE_BASE = "http://exceptions.soap.base.client.chipkarte.at";
	private static final String NAMESPACE_EXCEPTIONS_STS = "http://exceptions.soap.sts.client.chipkarte.at";
	private static final String NAMESPACE_XML = "http://www.w3.org/2001/XMLSchema-instance";
	private static final String FACTORY_CLASS = "Factory class";
	private static final String MESSAGE_ATTRIBUTE_CANNOT_BE_NULL = "The element: %s cannot be null";
	private static int counter = 0;
	protected org.apache.axis2.description.AxisOperation[] operations;

	// hashmaps to keep the fault mapping
	private java.util.HashMap<FaultMapKey, String> faultExceptionNameMap = new java.util.HashMap<>();
	private java.util.HashMap<FaultMapKey, String> faultExceptionClassNameMap = new java.util.HashMap<>();
	private java.util.HashMap<FaultMapKey, String> faultMessageMap = new java.util.HashMap<>();

	/**
	 * Constructor that takes in a configContext
	 */
	public StsServiceStub(org.apache.axis2.context.ConfigurationContext configurationContext,
			java.lang.String targetEndpoint) throws org.apache.axis2.AxisFault {
		this(configurationContext, targetEndpoint, false);
	}

	/**
	 * Constructor that takes in a configContext and useseperate listner
	 */
	public StsServiceStub(org.apache.axis2.context.ConfigurationContext configurationContext,
			java.lang.String targetEndpoint, boolean useSeparateListener) throws org.apache.axis2.AxisFault {
		// To populate AxisService
		populateAxisService();
		populateFaults();

		_serviceClient = new org.apache.axis2.client.ServiceClient(configurationContext, _service);

		_serviceClient.getOptions().setTo(new org.apache.axis2.addressing.EndpointReference(targetEndpoint));
		_serviceClient.getOptions().setUseSeparateListener(useSeparateListener);
	}

	/**
	 * Constructor taking the target endpoint
	 */
	public StsServiceStub(java.lang.String targetEndpoint) throws org.apache.axis2.AxisFault {
		this(null, targetEndpoint);
	}

	private static synchronized java.lang.String getUniqueSuffix() {
		// reset the counter if it is greater than 99999
		if (counter > 99999) {
			counter = 0;
		}

		counter = counter + 1;

		return java.lang.Long.toString(java.lang.System.currentTimeMillis()) + "_" + counter;
	}

	private void populateAxisService() {
		// creating the Service with a unique name
		_service = new org.apache.axis2.description.AxisService("StsService" + getUniqueSuffix());
		addAnonymousOperations();

		// creating the operations
		org.apache.axis2.description.AxisOperation operation;

		operations = new org.apache.axis2.description.AxisOperation[1];

		operation = new org.apache.axis2.description.OutInAxisOperation();

		operation.setName(new javax.xml.namespace.QName(NAMESPACE_STS, LITERAL_REQUEST_SAML_ASSERTION));
		_service.addOperation(operation);

		operations[0] = operation;
	}

	// populates the faults
	private void populateFaults() {
		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_BASE, LITERAL_ACCESS_EXCEPTION),
						LITERAL_REQUEST_SAML_ASSERTION),
				"arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.AccessException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_BASE, LITERAL_ACCESS_EXCEPTION),
						LITERAL_REQUEST_SAML_ASSERTION),
				"arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.AccessException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_BASE, LITERAL_ACCESS_EXCEPTION),
						LITERAL_REQUEST_SAML_ASSERTION),
				"arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub$AccessException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_BASE, SERVICE_EXCEPTION_LITERAL),
						LITERAL_REQUEST_SAML_ASSERTION),
				"arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.ServiceException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_BASE, SERVICE_EXCEPTION_LITERAL),
						LITERAL_REQUEST_SAML_ASSERTION),
				"arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.ServiceException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_BASE, SERVICE_EXCEPTION_LITERAL),
						LITERAL_REQUEST_SAML_ASSERTION),
				"arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub$ServiceException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_STS, STS_EXCEPTION_LITERAL),
						LITERAL_REQUEST_SAML_ASSERTION),
				"arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_STS, STS_EXCEPTION_LITERAL),
						LITERAL_REQUEST_SAML_ASSERTION),
				"arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_STS, STS_EXCEPTION_LITERAL),
						LITERAL_REQUEST_SAML_ASSERTION),
				"arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub$StsException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(
								NAMESPACE_EXCEPTIONS_STS, INVALID_PARAMETER_STS_EXCEPTION_LITERAL),
						LITERAL_REQUEST_SAML_ASSERTION),
				"arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.InvalidParameterStsException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(
								NAMESPACE_EXCEPTIONS_STS, INVALID_PARAMETER_STS_EXCEPTION_LITERAL),
						LITERAL_REQUEST_SAML_ASSERTION),
				"arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.InvalidParameterStsException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(
								NAMESPACE_EXCEPTIONS_STS, INVALID_PARAMETER_STS_EXCEPTION_LITERAL),
						LITERAL_REQUEST_SAML_ASSERTION),
				"arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub$InvalidParameterStsException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_BASE, DIALOG_EXCEPTION_LITERAL),
						LITERAL_REQUEST_SAML_ASSERTION),
				"arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.DialogException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_BASE, DIALOG_EXCEPTION_LITERAL),
						LITERAL_REQUEST_SAML_ASSERTION),
				"arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.DialogException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_BASE, DIALOG_EXCEPTION_LITERAL),
						LITERAL_REQUEST_SAML_ASSERTION),
				"arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub$DialogException");
	}

	/**
	 * Auto generated method signature
	 *
	 * @see arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsService#requestSamlAssertion
	 * @param requestSamlAssertion0
	 * @throws arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.AccessException              :
	 * @throws arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.ServiceException             :
	 * @throws arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsException                 :
	 * @throws arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.InvalidParameterStsException :
	 * @throws arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.DialogException              :
	 */
	public arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.RequestSamlAssertionResponseE requestSamlAssertion(
			arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.RequestSamlAssertionE requestSamlAssertion0)
			throws java.rmi.RemoteException,
			arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.AccessException,
			arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.ServiceException,
			arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsException,
			arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.InvalidParameterStsException,
			arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.DialogException {
		org.apache.axis2.context.MessageContext messageContext = new org.apache.axis2.context.MessageContext();

		try {
			org.apache.axis2.client.OperationClient operationClient = _serviceClient
					.createClient(operations[0].getName());
			operationClient.getOptions()
					.setAction("http://soap.sts.client.chipkarte.at/IStsService/requestSamlAssertionRequest");
			operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;

			env = toEnvelope(getFactory(operationClient.getOptions().getSoapVersionURI()), requestSamlAssertion0);

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			operationClient.addMessageContext(messageContext);

			// execute the operation client
			operationClient.execute(true);

			org.apache.axis2.context.MessageContext returnMessageContext = operationClient
					.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope returnEnv = returnMessageContext.getEnvelope();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info(messageContext.getEnvelope().toString());
			}

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info(returnEnv.toString());
			}

			java.lang.Object object = fromOM(returnEnv.getBody().getFirstElement(),
					arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.RequestSamlAssertionResponseE.class);

			return (arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.RequestSamlAssertionResponseE) object;
		} catch (org.apache.axis2.AxisFault f) {
			org.apache.axiom.om.OMElement faultElt = f.getDetail();

			if (faultElt != null) {
				if (faultExceptionNameMap.containsKey(
						new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), LITERAL_REQUEST_SAML_ASSERTION))) {
					// make the fault by reflection
					try {
						java.lang.String exceptionClassName = faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
										LITERAL_REQUEST_SAML_ASSERTION));
						java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(java.lang.String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

						// message class
						java.lang.String messageClassName = faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), LITERAL_REQUEST_SAML_ASSERTION));
						java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt, messageClass);
						java.lang.reflect.Method m = exceptionClass.getMethod(LITERAL_SET_FAULT_MESSAGE, messageClass);
						m.invoke(ex, messageObject);

						if (ex instanceof arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.AccessException) {
							throw (arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.AccessException) ex;
						}

						if (ex instanceof arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.ServiceException) {
							throw (arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.ServiceException) ex;
						}

						if (ex instanceof arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsException) {
							throw (arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsException) ex;
						}

						if (ex instanceof arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.InvalidParameterStsException) {
							throw (arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.InvalidParameterStsException) ex;
						}

						if (ex instanceof arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.DialogException) {
							throw (arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.DialogException) ex;
						}

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					} catch (java.lang.ClassCastException | java.lang.ClassNotFoundException
							| java.lang.NoSuchMethodException | java.lang.reflect.InvocationTargetException
							| java.lang.IllegalAccessException | java.lang.InstantiationException e) {
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
			if (messageContext.getTransportOut() != null) {
				messageContext.getTransportOut().getSender().cleanup(messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature for Asynchronous Invocations
	 *
	 * @see arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsService#startrequestSamlAssertion
	 * @param requestSamlAssertion0
	 */
	public void startrequestSamlAssertion(
			arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.RequestSamlAssertionE requestSamlAssertion0,
			final arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceCallbackHandler callback)
			throws java.rmi.RemoteException {
		org.apache.axis2.client.OperationClient operationClient = _serviceClient.createClient(operations[0].getName());
		operationClient.getOptions()
				.setAction("http://soap.sts.client.chipkarte.at/IStsService/requestSamlAssertionRequest");
		operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

		addPropertyToOperationClient(operationClient,
				org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

		// create SOAP envelope with that payload
		org.apache.axiom.soap.SOAPEnvelope env = null;
		final org.apache.axis2.context.MessageContext messageContext = new org.apache.axis2.context.MessageContext();

		// Style is Doc.
		env = toEnvelope(getFactory(operationClient.getOptions().getSoapVersionURI()), requestSamlAssertion0);

		// adding SOAP soap_headers
		_serviceClient.addHeadersToEnvelope(env);
		// create message context with that soap envelope
		messageContext.setEnvelope(env);

		// add the message context to the operation client
		operationClient.addMessageContext(messageContext);

		operationClient.setCallback(new org.apache.axis2.client.async.AxisCallback() {
			public void onMessage(org.apache.axis2.context.MessageContext resultContext) {
				try {
					org.apache.axiom.soap.SOAPEnvelope resultEnv = resultContext.getEnvelope();

					java.lang.Object object = fromOM(resultEnv.getBody().getFirstElement(),
							arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.RequestSamlAssertionResponseE.class);
					callback.receiveResultrequestSamlAssertion(
							(arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.RequestSamlAssertionResponseE) object);
				} catch (org.apache.axis2.AxisFault e) {
					callback.receiveErrorrequestSamlAssertion(e);
				}
			}

			public void onError(java.lang.Exception error) {
				if (error instanceof org.apache.axis2.AxisFault) {
					org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
					org.apache.axiom.om.OMElement faultElt = f.getDetail();

					if (faultElt != null) {
						if (faultExceptionNameMap.containsKey(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), LITERAL_REQUEST_SAML_ASSERTION))) {
							// make the fault by reflection
							try {
								java.lang.String exceptionClassName = faultExceptionClassNameMap
										.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
												LITERAL_REQUEST_SAML_ASSERTION));
								java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
								java.lang.reflect.Constructor constructor = exceptionClass
										.getConstructor(java.lang.String.class);
								java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

								// message class
								java.lang.String messageClassName = faultMessageMap
										.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
												LITERAL_REQUEST_SAML_ASSERTION));
								java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
								java.lang.Object messageObject = fromOM(faultElt, messageClass);
								java.lang.reflect.Method m = exceptionClass.getMethod(LITERAL_SET_FAULT_MESSAGE,
										messageClass);
								m.invoke(ex, messageObject);

								if (ex instanceof arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.AccessException) {
									callback.receiveErrorrequestSamlAssertion(
											(arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.AccessException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.ServiceException) {
									callback.receiveErrorrequestSamlAssertion(
											(arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.ServiceException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsException) {
									callback.receiveErrorrequestSamlAssertion(
											(arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.InvalidParameterStsException) {
									callback.receiveErrorrequestSamlAssertion(
											(arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.InvalidParameterStsException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.DialogException) {
									callback.receiveErrorrequestSamlAssertion(
											(arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.DialogException) ex);

									return;
								}

								callback.receiveErrorrequestSamlAssertion(
										new java.rmi.RemoteException(ex.getMessage(), ex));
							} catch (java.lang.ClassCastException | java.lang.ClassNotFoundException
									| java.lang.NoSuchMethodException | java.lang.reflect.InvocationTargetException
									| java.lang.IllegalAccessException | java.lang.InstantiationException
									| org.apache.axis2.AxisFault e) {
								// we cannot intantiate the class - throw the original Axis fault
								callback.receiveErrorrequestSamlAssertion(f);
							}
						} else {
							callback.receiveErrorrequestSamlAssertion(f);
						}
					} else {
						callback.receiveErrorrequestSamlAssertion(f);
					}
				} else {
					callback.receiveErrorrequestSamlAssertion(error);
				}
			}

			public void onFault(org.apache.axis2.context.MessageContext faultContext) {
				org.apache.axis2.AxisFault fault = org.apache.axis2.util.Utils
						.getInboundFaultFromMessageContext(faultContext);
				onError(fault);
			}

			public void onComplete() {
				try {
					messageContext.getTransportOut().getSender().cleanup(messageContext);
				} catch (org.apache.axis2.AxisFault axisFault) {
					callback.receiveErrorrequestSamlAssertion(axisFault);
				}
			}
		});

		org.apache.axis2.util.CallbackReceiver callbackReceiver = null;

		if ((operations[0].getMessageReceiver() == null) && operationClient.getOptions().isUseSeparateListener()) {
			callbackReceiver = new org.apache.axis2.util.CallbackReceiver();
			operations[0].setMessageReceiver(callbackReceiver);
		}

		// execute the operation client
		operationClient.execute(false);
	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory,
			arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.RequestSamlAssertionE param)
			throws org.apache.axis2.AxisFault {
		try {
			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();
			emptyEnvelope.getBody().addChild(param.getOMElement(
					arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.RequestSamlAssertionE.MY_QNAME,
					factory));

			return emptyEnvelope;
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	private java.lang.Object fromOM(org.apache.axiom.om.OMElement param, java.lang.Class type)
			throws org.apache.axis2.AxisFault {
		try {
			if (arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.AccessException.class
					.equals(type)) {
				return arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.AccessException.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.DialogException.class
					.equals(type)) {
				return arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.DialogException.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.InvalidParameterStsException.class
					.equals(type)) {
				return arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.InvalidParameterStsException.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.RequestSamlAssertionE.class
					.equals(type)) {
				return arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.RequestSamlAssertionE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.RequestSamlAssertionResponseE.class
					.equals(type)) {
				return arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.RequestSamlAssertionResponseE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.ServiceException.class
					.equals(type)) {
				return arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.ServiceException.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.StsException.class
					.equals(type)) {
				return arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.StsException.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}
		} catch (java.lang.Exception e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

		return null;
	}

	// https://localhost/sts/5
	public static class InvalidParameterStsExceptionContent extends WriteStartElementStsService
			implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * invalidParameterStsExceptionContent Namespace URI =
		 * http://exceptions.soap.sts.client.chipkarte.at Namespace Prefix = ns2
		 */

		/**
		 *
		 * @param parentQName
		 * @param factory
		 * @return org.apache.axiom.om.OMElement
		 */
		public org.apache.axiom.om.OMElement getOMElement(final javax.xml.namespace.QName parentQName,
				final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException {
			return factory.createOMElement(new org.apache.axis2.databinding.ADBDataSource(this, parentQName));
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType) throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElementStsService(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			java.lang.String namespacePrefix = registerPrefixStsService(xmlWriter, NAMESPACE_EXCEPTIONS_STS);

			if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
				writeAttributeStsService("xsi", NAMESPACE_XML, "type",
						namespacePrefix + ":invalidParameterStsExceptionContent", xmlWriter);
			} else {
				writeAttributeStsService("xsi", NAMESPACE_XML, "type", LITERAL_INVALID_PARAMETER_EXCEPTION_CONTENT,
						xmlWriter);
			}

			if (localCodeTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementStsService(null, namespace, "code", xmlWriter);

				if (localCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException(String.format(MESSAGE_ATTRIBUTE_CANNOT_BE_NULL, "code"));
				} else {
					xmlWriter.writeCharacters(localCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localErrorCodeTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementStsService(null, namespace, LITERAL_ERROR_CODE, xmlWriter);

				if (localErrorCode == java.lang.Integer.MIN_VALUE) {
					throw new org.apache.axis2.databinding.ADBException(String.format(MESSAGE_ATTRIBUTE_CANNOT_BE_NULL, LITERAL_ERROR_CODE));
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localErrorCode));
				}

				xmlWriter.writeEndElement();
			}

			if (localMessageTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementStsService(null, namespace, LITERAL_MESSAGE, xmlWriter);

				if (localMessage == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException(String.format(MESSAGE_ATTRIBUTE_CANNOT_BE_NULL, LITERAL_MESSAGE));
				} else {
					xmlWriter.writeCharacters(localMessage);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_EXCEPTIONS_STS)) {
				return "ns2";
			}

			return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
		}

		/**
		 * Utility method to write an element start tag.
		 */
		private void writeStartElementStsService(java.lang.String prefix, java.lang.String namespace,
				java.lang.String localPart, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeStartElement(writerPrefix, localPart, namespace);
			} else {
				if (namespace.length() == 0) {
					prefix = "";
				} else if (prefix == null) {
					prefix = generatePrefix(namespace);
				}

				xmlWriter.writeStartElement(prefix, localPart, namespace);
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}
		}

		/**
		 * Util method to write an attribute with the ns prefix
		 */
		private void writeAttributeStsService(java.lang.String prefix, java.lang.String namespace,
				java.lang.String attName, java.lang.String attValue, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeAttribute(writerPrefix, namespace, attName, attValue);
			} else {
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
				xmlWriter.writeAttribute(prefix, namespace, attName, attValue);
			}
		}

		/**
		 * Register a namespace prefix
		 */
		private java.lang.String registerPrefixStsService(javax.xml.stream.XMLStreamWriter xmlWriter,
				java.lang.String namespace) throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = xmlWriter.getPrefix(namespace);

			if (prefix == null) {
				prefix = generatePrefix(namespace);

				javax.xml.namespace.NamespaceContext nsContext = xmlWriter.getNamespaceContext();

				while (true) {
					java.lang.String uri = nsContext.getNamespaceURI(prefix);

					if ((uri == null) || (uri.length() == 0)) {
						break;
					}

					prefix = org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
				}

				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}

			return prefix;
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {
				throw new IllegalStateException(FACTORY_CLASS);
			}

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static InvalidParameterStsExceptionContent parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				InvalidParameterStsExceptionContent object = new InvalidParameterStsExceptionContent();

				java.lang.String nillableValue = null;

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.getAttributeValue(NAMESPACE_XML, "type") != null) {
					java.lang.String fullTypeName = reader.getAttributeValue(NAMESPACE_XML, "type");

					if (fullTypeName != null) {
						java.lang.String nsPrefix = null;

						if (fullTypeName.indexOf(':') > -1) {
							nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
						}

						nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

						java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

						if (!LITERAL_INVALID_PARAMETER_EXCEPTION_CONTENT.equals(type)) {
							// find namespace for the prefix
							java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

							return (InvalidParameterStsExceptionContent) ExtensionMapper.getTypeObject(nsUri, type,
									reader);
						}
					}
				}

				reader.next();

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_BASE, "code").equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								String.format(MESSAGE_ATTRIBUTE_CANNOT_BE_NULL, "code"));
					}

					java.lang.String content = reader.getElementText();

					object.setCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

					reader.next();
				} // End of if for expected property start element

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_BASE, LITERAL_ERROR_CODE).equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								String.format(MESSAGE_ATTRIBUTE_CANNOT_BE_NULL, LITERAL_ERROR_CODE));
					}

					java.lang.String content = reader.getElementText();

					object.setErrorCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(content));

					reader.next();
				} // End of if for expected property start element

				else {
					object.setErrorCode(java.lang.Integer.MIN_VALUE);
				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_BASE, LITERAL_MESSAGE).equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								String.format(MESSAGE_ATTRIBUTE_CANNOT_BE_NULL, LITERAL_MESSAGE));
					}

					java.lang.String content = reader.getElementText();

					object.setMessage(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

					reader.next();
				} // End of if for expected property start element

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()) {
					// 2 - A start element we are not expecting indicates a trailing invalid
					// property
					throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
				}

				return object;
			}
		} // end of factory class
	}

	public static class ExtensionMapper {
		private ExtensionMapper() {
			throw new IllegalStateException("ExtensionMapper class");
		}

		public static java.lang.Object getTypeObject(java.lang.String namespaceURI, java.lang.String typeName,
				javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
			if (NAMESPACE_STS.equals(namespaceURI) && LITERAL_REQUEST_SAML_ASSERTION.equals(typeName)) {
				return RequestSamlAssertion.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && LITERAL_ACCESS_EXCEPTION_CONTENT.equals(typeName)) {
				return AccessExceptionContent.Factory.parse(reader);
			}

			if (NAMESPACE_STS.equals(namespaceURI) && LITERAL_REQUEST_SAML_ASSERTION_RESP.equals(typeName)) {
				return RequestSamlAssertionResp.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && LITERAL_SERVICE_EXCEPTION_CONTENT.equals(typeName)) {
				return ServiceExceptionContent.Factory.parse(reader);
			}

			if (NAMESPACE_EXCEPTIONS_STS.equals(namespaceURI)
					&& LITERAL_INVALID_PARAMETER_EXCEPTION_CONTENT.equals(typeName)) {
				return InvalidParameterStsExceptionContent.Factory.parse(reader);
			}

			if (NAMESPACE_STS.equals(namespaceURI) && LITERAL_REQUEST_SAML_ASSERTION_REQUEST.equals(typeName)) {
				return RequestSamlAssertionReq.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && LITERAL_BASE_EXCEPTION_CONTENT.equals(typeName)) {
				return WriteStartElementStsService.Factory.parse(reader);
			}

			if (NAMESPACE_EXCEPTIONS_STS.equals(namespaceURI) && LITERAL_STS_EXCEPTION_CONTENT.equals(typeName)) {
				return StsExceptionContent.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && LITERAL_DIALOG_EXCEPTION_CONTENT.equals(typeName)) {
				return DialogExceptionContent.Factory.parse(reader);
			}

			if (NAMESPACE_STS.equals(namespaceURI) && LITERAL_REQUET_SAML_ASSERTION_RESPONSE.equals(typeName)) {
				return RequestSamlAssertionResponse.Factory.parse(reader);
			}

			throw new org.apache.axis2.databinding.ADBException("Unsupported type " + namespaceURI + " " + typeName);
		}
	}

	public static class DialogException implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(NAMESPACE_BASE,
				DIALOG_EXCEPTION_LITERAL, "ns1");

		/**
		 * field for DialogException
		 */
		protected DialogExceptionContent localDialogException;

		/**
		 * Auto generated getter method
		 * 
		 * @return DialogExceptionContent
		 */
		public DialogExceptionContent getDialogException() {
			return localDialogException;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param DialogException
		 */
		public void setDialogException(DialogExceptionContent param) {
			this.localDialogException = param;
		}

		/**
		 *
		 * @param parentQName
		 * @param factory
		 * @return org.apache.axiom.om.OMElement
		 */
		public org.apache.axiom.om.OMElement getOMElement(final javax.xml.namespace.QName parentQName,
				final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException {
			return factory.createOMElement(new org.apache.axis2.databinding.ADBDataSource(this, MY_QNAME));
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType) throws javax.xml.stream.XMLStreamException {
			// We can safely assume an element has only one type associated with it
			if (localDialogException == null) {
				throw new org.apache.axis2.databinding.ADBException("DialogException cannot be null!");
			}

			localDialogException.serialize(MY_QNAME, xmlWriter);
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {
				throw new IllegalStateException(FACTORY_CLASS);
			}

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static DialogException parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				DialogException object = new DialogException();

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				while (!reader.isEndElement()) {
					if (reader.isStartElement()) {
						if (reader.isStartElement()
								&& new javax.xml.namespace.QName(NAMESPACE_BASE, DIALOG_EXCEPTION_LITERAL)
										.equals(reader.getName())) {
							object.setDialogException(DialogExceptionContent.Factory.parse(reader));
						} // End of if for expected property start element

						else {
							// 3 - A start element we are not expecting indicates an invalid parameter was
							// passed
							throw new org.apache.axis2.databinding.ADBException(
									"Unexpected subelement " + reader.getName());
						}
					} else {
						reader.next();
					}
				} // end of while loop

				return object;
			}
		} // end of factory class
	}

	public static class ServiceExceptionContent extends WriteStartElementStsService
			implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * serviceExceptionContent Namespace URI =
		 * http://exceptions.soap.base.client.chipkarte.at Namespace Prefix = ns1
		 */

		/**
		 *
		 * @param parentQName
		 * @param factory
		 * @return org.apache.axiom.om.OMElement
		 */
		public org.apache.axiom.om.OMElement getOMElement(final javax.xml.namespace.QName parentQName,
				final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException {
			return factory.createOMElement(new org.apache.axis2.databinding.ADBDataSource(this, parentQName));
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType) throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElementStsService(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			java.lang.String namespacePrefix = registerPrefixStsService(xmlWriter, NAMESPACE_BASE);

			if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
				writeAttributeStsService("xsi", NAMESPACE_XML, "type", namespacePrefix + ":serviceExceptionContent",
						xmlWriter);
			} else {
				writeAttributeStsService("xsi", NAMESPACE_XML, "type", LITERAL_SERVICE_EXCEPTION_CONTENT, xmlWriter);
			}

			if (localCodeTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementStsService(null, namespace, "code", xmlWriter);

				if (localCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("code cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localErrorCodeTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementStsService(null, namespace, LITERAL_ERROR_CODE, xmlWriter);

				if (localErrorCode == java.lang.Integer.MIN_VALUE) {
					throw new org.apache.axis2.databinding.ADBException("errorCode cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localErrorCode));
				}

				xmlWriter.writeEndElement();
			}

			if (localMessageTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementStsService(null, namespace, LITERAL_MESSAGE, xmlWriter);

				if (localMessage == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("message cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localMessage);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
				return "ns1";
			}

			return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
		}

		/**
		 * Utility method to write an element start tag.
		 */
		private void writeStartElementStsService(java.lang.String prefix, java.lang.String namespace,
				java.lang.String localPart, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeStartElement(writerPrefix, localPart, namespace);
			} else {
				if (namespace.length() == 0) {
					prefix = "";
				} else if (prefix == null) {
					prefix = generatePrefix(namespace);
				}

				xmlWriter.writeStartElement(prefix, localPart, namespace);
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}
		}

		/**
		 * Util method to write an attribute with the ns prefix
		 */
		private void writeAttributeStsService(java.lang.String prefix, java.lang.String namespace,
				java.lang.String attName, java.lang.String attValue, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeAttribute(writerPrefix, namespace, attName, attValue);
			} else {
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
				xmlWriter.writeAttribute(prefix, namespace, attName, attValue);
			}
		}

		/**
		 * Register a namespace prefix
		 */
		private java.lang.String registerPrefixStsService(javax.xml.stream.XMLStreamWriter xmlWriter,
				java.lang.String namespace) throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = xmlWriter.getPrefix(namespace);

			if (prefix == null) {
				prefix = generatePrefix(namespace);

				javax.xml.namespace.NamespaceContext nsContext = xmlWriter.getNamespaceContext();

				while (true) {
					java.lang.String uri = nsContext.getNamespaceURI(prefix);

					if ((uri == null) || (uri.length() == 0)) {
						break;
					}

					prefix = org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
				}

				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}

			return prefix;
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {
				throw new IllegalStateException(FACTORY_CLASS);
			}

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static ServiceExceptionContent parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				ServiceExceptionContent object = new ServiceExceptionContent();

				java.lang.String nillableValue = null;

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.getAttributeValue(NAMESPACE_XML, "type") != null) {
					java.lang.String fullTypeName = reader.getAttributeValue(NAMESPACE_XML, "type");

					if (fullTypeName != null) {
						java.lang.String nsPrefix = null;

						if (fullTypeName.indexOf(':') > -1) {
							nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
						}

						nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

						java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

						if (!LITERAL_SERVICE_EXCEPTION_CONTENT.equals(type)) {
							// find namespace for the prefix
							java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

							return (ServiceExceptionContent) ExtensionMapper.getTypeObject(nsUri, type, reader);
						}
					}
				}

				reader.next();

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_BASE, "code").equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								String.format(MESSAGE_ATTRIBUTE_CANNOT_BE_NULL, "code"));
					}

					java.lang.String content = reader.getElementText();

					object.setCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

					reader.next();
				} // End of if for expected property start element

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_BASE, LITERAL_ERROR_CODE).equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								String.format(MESSAGE_ATTRIBUTE_CANNOT_BE_NULL, LITERAL_ERROR_CODE));
					}

					java.lang.String content = reader.getElementText();

					object.setErrorCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(content));

					reader.next();
				} // End of if for expected property start element

				else {
					object.setErrorCode(java.lang.Integer.MIN_VALUE);
				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_BASE, LITERAL_MESSAGE).equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								String.format(MESSAGE_ATTRIBUTE_CANNOT_BE_NULL, LITERAL_MESSAGE));
					}

					java.lang.String content = reader.getElementText();

					object.setMessage(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

					reader.next();
				} // End of if for expected property start element

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()) {
					// 2 - A start element we are not expecting indicates a trailing invalid
					// property
					throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
				}

				return object;
			}
		} // end of factory class
	}

	public static class StsExceptionContent extends WriteStartElementStsService
			implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * stsExceptionContent Namespace URI =
		 * http://exceptions.soap.sts.client.chipkarte.at Namespace Prefix = ns2
		 */

		/**
		 *
		 * @param parentQName
		 * @param factory
		 * @return org.apache.axiom.om.OMElement
		 */
		public org.apache.axiom.om.OMElement getOMElement(final javax.xml.namespace.QName parentQName,
				final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException {
			return factory.createOMElement(new org.apache.axis2.databinding.ADBDataSource(this, parentQName));
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType) throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElementStsService(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			java.lang.String namespacePrefix = registerPrefixStsService(xmlWriter, NAMESPACE_EXCEPTIONS_STS);

			if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
				writeAttributeStsService("xsi", NAMESPACE_XML, "type", namespacePrefix + ":stsExceptionContent",
						xmlWriter);
			} else {
				writeAttributeStsService("xsi", NAMESPACE_XML, "type", LITERAL_STS_EXCEPTION_CONTENT, xmlWriter);
			}

			if (localCodeTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementStsService(null, namespace, "code", xmlWriter);

				if (localCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("code cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localErrorCodeTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementStsService(null, namespace, LITERAL_ERROR_CODE, xmlWriter);

				if (localErrorCode == java.lang.Integer.MIN_VALUE) {
					throw new org.apache.axis2.databinding.ADBException("errorCode cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localErrorCode));
				}

				xmlWriter.writeEndElement();
			}

			if (localMessageTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementStsService(null, namespace, LITERAL_MESSAGE, xmlWriter);

				if (localMessage == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("message cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localMessage);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_EXCEPTIONS_STS)) {
				return "ns2";
			}

			return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
		}

		/**
		 * Utility method to write an element start tag.
		 */
		private void writeStartElementStsService(java.lang.String prefix, java.lang.String namespace,
				java.lang.String localPart, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeStartElement(writerPrefix, localPart, namespace);
			} else {
				if (namespace.length() == 0) {
					prefix = "";
				} else if (prefix == null) {
					prefix = generatePrefix(namespace);
				}

				xmlWriter.writeStartElement(prefix, localPart, namespace);
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}
		}

		/**
		 * Util method to write an attribute with the ns prefix
		 */
		private void writeAttributeStsService(java.lang.String prefix, java.lang.String namespace,
				java.lang.String attName, java.lang.String attValue, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeAttribute(writerPrefix, namespace, attName, attValue);
			} else {
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
				xmlWriter.writeAttribute(prefix, namespace, attName, attValue);
			}
		}

		/**
		 * Register a namespace prefix
		 */
		private java.lang.String registerPrefixStsService(javax.xml.stream.XMLStreamWriter xmlWriter,
				java.lang.String namespace) throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = xmlWriter.getPrefix(namespace);

			if (prefix == null) {
				prefix = generatePrefix(namespace);

				javax.xml.namespace.NamespaceContext nsContext = xmlWriter.getNamespaceContext();

				while (true) {
					java.lang.String uri = nsContext.getNamespaceURI(prefix);

					if ((uri == null) || (uri.length() == 0)) {
						break;
					}

					prefix = org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
				}

				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}

			return prefix;
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {
				throw new IllegalStateException(FACTORY_CLASS);
			}

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static StsExceptionContent parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				StsExceptionContent object = new StsExceptionContent();

				java.lang.String nillableValue = null;

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.getAttributeValue(NAMESPACE_XML, "type") != null) {
					java.lang.String fullTypeName = reader.getAttributeValue(NAMESPACE_XML, "type");

					if (fullTypeName != null) {
						java.lang.String nsPrefix = null;

						if (fullTypeName.indexOf(':') > -1) {
							nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
						}

						nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

						java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

						if (!LITERAL_STS_EXCEPTION_CONTENT.equals(type)) {
							// find namespace for the prefix
							java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

							return (StsExceptionContent) ExtensionMapper.getTypeObject(nsUri, type, reader);
						}
					}
				}

				reader.next();

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_BASE, "code").equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "code" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

					reader.next();
				} // End of if for expected property start element

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_BASE, LITERAL_ERROR_CODE).equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + LITERAL_ERROR_CODE + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setErrorCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(content));

					reader.next();
				} // End of if for expected property start element

				else {
					object.setErrorCode(java.lang.Integer.MIN_VALUE);
				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_BASE, LITERAL_MESSAGE).equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + LITERAL_MESSAGE + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setMessage(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

					reader.next();
				} // End of if for expected property start element

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()) {
					// 2 - A start element we are not expecting indicates a trailing invalid
					// property
					throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
				}

				return object;
			}
		} // end of factory class
	}

	public static class RequestSamlAssertion implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * requestSamlAssertion Namespace URI = http://soap.sts.client.chipkarte.at
		 * Namespace Prefix = ns3
		 */

		/**
		 * field for DialogId
		 */
		protected java.lang.String localDialogId;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localDialogIdTracker = false;

		/**
		 * field for RequestSamlAssertionReq
		 */
		protected RequestSamlAssertionReq localRequestSamlAssertionReq;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localRequestSamlAssertionReqTracker = false;

		/**
		 * field for CardToken
		 */
		protected java.lang.String localCardToken;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localCardTokenTracker = false;

		public boolean isDialogIdSpecified() {
			return localDialogIdTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getDialogId() {
			return localDialogId;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param DialogId
		 */
		public void setDialogId(java.lang.String param) {
			localDialogIdTracker = param != null;

			this.localDialogId = param;
		}

		public boolean isRequestSamlAssertionReqSpecified() {
			return localRequestSamlAssertionReqTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return RequestSamlAssertionReq
		 */
		public RequestSamlAssertionReq getRequestSamlAssertionReq() {
			return localRequestSamlAssertionReq;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param RequestSamlAssertionReq
		 */
		public void setRequestSamlAssertionReq(RequestSamlAssertionReq param) {
			localRequestSamlAssertionReqTracker = param != null;

			this.localRequestSamlAssertionReq = param;
		}

		public boolean isCardTokenSpecified() {
			return localCardTokenTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getCardToken() {
			return localCardToken;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param CardToken
		 */
		public void setCardToken(java.lang.String param) {
			localCardTokenTracker = param != null;

			this.localCardToken = param;
		}

		/**
		 *
		 * @param parentQName
		 * @param factory
		 * @return org.apache.axiom.om.OMElement
		 */
		public org.apache.axiom.om.OMElement getOMElement(final javax.xml.namespace.QName parentQName,
				final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException {
			return factory.createOMElement(new org.apache.axis2.databinding.ADBDataSource(this, parentQName));
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType) throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElementStsService(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefixStsService(xmlWriter, NAMESPACE_STS);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttributeStsService("xsi", NAMESPACE_XML, "type", namespacePrefix + ":requestSamlAssertion",
							xmlWriter);
				} else {
					writeAttributeStsService("xsi", NAMESPACE_XML, "type", LITERAL_REQUEST_SAML_ASSERTION, xmlWriter);
				}
			}

			if (localDialogIdTracker) {
				namespace = NAMESPACE_STS;
				writeStartElementStsService(null, namespace, LITERAL_DIALOG_ID, xmlWriter);

				if (localDialogId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("dialogId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localDialogId);
				}

				xmlWriter.writeEndElement();
			}

			if (localRequestSamlAssertionReqTracker) {
				if (localRequestSamlAssertionReq == null) {
					throw new org.apache.axis2.databinding.ADBException("requestSamlAssertionReq cannot be null!!");
				}

				localRequestSamlAssertionReq.serialize(
						new javax.xml.namespace.QName(NAMESPACE_STS, LITERAL_REQUEST_SAML_ASSERTION_REQUEST),
						xmlWriter);
			}

			if (localCardTokenTracker) {
				namespace = NAMESPACE_STS;
				writeStartElementStsService(null, namespace, LITERAL_CARD_TOKEN, xmlWriter);

				if (localCardToken == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("cardToken cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localCardToken);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_STS)) {
				return "ns3";
			}

			return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
		}

		/**
		 * Utility method to write an element start tag.
		 */
		private void writeStartElementStsService(java.lang.String prefix, java.lang.String namespace,
				java.lang.String localPart, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeStartElement(writerPrefix, localPart, namespace);
			} else {
				if (namespace.length() == 0) {
					prefix = "";
				} else if (prefix == null) {
					prefix = generatePrefix(namespace);
				}

				xmlWriter.writeStartElement(prefix, localPart, namespace);
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}
		}

		/**
		 * Util method to write an attribute with the ns prefix
		 */
		private void writeAttributeStsService(java.lang.String prefix, java.lang.String namespace,
				java.lang.String attName, java.lang.String attValue, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeAttribute(writerPrefix, namespace, attName, attValue);
			} else {
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
				xmlWriter.writeAttribute(prefix, namespace, attName, attValue);
			}
		}

		/**
		 * Register a namespace prefix
		 */
		private java.lang.String registerPrefixStsService(javax.xml.stream.XMLStreamWriter xmlWriter,
				java.lang.String namespace) throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = xmlWriter.getPrefix(namespace);

			if (prefix == null) {
				prefix = generatePrefix(namespace);

				javax.xml.namespace.NamespaceContext nsContext = xmlWriter.getNamespaceContext();

				while (true) {
					java.lang.String uri = nsContext.getNamespaceURI(prefix);

					if ((uri == null) || (uri.length() == 0)) {
						break;
					}

					prefix = org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
				}

				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}

			return prefix;
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {
				throw new IllegalStateException(FACTORY_CLASS);
			}

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static RequestSamlAssertion parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				RequestSamlAssertion object = new RequestSamlAssertion();

				java.lang.String nillableValue = null;

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.getAttributeValue(NAMESPACE_XML, "type") != null) {
					java.lang.String fullTypeName = reader.getAttributeValue(NAMESPACE_XML, "type");

					if (fullTypeName != null) {
						java.lang.String nsPrefix = null;

						if (fullTypeName.indexOf(':') > -1) {
							nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
						}

						nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

						java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

						if (!LITERAL_REQUEST_SAML_ASSERTION.equals(type)) {
							// find namespace for the prefix
							java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

							return (RequestSamlAssertion) ExtensionMapper.getTypeObject(nsUri, type, reader);
						}
					}
				}

				reader.next();

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_STS, LITERAL_DIALOG_ID).equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + LITERAL_DIALOG_ID + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setDialogId(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

					reader.next();
				} // End of if for expected property start element

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_STS, LITERAL_REQUEST_SAML_ASSERTION_REQUEST)
								.equals(reader.getName())) {
					object.setRequestSamlAssertionReq(RequestSamlAssertionReq.Factory.parse(reader));

					reader.next();
				} // End of if for expected property start element

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_STS, LITERAL_CARD_TOKEN).equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + LITERAL_CARD_TOKEN + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setCardToken(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

					reader.next();
				} // End of if for expected property start element

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()) {
					// 2 - A start element we are not expecting indicates a trailing invalid
					// property
					throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
				}

				return object;
			}
		} // end of factory class
	}

	public static class RequestSamlAssertionE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(NAMESPACE_STS,
				LITERAL_REQUEST_SAML_ASSERTION, "ns3");

		/**
		 * field for RequestSamlAssertion
		 */
		protected RequestSamlAssertion localRequestSamlAssertion;

		/**
		 * Auto generated getter method
		 * 
		 * @return RequestSamlAssertion
		 */
		public RequestSamlAssertion getRequestSamlAssertion() {
			return localRequestSamlAssertion;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param RequestSamlAssertion
		 */
		public void setRequestSamlAssertion(RequestSamlAssertion param) {
			this.localRequestSamlAssertion = param;
		}

		/**
		 *
		 * @param parentQName
		 * @param factory
		 * @return org.apache.axiom.om.OMElement
		 */
		public org.apache.axiom.om.OMElement getOMElement(final javax.xml.namespace.QName parentQName,
				final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException {
			return factory.createOMElement(new org.apache.axis2.databinding.ADBDataSource(this, MY_QNAME));
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType) throws javax.xml.stream.XMLStreamException {
			// We can safely assume an element has only one type associated with it
			if (localRequestSamlAssertion == null) {
				throw new org.apache.axis2.databinding.ADBException("requestSamlAssertion cannot be null!");
			}

			localRequestSamlAssertion.serialize(MY_QNAME, xmlWriter);
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {
				throw new IllegalStateException(FACTORY_CLASS);
			}

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static RequestSamlAssertionE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				RequestSamlAssertionE object = new RequestSamlAssertionE();

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				while (!reader.isEndElement()) {
					if (reader.isStartElement()) {
						if (reader.isStartElement()
								&& new javax.xml.namespace.QName(NAMESPACE_STS, LITERAL_REQUEST_SAML_ASSERTION)
										.equals(reader.getName())) {
							object.setRequestSamlAssertion(RequestSamlAssertion.Factory.parse(reader));
						} // End of if for expected property start element

						else {
							// 3 - A start element we are not expecting indicates an invalid parameter was
							// passed
							throw new org.apache.axis2.databinding.ADBException(
									"Unexpected subelement " + reader.getName());
						}
					} else {
						reader.next();
					}
				} // end of while loop

				return object;
			}
		} // end of factory class
	}

	public static class InvalidParameterStsException implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_STS,
				INVALID_PARAMETER_STS_EXCEPTION_LITERAL, "ns2");

		/**
		 * field for InvalidParameterStsException
		 */
		protected InvalidParameterStsExceptionContent localInvalidParameterStsException;

		/**
		 * Auto generated getter method
		 * 
		 * @return InvalidParameterStsExceptionContent
		 */
		public InvalidParameterStsExceptionContent getInvalidParameterStsException() {
			return localInvalidParameterStsException;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param InvalidParameterStsException
		 */
		public void setInvalidParameterStsException(InvalidParameterStsExceptionContent param) {
			this.localInvalidParameterStsException = param;
		}

		/**
		 *
		 * @param parentQName
		 * @param factory
		 * @return org.apache.axiom.om.OMElement
		 */
		public org.apache.axiom.om.OMElement getOMElement(final javax.xml.namespace.QName parentQName,
				final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException {
			return factory.createOMElement(new org.apache.axis2.databinding.ADBDataSource(this, MY_QNAME));
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType) throws javax.xml.stream.XMLStreamException {
			// We can safely assume an element has only one type associated with it
			if (localInvalidParameterStsException == null) {
				throw new org.apache.axis2.databinding.ADBException("InvalidParameterStsException cannot be null!");
			}

			localInvalidParameterStsException.serialize(MY_QNAME, xmlWriter);
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {
				throw new IllegalStateException(FACTORY_CLASS);
			}

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static InvalidParameterStsException parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				InvalidParameterStsException object = new InvalidParameterStsException();

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				while (!reader.isEndElement()) {
					if (reader.isStartElement()) {
						if (reader.isStartElement() && new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_STS,
								INVALID_PARAMETER_STS_EXCEPTION_LITERAL).equals(reader.getName())) {
							object.setInvalidParameterStsException(
									InvalidParameterStsExceptionContent.Factory.parse(reader));
						} // End of if for expected property start element

						else {
							// 3 - A start element we are not expecting indicates an invalid parameter was
							// passed
							throw new org.apache.axis2.databinding.ADBException(
									"Unexpected subelement " + reader.getName());
						}
					} else {
						reader.next();
					}
				} // end of while loop

				return object;
			}
		} // end of factory class
	}

	public static class StsException implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_STS,
				STS_EXCEPTION_LITERAL, "ns2");

		/**
		 * field for StsException
		 */
		protected StsExceptionContent localStsException;

		/**
		 * Auto generated getter method
		 * 
		 * @return StsExceptionContent
		 */
		public StsExceptionContent getStsException() {
			return localStsException;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param StsException
		 */
		public void setStsException(StsExceptionContent param) {
			this.localStsException = param;
		}

		/**
		 *
		 * @param parentQName
		 * @param factory
		 * @return org.apache.axiom.om.OMElement
		 */
		public org.apache.axiom.om.OMElement getOMElement(final javax.xml.namespace.QName parentQName,
				final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException {
			return factory.createOMElement(new org.apache.axis2.databinding.ADBDataSource(this, MY_QNAME));
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType) throws javax.xml.stream.XMLStreamException {
			// We can safely assume an element has only one type associated with it
			if (localStsException == null) {
				throw new org.apache.axis2.databinding.ADBException("StsException cannot be null!");
			}

			localStsException.serialize(MY_QNAME, xmlWriter);
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {
				throw new IllegalStateException(FACTORY_CLASS);
			}

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static StsException parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				StsException object = new StsException();

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				while (!reader.isEndElement()) {
					if (reader.isStartElement()) {
						if (reader.isStartElement()
								&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_STS, STS_EXCEPTION_LITERAL)
										.equals(reader.getName())) {
							object.setStsException(StsExceptionContent.Factory.parse(reader));
						} // End of if for expected property start element

						else {
							// 3 - A start element we are not expecting indicates an invalid parameter was
							// passed
							throw new org.apache.axis2.databinding.ADBException(
									"Unexpected subelement " + reader.getName());
						}
					} else {
						reader.next();
					}
				} // end of while loop

				return object;
			}
		} // end of factory class
	}

	public static class RequestSamlAssertionResponse implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * requestSamlAssertionResponse Namespace URI =
		 * http://soap.sts.client.chipkarte.at Namespace Prefix = ns3
		 */

		/**
		 * field for _return
		 */
		protected RequestSamlAssertionResp localReturn;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localReturnTracker = false;

		public boolean isReturnSpecified() {
			return localReturnTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return RequestSamlAssertionResp
		 */
		public RequestSamlAssertionResp getReturn() {
			return localReturn;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param _return
		 */
		public void setReturn(RequestSamlAssertionResp param) {
			localReturnTracker = param != null;

			this.localReturn = param;
		}

		/**
		 *
		 * @param parentQName
		 * @param factory
		 * @return org.apache.axiom.om.OMElement
		 */
		public org.apache.axiom.om.OMElement getOMElement(final javax.xml.namespace.QName parentQName,
				final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException {
			return factory.createOMElement(new org.apache.axis2.databinding.ADBDataSource(this, parentQName));
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType) throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_STS);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute("xsi", NAMESPACE_XML, "type", namespacePrefix + ":requestSamlAssertionResponse",
							xmlWriter);
				} else {
					writeAttribute("xsi", NAMESPACE_XML, "type", LITERAL_REQUET_SAML_ASSERTION_RESPONSE, xmlWriter);
				}
			}

			if (localReturnTracker) {
				if (localReturn == null) {
					throw new org.apache.axis2.databinding.ADBException("return cannot be null!!");
				}

				localReturn.serialize(new javax.xml.namespace.QName(NAMESPACE_STS, "return"), xmlWriter);
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_STS)) {
				return "ns3";
			}

			return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
		}

		/**
		 * Utility method to write an element start tag.
		 */
		private void writeStartElement(java.lang.String prefix, java.lang.String namespace, java.lang.String localPart,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeStartElement(writerPrefix, localPart, namespace);
			} else {
				if (namespace.length() == 0) {
					prefix = "";
				} else if (prefix == null) {
					prefix = generatePrefix(namespace);
				}

				xmlWriter.writeStartElement(prefix, localPart, namespace);
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}
		}

		/**
		 * Util method to write an attribute with the ns prefix
		 */
		private void writeAttribute(java.lang.String prefix, java.lang.String namespace, java.lang.String attName,
				java.lang.String attValue, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeAttribute(writerPrefix, namespace, attName, attValue);
			} else {
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
				xmlWriter.writeAttribute(prefix, namespace, attName, attValue);
			}
		}

		/**
		 * Register a namespace prefix
		 */
		private java.lang.String registerPrefix(javax.xml.stream.XMLStreamWriter xmlWriter, java.lang.String namespace)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = xmlWriter.getPrefix(namespace);

			if (prefix == null) {
				prefix = generatePrefix(namespace);

				javax.xml.namespace.NamespaceContext nsContext = xmlWriter.getNamespaceContext();

				while (true) {
					java.lang.String uri = nsContext.getNamespaceURI(prefix);

					if ((uri == null) || (uri.length() == 0)) {
						break;
					}

					prefix = org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
				}

				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}

			return prefix;
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {
				throw new IllegalStateException(FACTORY_CLASS);
			}

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static RequestSamlAssertionResponse parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				RequestSamlAssertionResponse object = new RequestSamlAssertionResponse();

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.getAttributeValue(NAMESPACE_XML, "type") != null) {
					java.lang.String fullTypeName = reader.getAttributeValue(NAMESPACE_XML, "type");

					if (fullTypeName != null) {
						java.lang.String nsPrefix = null;

						if (fullTypeName.indexOf(':') > -1) {
							nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
						}

						nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

						java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

						if (!LITERAL_REQUET_SAML_ASSERTION_RESPONSE.equals(type)) {
							// find namespace for the prefix
							java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

							return (RequestSamlAssertionResponse) ExtensionMapper.getTypeObject(nsUri, type, reader);
						}
					}
				}

				reader.next();

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_STS, "return").equals(reader.getName())) {
					object.setReturn(RequestSamlAssertionResp.Factory.parse(reader));

					reader.next();
				} // End of if for expected property start element

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()) {
					// 2 - A start element we are not expecting indicates a trailing invalid
					// property
					throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
				}

				return object;
			}
		} // end of factory class
	}

	public static class AccessException implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(NAMESPACE_BASE,
				LITERAL_ACCESS_EXCEPTION, "ns1");

		/**
		 * field for AccessException
		 */
		protected AccessExceptionContent localAccessException;

		/**
		 * Auto generated getter method
		 * 
		 * @return AccessExceptionContent
		 */
		public AccessExceptionContent getAccessException() {
			return localAccessException;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param AccessException
		 */
		public void setAccessException(AccessExceptionContent param) {
			this.localAccessException = param;
		}

		/**
		 *
		 * @param parentQName
		 * @param factory
		 * @return org.apache.axiom.om.OMElement
		 */
		public org.apache.axiom.om.OMElement getOMElement(final javax.xml.namespace.QName parentQName,
				final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException {
			return factory.createOMElement(new org.apache.axis2.databinding.ADBDataSource(this, MY_QNAME));
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType) throws javax.xml.stream.XMLStreamException {
			// We can safely assume an element has only one type associated with it
			if (localAccessException == null) {
				throw new org.apache.axis2.databinding.ADBException("AccessException cannot be null!");
			}

			localAccessException.serialize(MY_QNAME, xmlWriter);
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {
				throw new IllegalStateException(FACTORY_CLASS);
			}

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static AccessException parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				AccessException object = new AccessException();

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				while (!reader.isEndElement()) {
					if (reader.isStartElement()) {
						if (reader.isStartElement()
								&& new javax.xml.namespace.QName(NAMESPACE_BASE, LITERAL_ACCESS_EXCEPTION)
										.equals(reader.getName())) {
							object.setAccessException(AccessExceptionContent.Factory.parse(reader));
						} // End of if for expected property start element

						else {
							// 3 - A start element we are not expecting indicates an invalid parameter was
							// passed
							throw new org.apache.axis2.databinding.ADBException(
									"Unexpected subelement " + reader.getName());
						}
					} else {
						reader.next();
					}
				} // end of while loop

				return object;
			}
		} // end of factory class
	}

	public static class RequestSamlAssertionResponseE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(NAMESPACE_STS,
				LITERAL_REQUET_SAML_ASSERTION_RESPONSE, "ns3");

		/**
		 * field for RequestSamlAssertionResponse
		 */
		protected RequestSamlAssertionResponse localRequestSamlAssertionResponse;

		/**
		 * Auto generated getter method
		 * 
		 * @return RequestSamlAssertionResponse
		 */
		public RequestSamlAssertionResponse getRequestSamlAssertionResponse() {
			return localRequestSamlAssertionResponse;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param RequestSamlAssertionResponse
		 */
		public void setRequestSamlAssertionResponse(RequestSamlAssertionResponse param) {
			this.localRequestSamlAssertionResponse = param;
		}

		/**
		 *
		 * @param parentQName
		 * @param factory
		 * @return org.apache.axiom.om.OMElement
		 */
		public org.apache.axiom.om.OMElement getOMElement(final javax.xml.namespace.QName parentQName,
				final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException {
			return factory.createOMElement(new org.apache.axis2.databinding.ADBDataSource(this, MY_QNAME));
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType) throws javax.xml.stream.XMLStreamException {
			// We can safely assume an element has only one type associated with it
			if (localRequestSamlAssertionResponse == null) {
				throw new org.apache.axis2.databinding.ADBException("requestSamlAssertionResponse cannot be null!");
			}

			localRequestSamlAssertionResponse.serialize(MY_QNAME, xmlWriter);
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {
				throw new IllegalStateException(FACTORY_CLASS);
			}

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static RequestSamlAssertionResponseE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				RequestSamlAssertionResponseE object = new RequestSamlAssertionResponseE();

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				while (!reader.isEndElement()) {
					if (reader.isStartElement()) {
						if (reader.isStartElement()
								&& new javax.xml.namespace.QName(NAMESPACE_STS, LITERAL_REQUET_SAML_ASSERTION_RESPONSE)
										.equals(reader.getName())) {
							object.setRequestSamlAssertionResponse(RequestSamlAssertionResponse.Factory.parse(reader));
						} // End of if for expected property start element

						else {
							// 3 - A start element we are not expecting indicates an invalid parameter was
							// passed
							throw new org.apache.axis2.databinding.ADBException(
									"Unexpected subelement " + reader.getName());
						}
					} else {
						reader.next();
					}
				} // end of while loop

				return object;
			}
		} // end of factory class
	}

	public static class DialogExceptionContent extends WriteStartElementStsService
			implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * dialogExceptionContent Namespace URI =
		 * http://exceptions.soap.base.client.chipkarte.at Namespace Prefix = ns1
		 */

		/**
		 *
		 * @param parentQName
		 * @param factory
		 * @return org.apache.axiom.om.OMElement
		 */
		public org.apache.axiom.om.OMElement getOMElement(final javax.xml.namespace.QName parentQName,
				final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException {
			return factory.createOMElement(new org.apache.axis2.databinding.ADBDataSource(this, parentQName));
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType) throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElementSts(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			java.lang.String namespacePrefix = registerPrefixSts(xmlWriter, NAMESPACE_BASE);

			if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
				writeAttributeSts("xsi", NAMESPACE_XML, "type", namespacePrefix + ":dialogExceptionContent", xmlWriter);
			} else {
				writeAttributeSts("xsi", NAMESPACE_XML, "type", LITERAL_DIALOG_EXCEPTION_CONTENT, xmlWriter);
			}

			if (localCodeTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementSts(null, namespace, "code", xmlWriter);

				if (localCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("code cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localErrorCodeTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementSts(null, namespace, LITERAL_ERROR_CODE, xmlWriter);

				if (localErrorCode == java.lang.Integer.MIN_VALUE) {
					throw new org.apache.axis2.databinding.ADBException("errorCode cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localErrorCode));
				}

				xmlWriter.writeEndElement();
			}

			if (localMessageTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementSts(null, namespace, LITERAL_MESSAGE, xmlWriter);

				if (localMessage == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("message cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localMessage);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
				return "ns1";
			}

			return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
		}

		/**
		 * Utility method to write an element start tag.
		 */
		private void writeStartElementSts(java.lang.String prefix, java.lang.String namespace,
				java.lang.String localPart, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeStartElement(writerPrefix, localPart, namespace);
			} else {
				if (namespace.length() == 0) {
					prefix = "";
				} else if (prefix == null) {
					prefix = generatePrefix(namespace);
				}

				xmlWriter.writeStartElement(prefix, localPart, namespace);
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}
		}

		/**
		 * Util method to write an attribute with the ns prefix
		 */
		private void writeAttributeSts(java.lang.String prefix, java.lang.String namespace, java.lang.String attName,
				java.lang.String attValue, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeAttribute(writerPrefix, namespace, attName, attValue);
			} else {
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
				xmlWriter.writeAttribute(prefix, namespace, attName, attValue);
			}
		}

		/**
		 * Register a namespace prefix
		 */
		private java.lang.String registerPrefixSts(javax.xml.stream.XMLStreamWriter xmlWriter,
				java.lang.String namespace) throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = xmlWriter.getPrefix(namespace);

			if (prefix == null) {
				prefix = generatePrefix(namespace);

				javax.xml.namespace.NamespaceContext nsContext = xmlWriter.getNamespaceContext();

				while (true) {
					java.lang.String uri = nsContext.getNamespaceURI(prefix);

					if ((uri == null) || (uri.length() == 0)) {
						break;
					}

					prefix = org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
				}

				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}

			return prefix;
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {
				throw new IllegalStateException(FACTORY_CLASS);
			}

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static DialogExceptionContent parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				DialogExceptionContent object = new DialogExceptionContent();

				java.lang.String nillableValue = null;

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.getAttributeValue(NAMESPACE_XML, "type") != null) {
					java.lang.String fullTypeName = reader.getAttributeValue(NAMESPACE_XML, "type");

					if (fullTypeName != null) {
						java.lang.String nsPrefix = null;

						if (fullTypeName.indexOf(':') > -1) {
							nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
						}

						nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

						java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

						if (!LITERAL_DIALOG_EXCEPTION_CONTENT.equals(type)) {
							// find namespace for the prefix
							java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

							return (DialogExceptionContent) ExtensionMapper.getTypeObject(nsUri, type, reader);
						}
					}
				}

				reader.next();

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_BASE, "code").equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "code" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

					reader.next();
				} // End of if for expected property start element

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_BASE, LITERAL_ERROR_CODE).equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + LITERAL_ERROR_CODE + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setErrorCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(content));

					reader.next();
				} // End of if for expected property start element

				else {
					object.setErrorCode(java.lang.Integer.MIN_VALUE);
				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_BASE, LITERAL_MESSAGE).equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + LITERAL_MESSAGE + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setMessage(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

					reader.next();
				} // End of if for expected property start element

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()) {
					// 2 - A start element we are not expecting indicates a trailing invalid
					// property
					throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
				}

				return object;
			}
		} // end of factory class
	}

	public static class ServiceException implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(NAMESPACE_BASE,
				SERVICE_EXCEPTION_LITERAL, "ns1");

		/**
		 * field for ServiceException
		 */
		protected ServiceExceptionContent localServiceException;

		/**
		 * Auto generated getter method
		 * 
		 * @return ServiceExceptionContent
		 */
		public ServiceExceptionContent getServiceException() {
			return localServiceException;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param ServiceException
		 */
		public void setServiceException(ServiceExceptionContent param) {
			this.localServiceException = param;
		}

		/**
		 *
		 * @param parentQName
		 * @param factory
		 * @return org.apache.axiom.om.OMElement
		 */
		public org.apache.axiom.om.OMElement getOMElement(final javax.xml.namespace.QName parentQName,
				final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException {
			return factory.createOMElement(new org.apache.axis2.databinding.ADBDataSource(this, MY_QNAME));
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType) throws javax.xml.stream.XMLStreamException {
			// We can safely assume an element has only one type associated with it
			if (localServiceException == null) {
				throw new org.apache.axis2.databinding.ADBException("ServiceException cannot be null!");
			}

			localServiceException.serialize(MY_QNAME, xmlWriter);
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {
				throw new IllegalStateException(FACTORY_CLASS);
			}

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static ServiceException parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				ServiceException object = new ServiceException();

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				while (!reader.isEndElement()) {
					if (reader.isStartElement()) {
						if (reader.isStartElement()
								&& new javax.xml.namespace.QName(NAMESPACE_BASE, SERVICE_EXCEPTION_LITERAL)
										.equals(reader.getName())) {
							object.setServiceException(ServiceExceptionContent.Factory.parse(reader));
						} // End of if for expected property start element

						else {
							// 3 - A start element we are not expecting indicates an invalid parameter was
							// passed
							throw new org.apache.axis2.databinding.ADBException(
									"Unexpected subelement " + reader.getName());
						}
					} else {
						reader.next();
					}
				} // end of while loop

				return object;
			}
		} // end of factory class
	}

	public static class RequestSamlAssertionResp implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * requestSamlAssertionResp Namespace URI = http://soap.sts.client.chipkarte.at
		 * Namespace Prefix = ns3
		 */

		/**
		 * field for SamlTicket
		 */
		protected java.lang.String localSamlTicket;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localSamlTicketTracker = false;

		public boolean isSamlTicketSpecified() {
			return localSamlTicketTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getSamlTicket() {
			return localSamlTicket;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param SamlTicket
		 */
		public void setSamlTicket(java.lang.String param) {
			localSamlTicketTracker = param != null;

			this.localSamlTicket = param;
		}

		/**
		 *
		 * @param parentQName
		 * @param factory
		 * @return org.apache.axiom.om.OMElement
		 */
		public org.apache.axiom.om.OMElement getOMElement(final javax.xml.namespace.QName parentQName,
				final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException {
			return factory.createOMElement(new org.apache.axis2.databinding.ADBDataSource(this, parentQName));
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType) throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_STS);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute("xsi", NAMESPACE_XML, "type", namespacePrefix + ":requestSamlAssertionResp",
							xmlWriter);
				} else {
					writeAttribute("xsi", NAMESPACE_XML, "type", LITERAL_REQUEST_SAML_ASSERTION_RESP, xmlWriter);
				}
			}

			if (localSamlTicketTracker) {
				namespace = NAMESPACE_STS;
				writeStartElement(null, namespace, LITERAL_SAML_TICKET, xmlWriter);

				if (localSamlTicket == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("samlTicket cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localSamlTicket);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_STS)) {
				return "ns3";
			}

			return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
		}

		/**
		 * Utility method to write an element start tag.
		 */
		private void writeStartElement(java.lang.String prefix, java.lang.String namespace, java.lang.String localPart,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeStartElement(writerPrefix, localPart, namespace);
			} else {
				if (namespace.length() == 0) {
					prefix = "";
				} else if (prefix == null) {
					prefix = generatePrefix(namespace);
				}

				xmlWriter.writeStartElement(prefix, localPart, namespace);
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}
		}

		/**
		 * Util method to write an attribute with the ns prefix
		 */
		private void writeAttribute(java.lang.String prefix, java.lang.String namespace, java.lang.String attName,
				java.lang.String attValue, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeAttribute(writerPrefix, namespace, attName, attValue);
			} else {
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
				xmlWriter.writeAttribute(prefix, namespace, attName, attValue);
			}
		}

		/**
		 * Register a namespace prefix
		 */
		private java.lang.String registerPrefix(javax.xml.stream.XMLStreamWriter xmlWriter, java.lang.String namespace)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = xmlWriter.getPrefix(namespace);

			if (prefix == null) {
				prefix = generatePrefix(namespace);

				javax.xml.namespace.NamespaceContext nsContext = xmlWriter.getNamespaceContext();

				while (true) {
					java.lang.String uri = nsContext.getNamespaceURI(prefix);

					if ((uri == null) || (uri.length() == 0)) {
						break;
					}

					prefix = org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
				}

				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}

			return prefix;
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {
				throw new IllegalStateException(FACTORY_CLASS);
			}

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static RequestSamlAssertionResp parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				RequestSamlAssertionResp object = new RequestSamlAssertionResp();

				java.lang.String nillableValue = null;

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.getAttributeValue(NAMESPACE_XML, "type") != null) {
					java.lang.String fullTypeName = reader.getAttributeValue(NAMESPACE_XML, "type");

					if (fullTypeName != null) {
						java.lang.String nsPrefix = null;

						if (fullTypeName.indexOf(':') > -1) {
							nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
						}

						nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

						java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

						if (!LITERAL_REQUEST_SAML_ASSERTION_RESP.equals(type)) {
							// find namespace for the prefix
							java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

							return (RequestSamlAssertionResp) ExtensionMapper.getTypeObject(nsUri, type, reader);
						}
					}
				}

				reader.next();

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_STS, LITERAL_SAML_TICKET).equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + LITERAL_SAML_TICKET + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setSamlTicket(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

					reader.next();
				} // End of if for expected property start element

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()) {
					// 2 - A start element we are not expecting indicates a trailing invalid
					// property
					throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
				}

				return object;
			}
		} // end of factory class
	}

	public static class AccessExceptionContent extends WriteStartElementStsService
			implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * accessExceptionContent Namespace URI =
		 * http://exceptions.soap.base.client.chipkarte.at Namespace Prefix = ns1
		 */

		/**
		 *
		 * @param parentQName
		 * @param factory
		 * @return org.apache.axiom.om.OMElement
		 */
		public org.apache.axiom.om.OMElement getOMElement(final javax.xml.namespace.QName parentQName,
				final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException {
			return factory.createOMElement(new org.apache.axis2.databinding.ADBDataSource(this, parentQName));
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType) throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElementSts(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			java.lang.String namespacePrefix = registerPrefixSts(xmlWriter, NAMESPACE_BASE);

			if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
				writeAttributeSts("xsi", NAMESPACE_XML, "type", namespacePrefix + ":accessExceptionContent", xmlWriter);
			} else {
				writeAttributeSts("xsi", NAMESPACE_XML, "type", LITERAL_ACCESS_EXCEPTION_CONTENT, xmlWriter);
			}

			if (localCodeTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementSts(null, namespace, "code", xmlWriter);

				if (localCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("code cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localErrorCodeTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementSts(null, namespace, LITERAL_ERROR_CODE, xmlWriter);

				if (localErrorCode == java.lang.Integer.MIN_VALUE) {
					throw new org.apache.axis2.databinding.ADBException("errorCode cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localErrorCode));
				}

				xmlWriter.writeEndElement();
			}

			if (localMessageTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementSts(null, namespace, LITERAL_MESSAGE, xmlWriter);

				if (localMessage == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("message cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localMessage);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
				return "ns1";
			}

			return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
		}

		/**
		 * Utility method to write an element start tag.
		 */
		private void writeStartElementSts(java.lang.String prefix, java.lang.String namespace,
				java.lang.String localPart, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeStartElement(writerPrefix, localPart, namespace);
			} else {
				if (namespace.length() == 0) {
					prefix = "";
				} else if (prefix == null) {
					prefix = generatePrefix(namespace);
				}

				xmlWriter.writeStartElement(prefix, localPart, namespace);
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}
		}

		/**
		 * Util method to write an attribute with the ns prefix
		 */
		private void writeAttributeSts(java.lang.String prefix, java.lang.String namespace, java.lang.String attName,
				java.lang.String attValue, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeAttribute(writerPrefix, namespace, attName, attValue);
			} else {
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
				xmlWriter.writeAttribute(prefix, namespace, attName, attValue);
			}
		}

		/**
		 * Register a namespace prefix
		 */
		private java.lang.String registerPrefixSts(javax.xml.stream.XMLStreamWriter xmlWriter,
				java.lang.String namespace) throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = xmlWriter.getPrefix(namespace);

			if (prefix == null) {
				prefix = generatePrefix(namespace);

				javax.xml.namespace.NamespaceContext nsContext = xmlWriter.getNamespaceContext();

				while (true) {
					java.lang.String uri = nsContext.getNamespaceURI(prefix);

					if ((uri == null) || (uri.length() == 0)) {
						break;
					}

					prefix = org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
				}

				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}

			return prefix;
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {
				throw new IllegalStateException(FACTORY_CLASS);
			}

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static AccessExceptionContent parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				AccessExceptionContent object = new AccessExceptionContent();

				java.lang.String nillableValue = null;

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.getAttributeValue(NAMESPACE_XML, "type") != null) {
					java.lang.String fullTypeName = reader.getAttributeValue(NAMESPACE_XML, "type");

					if (fullTypeName != null) {
						java.lang.String nsPrefix = null;

						if (fullTypeName.indexOf(':') > -1) {
							nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
						}

						nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

						java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

						if (!LITERAL_ACCESS_EXCEPTION_CONTENT.equals(type)) {
							// find namespace for the prefix
							java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

							return (AccessExceptionContent) ExtensionMapper.getTypeObject(nsUri, type, reader);
						}
					}
				}

				reader.next();

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_BASE, "code").equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "code" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

					reader.next();
				} // End of if for expected property start element

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_BASE, LITERAL_ERROR_CODE).equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + LITERAL_ERROR_CODE + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setErrorCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(content));

					reader.next();
				} // End of if for expected property start element

				else {
					object.setErrorCode(java.lang.Integer.MIN_VALUE);
				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_BASE, LITERAL_MESSAGE).equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + LITERAL_MESSAGE + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setMessage(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

					reader.next();
				} // End of if for expected property start element

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()) {
					// 2 - A start element we are not expecting indicates a trailing invalid
					// property
					throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
				}

				return object;
			}
		} // end of factory class
	}

	public static class WriteStartElementStsService implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * baseExceptionContent Namespace URI =
		 * http://exceptions.soap.base.client.chipkarte.at Namespace Prefix = ns1
		 */

		/**
		 * field for Code
		 */
		protected java.lang.String localCode;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localCodeTracker = false;

		/**
		 * field for ErrorCode
		 */
		protected int localErrorCode;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localErrorCodeTracker = false;

		/**
		 * field for Message
		 */
		protected java.lang.String localMessage;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localMessageTracker = false;

		public boolean isCodeSpecified() {
			return localCodeTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getCode() {
			return localCode;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Code
		 */
		public void setCode(java.lang.String param) {
			localCodeTracker = param != null;

			this.localCode = param;
		}

		public boolean isErrorCodeSpecified() {
			return localErrorCodeTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return int
		 */
		public int getErrorCode() {
			return localErrorCode;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param ErrorCode
		 */
		public void setErrorCode(int param) {
			// setting primitive attribute tracker to true
			localErrorCodeTracker = param != java.lang.Integer.MIN_VALUE;

			this.localErrorCode = param;
		}

		public boolean isMessageSpecified() {
			return localMessageTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getMessage() {
			return localMessage;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Message
		 */
		public void setMessage(java.lang.String param) {
			localMessageTracker = param != null;

			this.localMessage = param;
		}

		/**
		 *
		 * @param parentQName
		 * @param factory
		 * @return org.apache.axiom.om.OMElement
		 */
		public org.apache.axiom.om.OMElement getOMElement(final javax.xml.namespace.QName parentQName,
				final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException {
			return factory.createOMElement(new org.apache.axis2.databinding.ADBDataSource(this, parentQName));
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType) throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute("xsi", NAMESPACE_XML, "type", namespacePrefix + ":baseExceptionContent", xmlWriter);
				} else {
					writeAttribute("xsi", NAMESPACE_XML, "type", LITERAL_BASE_EXCEPTION_CONTENT, xmlWriter);
				}
			}

			if (localCodeTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "code", xmlWriter);

				if (localCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("code cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localErrorCodeTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, LITERAL_ERROR_CODE, xmlWriter);

				if (localErrorCode == java.lang.Integer.MIN_VALUE) {
					throw new org.apache.axis2.databinding.ADBException("errorCode cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localErrorCode));
				}

				xmlWriter.writeEndElement();
			}

			if (localMessageTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, LITERAL_MESSAGE, xmlWriter);

				if (localMessage == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("message cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localMessage);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
				return "ns1";
			}

			return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
		}

		/**
		 * Utility method to write an element start tag.
		 */
		private void writeStartElement(java.lang.String prefix, java.lang.String namespace, java.lang.String localPart,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeStartElement(writerPrefix, localPart, namespace);
			} else {
				if (namespace.length() == 0) {
					prefix = "";
				} else if (prefix == null) {
					prefix = generatePrefix(namespace);
				}

				xmlWriter.writeStartElement(prefix, localPart, namespace);
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}
		}

		/**
		 * Util method to write an attribute with the ns prefix
		 */
		private void writeAttribute(java.lang.String prefix, java.lang.String namespace, java.lang.String attName,
				java.lang.String attValue, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeAttribute(writerPrefix, namespace, attName, attValue);
			} else {
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
				xmlWriter.writeAttribute(prefix, namespace, attName, attValue);
			}
		}

		/**
		 * Register a namespace prefix
		 */
		private java.lang.String registerPrefix(javax.xml.stream.XMLStreamWriter xmlWriter, java.lang.String namespace)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = xmlWriter.getPrefix(namespace);

			if (prefix == null) {
				prefix = generatePrefix(namespace);

				javax.xml.namespace.NamespaceContext nsContext = xmlWriter.getNamespaceContext();

				while (true) {
					java.lang.String uri = nsContext.getNamespaceURI(prefix);

					if ((uri == null) || (uri.length() == 0)) {
						break;
					}

					prefix = org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
				}

				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}

			return prefix;
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {
				throw new IllegalStateException(FACTORY_CLASS);
			}

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static WriteStartElementStsService parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				WriteStartElementStsService object = new WriteStartElementStsService();

				java.lang.String nillableValue = null;

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.getAttributeValue(NAMESPACE_XML, "type") != null) {
					java.lang.String fullTypeName = reader.getAttributeValue(NAMESPACE_XML, "type");

					if (fullTypeName != null) {
						java.lang.String nsPrefix = null;

						if (fullTypeName.indexOf(':') > -1) {
							nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
						}

						nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

						java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

						if (!LITERAL_BASE_EXCEPTION_CONTENT.equals(type)) {
							// find namespace for the prefix
							java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

							return (WriteStartElementStsService) ExtensionMapper.getTypeObject(nsUri, type, reader);
						}
					}
				}

				reader.next();

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_BASE, "code").equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + "code" + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

					reader.next();
				} // End of if for expected property start element

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_BASE, LITERAL_ERROR_CODE).equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + LITERAL_ERROR_CODE + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setErrorCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(content));

					reader.next();
				} // End of if for expected property start element

				else {
					object.setErrorCode(java.lang.Integer.MIN_VALUE);
				}

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()
						&& new javax.xml.namespace.QName(NAMESPACE_BASE, LITERAL_MESSAGE).equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + LITERAL_MESSAGE + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setMessage(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

					reader.next();
				} // End of if for expected property start element

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()) {
					// 2 - A start element we are not expecting indicates a trailing invalid
					// property
					throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
				}

				return object;
			}
		} // end of factory class
	}

	public static class RequestSamlAssertionReq implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * requestSamlAssertionReq Namespace URI = http://soap.sts.client.chipkarte.at
		 * Namespace Prefix = ns3
		 */

		/**
		 * field for ResponseURL
		 */
		protected java.lang.String localResponseURL;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localResponseURLTracker = false;

		/**
		 * field for TicketSubject
		 */
		protected java.lang.String localTicketSubject;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localTicketSubjectTracker = false;

		public boolean isResponseURLSpecified() {
			return localResponseURLTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getResponseURL() {
			return localResponseURL;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param ResponseURL
		 */
		public void setResponseURL(java.lang.String param) {
			localResponseURLTracker = param != null;

			this.localResponseURL = param;
		}

		public boolean isTicketSubjectSpecified() {
			return localTicketSubjectTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getTicketSubject() {
			return localTicketSubject;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param TicketSubject
		 */
		public void setTicketSubject(java.lang.String param) {
			localTicketSubjectTracker = param != null;

			this.localTicketSubject = param;
		}

		/**
		 *
		 * @param parentQName
		 * @param factory
		 * @return org.apache.axiom.om.OMElement
		 */
		public org.apache.axiom.om.OMElement getOMElement(final javax.xml.namespace.QName parentQName,
				final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException {
			return factory.createOMElement(new org.apache.axis2.databinding.ADBDataSource(this, parentQName));
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType) throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_STS);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute("xsi", NAMESPACE_XML, "type", namespacePrefix + ":requestSamlAssertionReq",
							xmlWriter);
				} else {
					writeAttribute("xsi", NAMESPACE_XML, "type", LITERAL_REQUEST_SAML_ASSERTION_REQUEST, xmlWriter);
				}
			}

			if (localResponseURLTracker) {
				namespace = NAMESPACE_STS;
				writeStartElement(null, namespace, LITERAL_RESPONSE_URL, xmlWriter);

				if (localResponseURL == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("responseURL cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localResponseURL);
				}

				xmlWriter.writeEndElement();
			}

			if (localTicketSubjectTracker) {
				namespace = NAMESPACE_STS;
				writeStartElement(null, namespace, LITERAL_TICKET_SUBJECT, xmlWriter);

				if (localTicketSubject == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("ticketSubject cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localTicketSubject);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_STS)) {
				return "ns3";
			}

			return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
		}

		/**
		 * Utility method to write an element start tag.
		 */
		private void writeStartElement(java.lang.String prefix, java.lang.String namespace, java.lang.String localPart,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeStartElement(writerPrefix, localPart, namespace);
			} else {
				if (namespace.length() == 0) {
					prefix = "";
				} else if (prefix == null) {
					prefix = generatePrefix(namespace);
				}

				xmlWriter.writeStartElement(prefix, localPart, namespace);
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}
		}

		/**
		 * Util method to write an attribute with the ns prefix
		 */
		private void writeAttribute(java.lang.String prefix, java.lang.String namespace, java.lang.String attName,
				java.lang.String attValue, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);

			if (writerPrefix != null) {
				xmlWriter.writeAttribute(writerPrefix, namespace, attName, attValue);
			} else {
				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
				xmlWriter.writeAttribute(prefix, namespace, attName, attValue);
			}
		}

		/**
		 * Register a namespace prefix
		 */
		private java.lang.String registerPrefix(javax.xml.stream.XMLStreamWriter xmlWriter, java.lang.String namespace)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String prefix = xmlWriter.getPrefix(namespace);

			if (prefix == null) {
				prefix = generatePrefix(namespace);

				javax.xml.namespace.NamespaceContext nsContext = xmlWriter.getNamespaceContext();

				while (true) {
					java.lang.String uri = nsContext.getNamespaceURI(prefix);

					if ((uri == null) || (uri.length() == 0)) {
						break;
					}

					prefix = org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
				}

				xmlWriter.writeNamespace(prefix, namespace);
				xmlWriter.setPrefix(prefix, namespace);
			}

			return prefix;
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {
				throw new IllegalStateException(FACTORY_CLASS);
			}

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static RequestSamlAssertionReq parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				RequestSamlAssertionReq object = new RequestSamlAssertionReq();

				java.lang.String nillableValue = null;

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.getAttributeValue(NAMESPACE_XML, "type") != null) {
					java.lang.String fullTypeName = reader.getAttributeValue(NAMESPACE_XML, "type");

					if (fullTypeName != null) {
						java.lang.String nsPrefix = null;

						if (fullTypeName.indexOf(':') > -1) {
							nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
						}

						nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

						java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

						if (!LITERAL_REQUEST_SAML_ASSERTION_REQUEST.equals(type)) {
							// find namespace for the prefix
							java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

							return (RequestSamlAssertionReq) ExtensionMapper.getTypeObject(nsUri, type, reader);
						}
					}
				}

				reader.next();

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement() && new javax.xml.namespace.QName(NAMESPACE_STS, LITERAL_RESPONSE_URL)
						.equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + LITERAL_RESPONSE_URL + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setResponseURL(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

					reader.next();
				} // End of if for expected property start element

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement() && new javax.xml.namespace.QName(NAMESPACE_STS, LITERAL_TICKET_SUBJECT)
						.equals(reader.getName())) {
					nillableValue = reader.getAttributeValue(NAMESPACE_XML, "nil");

					if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
						throw new org.apache.axis2.databinding.ADBException(
								"The element: " + LITERAL_TICKET_SUBJECT + "  cannot be null");
					}

					java.lang.String content = reader.getElementText();

					object.setTicketSubject(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

					reader.next();
				} // End of if for expected property start element

				while (!reader.isStartElement() && !reader.isEndElement())
					reader.next();

				if (reader.isStartElement()) {
					// 2 - A start element we are not expecting indicates a trailing invalid
					// property
					throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
				}

				return object;
			}
		} // end of factory class
	}
}
