/**
 * AuthServiceStub.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;

import org.apache.axis2.AxisFault;
import org.apache.axis2.client.FaultMapKey;
import org.apache.axis2.databinding.ADBBean;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.common.utilities.SoapUtil;

/*
 *  AuthServiceStub java implementation
 */
public class AuthServiceStub extends org.apache.axis2.client.Stub implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 3767165478219077831L;
	private static final Logger LOGGER = LoggerFactory.getLogger(AuthServiceStub.class.getName());
	private static final String SET_DIALOG_ADDRESS_LITERAL = "setDialogAddress";
	private static final String SET_DIALOG_ADDRESS_RESPONSE_LITERAL = "setDialogAddressResponse";
	private static final String AUTHENTICATE_DIALOG_LITERAL = "authenticateDialog";
	private static final String AUTHENTICATE_DIALOG_ENT_LITERAL = "authenticateDialogEnt";
	private static final String AUTHENTICATE_DIALOG_RESPONSE_LITERAL = "authenticateDialogResponse";
	private static final String AUTHENTICATE_DIALOG_ENT_RESPONSE_LITERAL = "authenticateDialogEntResponse";
	private static final String CLOSE_DIALOG_LITERAL = "closeDialog";
	private static final String CLOSE_DIALOG_RESPONSE_LITERAL = "closeDialogResponse";
	private static final String RETURN_LITERAL = "return";
	private static final String ERROR_CODE_LITERAL = "errorCode";
	private static final String EXTUID_LITERAL = "extUID";
	private static final String DIALOG_ID_LITERAL = "dialogId";
	private static final String ORDINATION_ID_LITERAL = "ordinationId";
	private static final String VORGAENGER_ORDINATION_ID_LITERAL = "vorgaengerOrdinationId";
	private static final String DIALOG_DATA_LITERAL = "dialogData";
	private static final String PRODUKT_INFO_LITERAL = "produktInfo";
	private static final String ORDINATION_NUMBER_LITERAL = "ordinationNumber";
	private static final String POSTLEITZAHL_LITERAL = "postleitzahl";
	private static final String LAND_CODE_LITERAL = "landCode";
	private static final String BEZIRK_LITERAL = "bezirk";
	private static final String STADT_LITERAL = "stadt";
	private static final String STRASSE_LITERAL = "strasse";
	private static final String TAETIGKEITSBEREICH_LITERAL = "taetigkeitsBereich";
	private static final String TAETIGKEITSBEREICH_ID_LITERAL = "taetigkeitsBereichId";
	private static final String UEBSERSIEDELN_LITERAL = "uebersiedeln";
	private static final String UEBSERSIEDELN_DATE_LITERAL = "uebersiedelnDate";
	private static final String VERTRAGSPARTNER_V2_LITERAL = "vertragspartnerV2";
	private static final String ANREDE_CODE_LITERAL = "anredeCode";
	private static final String ANZEIGE_TEXT_LITERAL = "anzeigeText";
	private static final String BASE_EXCEPTION_CONTENT_LITERAL = "baseExceptionContent";
	private static final String BUNDESLAND_CODE_LITERAL = "bundeslandCode";
	private static final String CARD_TOKEN_LITERAL = "cardToken";
	private static final String DRUCKNACHNAME_LITERAL = "druckNachname";
	private static final String DRUCKVORNAME_LITERAL = "druckVorname";
	private static final String DRUCK_TITEL_HINTEN_LITERAL = "druckTitelHinten";
	private static final String DRUCK_TITEL_VORNE_LITERAL = "druckTitelVorne";
	private static final String GDAMA_LITERAL = "gdaMa";
	private static final String ELGA_ROLLE_LITERAL = "elgaRolle";
	private static final String LAST_LOGIN_LITERAL = "lastLoginDate";
	private static final String NACHNAME_LITERAL = "nachname";
	private static final String VORNAME_LITERAL = "vorname";
	private static final String TITEL_HINTEN_LITERAL = "titelHinten";
	private static final String TITEL_VORNE_LITERAL = "titelVorne";
	private static final String ORDINATION_LITERAL = "ordination";
	private static final String VP_NUMMER_LITERAL = "vpNummer";
	private static final String ZUSATZINFO_LITERAL = "zusatzinfo";
	private static final String PRODUKT_ID_LITERAL = "produktId";
	private static final String PRODUKT_VERSION_LITERAL = "produktVersion";
	private static final String HERSTELLER_ID_LITERAL = "herstellerId";
	private static final String MESSAGE_LITERAL = "message";
	private static final String BIRTH_DATE = "geburtsdatum";
	private static final String HERSTELLER_ID_ABLAUFDATUM_LITERAL = "herstellerIdAblaufdatum";
	private static final String PROZESS_LITERAL = "prozess";
	private static final String PUSH_MESSAGE_ENABLED_LITERAL = "pushMessageEnabled";
	private static final String DIALOG_EXCEPTION_CONTENT_LITERAL = "dialogExceptionContent";
	private static final String FAILED_PIN_ATTEMPTS_LITERAL = "failedPINAttempts";
	private static final String AUTHENTICATION_STATUS_LITERAL = "authenticationStatus";
	private static final String SET_FAULT_MESSAGE_LITERAL = "setFaultMessage";
	private static final String SERVICE_EXCEPTION_LITERAL = "ServiceException";
	private static final String DIALOG_EXCEPTION_LITERAL = "DialogException";
	private static final String SERVICE_EXCEPTION_CONTENT_LITERAL = "serviceExceptionContent";
	private static final String UNEXPECTED_SUBELEMENT = "Unexpected subelement ";
	private static final String PACKAGE_SERVICE_EXCEPTION = "arztis.econnector.ecard.generatedClasses.at.chipkarte.client.auth.soap.ServiceException";
	private static final String PACKAGE_SERVICE_EXCEPTION_AUTH_STUB = "arztis.econnector.ecard.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub$ServiceException";
	private static final String PACKAGE_DIALOG_EXCEPTION = "arztis.econnector.ecard.generatedClasses.at.chipkarte.client.auth.soap.DialogException";
	private static final String PACKAGE_DIALOG_EXCEPTION_AUTH_STUB = "arztis.econnector.ecard.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub$DialogException";
	private static final String SOAP_AUTH_URL = "http://soap.auth.client.chipkarte.at";
	private static final String SOAP_BASE_EXCEPTION_URL = "http://exceptions.soap.base.client.chipkarte.at";
	private static final String ERROR_MESSAGE_CODE_NOT_NULL = "code cannot be null!!";
	private static final String ERROR_MESSAGE_MESSAGE_NOT_NULL = "message cannot be null!!";
	private static final String ERROR_MESSAGE_DIALOG_ID_NOT_NULL = "dialogId cannot be null!!";
	private static int counter = 0;
	protected org.apache.axis2.description.AxisOperation[] operations;

	// hashmaps to keep the fault mapping
	private java.util.HashMap<FaultMapKey, String> faultExceptionNameMap = new java.util.HashMap<>();
	private java.util.HashMap<FaultMapKey, String> faultExceptionClassNameMap = new java.util.HashMap<>();
	private java.util.HashMap<FaultMapKey, String> faultMessageMap = new java.util.HashMap<>();
	private javax.xml.namespace.QName[] opNameArray = null;

	/**
	 * Constructor that takes in a configContext
	 */
	public AuthServiceStub(org.apache.axis2.context.ConfigurationContext configurationContext,
			java.lang.String targetEndpoint) throws org.apache.axis2.AxisFault {
		this(configurationContext, targetEndpoint, false);
	}

	/**
	 * Constructor that takes in a configContext and useseperate listner
	 */
	public AuthServiceStub(org.apache.axis2.context.ConfigurationContext configurationContext,
			java.lang.String targetEndpoint, boolean useSeparateListener) throws org.apache.axis2.AxisFault {
		// To populate AxisService
		populateAxisService();
		populateFaults();

		_serviceClient = new org.apache.axis2.client.ServiceClient(configurationContext, _service);

		_serviceClient.getOptions().setTo(new org.apache.axis2.addressing.EndpointReference(targetEndpoint));
		_serviceClient.getOptions().setUseSeparateListener(useSeparateListener);
	}

	/**
	 * Default Constructor
	 */
	public AuthServiceStub(org.apache.axis2.context.ConfigurationContext configurationContext)
			throws org.apache.axis2.AxisFault {
		this(configurationContext, "https://localhost/auth/1");
	}

	/**
	 * Default Constructor
	 */
	public AuthServiceStub() throws org.apache.axis2.AxisFault {
		this("https://localhost/auth/1");
	}

	/**
	 * Constructor taking the target endpoint
	 */
	public AuthServiceStub(java.lang.String targetEndpoint) throws org.apache.axis2.AxisFault {
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
		_service = new org.apache.axis2.description.AxisService("AuthService" + getUniqueSuffix());
		addAnonymousOperations();

		// creating the operations
		org.apache.axis2.description.AxisOperation operation;

		operations = new org.apache.axis2.description.AxisOperation[4];

		operation = new org.apache.axis2.description.OutInAxisOperation();

		operation.setName(new javax.xml.namespace.QName(SOAP_AUTH_URL, SET_DIALOG_ADDRESS_LITERAL));
		_service.addOperation(operation);

		operations[0] = operation;

		operation = new org.apache.axis2.description.OutInAxisOperation();

		operation.setName(new javax.xml.namespace.QName(SOAP_AUTH_URL, AUTHENTICATE_DIALOG_LITERAL));
		_service.addOperation(operation);

		operations[1] = operation;

		operation = new org.apache.axis2.description.OutInAxisOperation();

		operation.setName(new javax.xml.namespace.QName(SOAP_AUTH_URL, AUTHENTICATE_DIALOG_ENT_LITERAL));
		_service.addOperation(operation);

		operations[2] = operation;

		operation = new org.apache.axis2.description.OutInAxisOperation();

		operation.setName(new javax.xml.namespace.QName(SOAP_AUTH_URL, CLOSE_DIALOG_LITERAL));
		_service.addOperation(operation);

		operations[3] = operation;
	}

	// populates the faults
	private void populateFaults() {
		FaultMapKey faultMapKey = new org.apache.axis2.client.FaultMapKey(
				new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL, SERVICE_EXCEPTION_LITERAL),
				SET_DIALOG_ADDRESS_LITERAL);

		faultExceptionNameMap.put(faultMapKey, PACKAGE_SERVICE_EXCEPTION);
		faultExceptionClassNameMap.put(faultMapKey, PACKAGE_SERVICE_EXCEPTION);
		faultMessageMap.put(faultMapKey, PACKAGE_SERVICE_EXCEPTION_AUTH_STUB);

		FaultMapKey faultMapDialogExceptionKey = new org.apache.axis2.client.FaultMapKey(
				new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL, DIALOG_EXCEPTION_LITERAL),
				SET_DIALOG_ADDRESS_LITERAL);

		faultExceptionNameMap.put(faultMapDialogExceptionKey, PACKAGE_DIALOG_EXCEPTION);
		faultExceptionClassNameMap.put(faultMapDialogExceptionKey, PACKAGE_DIALOG_EXCEPTION);
		faultMessageMap.put(faultMapDialogExceptionKey, PACKAGE_DIALOG_EXCEPTION_AUTH_STUB);

		FaultMapKey faultMapServiceExceptionAuthDialogKey = new org.apache.axis2.client.FaultMapKey(
				new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL, SERVICE_EXCEPTION_LITERAL),
				AUTHENTICATE_DIALOG_LITERAL);

		faultExceptionNameMap.put(faultMapServiceExceptionAuthDialogKey, PACKAGE_SERVICE_EXCEPTION);
		faultExceptionClassNameMap.put(faultMapServiceExceptionAuthDialogKey, PACKAGE_SERVICE_EXCEPTION);
		faultMessageMap.put(faultMapServiceExceptionAuthDialogKey, PACKAGE_SERVICE_EXCEPTION_AUTH_STUB);

		FaultMapKey faultMapDialogExceptionAuthDialogKey = new org.apache.axis2.client.FaultMapKey(
				new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL, DIALOG_EXCEPTION_LITERAL),
				AUTHENTICATE_DIALOG_LITERAL);

		faultExceptionNameMap.put(faultMapDialogExceptionAuthDialogKey, PACKAGE_DIALOG_EXCEPTION);
		faultExceptionClassNameMap.put(faultMapDialogExceptionAuthDialogKey, PACKAGE_DIALOG_EXCEPTION);
		faultMessageMap.put(faultMapDialogExceptionAuthDialogKey, PACKAGE_DIALOG_EXCEPTION_AUTH_STUB);

		FaultMapKey faultMapServiceExceptionAuthDialogEntKey = new org.apache.axis2.client.FaultMapKey(
				new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL, SERVICE_EXCEPTION_LITERAL),
				AUTHENTICATE_DIALOG_ENT_LITERAL);

		faultExceptionNameMap.put(faultMapServiceExceptionAuthDialogEntKey, PACKAGE_SERVICE_EXCEPTION);
		faultExceptionClassNameMap.put(faultMapServiceExceptionAuthDialogEntKey, PACKAGE_SERVICE_EXCEPTION);
		faultMessageMap.put(faultMapServiceExceptionAuthDialogEntKey, PACKAGE_SERVICE_EXCEPTION_AUTH_STUB);

		FaultMapKey faultMapDialogExceptionAuthDialogEntKey = new org.apache.axis2.client.FaultMapKey(
				new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL, DIALOG_EXCEPTION_LITERAL),
				AUTHENTICATE_DIALOG_ENT_LITERAL);

		faultExceptionNameMap.put(faultMapDialogExceptionAuthDialogEntKey, PACKAGE_DIALOG_EXCEPTION);
		faultExceptionClassNameMap.put(faultMapDialogExceptionAuthDialogEntKey, PACKAGE_DIALOG_EXCEPTION);
		faultMessageMap.put(faultMapDialogExceptionAuthDialogEntKey, PACKAGE_DIALOG_EXCEPTION_AUTH_STUB);

		FaultMapKey faultMapServiceExceptionCloseDialogKey = new org.apache.axis2.client.FaultMapKey(
				new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL, SERVICE_EXCEPTION_LITERAL),
				CLOSE_DIALOG_LITERAL);

		faultExceptionNameMap.put(faultMapServiceExceptionCloseDialogKey, PACKAGE_SERVICE_EXCEPTION);
		faultExceptionClassNameMap.put(faultMapServiceExceptionCloseDialogKey, PACKAGE_SERVICE_EXCEPTION);
		faultMessageMap.put(faultMapServiceExceptionCloseDialogKey, PACKAGE_SERVICE_EXCEPTION_AUTH_STUB);

		FaultMapKey faultMapDialogExceptionCloseDialogKey = new org.apache.axis2.client.FaultMapKey(
				new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL, DIALOG_EXCEPTION_LITERAL), CLOSE_DIALOG_LITERAL);

		faultExceptionNameMap.put(faultMapDialogExceptionCloseDialogKey, PACKAGE_DIALOG_EXCEPTION);
		faultExceptionClassNameMap.put(faultMapDialogExceptionCloseDialogKey, PACKAGE_DIALOG_EXCEPTION);
		faultMessageMap.put(faultMapDialogExceptionCloseDialogKey, PACKAGE_DIALOG_EXCEPTION_AUTH_STUB);
	}

	/**
	 * Auto generated method signature
	 *
	 * @see arztis.econnector.ecard.generatedClasses.at.chipkarte.client.auth.soap.AuthService#setDialogAddress
	 * @param setDialogAddress0
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException :
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException  :
	 */
	public arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.SetDialogAddressResponseE setDialogAddress(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.SetDialogAddressE setDialogAddress0)
			throws java.rmi.RemoteException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException {
		org.apache.axis2.context.MessageContext messageContext = new org.apache.axis2.context.MessageContext();

		try {
			org.apache.axis2.client.OperationClient operationClient = _serviceClient
					.createClient(operations[0].getName());
			operationClient.getOptions()
					.setAction("http://soap.auth.client.chipkarte.at/IAuthService/setDialogAddressRequest");
			operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;

			env = toEnvelope(getFactory(operationClient.getOptions().getSoapVersionURI()), setDialogAddress0);

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

			java.lang.Object object = null;
			if (returnEnv != null) {
				if (LOGGER.isInfoEnabled()) {
					LOGGER.info("Set dialog address request: {}", env);
					LOGGER.info("Set dialog address response: {}", returnEnv);
				}

				object = fromOM(returnEnv.getBody().getFirstElement(),
						arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.SetDialogAddressResponseE.class);
			}

			return (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.SetDialogAddressResponseE) object;
		} catch (org.apache.axis2.AxisFault f) {
			org.apache.axiom.om.OMElement faultElt = f.getDetail();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Set dialog address error: {}", faultElt);
			}

			if (faultElt != null) {
				if (faultExceptionNameMap.containsKey(
						new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), SET_DIALOG_ADDRESS_LITERAL))) {
					// make the fault by reflection
					try {
						java.lang.String exceptionClassName = faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
										SET_DIALOG_ADDRESS_LITERAL));
						java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(java.lang.String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

						// message class
						java.lang.String messageClassName = faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), SET_DIALOG_ADDRESS_LITERAL));
						java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt, messageClass);
						java.lang.reflect.Method m = exceptionClass.getMethod(SET_FAULT_MESSAGE_LITERAL, messageClass);
						m.invoke(ex, messageObject);

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException) ex;
						}

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException) ex;
						}

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					} catch (java.lang.ClassCastException | ClassNotFoundException | NoSuchMethodException
							| InvocationTargetException | IllegalAccessException | InstantiationException e) {
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
	 * @see arztis.econnector.ecard.generatedClasses.at.chipkarte.client.auth.soap.AuthService#startsetDialogAddress
	 * @param setDialogAddress0
	 */
	public void startsetDialogAddress(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.SetDialogAddressE setDialogAddress0,
			final arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceCallbackHandler callback)
			throws java.rmi.RemoteException {
		org.apache.axis2.client.OperationClient operationClient = _serviceClient.createClient(operations[0].getName());
		operationClient.getOptions()
				.setAction("http://soap.auth.client.chipkarte.at/IAuthService/setDialogAddressRequest");
		operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

		addPropertyToOperationClient(operationClient,
				org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

		// create SOAP envelope with that payload
		org.apache.axiom.soap.SOAPEnvelope env = null;
		final org.apache.axis2.context.MessageContext messageContext = new org.apache.axis2.context.MessageContext();

		// Style is Doc.
		env = toEnvelope(getFactory(operationClient.getOptions().getSoapVersionURI()), setDialogAddress0);

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
							arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.SetDialogAddressResponseE.class);
					callback.receiveResultsetDialogAddress(
							(arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.SetDialogAddressResponseE) object);
				} catch (org.apache.axis2.AxisFault e) {
					callback.receiveErrorsetDialogAddress(e);
				}
			}

			public void onError(java.lang.Exception error) {
				if (error instanceof org.apache.axis2.AxisFault) {
					org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
					org.apache.axiom.om.OMElement faultElt = f.getDetail();

					if (LOGGER.isInfoEnabled()) {
						LOGGER.info("Set dialog address response: {}", faultElt);
					}

					if (faultElt != null) {
						if (faultExceptionNameMap.containsKey(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), SET_DIALOG_ADDRESS_LITERAL))) {
							// make the fault by reflection
							try {
								java.lang.String exceptionClassName = faultExceptionClassNameMap
										.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
												SET_DIALOG_ADDRESS_LITERAL));
								java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
								java.lang.reflect.Constructor constructor = exceptionClass
										.getConstructor(java.lang.String.class);
								java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

								// message class
								java.lang.String messageClassName = faultMessageMap
										.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
												SET_DIALOG_ADDRESS_LITERAL));
								java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
								java.lang.Object messageObject = fromOM(faultElt, messageClass);
								java.lang.reflect.Method m = exceptionClass.getMethod(SET_FAULT_MESSAGE_LITERAL,
										messageClass);
								m.invoke(ex, messageObject);

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException) {
									callback.receiveErrorsetDialogAddress(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException) {
									callback.receiveErrorsetDialogAddress(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException) ex);

									return;
								}

								callback.receiveErrorsetDialogAddress(
										new java.rmi.RemoteException(ex.getMessage(), ex));
							} catch (ClassCastException | ClassNotFoundException | NoSuchMethodException
									| InvocationTargetException | IllegalAccessException | InstantiationException
									| AxisFault e) {
								// we cannot intantiate the class - throw the original Axis fault
								callback.receiveErrorsetDialogAddress(f);
							}
						} else {
							callback.receiveErrorsetDialogAddress(f);
						}
					} else {
						callback.receiveErrorsetDialogAddress(f);
					}
				} else {
					callback.receiveErrorsetDialogAddress(error);
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
					callback.receiveErrorsetDialogAddress(axisFault);
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

	/**
	 * Auto generated method signature
	 *
	 * @see arztis.econnector.ecard.generatedClasses.at.chipkarte.client.auth.soap.AuthService#authenticateDialog
	 * @param authenticateDialog2
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException :
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException  :
	 */
	public arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogResponseE authenticateDialog(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogE authenticateDialog2)
			throws java.rmi.RemoteException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException {
		org.apache.axis2.context.MessageContext messageContext = new org.apache.axis2.context.MessageContext();

		try {
			org.apache.axis2.client.OperationClient operationClient = _serviceClient
					.createClient(operations[1].getName());
			operationClient.getOptions()
					.setAction("http://soap.auth.client.chipkarte.at/IAuthService/authenticateDialogRequest");
			operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;

			env = toEnvelope(getFactory(operationClient.getOptions().getSoapVersionURI()), authenticateDialog2);

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

			java.lang.Object object = null;
			if (returnEnv != null) {
				if (LOGGER.isInfoEnabled()) {
					LOGGER.info("Authenticate dialog request: {}", env);
					LOGGER.info("Authenticate dialog response: {}", returnEnv);
				}

				object = fromOM(returnEnv.getBody().getFirstElement(),
						arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogResponseE.class);
			}

			return (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogResponseE) object;
		} catch (org.apache.axis2.AxisFault f) {
			org.apache.axiom.om.OMElement faultElt = f.getDetail();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Authenticate dialog address error: {}", faultElt);
			}

			if (faultElt != null) {
				if (faultExceptionNameMap.containsKey(
						new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), AUTHENTICATE_DIALOG_LITERAL))) {
					// make the fault by reflection
					try {
						java.lang.String exceptionClassName = faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
										AUTHENTICATE_DIALOG_LITERAL));
						java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(java.lang.String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

						// message class
						java.lang.String messageClassName = faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), AUTHENTICATE_DIALOG_LITERAL));
						java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt, messageClass);
						java.lang.reflect.Method m = exceptionClass.getMethod(SET_FAULT_MESSAGE_LITERAL, messageClass);
						m.invoke(ex, messageObject);

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException) ex;
						}

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException) ex;
						}

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					} catch (java.lang.ClassCastException | ClassNotFoundException | NoSuchMethodException
							| InvocationTargetException | IllegalAccessException | InstantiationException e) {
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
	 * @see arztis.econnector.ecard.generatedClasses.at.chipkarte.client.auth.soap.AuthService#startauthenticateDialog
	 * @param authenticateDialog2
	 */
	public void startauthenticateDialog(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogE authenticateDialog2,
			final arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceCallbackHandler callback)
			throws java.rmi.RemoteException {
		org.apache.axis2.client.OperationClient operationClient = _serviceClient.createClient(operations[1].getName());
		operationClient.getOptions()
				.setAction("http://soap.auth.client.chipkarte.at/IAuthService/authenticateDialogRequest");
		operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

		addPropertyToOperationClient(operationClient,
				org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

		// create SOAP envelope with that payload
		org.apache.axiom.soap.SOAPEnvelope env = null;
		final org.apache.axis2.context.MessageContext messageContext = new org.apache.axis2.context.MessageContext();

		// Style is Doc.
		env = toEnvelope(getFactory(operationClient.getOptions().getSoapVersionURI()), authenticateDialog2);

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
							arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogResponseE.class);
					callback.receiveResultauthenticateDialog(
							(arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogResponseE) object);
				} catch (org.apache.axis2.AxisFault e) {
					callback.receiveErrorauthenticateDialog(e);
				}
			}

			public void onError(java.lang.Exception error) {
				if (error instanceof org.apache.axis2.AxisFault) {
					org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
					org.apache.axiom.om.OMElement faultElt = f.getDetail();

					if (LOGGER.isInfoEnabled()) {
						LOGGER.info("Set dialog address response: {}", faultElt);
					}

					if (faultElt != null) {
						if (faultExceptionNameMap.containsKey(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), AUTHENTICATE_DIALOG_LITERAL))) {
							// make the fault by reflection
							try {
								java.lang.String exceptionClassName = faultExceptionClassNameMap
										.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
												AUTHENTICATE_DIALOG_LITERAL));
								java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
								java.lang.reflect.Constructor constructor = exceptionClass
										.getConstructor(java.lang.String.class);
								java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

								// message class
								java.lang.String messageClassName = faultMessageMap
										.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
												AUTHENTICATE_DIALOG_LITERAL));
								java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
								java.lang.Object messageObject = fromOM(faultElt, messageClass);
								java.lang.reflect.Method m = exceptionClass.getMethod(SET_FAULT_MESSAGE_LITERAL,
										messageClass);
								m.invoke(ex, messageObject);

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException) {
									callback.receiveErrorauthenticateDialog(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException) {
									callback.receiveErrorauthenticateDialog(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException) ex);

									return;
								}

								callback.receiveErrorauthenticateDialog(
										new java.rmi.RemoteException(ex.getMessage(), ex));
							} catch (java.lang.ClassCastException | ClassNotFoundException | NoSuchMethodException
									| InvocationTargetException | IllegalAccessException | InstantiationException
									| AxisFault e) {
								// we cannot intantiate the class - throw the original Axis fault
								callback.receiveErrorauthenticateDialog(f);
							}
						} else {
							callback.receiveErrorauthenticateDialog(f);
						}
					} else {
						callback.receiveErrorauthenticateDialog(f);
					}
				} else {
					callback.receiveErrorauthenticateDialog(error);
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
					callback.receiveErrorauthenticateDialog(axisFault);
				}
			}
		});

		org.apache.axis2.util.CallbackReceiver callbackReceiver = null;

		if ((operations[1].getMessageReceiver() == null) && operationClient.getOptions().isUseSeparateListener()) {
			callbackReceiver = new org.apache.axis2.util.CallbackReceiver();
			operations[1].setMessageReceiver(callbackReceiver);
		}

		// execute the operation client
		operationClient.execute(false);
	}

	/**
	 * Auto generated method signature
	 *
	 * @see arztis.econnector.ecard.generatedClasses.at.chipkarte.client.auth.soap.AuthService#authenticateDialogEnt
	 * @param authenticateDialogEnt4
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException :
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException  :
	 */
	public arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogEntResponseE authenticateDialogEnt(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogEntE authenticateDialogEnt4)
			throws java.rmi.RemoteException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException {
		org.apache.axis2.context.MessageContext messageContext = new org.apache.axis2.context.MessageContext();

		try {
			org.apache.axis2.client.OperationClient operationClient = _serviceClient
					.createClient(operations[2].getName());
			operationClient.getOptions()
					.setAction("http://soap.auth.client.chipkarte.at/IAuthService/authenticateDialogEntRequest");
			operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;

			env = toEnvelope(getFactory(operationClient.getOptions().getSoapVersionURI()), authenticateDialogEnt4);

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

			java.lang.Object object = null;
			if (returnEnv != null) {
				if (LOGGER.isInfoEnabled()) {
					LOGGER.info("Authenticate dialog ent request: {}", env);
					LOGGER.info("Authenticate dialog ent response: {}", returnEnv);
				}

				object = fromOM(returnEnv.getBody().getFirstElement(),
						arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogEntResponseE.class);
			}

			return (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogEntResponseE) object;
		} catch (org.apache.axis2.AxisFault f) {
			org.apache.axiom.om.OMElement faultElt = f.getDetail();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Authenticate dialog ent error: {}", faultElt);
			}

			if (faultElt != null) {
				if (faultExceptionNameMap.containsKey(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
						AUTHENTICATE_DIALOG_ENT_LITERAL))) {
					// make the fault by reflection
					try {
						java.lang.String exceptionClassName = faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
										AUTHENTICATE_DIALOG_ENT_LITERAL));
						java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(java.lang.String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

						// message class
						java.lang.String messageClassName = faultMessageMap.get(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), AUTHENTICATE_DIALOG_ENT_LITERAL));
						java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt, messageClass);
						java.lang.reflect.Method m = exceptionClass.getMethod(SET_FAULT_MESSAGE_LITERAL, messageClass);
						m.invoke(ex, messageObject);

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException) ex;
						}

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException) ex;
						}

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					} catch (ClassCastException | ClassNotFoundException | NoSuchMethodException
							| InvocationTargetException | IllegalAccessException | InstantiationException e) {
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
	 * @see arztis.econnector.ecard.generatedClasses.at.chipkarte.client.auth.soap.AuthService#startauthenticateDialogEnt
	 * @param authenticateDialogEnt4
	 */
	public void startauthenticateDialogEnt(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogEntE authenticateDialogEnt4,
			final arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceCallbackHandler callback)
			throws java.rmi.RemoteException {
		org.apache.axis2.client.OperationClient operationClient = _serviceClient.createClient(operations[2].getName());
		operationClient.getOptions()
				.setAction("http://soap.auth.client.chipkarte.at/IAuthService/authenticateDialogEntRequest");
		operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

		addPropertyToOperationClient(operationClient,
				org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

		// create SOAP envelope with that payload
		org.apache.axiom.soap.SOAPEnvelope env = null;
		final org.apache.axis2.context.MessageContext messageContext = new org.apache.axis2.context.MessageContext();

		// Style is Doc.
		env = toEnvelope(getFactory(operationClient.getOptions().getSoapVersionURI()), authenticateDialogEnt4);

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
							arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogEntResponseE.class);
					callback.receiveResultauthenticateDialogEnt(
							(arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogEntResponseE) object);
				} catch (org.apache.axis2.AxisFault e) {
					callback.receiveErrorauthenticateDialogEnt(e);
				}
			}

			public void onError(java.lang.Exception error) {
				if (error instanceof org.apache.axis2.AxisFault) {
					org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
					org.apache.axiom.om.OMElement faultElt = f.getDetail();

					if (LOGGER.isInfoEnabled()) {
						LOGGER.info("Set dialog address response: {}", faultElt);
					}

					if (faultElt != null) {
						if (faultExceptionNameMap.containsKey(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), AUTHENTICATE_DIALOG_ENT_LITERAL))) {
							// make the fault by reflection
							try {
								java.lang.String exceptionClassName = faultExceptionClassNameMap
										.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
												AUTHENTICATE_DIALOG_ENT_LITERAL));
								java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
								java.lang.reflect.Constructor constructor = exceptionClass
										.getConstructor(java.lang.String.class);
								java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

								// message class
								java.lang.String messageClassName = faultMessageMap
										.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
												AUTHENTICATE_DIALOG_ENT_LITERAL));
								java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
								java.lang.Object messageObject = fromOM(faultElt, messageClass);
								java.lang.reflect.Method m = exceptionClass.getMethod(SET_FAULT_MESSAGE_LITERAL,
										messageClass);
								m.invoke(ex, messageObject);

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException) {
									callback.receiveErrorauthenticateDialogEnt(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException) {
									callback.receiveErrorauthenticateDialogEnt(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException) ex);

									return;
								}

								callback.receiveErrorauthenticateDialogEnt(
										new java.rmi.RemoteException(ex.getMessage(), ex));
							} catch (ClassCastException | ClassNotFoundException | NoSuchMethodException
									| InvocationTargetException | IllegalAccessException | InstantiationException
									| AxisFault e) {
								// we cannot intantiate the class - throw the original Axis fault
								callback.receiveErrorauthenticateDialogEnt(f);
							}
						} else {
							callback.receiveErrorauthenticateDialogEnt(f);
						}
					} else {
						callback.receiveErrorauthenticateDialogEnt(f);
					}
				} else {
					callback.receiveErrorauthenticateDialogEnt(error);
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
					callback.receiveErrorauthenticateDialogEnt(axisFault);
				}
			}
		});

		org.apache.axis2.util.CallbackReceiver callbackReceiver = null;

		if ((operations[2].getMessageReceiver() == null) && operationClient.getOptions().isUseSeparateListener()) {
			callbackReceiver = new org.apache.axis2.util.CallbackReceiver();
			operations[2].setMessageReceiver(callbackReceiver);
		}

		// execute the operation client
		operationClient.execute(false);
	}

	/**
	 * Auto generated method signature
	 *
	 * @see arztis.econnector.ecard.generatedClasses.at.chipkarte.client.auth.soap.AuthService#closeDialog
	 * @param closeDialog6
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException :
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException  :
	 */
	public arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.CloseDialogResponseE closeDialog(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.CloseDialogE closeDialog6)
			throws java.rmi.RemoteException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException {
		org.apache.axis2.context.MessageContext messageContext = new org.apache.axis2.context.MessageContext();

		try {
			org.apache.axis2.client.OperationClient operationClient = _serviceClient
					.createClient(operations[3].getName());
			operationClient.getOptions()
					.setAction("http://soap.auth.client.chipkarte.at/IAuthService/closeDialogRequest");
			operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;

			env = toEnvelope(getFactory(operationClient.getOptions().getSoapVersionURI()), closeDialog6);

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

			java.lang.Object object = null;
			if (returnEnv != null) {
				if (LOGGER.isInfoEnabled()) {
					LOGGER.info("Close dialog request: {}", env);
					LOGGER.info("Close dialog response: {}", returnEnv);
				}

				object = fromOM(returnEnv.getBody().getFirstElement(),
						arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.CloseDialogResponseE.class);
			}

			return (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.CloseDialogResponseE) object;
		} catch (org.apache.axis2.AxisFault f) {
			org.apache.axiom.om.OMElement faultElt = f.getDetail();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Close dialog error: {}", faultElt);
			}

			if (faultElt != null) {
				if (faultExceptionNameMap.containsKey(
						new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), CLOSE_DIALOG_LITERAL))) {
					// make the fault by reflection
					try {
						java.lang.String exceptionClassName = faultExceptionClassNameMap.get(
								new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), CLOSE_DIALOG_LITERAL));
						java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(java.lang.String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

						// message class
						java.lang.String messageClassName = faultMessageMap.get(
								new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), CLOSE_DIALOG_LITERAL));
						java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt, messageClass);
						java.lang.reflect.Method m = exceptionClass.getMethod(SET_FAULT_MESSAGE_LITERAL, messageClass);
						m.invoke(ex, messageObject);

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException) ex;
						}

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException) ex;
						}

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					} catch (ClassCastException | ClassNotFoundException | NoSuchMethodException
							| InvocationTargetException | IllegalAccessException | InstantiationException e) {
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
	 * @see arztis.econnector.ecard.generatedClasses.at.chipkarte.client.auth.soap.AuthService#startcloseDialog
	 * @param closeDialog6
	 */
	public void startcloseDialog(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.CloseDialogE closeDialog6,
			final arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceCallbackHandler callback)
			throws java.rmi.RemoteException {
		org.apache.axis2.client.OperationClient operationClient = _serviceClient.createClient(operations[3].getName());
		operationClient.getOptions().setAction("http://soap.auth.client.chipkarte.at/IAuthService/closeDialogRequest");
		operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

		addPropertyToOperationClient(operationClient,
				org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

		// create SOAP envelope with that payload
		org.apache.axiom.soap.SOAPEnvelope env = null;
		final org.apache.axis2.context.MessageContext messageContext = new org.apache.axis2.context.MessageContext();

		// Style is Doc.
		env = toEnvelope(getFactory(operationClient.getOptions().getSoapVersionURI()), closeDialog6);

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
							arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.CloseDialogResponseE.class);
					callback.receiveResultcloseDialog(
							(arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.CloseDialogResponseE) object);
				} catch (org.apache.axis2.AxisFault e) {
					callback.receiveErrorcloseDialog(e);
				}
			}

			public void onError(java.lang.Exception error) {
				if (error instanceof org.apache.axis2.AxisFault) {
					org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
					org.apache.axiom.om.OMElement faultElt = f.getDetail();

					if (LOGGER.isInfoEnabled()) {
						LOGGER.info("Set dialog address response: {}", faultElt);
					}

					if (faultElt != null) {
						if (faultExceptionNameMap.containsKey(
								new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), CLOSE_DIALOG_LITERAL))) {
							// make the fault by reflection
							try {
								java.lang.String exceptionClassName = faultExceptionClassNameMap
										.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
												CLOSE_DIALOG_LITERAL));
								java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
								java.lang.reflect.Constructor constructor = exceptionClass
										.getConstructor(java.lang.String.class);
								java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

								// message class
								java.lang.String messageClassName = faultMessageMap
										.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
												CLOSE_DIALOG_LITERAL));
								java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
								java.lang.Object messageObject = fromOM(faultElt, messageClass);
								java.lang.reflect.Method m = exceptionClass.getMethod(SET_FAULT_MESSAGE_LITERAL,
										messageClass);
								m.invoke(ex, messageObject);

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException) {
									callback.receiveErrorcloseDialog(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException) {
									callback.receiveErrorcloseDialog(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException) ex);

									return;
								}

								callback.receiveErrorcloseDialog(new java.rmi.RemoteException(ex.getMessage(), ex));
							} catch (ClassCastException | ClassNotFoundException | NoSuchMethodException
									| InvocationTargetException | IllegalAccessException | InstantiationException
									| org.apache.axis2.AxisFault e) {
								// we cannot intantiate the class - throw the original Axis fault
								callback.receiveErrorcloseDialog(f);
							}
						} else {
							callback.receiveErrorcloseDialog(f);
						}
					} else {
						callback.receiveErrorcloseDialog(f);
					}
				} else {
					callback.receiveErrorcloseDialog(error);
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
					callback.receiveErrorcloseDialog(axisFault);
				}
			}
		});

		org.apache.axis2.util.CallbackReceiver callbackReceiver = null;

		if ((operations[3].getMessageReceiver() == null) && operationClient.getOptions().isUseSeparateListener()) {
			callbackReceiver = new org.apache.axis2.util.CallbackReceiver();
			operations[3].setMessageReceiver(callbackReceiver);
		}

		// execute the operation client
		operationClient.execute(false);
	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.SetDialogAddressE param)
			throws org.apache.axis2.AxisFault {
		try {
			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();
			emptyEnvelope.getBody().addChild(param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.SetDialogAddressE.MY_QNAME,
					factory));

			return emptyEnvelope;
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */
	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogE param)
			throws org.apache.axis2.AxisFault {
		try {
			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();
			emptyEnvelope.getBody().addChild(param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogE.MY_QNAME,
					factory));

			return emptyEnvelope;
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */
	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogEntE param)
			throws org.apache.axis2.AxisFault {
		try {
			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();
			emptyEnvelope.getBody().addChild(param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogEntE.MY_QNAME,
					factory));

			return emptyEnvelope;
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */
	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.CloseDialogE param)
			throws org.apache.axis2.AxisFault {
		try {
			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();
			emptyEnvelope.getBody().addChild(param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.CloseDialogE.MY_QNAME,
					factory));

			return emptyEnvelope;
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private java.lang.Object fromOM(org.apache.axiom.om.OMElement param, java.lang.Class type)
			throws org.apache.axis2.AxisFault {
		try {
			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogEntE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogEntE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogEntResponseE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogEntResponseE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogResponseE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogResponseE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.CloseDialogE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.CloseDialogE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.CloseDialogResponseE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.CloseDialogResponseE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.DialogException.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.DialogException.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.ServiceException.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.ServiceException.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.SetDialogAddressE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.SetDialogAddressE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.SetDialogAddressResponseE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.SetDialogAddressResponseE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}
		} catch (java.lang.Exception e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

		return null;
	}

	// https://localhost/auth/1
	public static class AuthenticateDialogResponse implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * authenticateDialogResponse Namespace URI =
		 * http://soap.auth.client.chipkarte.at Namespace Prefix = ns2
		 */

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		/**
		 * field for _return
		 */
		protected DialogData localReturn;

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
		 * @return DialogData
		 */
		public DialogData getReturn() {
			return localReturn;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param _return
		 */
		public void setReturn(DialogData param) {
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
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, SOAP_AUTH_URL);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":authenticateDialogResponse", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							AUTHENTICATE_DIALOG_RESPONSE_LITERAL, xmlWriter);
				}
			}

			if (localReturnTracker) {
				if (localReturn == null) {
					throw new org.apache.axis2.databinding.ADBException("return cannot be null!!");
				}

				localReturn.serialize(new javax.xml.namespace.QName(SOAP_AUTH_URL, RETURN_LITERAL), xmlWriter);
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(SOAP_AUTH_URL)) {
				return "ns2";
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
			public static AuthenticateDialogResponse parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				AuthenticateDialogResponse object = new AuthenticateDialogResponse();

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(':') > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

							if (!AUTHENTICATE_DIALOG_RESPONSE_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (AuthenticateDialogResponse) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, RETURN_LITERAL).equals(reader.getName())) {
						object.setReturn(DialogData.Factory.parse(reader));

						reader.next();
					} // End of if for expected property start element

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(UNEXPECTED_SUBELEMENT + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class AuthenticateDialogEntE implements org.apache.axis2.databinding.ADBBean {
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(SOAP_AUTH_URL,
				AUTHENTICATE_DIALOG_ENT_LITERAL, "ns2");

		/**
		 * field for AuthenticateDialogEnt
		 */
		protected AuthenticateDialogEnt localAuthenticateDialogEnt;

		/**
		 * Auto generated getter method
		 * 
		 * @return AuthenticateDialogEnt
		 */
		public AuthenticateDialogEnt getAuthenticateDialogEnt() {
			return localAuthenticateDialogEnt;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param AuthenticateDialogEnt
		 */
		public void setAuthenticateDialogEnt(AuthenticateDialogEnt param) {
			this.localAuthenticateDialogEnt = param;
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
			if (localAuthenticateDialogEnt == null) {
				throw new org.apache.axis2.databinding.ADBException("authenticateDialogEnt cannot be null!");
			}

			localAuthenticateDialogEnt.serialize(MY_QNAME, xmlWriter);
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {

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
			public static AuthenticateDialogEntE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				AuthenticateDialogEntE object = new AuthenticateDialogEntE();

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(SOAP_AUTH_URL, AUTHENTICATE_DIALOG_ENT_LITERAL)
											.equals(reader.getName())) {
								object.setAuthenticateDialogEnt(AuthenticateDialogEnt.Factory.parse(reader));
							} // End of if for expected property start element

							else {
								// 3 - A start element we are not expecting indicates an invalid parameter was
								// passed
								throw new org.apache.axis2.databinding.ADBException(
										UNEXPECTED_SUBELEMENT + reader.getName());
							}
						} else {
							reader.next();
						}
					} // end of while loop
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class DialogException extends Exception implements org.apache.axis2.databinding.ADBBean {
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL,
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

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL, DIALOG_EXCEPTION_LITERAL)
											.equals(reader.getName())) {
								object.setDialogException(DialogExceptionContent.Factory.parse(reader));
							} // End of if for expected property start element

							else {
								// 3 - A start element we are not expecting indicates an invalid parameter was
								// passed
								throw new org.apache.axis2.databinding.ADBException(
										UNEXPECTED_SUBELEMENT + reader.getName());
							}
						} else {
							reader.next();
						}
					} // end of while loop
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class ServiceExceptionContent extends BaseExceptionContent
			implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * serviceExceptionContent Namespace URI =
		 * http://exceptions.soap.base.client.chipkarte.at Namespace Prefix = ns1
		 */

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

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
			writeStartElementAuthService(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			java.lang.String namespacePrefix = registerPrefixAuthService(xmlWriter, SOAP_BASE_EXCEPTION_URL);

			if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
				writeAttributeAuthService(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
						namespacePrefix + ":serviceExceptionContent", xmlWriter);
			} else {
				writeAttributeAuthService(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
						SERVICE_EXCEPTION_CONTENT_LITERAL, xmlWriter);
			}

			if (localCodeTracker) {
				namespace = SOAP_BASE_EXCEPTION_URL;
				writeStartElementAuthService(null, namespace, "code", xmlWriter);

				if (localCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException(ERROR_MESSAGE_CODE_NOT_NULL);
				} else {
					xmlWriter.writeCharacters(localCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localErrorCodeTracker) {
				namespace = SOAP_BASE_EXCEPTION_URL;
				writeStartElementAuthService(null, namespace, ERROR_CODE_LITERAL, xmlWriter);

				if (localErrorCode == java.lang.Integer.MIN_VALUE) {
					throw new org.apache.axis2.databinding.ADBException(ERROR_MESSAGE_CODE_NOT_NULL);
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localErrorCode));
				}

				xmlWriter.writeEndElement();
			}

			if (localMessageTracker) {
				namespace = SOAP_BASE_EXCEPTION_URL;
				writeStartElementAuthService(null, namespace, MESSAGE_LITERAL, xmlWriter);

				if (localMessage == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException(ERROR_MESSAGE_MESSAGE_NOT_NULL);
				} else {
					xmlWriter.writeCharacters(localMessage);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(SOAP_BASE_EXCEPTION_URL)) {
				return "ns1";
			}

			return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
		}

		/**
		 * Utility method to write an element start tag.
		 */
		private void writeStartElementAuthService(java.lang.String prefix, java.lang.String namespace,
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
		private void writeAttributeAuthService(java.lang.String prefix, java.lang.String namespace,
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
		private java.lang.String registerPrefixAuthService(javax.xml.stream.XMLStreamWriter xmlWriter,
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

				String nillableValue = null;
				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(':') > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

							if (!SERVICE_EXCEPTION_CONTENT_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (ServiceExceptionContent) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL, "code")
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + ERROR_MESSAGE_CODE_NOT_NULL);
						}

						java.lang.String content = reader.getElementText();

						object.setCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL, ERROR_CODE_LITERAL)
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + ERROR_MESSAGE_CODE_NOT_NULL);
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
							&& new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL, MESSAGE_LITERAL)
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + MESSAGE_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setMessage(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(UNEXPECTED_SUBELEMENT + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class TaetigkeitsBereich implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * taetigkeitsBereich Namespace URI = http://soap.auth.client.chipkarte.at
		 * Namespace Prefix = ns2
		 */

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		/**
		 * field for Id
		 */
		protected java.lang.String localId;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localIdTracker = false;

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
		 * field for AnzeigeText
		 */
		protected java.lang.String localAnzeigeText;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localAnzeigeTextTracker = false;

		public boolean isIdSpecified() {
			return localIdTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getId() {
			return localId;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Id
		 */
		public void setId(java.lang.String param) {
			localIdTracker = param != null;

			this.localId = param;
		}

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

		public boolean isAnzeigeTextSpecified() {
			return localAnzeigeTextTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getAnzeigeText() {
			return localAnzeigeText;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param AnzeigeText
		 */
		public void setAnzeigeText(java.lang.String param) {
			localAnzeigeTextTracker = param != null;

			this.localAnzeigeText = param;
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
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, SOAP_AUTH_URL);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":taetigkeitsBereich", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							TAETIGKEITSBEREICH_LITERAL, xmlWriter);
				}
			}

			if (localIdTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, "id", xmlWriter);

				if (localId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("id cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localId);
				}

				xmlWriter.writeEndElement();
			}

			if (localCodeTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, "code", xmlWriter);

				if (localCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException(ERROR_MESSAGE_CODE_NOT_NULL);
				} else {
					xmlWriter.writeCharacters(localCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localAnzeigeTextTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, ANZEIGE_TEXT_LITERAL, xmlWriter);

				if (localAnzeigeText == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("anzeigeText cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localAnzeigeText);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(SOAP_AUTH_URL)) {
				return "ns2";
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
			public static TaetigkeitsBereich parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				TaetigkeitsBereich object = new TaetigkeitsBereich();

				java.lang.String nillableValue = null;

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(':') > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

							if (!TAETIGKEITSBEREICH_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (TaetigkeitsBereich) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, "id").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "id" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setId(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, "code").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "code" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, ANZEIGE_TEXT_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + ANZEIGE_TEXT_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setAnzeigeText(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(UNEXPECTED_SUBELEMENT + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class SetDialogAddress implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * setDialogAddress Namespace URI = http://soap.auth.client.chipkarte.at
		 * Namespace Prefix = ns2
		 */

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

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
		 * field for OrdinationId
		 */
		protected java.lang.String localOrdinationId;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localOrdinationIdTracker = false;

		/**
		 * field for TaetigkeitsBereichId
		 */
		protected java.lang.String localTaetigkeitsBereichId;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localTaetigkeitsBereichIdTracker = false;

		/**
		 * field for ElgaRolle
		 */
		protected java.lang.String localElgaRolle;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localElgaRolleTracker = false;

		/**
		 * field for GdaMa
		 */
		protected GdaMa localGdaMa;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localGdaMaTracker = false;

		/**
		 * field for Prozess
		 */
		protected java.lang.String localProzess;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localProzessTracker = false;

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

		public boolean isOrdinationIdSpecified() {
			return localOrdinationIdTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getOrdinationId() {
			return localOrdinationId;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param OrdinationId
		 */
		public void setOrdinationId(java.lang.String param) {
			localOrdinationIdTracker = param != null;

			this.localOrdinationId = param;
		}

		public boolean isTaetigkeitsBereichIdSpecified() {
			return localTaetigkeitsBereichIdTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getTaetigkeitsBereichId() {
			return localTaetigkeitsBereichId;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param TaetigkeitsBereichId
		 */
		public void setTaetigkeitsBereichId(java.lang.String param) {
			localTaetigkeitsBereichIdTracker = param != null;

			this.localTaetigkeitsBereichId = param;
		}

		public boolean isElgaRolleSpecified() {
			return localElgaRolleTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getElgaRolle() {
			return localElgaRolle;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param ElgaRolle
		 */
		public void setElgaRolle(java.lang.String param) {
			localElgaRolleTracker = param != null;

			this.localElgaRolle = param;
		}

		public boolean isGdaMaSpecified() {
			return localGdaMaTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return GdaMa
		 */
		public GdaMa getGdaMa() {
			return localGdaMa;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param GdaMa
		 */
		public void setGdaMa(GdaMa param) {
			localGdaMaTracker = param != null;

			this.localGdaMa = param;
		}

		public boolean isProzessSpecified() {
			return localProzessTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getProzess() {
			return localProzess;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Prozess
		 */
		public void setProzess(java.lang.String param) {
			localProzessTracker = param != null;

			this.localProzess = param;
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
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, SOAP_AUTH_URL);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":setDialogAddress", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							SET_DIALOG_ADDRESS_LITERAL, xmlWriter);
				}
			}

			if (localDialogIdTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, DIALOG_ID_LITERAL, xmlWriter);

				if (localDialogId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException(ERROR_MESSAGE_DIALOG_ID_NOT_NULL);
				} else {
					xmlWriter.writeCharacters(localDialogId);
				}

				xmlWriter.writeEndElement();
			}

			if (localOrdinationIdTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, ORDINATION_ID_LITERAL, xmlWriter);

				if (localOrdinationId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("ordinationId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localOrdinationId);
				}

				xmlWriter.writeEndElement();
			}

			if (localTaetigkeitsBereichIdTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, TAETIGKEITSBEREICH_ID_LITERAL, xmlWriter);

				if (localTaetigkeitsBereichId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("taetigkeitsBereichId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localTaetigkeitsBereichId);
				}

				xmlWriter.writeEndElement();
			}

			if (localElgaRolleTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, ELGA_ROLLE_LITERAL, xmlWriter);

				if (localElgaRolle == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("elgaRolle cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localElgaRolle);
				}

				xmlWriter.writeEndElement();
			}

			if (localGdaMaTracker) {
				if (localGdaMa == null) {
					throw new org.apache.axis2.databinding.ADBException("gdaMa cannot be null!!");
				}

				localGdaMa.serialize(new javax.xml.namespace.QName(SOAP_AUTH_URL, GDAMA_LITERAL), xmlWriter);
			}

			if (localProzessTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, PROZESS_LITERAL, xmlWriter);

				if (localProzess == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("prozess cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localProzess);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(SOAP_AUTH_URL)) {
				return "ns2";
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
			public static SetDialogAddress parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				SetDialogAddress object = new SetDialogAddress();

				java.lang.String nillableValue = null;

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(':') > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

							if (!SET_DIALOG_ADDRESS_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (SetDialogAddress) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, DIALOG_ID_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + DIALOG_ID_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setDialogId(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, ORDINATION_ID_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + ORDINATION_ID_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setOrdinationId(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, TAETIGKEITSBEREICH_ID_LITERAL)
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + TAETIGKEITSBEREICH_ID_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setTaetigkeitsBereichId(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, ELGA_ROLLE_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + ELGA_ROLLE_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setElgaRolle(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, GDAMA_LITERAL).equals(reader.getName())) {
						object.setGdaMa(GdaMa.Factory.parse(reader));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, PROZESS_LITERAL).equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + PROZESS_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setProzess(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(UNEXPECTED_SUBELEMENT + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class VertragspartnerV2 implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * vertragspartnerV2 Namespace URI = http://soap.auth.client.chipkarte.at
		 * Namespace Prefix = ns2
		 */

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		/**
		 * field for AnredeCode
		 */
		protected java.lang.String localAnredeCode;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localAnredeCodeTracker = false;

		/**
		 * field for AuthenticationStatus
		 */
		protected AuthenticationStatus localAuthenticationStatus;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localAuthenticationStatusTracker = false;

		/**
		 * field for DruckNachname
		 */
		protected java.lang.String localDruckNachname;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localDruckNachnameTracker = false;

		/**
		 * field for DruckVorname
		 */
		protected java.lang.String localDruckVorname;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localDruckVornameTracker = false;

		/**
		 * field for DruckTitelHinten
		 */
		protected java.lang.String localDruckTitelHinten;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localDruckTitelHintenTracker = false;

		/**
		 * field for DruckTitelVorne
		 */
		protected java.lang.String localDruckTitelVorne;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localDruckTitelVorneTracker = false;

		/**
		 * field for Geburtsdatum
		 */
		protected java.lang.String localGeburtsdatum;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localGeburtsdatumTracker = false;

		/**
		 * field for Nachname
		 */
		protected java.lang.String localNachname;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localNachnameTracker = false;

		/**
		 * field for Ordination This was an Array!
		 */
		protected Ordination[] localOrdination;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localOrdinationTracker = false;

		/**
		 * field for TitelHinten
		 */
		protected java.lang.String localTitelHinten;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localTitelHintenTracker = false;

		/**
		 * field for TitelVorne
		 */
		protected java.lang.String localTitelVorne;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localTitelVorneTracker = false;

		/**
		 * field for Vorname
		 */
		protected java.lang.String localVorname;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localVornameTracker = false;

		/**
		 * field for VpId
		 */
		protected java.lang.String localVpId;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localVpIdTracker = false;

		/**
		 * field for VpNummer
		 */
		protected java.lang.String localVpNummer;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localVpNummerTracker = false;

		public boolean isAnredeCodeSpecified() {
			return localAnredeCodeTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getAnredeCode() {
			return localAnredeCode;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param AnredeCode
		 */
		public void setAnredeCode(java.lang.String param) {
			localAnredeCodeTracker = param != null;

			this.localAnredeCode = param;
		}

		public boolean isAuthenticationStatusSpecified() {
			return localAuthenticationStatusTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return AuthenticationStatus
		 */
		public AuthenticationStatus getAuthenticationStatus() {
			return localAuthenticationStatus;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param AuthenticationStatus
		 */
		public void setAuthenticationStatus(AuthenticationStatus param) {
			localAuthenticationStatusTracker = param != null;

			this.localAuthenticationStatus = param;
		}

		public boolean isDruckNachnameSpecified() {
			return localDruckNachnameTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getDruckNachname() {
			return localDruckNachname;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param DruckNachname
		 */
		public void setDruckNachname(java.lang.String param) {
			localDruckNachnameTracker = param != null;

			this.localDruckNachname = param;
		}

		public boolean isDruckVornameSpecified() {
			return localDruckVornameTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getDruckVorname() {
			return localDruckVorname;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param DruckVorname
		 */
		public void setDruckVorname(java.lang.String param) {
			localDruckVornameTracker = param != null;

			this.localDruckVorname = param;
		}

		public boolean isDruckTitelHintenSpecified() {
			return localDruckTitelHintenTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getDruckTitelHinten() {
			return localDruckTitelHinten;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param DruckTitelHinten
		 */
		public void setDruckTitelHinten(java.lang.String param) {
			localDruckTitelHintenTracker = param != null;

			this.localDruckTitelHinten = param;
		}

		public boolean isDruckTitelVorneSpecified() {
			return localDruckTitelVorneTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getDruckTitelVorne() {
			return localDruckTitelVorne;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param DruckTitelVorne
		 */
		public void setDruckTitelVorne(java.lang.String param) {
			localDruckTitelVorneTracker = param != null;

			this.localDruckTitelVorne = param;
		}

		public boolean isGeburtsdatumSpecified() {
			return localGeburtsdatumTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getGeburtsdatum() {
			return localGeburtsdatum;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Geburtsdatum
		 */
		public void setGeburtsdatum(java.lang.String param) {
			localGeburtsdatumTracker = param != null;

			this.localGeburtsdatum = param;
		}

		public boolean isNachnameSpecified() {
			return localNachnameTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getNachname() {
			return localNachname;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Nachname
		 */
		public void setNachname(java.lang.String param) {
			localNachnameTracker = param != null;

			this.localNachname = param;
		}

		public boolean isOrdinationSpecified() {
			return localOrdinationTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return Ordination[]
		 */
		public Ordination[] getOrdination() {
			return localOrdination;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Ordination
		 */
		public void setOrdination(Ordination[] param) {
			localOrdinationTracker = true;

			this.localOrdination = param;
		}

		/**
		 * Auto generated add method for the array for convenience
		 * 
		 * @param param Ordination
		 */
		public void addOrdination(Ordination param) {
			if (localOrdination == null) {
				localOrdination = new Ordination[] {};
			}

			// update the setting tracker
			localOrdinationTracker = true;

			java.util.List list = org.apache.axis2.databinding.utils.ConverterUtil.toList(localOrdination);
			list.add(param);
			this.localOrdination = (Ordination[]) list.toArray(new Ordination[list.size()]);
		}

		public boolean isTitelHintenSpecified() {
			return localTitelHintenTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getTitelHinten() {
			return localTitelHinten;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param TitelHinten
		 */
		public void setTitelHinten(java.lang.String param) {
			localTitelHintenTracker = param != null;

			this.localTitelHinten = param;
		}

		public boolean isTitelVorneSpecified() {
			return localTitelVorneTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getTitelVorne() {
			return localTitelVorne;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param TitelVorne
		 */
		public void setTitelVorne(java.lang.String param) {
			localTitelVorneTracker = param != null;

			this.localTitelVorne = param;
		}

		public boolean isVornameSpecified() {
			return localVornameTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getVorname() {
			return localVorname;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Vorname
		 */
		public void setVorname(java.lang.String param) {
			localVornameTracker = param != null;

			this.localVorname = param;
		}

		public boolean isVpIdSpecified() {
			return localVpIdTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getVpId() {
			return localVpId;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param VpId
		 */
		public void setVpId(java.lang.String param) {
			localVpIdTracker = param != null;

			this.localVpId = param;
		}

		public boolean isVpNummerSpecified() {
			return localVpNummerTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getVpNummer() {
			return localVpNummer;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param VpNummer
		 */
		public void setVpNummer(java.lang.String param) {
			localVpNummerTracker = param != null;

			this.localVpNummer = param;
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
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, SOAP_AUTH_URL);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":vertragspartnerV2", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							VERTRAGSPARTNER_V2_LITERAL, xmlWriter);
				}
			}

			if (localAnredeCodeTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, ANREDE_CODE_LITERAL, xmlWriter);

				if (localAnredeCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("anredeCode cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localAnredeCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localAuthenticationStatusTracker) {
				if (localAuthenticationStatus == null) {
					throw new org.apache.axis2.databinding.ADBException("authenticationStatus cannot be null!!");
				}

				localAuthenticationStatus.serialize(
						new javax.xml.namespace.QName(SOAP_AUTH_URL, AUTHENTICATION_STATUS_LITERAL), xmlWriter);
			}

			if (localDruckNachnameTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, DRUCKNACHNAME_LITERAL, xmlWriter);

				if (localDruckNachname == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("druckNachname cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localDruckNachname);
				}

				xmlWriter.writeEndElement();
			}

			if (localDruckVornameTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, DRUCKVORNAME_LITERAL, xmlWriter);

				if (localDruckVorname == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("druckVorname cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localDruckVorname);
				}

				xmlWriter.writeEndElement();
			}

			if (localDruckTitelHintenTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, DRUCK_TITEL_HINTEN_LITERAL, xmlWriter);

				if (localDruckTitelHinten == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("druckTitelHinten cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localDruckTitelHinten);
				}

				xmlWriter.writeEndElement();
			}

			if (localDruckTitelVorneTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, DRUCK_TITEL_VORNE_LITERAL, xmlWriter);

				if (localDruckTitelVorne == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("druckTitelVorne cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localDruckTitelVorne);
				}

				xmlWriter.writeEndElement();
			}

			if (localGeburtsdatumTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, BIRTH_DATE, xmlWriter);

				if (localGeburtsdatum == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("geburtsdatum cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localGeburtsdatum);
				}

				xmlWriter.writeEndElement();
			}

			if (localNachnameTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, NACHNAME_LITERAL, xmlWriter);

				if (localNachname == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("nachname cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localNachname);
				}

				xmlWriter.writeEndElement();
			}

			if (localOrdinationTracker) {
				if (localOrdination != null) {
					for (int i = 0; i < localOrdination.length; i++) {
						if (localOrdination[i] != null) {
							localOrdination[i].serialize(
									new javax.xml.namespace.QName(SOAP_AUTH_URL, ORDINATION_LITERAL), xmlWriter);
						} else {
							writeStartElement(null, SOAP_AUTH_URL, ORDINATION_LITERAL, xmlWriter);

							// write the nil attribute
							writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, "nil", "1", xmlWriter);
							xmlWriter.writeEndElement();
						}
					}
				} else {
					writeStartElement(null, SOAP_AUTH_URL, ORDINATION_LITERAL, xmlWriter);

					// write the nil attribute
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, "nil", "1", xmlWriter);
					xmlWriter.writeEndElement();
				}
			}

			if (localTitelHintenTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, TITEL_HINTEN_LITERAL, xmlWriter);

				if (localTitelHinten == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("titelHinten cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localTitelHinten);
				}

				xmlWriter.writeEndElement();
			}

			if (localTitelVorneTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, TITEL_VORNE_LITERAL, xmlWriter);

				if (localTitelVorne == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("titelVorne cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localTitelVorne);
				}

				xmlWriter.writeEndElement();
			}

			if (localVornameTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, VORNAME_LITERAL, xmlWriter);

				if (localVorname == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("vorname cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localVorname);
				}

				xmlWriter.writeEndElement();
			}

			if (localVpIdTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, "vpId", xmlWriter);

				if (localVpId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("vpId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localVpId);
				}

				xmlWriter.writeEndElement();
			}

			if (localVpNummerTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, VP_NUMMER_LITERAL, xmlWriter);

				if (localVpNummer == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("vpNummer cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localVpNummer);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(SOAP_AUTH_URL)) {
				return "ns2";
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
			public static VertragspartnerV2 parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				VertragspartnerV2 object = new VertragspartnerV2();

				java.lang.String nillableValue = null;

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(':') > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

							if (!VERTRAGSPARTNER_V2_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (VertragspartnerV2) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					reader.next();

					java.util.ArrayList<ADBBean> list9 = new java.util.ArrayList<>();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, ANREDE_CODE_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + ANREDE_CODE_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setAnredeCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, AUTHENTICATION_STATUS_LITERAL)
									.equals(reader.getName())) {
						object.setAuthenticationStatus(AuthenticationStatus.Factory.parse(reader));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, DRUCKNACHNAME_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + DRUCKNACHNAME_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setDruckNachname(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, DRUCKVORNAME_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + DRUCKVORNAME_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setDruckVorname(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, DRUCK_TITEL_HINTEN_LITERAL)
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + DRUCK_TITEL_HINTEN_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setDruckTitelHinten(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, DRUCK_TITEL_VORNE_LITERAL)
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + DRUCK_TITEL_VORNE_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setDruckTitelVorne(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, BIRTH_DATE).equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + BIRTH_DATE + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setGeburtsdatum(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, NACHNAME_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + NACHNAME_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setNachname(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, ORDINATION_LITERAL)
							.equals(reader.getName())) {
						// Process the array and step past its final element's end.
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							list9.add(null);
							reader.next();
						} else {
							list9.add(Ordination.Factory.parse(reader));
						}

						// loop until we find a start element that is not part of this array
						boolean loopDone9 = false;

						while (!loopDone9) {
							// We should be at the end element, but make sure
							while (!reader.isEndElement())
								reader.next();

							// Step out of this element
							reader.next();

							// Step to next element event.
							while (!reader.isStartElement() && !reader.isEndElement())
								reader.next();

							if (reader.isEndElement()) {
								// two continuous end elements means we are exiting the xml structure
								loopDone9 = true;
							} else {
								if (new javax.xml.namespace.QName(SOAP_AUTH_URL, ORDINATION_LITERAL)
										.equals(reader.getName())) {
									nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

									if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
										list9.add(null);
										reader.next();
									} else {
										list9.add(Ordination.Factory.parse(reader));
									}
								} else {
									loopDone9 = true;
								}
							}
						}

						// call the converter utility to convert and set the array
						object.setOrdination((Ordination[]) org.apache.axis2.databinding.utils.ConverterUtil
								.convertToArray(Ordination.class, list9));
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, TITEL_HINTEN_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + TITEL_HINTEN_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setTitelHinten(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, TITEL_VORNE_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + TITEL_VORNE_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setTitelVorne(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, VORNAME_LITERAL).equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + VORNAME_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setVorname(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, "vpId").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "vpId" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setVpId(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, VP_NUMMER_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + VP_NUMMER_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setVpNummer(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(UNEXPECTED_SUBELEMENT + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class SetDialogAddressE implements org.apache.axis2.databinding.ADBBean {
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(SOAP_AUTH_URL,
				SET_DIALOG_ADDRESS_LITERAL, "ns2");

		/**
		 * field for SetDialogAddress
		 */
		protected SetDialogAddress localSetDialogAddress;

		/**
		 * Auto generated getter method
		 * 
		 * @return SetDialogAddress
		 */
		public SetDialogAddress getSetDialogAddress() {
			return localSetDialogAddress;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param SetDialogAddress
		 */
		public void setSetDialogAddress(SetDialogAddress param) {
			this.localSetDialogAddress = param;
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
			if (localSetDialogAddress == null) {
				throw new org.apache.axis2.databinding.ADBException("setDialogAddress cannot be null!");
			}

			localSetDialogAddress.serialize(MY_QNAME, xmlWriter);
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {

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
			public static SetDialogAddressE parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				SetDialogAddressE object = new SetDialogAddressE();

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(SOAP_AUTH_URL, SET_DIALOG_ADDRESS_LITERAL)
											.equals(reader.getName())) {
								object.setSetDialogAddress(SetDialogAddress.Factory.parse(reader));
							} // End of if for expected property start element

							else {
								// 3 - A start element we are not expecting indicates an invalid parameter was
								// passed
								throw new org.apache.axis2.databinding.ADBException(
										UNEXPECTED_SUBELEMENT + reader.getName());
							}
						} else {
							reader.next();
						}
					} // end of while loop
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class DialogData implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name = dialogData
		 * Namespace URI = http://soap.auth.client.chipkarte.at Namespace Prefix = ns2
		 */

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

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
		 * field for HerstellerIdAblaufdatum
		 */
		protected java.lang.String localHerstellerIdAblaufdatum;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localHerstellerIdAblaufdatumTracker = false;

		/**
		 * field for Vp
		 */
		protected VertragspartnerV2 localVp;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localVpTracker = false;

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

		public boolean isHerstellerIdAblaufdatumSpecified() {
			return localHerstellerIdAblaufdatumTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getHerstellerIdAblaufdatum() {
			return localHerstellerIdAblaufdatum;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param HerstellerIdAblaufdatum
		 */
		public void setHerstellerIdAblaufdatum(java.lang.String param) {
			localHerstellerIdAblaufdatumTracker = param != null;

			this.localHerstellerIdAblaufdatum = param;
		}

		public boolean isVpSpecified() {
			return localVpTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return VertragspartnerV2
		 */
		public VertragspartnerV2 getVp() {
			return localVp;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Vp
		 */
		public void setVp(VertragspartnerV2 param) {
			localVpTracker = param != null;

			this.localVp = param;
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
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, SOAP_AUTH_URL);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":dialogData", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							DIALOG_DATA_LITERAL, xmlWriter);
				}
			}

			if (localDialogIdTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, DIALOG_ID_LITERAL, xmlWriter);

				if (localDialogId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException(ERROR_MESSAGE_DIALOG_ID_NOT_NULL);
				} else {
					xmlWriter.writeCharacters(localDialogId);
				}

				xmlWriter.writeEndElement();
			}

			if (localHerstellerIdAblaufdatumTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, HERSTELLER_ID_ABLAUFDATUM_LITERAL, xmlWriter);

				if (localHerstellerIdAblaufdatum == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("herstellerIdAblaufdatum cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localHerstellerIdAblaufdatum);
				}

				xmlWriter.writeEndElement();
			}

			if (localVpTracker) {
				if (localVp == null) {
					throw new org.apache.axis2.databinding.ADBException("vp cannot be null!!");
				}

				localVp.serialize(new javax.xml.namespace.QName(SOAP_AUTH_URL, "vp"), xmlWriter);
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(SOAP_AUTH_URL)) {
				return "ns2";
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
			public static DialogData parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				DialogData object = new DialogData();

				java.lang.String nillableValue = null;

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(':') > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

							if (!DIALOG_DATA_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (DialogData) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, DIALOG_ID_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + DIALOG_ID_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setDialogId(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, HERSTELLER_ID_ABLAUFDATUM_LITERAL)
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + HERSTELLER_ID_ABLAUFDATUM_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setHerstellerIdAblaufdatum(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, "vp").equals(reader.getName())) {
						object.setVp(VertragspartnerV2.Factory.parse(reader));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(UNEXPECTED_SUBELEMENT + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class SetDialogAddressResponse implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * setDialogAddressResponse Namespace URI = http://soap.auth.client.chipkarte.at
		 * Namespace Prefix = ns2
		 */

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

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
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, SOAP_AUTH_URL);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":setDialogAddressResponse", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							SET_DIALOG_ADDRESS_RESPONSE_LITERAL, xmlWriter);
				}
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(SOAP_AUTH_URL)) {
				return "ns2";
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
			public static SetDialogAddressResponse parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				SetDialogAddressResponse object = new SetDialogAddressResponse();

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(':') > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

							if (!SET_DIALOG_ADDRESS_RESPONSE_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (SetDialogAddressResponse) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(UNEXPECTED_SUBELEMENT + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class CloseDialogE implements org.apache.axis2.databinding.ADBBean {
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(SOAP_AUTH_URL,
				CLOSE_DIALOG_LITERAL, "ns2");

		/**
		 * field for CloseDialog
		 */
		protected CloseDialog localCloseDialog;

		/**
		 * Auto generated getter method
		 * 
		 * @return CloseDialog
		 */
		public CloseDialog getCloseDialog() {
			return localCloseDialog;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param CloseDialog
		 */
		public void setCloseDialog(CloseDialog param) {
			this.localCloseDialog = param;
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
			if (localCloseDialog == null) {
				throw new org.apache.axis2.databinding.ADBException("closeDialog cannot be null!");
			}

			localCloseDialog.serialize(MY_QNAME, xmlWriter);
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {

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
			public static CloseDialogE parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				CloseDialogE object = new CloseDialogE();

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(SOAP_AUTH_URL, CLOSE_DIALOG_LITERAL)
											.equals(reader.getName())) {
								object.setCloseDialog(CloseDialog.Factory.parse(reader));
							} // End of if for expected property start element

							else {
								// 3 - A start element we are not expecting indicates an invalid parameter was
								// passed
								throw new org.apache.axis2.databinding.ADBException(
										UNEXPECTED_SUBELEMENT + reader.getName());
							}
						} else {
							reader.next();
						}
					} // end of while loop
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class AuthenticateDialogEnt implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * authenticateDialogEnt Namespace URI = http://soap.auth.client.chipkarte.at
		 * Namespace Prefix = ns2
		 */

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		/**
		 * field for ProduktInfo
		 */
		protected ProduktInfo localProduktInfo;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localProduktInfoTracker = false;

		/**
		 * field for ExtUID
		 */
		protected java.lang.String localExtUID;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localExtUIDTracker = false;

		/**
		 * field for VpNummer
		 */
		protected java.lang.String localVpNummer;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localVpNummerTracker = false;

		/**
		 * field for PushMessageEnabled
		 */
		protected boolean localPushMessageEnabled;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localPushMessageEnabledTracker = false;

		public boolean isProduktInfoSpecified() {
			return localProduktInfoTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return ProduktInfo
		 */
		public ProduktInfo getProduktInfo() {
			return localProduktInfo;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param ProduktInfo
		 */
		public void setProduktInfo(ProduktInfo param) {
			localProduktInfoTracker = param != null;

			this.localProduktInfo = param;
		}

		public boolean isExtUIDSpecified() {
			return localExtUIDTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getExtUID() {
			return localExtUID;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param ExtUID
		 */
		public void setExtUID(java.lang.String param) {
			localExtUIDTracker = param != null;

			this.localExtUID = param;
		}

		public boolean isVpNummerSpecified() {
			return localVpNummerTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getVpNummer() {
			return localVpNummer;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param VpNummer
		 */
		public void setVpNummer(java.lang.String param) {
			localVpNummerTracker = param != null;

			this.localVpNummer = param;
		}

		public boolean isPushMessageEnabledSpecified() {
			return localPushMessageEnabledTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return boolean
		 */
		public boolean getPushMessageEnabled() {
			return localPushMessageEnabled;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param PushMessageEnabled
		 */
		public void setPushMessageEnabled(boolean param) {
			// setting primitive attribute tracker to true
			localPushMessageEnabledTracker = true;

			this.localPushMessageEnabled = param;
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
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, SOAP_AUTH_URL);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":authenticateDialogEnt", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							AUTHENTICATE_DIALOG_ENT_LITERAL, xmlWriter);
				}
			}

			if (localProduktInfoTracker) {
				if (localProduktInfo == null) {
					throw new org.apache.axis2.databinding.ADBException("produktInfo cannot be null!!");
				}

				localProduktInfo.serialize(new javax.xml.namespace.QName(SOAP_AUTH_URL, PRODUKT_INFO_LITERAL),
						xmlWriter);
			}

			if (localExtUIDTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, EXTUID_LITERAL, xmlWriter);

				if (localExtUID == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("extUID cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localExtUID);
				}

				xmlWriter.writeEndElement();
			}

			if (localVpNummerTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, VP_NUMMER_LITERAL, xmlWriter);

				if (localVpNummer == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("vpNummer cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localVpNummer);
				}

				xmlWriter.writeEndElement();
			}

			if (localPushMessageEnabledTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, PUSH_MESSAGE_ENABLED_LITERAL, xmlWriter);

				xmlWriter.writeCharacters(
						org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localPushMessageEnabled));

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(SOAP_AUTH_URL)) {
				return "ns2";
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
			public static AuthenticateDialogEnt parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				AuthenticateDialogEnt object = new AuthenticateDialogEnt();

				java.lang.String nillableValue = null;

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(':') > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

							if (!AUTHENTICATE_DIALOG_ENT_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (AuthenticateDialogEnt) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, PRODUKT_INFO_LITERAL)
							.equals(reader.getName())) {
						object.setProduktInfo(ProduktInfo.Factory.parse(reader));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, EXTUID_LITERAL).equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + EXTUID_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setExtUID(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, VP_NUMMER_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + VP_NUMMER_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setVpNummer(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, PUSH_MESSAGE_ENABLED_LITERAL)
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + PUSH_MESSAGE_ENABLED_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setPushMessageEnabled(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToBoolean(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(UNEXPECTED_SUBELEMENT + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class AuthenticateDialogEntResponseE implements org.apache.axis2.databinding.ADBBean {
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(SOAP_AUTH_URL,
				AUTHENTICATE_DIALOG_ENT_RESPONSE_LITERAL, "ns2");

		/**
		 * field for AuthenticateDialogEntResponse
		 */
		protected AuthenticateDialogEntResponse localAuthenticateDialogEntResponse;

		/**
		 * Auto generated getter method
		 * 
		 * @return AuthenticateDialogEntResponse
		 */
		public AuthenticateDialogEntResponse getAuthenticateDialogEntResponse() {
			return localAuthenticateDialogEntResponse;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param AuthenticateDialogEntResponse
		 */
		public void setAuthenticateDialogEntResponse(AuthenticateDialogEntResponse param) {
			this.localAuthenticateDialogEntResponse = param;
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
			if (localAuthenticateDialogEntResponse == null) {
				throw new org.apache.axis2.databinding.ADBException("authenticateDialogEntResponse cannot be null!");
			}

			localAuthenticateDialogEntResponse.serialize(MY_QNAME, xmlWriter);
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {

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
			public static AuthenticateDialogEntResponseE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				AuthenticateDialogEntResponseE object = new AuthenticateDialogEntResponseE();

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL,
									AUTHENTICATE_DIALOG_ENT_RESPONSE_LITERAL).equals(reader.getName())) {
								object.setAuthenticateDialogEntResponse(
										AuthenticateDialogEntResponse.Factory.parse(reader));
							} // End of if for expected property start element

							else {
								// 3 - A start element we are not expecting indicates an invalid parameter was
								// passed
								throw new org.apache.axis2.databinding.ADBException(
										UNEXPECTED_SUBELEMENT + reader.getName());
							}
						} else {
							reader.next();
						}
					} // end of while loop
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class CloseDialogResponseE implements org.apache.axis2.databinding.ADBBean {
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(SOAP_AUTH_URL,
				CLOSE_DIALOG_RESPONSE_LITERAL, "ns2");

		/**
		 * field for CloseDialogResponse
		 */
		protected CloseDialogResponse localCloseDialogResponse;

		/**
		 * Auto generated getter method
		 * 
		 * @return CloseDialogResponse
		 */
		public CloseDialogResponse getCloseDialogResponse() {
			return localCloseDialogResponse;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param CloseDialogResponse
		 */
		public void setCloseDialogResponse(CloseDialogResponse param) {
			this.localCloseDialogResponse = param;
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
			if (localCloseDialogResponse == null) {
				throw new org.apache.axis2.databinding.ADBException("closeDialogResponse cannot be null!");
			}

			localCloseDialogResponse.serialize(MY_QNAME, xmlWriter);
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {

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
			public static CloseDialogResponseE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				CloseDialogResponseE object = new CloseDialogResponseE();

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(SOAP_AUTH_URL, CLOSE_DIALOG_RESPONSE_LITERAL)
											.equals(reader.getName())) {
								object.setCloseDialogResponse(CloseDialogResponse.Factory.parse(reader));
							} // End of if for expected property start element

							else {
								// 3 - A start element we are not expecting indicates an invalid parameter was
								// passed
								throw new org.apache.axis2.databinding.ADBException(
										UNEXPECTED_SUBELEMENT + reader.getName());
							}
						} else {
							reader.next();
						}
					} // end of while loop
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class Ordination implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name = ordination
		 * Namespace URI = http://soap.auth.client.chipkarte.at Namespace Prefix = ns2
		 */

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		/**
		 * field for Bezirk
		 */
		protected java.lang.String localBezirk;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localBezirkTracker = false;

		/**
		 * field for BundeslandCode
		 */
		protected java.lang.String localBundeslandCode;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localBundeslandCodeTracker = false;

		/**
		 * field for LandCode
		 */
		protected java.lang.String localLandCode;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localLandCodeTracker = false;

		/**
		 * field for OrdinationId
		 */
		protected java.lang.String localOrdinationId;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localOrdinationIdTracker = false;

		/**
		 * field for OrdinationNumber
		 */
		protected long localOrdinationNumber;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localOrdinationNumberTracker = false;

		/**
		 * field for Postleitzahl
		 */
		protected java.lang.String localPostleitzahl;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localPostleitzahlTracker = false;

		/**
		 * field for Stadt
		 */
		protected java.lang.String localStadt;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localStadtTracker = false;

		/**
		 * field for Strasse
		 */
		protected java.lang.String localStrasse;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localStrasseTracker = false;

		/**
		 * field for Uebersiedeln
		 */
		protected boolean localUebersiedeln;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localUebersiedelnTracker = false;

		/**
		 * field for UebersiedelnDate
		 */
		protected java.lang.String localUebersiedelnDate;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localUebersiedelnDateTracker = false;

		/**
		 * field for VorgaengerOrdinationId
		 */
		protected java.lang.String localVorgaengerOrdinationId;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localVorgaengerOrdinationIdTracker = false;

		/**
		 * field for TaetigkeitsBereich This was an Array!
		 */
		protected TaetigkeitsBereich[] localTaetigkeitsBereich;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localTaetigkeitsBereichTracker = false;

		public boolean isBezirkSpecified() {
			return localBezirkTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getBezirk() {
			return localBezirk;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Bezirk
		 */
		public void setBezirk(java.lang.String param) {
			localBezirkTracker = param != null;

			this.localBezirk = param;
		}

		public boolean isBundeslandCodeSpecified() {
			return localBundeslandCodeTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getBundeslandCode() {
			return localBundeslandCode;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param BundeslandCode
		 */
		public void setBundeslandCode(java.lang.String param) {
			localBundeslandCodeTracker = param != null;

			this.localBundeslandCode = param;
		}

		public boolean isLandCodeSpecified() {
			return localLandCodeTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getLandCode() {
			return localLandCode;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param LandCode
		 */
		public void setLandCode(java.lang.String param) {
			localLandCodeTracker = param != null;

			this.localLandCode = param;
		}

		public boolean isOrdinationIdSpecified() {
			return localOrdinationIdTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getOrdinationId() {
			return localOrdinationId;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param OrdinationId
		 */
		public void setOrdinationId(java.lang.String param) {
			localOrdinationIdTracker = param != null;

			this.localOrdinationId = param;
		}

		public boolean isOrdinationNumberSpecified() {
			return localOrdinationNumberTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return long
		 */
		public long getOrdinationNumber() {
			return localOrdinationNumber;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param OrdinationNumber
		 */
		public void setOrdinationNumber(long param) {
			// setting primitive attribute tracker to true
			localOrdinationNumberTracker = param != java.lang.Long.MIN_VALUE;

			this.localOrdinationNumber = param;
		}

		public boolean isPostleitzahlSpecified() {
			return localPostleitzahlTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getPostleitzahl() {
			return localPostleitzahl;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Postleitzahl
		 */
		public void setPostleitzahl(java.lang.String param) {
			localPostleitzahlTracker = param != null;

			this.localPostleitzahl = param;
		}

		public boolean isStadtSpecified() {
			return localStadtTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getStadt() {
			return localStadt;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Stadt
		 */
		public void setStadt(java.lang.String param) {
			localStadtTracker = param != null;

			this.localStadt = param;
		}

		public boolean isStrasseSpecified() {
			return localStrasseTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getStrasse() {
			return localStrasse;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Strasse
		 */
		public void setStrasse(java.lang.String param) {
			localStrasseTracker = param != null;

			this.localStrasse = param;
		}

		public boolean isUebersiedelnSpecified() {
			return localUebersiedelnTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return boolean
		 */
		public boolean getUebersiedeln() {
			return localUebersiedeln;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Uebersiedeln
		 */
		public void setUebersiedeln(boolean param) {
			// setting primitive attribute tracker to true
			localUebersiedelnTracker = true;

			this.localUebersiedeln = param;
		}

		public boolean isUebersiedelnDateSpecified() {
			return localUebersiedelnDateTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getUebersiedelnDate() {
			return localUebersiedelnDate;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param UebersiedelnDate
		 */
		public void setUebersiedelnDate(java.lang.String param) {
			localUebersiedelnDateTracker = param != null;

			this.localUebersiedelnDate = param;
		}

		public boolean isVorgaengerOrdinationIdSpecified() {
			return localVorgaengerOrdinationIdTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getVorgaengerOrdinationId() {
			return localVorgaengerOrdinationId;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param VorgaengerOrdinationId
		 */
		public void setVorgaengerOrdinationId(java.lang.String param) {
			localVorgaengerOrdinationIdTracker = param != null;

			this.localVorgaengerOrdinationId = param;
		}

		public boolean isTaetigkeitsBereichSpecified() {
			return localTaetigkeitsBereichTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return TaetigkeitsBereich[]
		 */
		public TaetigkeitsBereich[] getTaetigkeitsBereich() {
			return localTaetigkeitsBereich;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param TaetigkeitsBereich
		 */
		public void setTaetigkeitsBereich(TaetigkeitsBereich[] param) {
			localTaetigkeitsBereichTracker = true;

			this.localTaetigkeitsBereich = param;
		}

		/**
		 * Auto generated add method for the array for convenience
		 * 
		 * @param param TaetigkeitsBereich
		 */
		public void addTaetigkeitsBereich(TaetigkeitsBereich param) {
			if (localTaetigkeitsBereich == null) {
				localTaetigkeitsBereich = new TaetigkeitsBereich[] {};
			}

			// update the setting tracker
			localTaetigkeitsBereichTracker = true;

			java.util.List list = org.apache.axis2.databinding.utils.ConverterUtil.toList(localTaetigkeitsBereich);
			list.add(param);
			this.localTaetigkeitsBereich = (TaetigkeitsBereich[]) list.toArray(new TaetigkeitsBereich[list.size()]);
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
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, SOAP_AUTH_URL);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":ordination", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							ORDINATION_LITERAL, xmlWriter);
				}
			}

			if (localBezirkTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, BEZIRK_LITERAL, xmlWriter);

				if (localBezirk == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("bezirk cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localBezirk);
				}

				xmlWriter.writeEndElement();
			}

			if (localBundeslandCodeTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, BUNDESLAND_CODE_LITERAL, xmlWriter);

				if (localBundeslandCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("bundeslandCode cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localBundeslandCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localLandCodeTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, LAND_CODE_LITERAL, xmlWriter);

				if (localLandCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("landCode cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localLandCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localOrdinationIdTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, ORDINATION_ID_LITERAL, xmlWriter);

				if (localOrdinationId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("ordinationId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localOrdinationId);
				}

				xmlWriter.writeEndElement();
			}

			if (localOrdinationNumberTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, ORDINATION_NUMBER_LITERAL, xmlWriter);

				if (localOrdinationNumber == java.lang.Long.MIN_VALUE) {
					throw new org.apache.axis2.databinding.ADBException("ordinationNumber cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localOrdinationNumber));
				}

				xmlWriter.writeEndElement();
			}

			if (localPostleitzahlTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, POSTLEITZAHL_LITERAL, xmlWriter);

				if (localPostleitzahl == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("postleitzahl cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localPostleitzahl);
				}

				xmlWriter.writeEndElement();
			}

			if (localStadtTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, STADT_LITERAL, xmlWriter);

				if (localStadt == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("stadt cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localStadt);
				}

				xmlWriter.writeEndElement();
			}

			if (localStrasseTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, STRASSE_LITERAL, xmlWriter);

				if (localStrasse == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("strasse cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localStrasse);
				}

				xmlWriter.writeEndElement();
			}

			if (localUebersiedelnTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, UEBSERSIEDELN_LITERAL, xmlWriter);

				xmlWriter.writeCharacters(
						org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localUebersiedeln));

				xmlWriter.writeEndElement();
			}

			if (localUebersiedelnDateTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, UEBSERSIEDELN_DATE_LITERAL, xmlWriter);

				if (localUebersiedelnDate == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("uebersiedelnDate cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localUebersiedelnDate);
				}

				xmlWriter.writeEndElement();
			}

			if (localVorgaengerOrdinationIdTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, VORGAENGER_ORDINATION_ID_LITERAL, xmlWriter);

				if (localVorgaengerOrdinationId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("vorgaengerOrdinationId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localVorgaengerOrdinationId);
				}

				xmlWriter.writeEndElement();
			}

			if (localTaetigkeitsBereichTracker) {
				if (localTaetigkeitsBereich != null) {
					for (int i = 0; i < localTaetigkeitsBereich.length; i++) {
						if (localTaetigkeitsBereich[i] != null) {
							localTaetigkeitsBereich[i].serialize(
									new javax.xml.namespace.QName(SOAP_AUTH_URL, TAETIGKEITSBEREICH_LITERAL),
									xmlWriter);
						} else {
							writeStartElement(null, SOAP_AUTH_URL, TAETIGKEITSBEREICH_LITERAL, xmlWriter);

							// write the nil attribute
							writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, "nil", "1", xmlWriter);
							xmlWriter.writeEndElement();
						}
					}
				} else {
					writeStartElement(null, SOAP_AUTH_URL, TAETIGKEITSBEREICH_LITERAL, xmlWriter);

					// write the nil attribute
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, "nil", "1", xmlWriter);
					xmlWriter.writeEndElement();
				}
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(SOAP_AUTH_URL)) {
				return "ns2";
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
			public static Ordination parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				Ordination object = new Ordination();

				java.lang.String nillableValue = null;

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(':') > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

							if (!ORDINATION_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (Ordination) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					reader.next();

					java.util.ArrayList<ADBBean> list12 = new java.util.ArrayList<>();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, BEZIRK_LITERAL).equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + BEZIRK_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setBezirk(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, BUNDESLAND_CODE_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + BUNDESLAND_CODE_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setBundeslandCode(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, LAND_CODE_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + LAND_CODE_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setLandCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, ORDINATION_ID_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + ORDINATION_ID_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setOrdinationId(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, ORDINATION_NUMBER_LITERAL)
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + ORDINATION_NUMBER_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setOrdinationNumber(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToLong(content));

						reader.next();
					} // End of if for expected property start element

					else {
						object.setOrdinationNumber(java.lang.Long.MIN_VALUE);
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, POSTLEITZAHL_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + POSTLEITZAHL_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setPostleitzahl(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, STADT_LITERAL).equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + STADT_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setStadt(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, STRASSE_LITERAL).equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + STRASSE_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setStrasse(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, UEBSERSIEDELN_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + UEBSERSIEDELN_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setUebersiedeln(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToBoolean(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, UEBSERSIEDELN_DATE_LITERAL)
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + UEBSERSIEDELN_DATE_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setUebersiedelnDate(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, VORGAENGER_ORDINATION_ID_LITERAL)
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + VORGAENGER_ORDINATION_ID_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setVorgaengerOrdinationId(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, TAETIGKEITSBEREICH_LITERAL)
									.equals(reader.getName())) {
						// Process the array and step past its final element's end.
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							list12.add(null);
							reader.next();
						} else {
							list12.add(TaetigkeitsBereich.Factory.parse(reader));
						}

						// loop until we find a start element that is not part of this array
						boolean loopDone12 = false;

						while (!loopDone12) {
							// We should be at the end element, but make sure
							while (!reader.isEndElement())
								reader.next();

							// Step out of this element
							reader.next();

							// Step to next element event.
							while (!reader.isStartElement() && !reader.isEndElement())
								reader.next();

							if (reader.isEndElement()) {
								// two continuous end elements means we are exiting the xml structure
								loopDone12 = true;
							} else {
								if (new javax.xml.namespace.QName(SOAP_AUTH_URL, TAETIGKEITSBEREICH_LITERAL)
										.equals(reader.getName())) {
									nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

									if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
										list12.add(null);
										reader.next();
									} else {
										list12.add(TaetigkeitsBereich.Factory.parse(reader));
									}
								} else {
									loopDone12 = true;
								}
							}
						}

						// call the converter utility to convert and set the array
						object.setTaetigkeitsBereich(
								(TaetigkeitsBereich[]) org.apache.axis2.databinding.utils.ConverterUtil
										.convertToArray(TaetigkeitsBereich.class, list12));
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(UNEXPECTED_SUBELEMENT + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class AuthenticateDialogEntResponse implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * authenticateDialogEntResponse Namespace URI =
		 * http://soap.auth.client.chipkarte.at Namespace Prefix = ns2
		 */

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		/**
		 * field for _return
		 */
		protected DialogData localReturn;

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
		 * @return DialogData
		 */
		public DialogData getReturn() {
			return localReturn;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param _return
		 */
		public void setReturn(DialogData param) {
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
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, SOAP_AUTH_URL);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":authenticateDialogEntResponse", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							AUTHENTICATE_DIALOG_ENT_RESPONSE_LITERAL, xmlWriter);
				}
			}

			if (localReturnTracker) {
				if (localReturn == null) {
					throw new org.apache.axis2.databinding.ADBException("return cannot be null!!");
				}

				localReturn.serialize(new javax.xml.namespace.QName(SOAP_AUTH_URL, RETURN_LITERAL), xmlWriter);
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(SOAP_AUTH_URL)) {
				return "ns2";
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
			public static AuthenticateDialogEntResponse parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				AuthenticateDialogEntResponse object = new AuthenticateDialogEntResponse();

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(':') > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

							if (!AUTHENTICATE_DIALOG_ENT_RESPONSE_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (AuthenticateDialogEntResponse) ExtensionMapper.getTypeObject(nsUri, type,
										reader);
							}
						}
					}

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, RETURN_LITERAL).equals(reader.getName())) {
						object.setReturn(DialogData.Factory.parse(reader));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(UNEXPECTED_SUBELEMENT + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class AuthenticateDialogResponseE implements org.apache.axis2.databinding.ADBBean {
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(SOAP_AUTH_URL,
				AUTHENTICATE_DIALOG_RESPONSE_LITERAL, "ns2");

		/**
		 * field for AuthenticateDialogResponse
		 */
		protected AuthenticateDialogResponse localAuthenticateDialogResponse;

		/**
		 * Auto generated getter method
		 * 
		 * @return AuthenticateDialogResponse
		 */
		public AuthenticateDialogResponse getAuthenticateDialogResponse() {
			return localAuthenticateDialogResponse;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param AuthenticateDialogResponse
		 */
		public void setAuthenticateDialogResponse(AuthenticateDialogResponse param) {
			this.localAuthenticateDialogResponse = param;
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
			if (localAuthenticateDialogResponse == null) {
				throw new org.apache.axis2.databinding.ADBException("authenticateDialogResponse cannot be null!");
			}

			localAuthenticateDialogResponse.serialize(MY_QNAME, xmlWriter);
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {

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
			public static AuthenticateDialogResponseE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				AuthenticateDialogResponseE object = new AuthenticateDialogResponseE();

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL,
									AUTHENTICATE_DIALOG_RESPONSE_LITERAL).equals(reader.getName())) {
								object.setAuthenticateDialogResponse(AuthenticateDialogResponse.Factory.parse(reader));
							} // End of if for expected property start element

							else {
								// 3 - A start element we are not expecting indicates an invalid parameter was
								// passed
								throw new org.apache.axis2.databinding.ADBException(
										UNEXPECTED_SUBELEMENT + reader.getName());
							}
						} else {
							reader.next();
						}
					} // end of while loop
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class ExtensionMapper {

		private ExtensionMapper() {

		}

		public static java.lang.Object getTypeObject(java.lang.String namespaceURI, java.lang.String typeName,
				javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
			if (SOAP_AUTH_URL.equals(namespaceURI) && ORDINATION_LITERAL.equals(typeName)) {
				return Ordination.Factory.parse(reader);
			}

			if (SOAP_AUTH_URL.equals(namespaceURI) && DIALOG_DATA_LITERAL.equals(typeName)) {
				return DialogData.Factory.parse(reader);
			}

			if (SOAP_AUTH_URL.equals(namespaceURI) && AUTHENTICATE_DIALOG_ENT_RESPONSE_LITERAL.equals(typeName)) {
				return AuthenticateDialogEntResponse.Factory.parse(reader);
			}

			if (SOAP_AUTH_URL.equals(namespaceURI) && AUTHENTICATION_STATUS_LITERAL.equals(typeName)) {
				return AuthenticationStatus.Factory.parse(reader);
			}

			if (SOAP_AUTH_URL.equals(namespaceURI) && AUTHENTICATE_DIALOG_RESPONSE_LITERAL.equals(typeName)) {
				return AuthenticateDialogResponse.Factory.parse(reader);
			}

			if (SOAP_AUTH_URL.equals(namespaceURI) && SET_DIALOG_ADDRESS_LITERAL.equals(typeName)) {
				return SetDialogAddress.Factory.parse(reader);
			}

			if (SOAP_AUTH_URL.equals(namespaceURI) && SET_DIALOG_ADDRESS_RESPONSE_LITERAL.equals(typeName)) {
				return SetDialogAddressResponse.Factory.parse(reader);
			}

			if (SOAP_AUTH_URL.equals(namespaceURI) && CLOSE_DIALOG_RESPONSE_LITERAL.equals(typeName)) {
				return CloseDialogResponse.Factory.parse(reader);
			}

			if (SOAP_AUTH_URL.equals(namespaceURI) && AUTHENTICATE_DIALOG_LITERAL.equals(typeName)) {
				return AuthenticateDialog.Factory.parse(reader);
			}

			if (SOAP_AUTH_URL.equals(namespaceURI) && CLOSE_DIALOG_LITERAL.equals(typeName)) {
				return CloseDialog.Factory.parse(reader);
			}

			if (SOAP_BASE_EXCEPTION_URL.equals(namespaceURI) && DIALOG_EXCEPTION_CONTENT_LITERAL.equals(typeName)) {
				return DialogExceptionContent.Factory.parse(reader);
			}

			if (SOAP_AUTH_URL.equals(namespaceURI) && TAETIGKEITSBEREICH_LITERAL.equals(typeName)) {
				return TaetigkeitsBereich.Factory.parse(reader);
			}

			if (SOAP_AUTH_URL.equals(namespaceURI) && VERTRAGSPARTNER_V2_LITERAL.equals(typeName)) {
				return VertragspartnerV2.Factory.parse(reader);
			}

			if (SOAP_AUTH_URL.equals(namespaceURI) && PRODUKT_INFO_LITERAL.equals(typeName)) {
				return ProduktInfo.Factory.parse(reader);
			}

			if (SOAP_BASE_EXCEPTION_URL.equals(namespaceURI) && SERVICE_EXCEPTION_CONTENT_LITERAL.equals(typeName)) {
				return ServiceExceptionContent.Factory.parse(reader);
			}

			if (SOAP_AUTH_URL.equals(namespaceURI) && GDAMA_LITERAL.equals(typeName)) {
				return GdaMa.Factory.parse(reader);
			}

			if (SOAP_AUTH_URL.equals(namespaceURI) && AUTHENTICATE_DIALOG_ENT_LITERAL.equals(typeName)) {
				return AuthenticateDialogEnt.Factory.parse(reader);
			}

			if (SOAP_BASE_EXCEPTION_URL.equals(namespaceURI) && BASE_EXCEPTION_CONTENT_LITERAL.equals(typeName)) {
				return BaseExceptionContent.Factory.parse(reader);
			}

			throw new org.apache.axis2.databinding.ADBException("Unsupported type " + namespaceURI + " " + typeName);
		}
	}

	public static class CloseDialog implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name = closeDialog
		 * Namespace URI = http://soap.auth.client.chipkarte.at Namespace Prefix = ns2
		 */

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

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
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, SOAP_AUTH_URL);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":closeDialog", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							CLOSE_DIALOG_LITERAL, xmlWriter);
				}
			}

			if (localDialogIdTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, DIALOG_ID_LITERAL, xmlWriter);

				if (localDialogId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException(ERROR_MESSAGE_DIALOG_ID_NOT_NULL);
				} else {
					xmlWriter.writeCharacters(localDialogId);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(SOAP_AUTH_URL)) {
				return "ns2";
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
			public static CloseDialog parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				CloseDialog object = new CloseDialog();

				java.lang.String nillableValue = null;
				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(':') > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

							if (!CLOSE_DIALOG_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (CloseDialog) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, DIALOG_ID_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + DIALOG_ID_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setDialogId(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(UNEXPECTED_SUBELEMENT + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class AuthenticationStatus implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * authenticationStatus Namespace URI = http://soap.auth.client.chipkarte.at
		 * Namespace Prefix = ns2
		 */

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		/**
		 * field for FailedPINAttempts
		 */
		protected int localFailedPINAttempts;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localFailedPINAttemptsTracker = false;

		/**
		 * field for LastLoginDate
		 */
		protected java.lang.String localLastLoginDate;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localLastLoginDateTracker = false;

		public boolean isFailedPINAttemptsSpecified() {
			return localFailedPINAttemptsTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return int
		 */
		public int getFailedPINAttempts() {
			return localFailedPINAttempts;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param FailedPINAttempts
		 */
		public void setFailedPINAttempts(int param) {
			// setting primitive attribute tracker to true
			localFailedPINAttemptsTracker = param != java.lang.Integer.MIN_VALUE;

			this.localFailedPINAttempts = param;
		}

		public boolean isLastLoginDateSpecified() {
			return localLastLoginDateTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getLastLoginDate() {
			return localLastLoginDate;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param LastLoginDate
		 */
		public void setLastLoginDate(java.lang.String param) {
			localLastLoginDateTracker = param != null;

			this.localLastLoginDate = param;
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
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, SOAP_AUTH_URL);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":authenticationStatus", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							AUTHENTICATION_STATUS_LITERAL, xmlWriter);
				}
			}

			if (localFailedPINAttemptsTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, FAILED_PIN_ATTEMPTS_LITERAL, xmlWriter);

				if (localFailedPINAttempts == java.lang.Integer.MIN_VALUE) {
					throw new org.apache.axis2.databinding.ADBException("failedPINAttempts cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localFailedPINAttempts));
				}

				xmlWriter.writeEndElement();
			}

			if (localLastLoginDateTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, LAST_LOGIN_LITERAL, xmlWriter);

				if (localLastLoginDate == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("lastLoginDate cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localLastLoginDate);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(SOAP_AUTH_URL)) {
				return "ns2";
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
			public static AuthenticationStatus parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				AuthenticationStatus object = new AuthenticationStatus();

				java.lang.String nillableValue = null;
				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(':') > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

							if (!AUTHENTICATION_STATUS_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (AuthenticationStatus) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, FAILED_PIN_ATTEMPTS_LITERAL)
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + FAILED_PIN_ATTEMPTS_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setFailedPINAttempts(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(content));

						reader.next();
					} // End of if for expected property start element

					else {
						object.setFailedPINAttempts(java.lang.Integer.MIN_VALUE);
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, LAST_LOGIN_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + LAST_LOGIN_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setLastLoginDate(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(UNEXPECTED_SUBELEMENT + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class AuthenticateDialogE implements org.apache.axis2.databinding.ADBBean {
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(SOAP_AUTH_URL,
				AUTHENTICATE_DIALOG_LITERAL, "ns2");

		/**
		 * field for AuthenticateDialog
		 */
		protected AuthenticateDialog localAuthenticateDialog;

		/**
		 * Auto generated getter method
		 * 
		 * @return AuthenticateDialog
		 */
		public AuthenticateDialog getAuthenticateDialog() {
			return localAuthenticateDialog;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param AuthenticateDialog
		 */
		public void setAuthenticateDialog(AuthenticateDialog param) {
			this.localAuthenticateDialog = param;
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
			if (localAuthenticateDialog == null) {
				throw new org.apache.axis2.databinding.ADBException("authenticateDialog cannot be null!");
			}

			localAuthenticateDialog.serialize(MY_QNAME, xmlWriter);
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {

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
			public static AuthenticateDialogE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				AuthenticateDialogE object = new AuthenticateDialogE();

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					reader.getName();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(SOAP_AUTH_URL, AUTHENTICATE_DIALOG_LITERAL)
											.equals(reader.getName())) {
								object.setAuthenticateDialog(AuthenticateDialog.Factory.parse(reader));
							} // End of if for expected property start element

							else {
								// 3 - A start element we are not expecting indicates an invalid parameter was
								// passed
								throw new org.apache.axis2.databinding.ADBException(
										UNEXPECTED_SUBELEMENT + reader.getName());
							}
						} else {
							reader.next();
						}
					} // end of while loop
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class ProduktInfo implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name = produktInfo
		 * Namespace URI = http://soap.auth.client.chipkarte.at Namespace Prefix = ns2
		 */

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		/**
		 * field for HerstellerId
		 */
		protected java.lang.String localHerstellerId;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localHerstellerIdTracker = false;

		/**
		 * field for ProduktId
		 */
		protected int localProduktId;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localProduktIdTracker = false;

		/**
		 * field for ProduktVersion
		 */
		protected java.lang.String localProduktVersion;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localProduktVersionTracker = false;

		public boolean isHerstellerIdSpecified() {
			return localHerstellerIdTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getHerstellerId() {
			return localHerstellerId;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param HerstellerId
		 */
		public void setHerstellerId(java.lang.String param) {
			localHerstellerIdTracker = param != null;

			this.localHerstellerId = param;
		}

		public boolean isProduktIdSpecified() {
			return localProduktIdTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return int
		 */
		public int getProduktId() {
			return localProduktId;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param ProduktId
		 */
		public void setProduktId(int param) {
			// setting primitive attribute tracker to true
			localProduktIdTracker = param != java.lang.Integer.MIN_VALUE;

			this.localProduktId = param;
		}

		public boolean isProduktVersionSpecified() {
			return localProduktVersionTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getProduktVersion() {
			return localProduktVersion;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param ProduktVersion
		 */
		public void setProduktVersion(java.lang.String param) {
			localProduktVersionTracker = param != null;

			this.localProduktVersion = param;
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
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, SOAP_AUTH_URL);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":produktInfo", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							PRODUKT_INFO_LITERAL, xmlWriter);
				}
			}

			if (localHerstellerIdTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, HERSTELLER_ID_LITERAL, xmlWriter);

				if (localHerstellerId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("herstellerId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localHerstellerId);
				}

				xmlWriter.writeEndElement();
			}

			if (localProduktIdTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, PRODUKT_ID_LITERAL, xmlWriter);

				if (localProduktId == java.lang.Integer.MIN_VALUE) {
					throw new org.apache.axis2.databinding.ADBException("produktId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localProduktId));
				}

				xmlWriter.writeEndElement();
			}

			if (localProduktVersionTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, PRODUKT_VERSION_LITERAL, xmlWriter);

				if (localProduktVersion == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("produktVersion cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localProduktVersion);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(SOAP_AUTH_URL)) {
				return "ns2";
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
			public static ProduktInfo parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				ProduktInfo object = new ProduktInfo();

				java.lang.String nillableValue = null;
				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(':') > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

							if (!PRODUKT_INFO_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (ProduktInfo) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, HERSTELLER_ID_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + HERSTELLER_ID_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setHerstellerId(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, PRODUKT_ID_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + PRODUKT_ID_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setProduktId(org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(content));

						reader.next();
					} // End of if for expected property start element

					else {
						object.setProduktId(java.lang.Integer.MIN_VALUE);
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, PRODUKT_VERSION_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + PRODUKT_VERSION_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setProduktVersion(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(UNEXPECTED_SUBELEMENT + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class DialogExceptionContent extends BaseExceptionContent
			implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * dialogExceptionContent Namespace URI =
		 * http://exceptions.soap.base.client.chipkarte.at Namespace Prefix = ns1
		 */

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

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
			writeStartElementAuthService(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			java.lang.String namespacePrefix = registerPrefixAuthService(xmlWriter, SOAP_BASE_EXCEPTION_URL);

			if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
				writeAttributeAuthService(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
						namespacePrefix + ":dialogExceptionContent", xmlWriter);
			} else {
				writeAttributeAuthService(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
						DIALOG_EXCEPTION_CONTENT_LITERAL, xmlWriter);
			}

			if (localCodeTracker) {
				namespace = SOAP_BASE_EXCEPTION_URL;
				writeStartElementAuthService(null, namespace, "code", xmlWriter);

				if (localCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException(ERROR_MESSAGE_CODE_NOT_NULL);
				} else {
					xmlWriter.writeCharacters(localCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localErrorCodeTracker) {
				namespace = SOAP_BASE_EXCEPTION_URL;
				writeStartElementAuthService(null, namespace, ERROR_CODE_LITERAL, xmlWriter);

				if (localErrorCode == java.lang.Integer.MIN_VALUE) {
					throw new org.apache.axis2.databinding.ADBException(ERROR_MESSAGE_CODE_NOT_NULL);
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localErrorCode));
				}

				xmlWriter.writeEndElement();
			}

			if (localMessageTracker) {
				namespace = SOAP_BASE_EXCEPTION_URL;
				writeStartElementAuthService(null, namespace, MESSAGE_LITERAL, xmlWriter);

				if (localMessage == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException(ERROR_MESSAGE_MESSAGE_NOT_NULL);
				} else {
					xmlWriter.writeCharacters(localMessage);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(SOAP_BASE_EXCEPTION_URL)) {
				return "ns1";
			}

			return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
		}

		/**
		 * Utility method to write an element start tag.
		 */
		private void writeStartElementAuthService(java.lang.String prefix, java.lang.String namespace,
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
		private void writeAttributeAuthService(java.lang.String prefix, java.lang.String namespace,
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
		private java.lang.String registerPrefixAuthService(javax.xml.stream.XMLStreamWriter xmlWriter,
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
				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(':') > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

							if (!DIALOG_EXCEPTION_CONTENT_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (DialogExceptionContent) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL, "code")
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "code" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL, ERROR_CODE_LITERAL)
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + ERROR_CODE_LITERAL + "  cannot be null");
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
							&& new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL, MESSAGE_LITERAL)
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + MESSAGE_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setMessage(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(UNEXPECTED_SUBELEMENT + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class ServiceException extends Exception implements org.apache.axis2.databinding.ADBBean {
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL,
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

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					reader.getName();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL, SERVICE_EXCEPTION_LITERAL)
											.equals(reader.getName())) {
								object.setServiceException(ServiceExceptionContent.Factory.parse(reader));
							} // End of if for expected property start element

							else {
								// 3 - A start element we are not expecting indicates an invalid parameter was
								// passed
								throw new org.apache.axis2.databinding.ADBException(
										UNEXPECTED_SUBELEMENT + reader.getName());
							}
						} else {
							reader.next();
						}
					} // end of while loop
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class SetDialogAddressResponseE implements org.apache.axis2.databinding.ADBBean {
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(SOAP_AUTH_URL,
				SET_DIALOG_ADDRESS_RESPONSE_LITERAL, "ns2");

		/**
		 * field for SetDialogAddressResponse
		 */
		protected SetDialogAddressResponse localSetDialogAddressResponse;

		/**
		 * Auto generated getter method
		 * 
		 * @return SetDialogAddressResponse
		 */
		public SetDialogAddressResponse getSetDialogAddressResponse() {
			return localSetDialogAddressResponse;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param SetDialogAddressResponse
		 */
		public void setSetDialogAddressResponse(SetDialogAddressResponse param) {
			this.localSetDialogAddressResponse = param;
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
			if (localSetDialogAddressResponse == null) {
				throw new org.apache.axis2.databinding.ADBException("setDialogAddressResponse cannot be null!");
			}

			localSetDialogAddressResponse.serialize(MY_QNAME, xmlWriter);
		}

		/**
		 * Factory class that keeps the parse method
		 */
		public static class Factory {

			private Factory() {

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
			public static SetDialogAddressResponseE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				SetDialogAddressResponseE object = new SetDialogAddressResponseE();

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					reader.getName();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(SOAP_AUTH_URL, SET_DIALOG_ADDRESS_RESPONSE_LITERAL)
											.equals(reader.getName())) {
								object.setSetDialogAddressResponse(SetDialogAddressResponse.Factory.parse(reader));
							} // End of if for expected property start element

							else {
								// 3 - A start element we are not expecting indicates an invalid parameter was
								// passed
								throw new org.apache.axis2.databinding.ADBException(
										UNEXPECTED_SUBELEMENT + reader.getName());
							}
						} else {
							reader.next();
						}
					} // end of while loop
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GdaMa implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name = gdaMa
		 * Namespace URI = http://soap.auth.client.chipkarte.at Namespace Prefix = ns2
		 */

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		/**
		 * field for Nachname
		 */
		protected java.lang.String localNachname;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localNachnameTracker = false;

		/**
		 * field for TitelHinten
		 */
		protected java.lang.String localTitelHinten;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localTitelHintenTracker = false;

		/**
		 * field for TitelVorne
		 */
		protected java.lang.String localTitelVorne;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localTitelVorneTracker = false;

		/**
		 * field for Vorname
		 */
		protected java.lang.String localVorname;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localVornameTracker = false;

		/**
		 * field for Zusatzinfo
		 */
		protected java.lang.String localZusatzinfo;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localZusatzinfoTracker = false;

		public boolean isNachnameSpecified() {
			return localNachnameTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getNachname() {
			return localNachname;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Nachname
		 */
		public void setNachname(java.lang.String param) {
			localNachnameTracker = param != null;

			this.localNachname = param;
		}

		public boolean isTitelHintenSpecified() {
			return localTitelHintenTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getTitelHinten() {
			return localTitelHinten;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param TitelHinten
		 */
		public void setTitelHinten(java.lang.String param) {
			localTitelHintenTracker = param != null;

			this.localTitelHinten = param;
		}

		public boolean isTitelVorneSpecified() {
			return localTitelVorneTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getTitelVorne() {
			return localTitelVorne;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param TitelVorne
		 */
		public void setTitelVorne(java.lang.String param) {
			localTitelVorneTracker = param != null;

			this.localTitelVorne = param;
		}

		public boolean isVornameSpecified() {
			return localVornameTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getVorname() {
			return localVorname;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Vorname
		 */
		public void setVorname(java.lang.String param) {
			localVornameTracker = param != null;

			this.localVorname = param;
		}

		public boolean isZusatzinfoSpecified() {
			return localZusatzinfoTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getZusatzinfo() {
			return localZusatzinfo;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Zusatzinfo
		 */
		public void setZusatzinfo(java.lang.String param) {
			localZusatzinfoTracker = param != null;

			this.localZusatzinfo = param;
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
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, SOAP_AUTH_URL);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":gdaMa", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							GDAMA_LITERAL, xmlWriter);
				}
			}

			if (localNachnameTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, NACHNAME_LITERAL, xmlWriter);

				if (localNachname == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("nachname cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localNachname);
				}

				xmlWriter.writeEndElement();
			}

			if (localTitelHintenTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, TITEL_HINTEN_LITERAL, xmlWriter);

				if (localTitelHinten == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("titelHinten cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localTitelHinten);
				}

				xmlWriter.writeEndElement();
			}

			if (localTitelVorneTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, TITEL_VORNE_LITERAL, xmlWriter);

				if (localTitelVorne == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("titelVorne cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localTitelVorne);
				}

				xmlWriter.writeEndElement();
			}

			if (localVornameTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, VORNAME_LITERAL, xmlWriter);

				if (localVorname == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("vorname cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localVorname);
				}

				xmlWriter.writeEndElement();
			}

			if (localZusatzinfoTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, ZUSATZINFO_LITERAL, xmlWriter);

				if (localZusatzinfo == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("zusatzinfo cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localZusatzinfo);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(SOAP_AUTH_URL)) {
				return "ns2";
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
			public static GdaMa parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				GdaMa object = new GdaMa();

				java.lang.String nillableValue = null;
				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(':') > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

							if (!GDAMA_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (GdaMa) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, NACHNAME_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + NACHNAME_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setNachname(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, TITEL_HINTEN_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + TITEL_HINTEN_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setTitelHinten(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, TITEL_VORNE_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + TITEL_VORNE_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setTitelVorne(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, VORNAME_LITERAL).equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + VORNAME_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setVorname(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, ZUSATZINFO_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + ZUSATZINFO_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setZusatzinfo(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(UNEXPECTED_SUBELEMENT + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class BaseExceptionContent implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * baseExceptionContent Namespace URI =
		 * http://exceptions.soap.base.client.chipkarte.at Namespace Prefix = ns1
		 */

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

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
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, SOAP_BASE_EXCEPTION_URL);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":baseExceptionContent", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							BASE_EXCEPTION_CONTENT_LITERAL, xmlWriter);
				}
			}

			if (localCodeTracker) {
				namespace = SOAP_BASE_EXCEPTION_URL;
				writeStartElement(null, namespace, "code", xmlWriter);

				if (localCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException(ERROR_MESSAGE_CODE_NOT_NULL);
				} else {
					xmlWriter.writeCharacters(localCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localErrorCodeTracker) {
				namespace = SOAP_BASE_EXCEPTION_URL;
				writeStartElement(null, namespace, ERROR_CODE_LITERAL, xmlWriter);

				if (localErrorCode == java.lang.Integer.MIN_VALUE) {
					throw new org.apache.axis2.databinding.ADBException(ERROR_MESSAGE_CODE_NOT_NULL);
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localErrorCode));
				}

				xmlWriter.writeEndElement();
			}

			if (localMessageTracker) {
				namespace = SOAP_BASE_EXCEPTION_URL;
				writeStartElement(null, namespace, MESSAGE_LITERAL, xmlWriter);

				if (localMessage == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException(ERROR_MESSAGE_MESSAGE_NOT_NULL);
				} else {
					xmlWriter.writeCharacters(localMessage);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(SOAP_BASE_EXCEPTION_URL)) {
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
			public static BaseExceptionContent parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				BaseExceptionContent object = new BaseExceptionContent();

				java.lang.String nillableValue = null;
				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(':') > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

							if (!BASE_EXCEPTION_CONTENT_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (BaseExceptionContent) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL, "code")
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "code" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL, ERROR_CODE_LITERAL)
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + ERROR_CODE_LITERAL + "  cannot be null");
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
							&& new javax.xml.namespace.QName(SOAP_BASE_EXCEPTION_URL, MESSAGE_LITERAL)
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + MESSAGE_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setMessage(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(UNEXPECTED_SUBELEMENT + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class AuthenticateDialog implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * authenticateDialog Namespace URI = http://soap.auth.client.chipkarte.at
		 * Namespace Prefix = ns2
		 */

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

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

		/**
		 * field for ProduktInfo
		 */
		protected ProduktInfo localProduktInfo;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localProduktInfoTracker = false;

		/**
		 * field for ExtUID
		 */
		protected java.lang.String localExtUID;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localExtUIDTracker = false;

		/**
		 * field for PushMessageEnabled
		 */
		protected boolean localPushMessageEnabled;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localPushMessageEnabledTracker = false;

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

		public boolean isProduktInfoSpecified() {
			return localProduktInfoTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return ProduktInfo
		 */
		public ProduktInfo getProduktInfo() {
			return localProduktInfo;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param ProduktInfo
		 */
		public void setProduktInfo(ProduktInfo param) {
			localProduktInfoTracker = param != null;

			this.localProduktInfo = param;
		}

		public boolean isExtUIDSpecified() {
			return localExtUIDTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getExtUID() {
			return localExtUID;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param ExtUID
		 */
		public void setExtUID(java.lang.String param) {
			localExtUIDTracker = param != null;

			this.localExtUID = param;
		}

		public boolean isPushMessageEnabledSpecified() {
			return localPushMessageEnabledTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return boolean
		 */
		public boolean getPushMessageEnabled() {
			return localPushMessageEnabled;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param PushMessageEnabled
		 */
		public void setPushMessageEnabled(boolean param) {
			// setting primitive attribute tracker to true
			localPushMessageEnabledTracker = true;

			this.localPushMessageEnabled = param;
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
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, SOAP_AUTH_URL);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":authenticateDialog", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							AUTHENTICATE_DIALOG_LITERAL, xmlWriter);
				}
			}

			if (localCardTokenTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, CARD_TOKEN_LITERAL, xmlWriter);

				if (localCardToken == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("cardToken cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localCardToken);
				}

				xmlWriter.writeEndElement();
			}

			if (localProduktInfoTracker) {
				if (localProduktInfo == null) {
					throw new org.apache.axis2.databinding.ADBException("produktInfo cannot be null!!");
				}

				localProduktInfo.serialize(new javax.xml.namespace.QName(SOAP_AUTH_URL, PRODUKT_INFO_LITERAL),
						xmlWriter);
			}

			if (localExtUIDTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, EXTUID_LITERAL, xmlWriter);

				if (localExtUID == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("extUID cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localExtUID);
				}

				xmlWriter.writeEndElement();
			}

			if (localPushMessageEnabledTracker) {
				namespace = SOAP_AUTH_URL;
				writeStartElement(null, namespace, PUSH_MESSAGE_ENABLED_LITERAL, xmlWriter);

				xmlWriter.writeCharacters(
						org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localPushMessageEnabled));

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(SOAP_AUTH_URL)) {
				return "ns2";
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
			public static AuthenticateDialog parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				AuthenticateDialog object = new AuthenticateDialog();

				java.lang.String nillableValue = null;
				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(':') > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

							if (!AUTHENTICATE_DIALOG_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (AuthenticateDialog) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, CARD_TOKEN_LITERAL)
							.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + CARD_TOKEN_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setCardToken(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(SOAP_AUTH_URL, PRODUKT_INFO_LITERAL)
							.equals(reader.getName())) {
						object.setProduktInfo(ProduktInfo.Factory.parse(reader));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, EXTUID_LITERAL).equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + EXTUID_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setExtUID(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(SOAP_AUTH_URL, PUSH_MESSAGE_ENABLED_LITERAL)
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + PUSH_MESSAGE_ENABLED_LITERAL + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setPushMessageEnabled(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToBoolean(content));

						reader.next();
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(UNEXPECTED_SUBELEMENT + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class CloseDialogResponse implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * closeDialogResponse Namespace URI = http://soap.auth.client.chipkarte.at
		 * Namespace Prefix = ns2
		 */

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

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
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, SOAP_AUTH_URL);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":closeDialogResponse", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							CLOSE_DIALOG_RESPONSE_LITERAL, xmlWriter);
				}
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(SOAP_AUTH_URL)) {
				return "ns2";
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
			public static CloseDialogResponse parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				CloseDialogResponse object = new CloseDialogResponse();

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(':') > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(':'));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(':') + 1);

							if (!CLOSE_DIALOG_RESPONSE_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (CloseDialogResponse) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(UNEXPECTED_SUBELEMENT + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new javax.xml.stream.XMLStreamException(e);
				}

				return object;
			}
		} // end of factory class
	}
}
