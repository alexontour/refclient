/**
 * BaseServiceStub.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap;

import java.io.Serializable;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.common.utilities.SoapUtil;

/*
 *  BaseServiceStub java implementation
 */
public class BaseServiceStub extends org.apache.axis2.client.Stub implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 2770445324780722626L;
	private static final Logger LOGGER = LoggerFactory.getLogger(BaseServiceStub.class.getName());
	private static final String GET_BERECHTIGUNGEN_LITERAL = "getBerechtigungen";
	private static final String GET_MESSAGES_LITERAL = "getMessages";
	private static final String CHECK_STATUS_LITERAL = "checkStatus";
	private static final String GET_CONTRACTS_LITERAL = "getVertraege";
	private static final String GET_SUBJECT_SURGERY_ID_LITERAL = "getFachgebieteByOrdId";
	private static final String COMMON_TYPES_LITERAL = "commonTypes";
	private static final String GET_MIN_MSG_POLLING_INTERVAL_LITERAL = "getMinMsgPollingIntervall";
	private static final String POLL_MESSAGES_LITERAL = "pollMessages";
	private static final String MOVE_SURGERY_LITERAL = "uebersiedelnOrdination";
	private static final String SERVICE_EXCEPTION_LITERAL = "ServiceException";
	private static final String DIALOG_EXCEPTION_LITERAL = "DialogException";
	private static final String NAMESPACE_BASE = "http://soap.base.client.chipkarte.at";
	private static final String NAMESPACE_EXCEPTIONS_BASE = "http://exceptions.soap.base.client.chipkarte.at";
	private static int counter = 0;
	protected org.apache.axis2.description.AxisOperation[] operations;

	// hashmaps to keep the fault mapping
	private java.util.HashMap faultExceptionNameMap = new java.util.HashMap();
	private java.util.HashMap faultExceptionClassNameMap = new java.util.HashMap();
	private java.util.HashMap faultMessageMap = new java.util.HashMap();
	private javax.xml.namespace.QName[] opNameArray = null;

	/**
	 * Constructor that takes in a configContext
	 */
	public BaseServiceStub(org.apache.axis2.context.ConfigurationContext configurationContext,
			java.lang.String targetEndpoint) throws org.apache.axis2.AxisFault {
		this(configurationContext, targetEndpoint, false);
	}

	/**
	 * Constructor that takes in a configContext and useseperate listner
	 */
	public BaseServiceStub(org.apache.axis2.context.ConfigurationContext configurationContext,
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
	public BaseServiceStub(java.lang.String targetEndpoint) throws org.apache.axis2.AxisFault {
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

	private void populateAxisService() throws org.apache.axis2.AxisFault {
		// creating the Service with a unique name
		_service = new org.apache.axis2.description.AxisService("BaseService" + getUniqueSuffix());
		addAnonymousOperations();

		// creating the operations
		org.apache.axis2.description.AxisOperation __operation;

		operations = new org.apache.axis2.description.AxisOperation[9];

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName(NAMESPACE_BASE, GET_BERECHTIGUNGEN_LITERAL));
		_service.addOperation(__operation);

		operations[0] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName(NAMESPACE_BASE, GET_MESSAGES_LITERAL));
		_service.addOperation(__operation);

		operations[1] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(
				new javax.xml.namespace.QName(NAMESPACE_BASE, GET_MIN_MSG_POLLING_INTERVAL_LITERAL));
		_service.addOperation(__operation);

		operations[2] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName(NAMESPACE_BASE, GET_CONTRACTS_LITERAL));
		_service.addOperation(__operation);

		operations[3] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName(NAMESPACE_BASE, COMMON_TYPES_LITERAL));
		_service.addOperation(__operation);

		operations[4] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName(NAMESPACE_BASE, CHECK_STATUS_LITERAL));
		_service.addOperation(__operation);

		operations[5] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(
				new javax.xml.namespace.QName(NAMESPACE_BASE, GET_SUBJECT_SURGERY_ID_LITERAL));
		_service.addOperation(__operation);

		operations[6] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(new javax.xml.namespace.QName(NAMESPACE_BASE, POLL_MESSAGES_LITERAL));
		_service.addOperation(__operation);

		operations[7] = __operation;

		__operation = new org.apache.axis2.description.OutInAxisOperation();

		__operation.setName(
				new javax.xml.namespace.QName(NAMESPACE_BASE, MOVE_SURGERY_LITERAL));
		_service.addOperation(__operation);

		operations[8] = __operation;
	}

	// populates the faults
	private void populateFaults() {
		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL), GET_BERECHTIGUNGEN_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL), GET_BERECHTIGUNGEN_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(
								NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL),
						GET_BERECHTIGUNGEN_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$ServiceException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL), GET_BERECHTIGUNGEN_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL), GET_BERECHTIGUNGEN_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(
								NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL),
						GET_BERECHTIGUNGEN_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$DialogException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL), GET_MESSAGES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL), GET_MESSAGES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL), GET_MESSAGES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$ServiceException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL), GET_MESSAGES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL), GET_MESSAGES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL), GET_MESSAGES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$DialogException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
								SERVICE_EXCEPTION_LITERAL),
						GET_MIN_MSG_POLLING_INTERVAL_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
								SERVICE_EXCEPTION_LITERAL),
						GET_MIN_MSG_POLLING_INTERVAL_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(
								NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL),
						GET_MIN_MSG_POLLING_INTERVAL_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$ServiceException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
								DIALOG_EXCEPTION_LITERAL),
						GET_MIN_MSG_POLLING_INTERVAL_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
								DIALOG_EXCEPTION_LITERAL),
						GET_MIN_MSG_POLLING_INTERVAL_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(
								NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL),
						GET_MIN_MSG_POLLING_INTERVAL_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$DialogException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL), GET_CONTRACTS_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL), GET_CONTRACTS_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL), GET_CONTRACTS_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$ServiceException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL), GET_CONTRACTS_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL), GET_CONTRACTS_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL), GET_CONTRACTS_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$DialogException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, "AccessException"), COMMON_TYPES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.AccessException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, "AccessException"), COMMON_TYPES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.AccessException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, "AccessException"), COMMON_TYPES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$AccessException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL), COMMON_TYPES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL), COMMON_TYPES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL), COMMON_TYPES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$ServiceException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(
								NAMESPACE_EXCEPTIONS_BASE, "PatientServiceException"),
						COMMON_TYPES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.PatientServiceException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(
								NAMESPACE_EXCEPTIONS_BASE, "PatientServiceException"),
						COMMON_TYPES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.PatientServiceException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(
								NAMESPACE_EXCEPTIONS_BASE, "PatientServiceException"),
						COMMON_TYPES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$PatientServiceException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL), COMMON_TYPES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL), COMMON_TYPES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL), COMMON_TYPES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$DialogException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, "CardException"), COMMON_TYPES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.CardException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, "CardException"), COMMON_TYPES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.CardException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, "CardException"), COMMON_TYPES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$CardException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL), CHECK_STATUS_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL), CHECK_STATUS_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL), CHECK_STATUS_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$ServiceException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL), CHECK_STATUS_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL), CHECK_STATUS_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL), CHECK_STATUS_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$DialogException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
								SERVICE_EXCEPTION_LITERAL),
						GET_SUBJECT_SURGERY_ID_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
								SERVICE_EXCEPTION_LITERAL),
						GET_SUBJECT_SURGERY_ID_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(
								NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL),
						GET_SUBJECT_SURGERY_ID_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$ServiceException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL), GET_SUBJECT_SURGERY_ID_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL), GET_SUBJECT_SURGERY_ID_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(
								NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL),
						GET_SUBJECT_SURGERY_ID_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$DialogException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL), POLL_MESSAGES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL), POLL_MESSAGES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL), POLL_MESSAGES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$ServiceException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL), POLL_MESSAGES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL), POLL_MESSAGES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL), POLL_MESSAGES_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$DialogException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
								SERVICE_EXCEPTION_LITERAL),
						MOVE_SURGERY_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
								SERVICE_EXCEPTION_LITERAL),
						MOVE_SURGERY_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(
								NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL),
						MOVE_SURGERY_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$ServiceException");

		faultExceptionNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
								DIALOG_EXCEPTION_LITERAL),
						MOVE_SURGERY_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException");
		faultExceptionClassNameMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
								DIALOG_EXCEPTION_LITERAL),
						MOVE_SURGERY_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException");
		faultMessageMap.put(
				new org.apache.axis2.client.FaultMapKey(
						new javax.xml.namespace.QName(
								NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL),
						MOVE_SURGERY_LITERAL),
				"arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub$DialogException");
	}

	/**
	 * Auto generated method signature
	 *
	 * @see arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseService#getBerechtigungen
	 * @param getBerechtigungen0
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException :
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException  :
	 */
	public arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetBerechtigungenResponseE getBerechtigungen(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetBerechtigungenE getBerechtigungen0)
			throws java.rmi.RemoteException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException {
		org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

		try {
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(operations[0].getName());
			_operationClient.getOptions()
					.setAction("http://soap.base.client.chipkarte.at/IBaseService/getBerechtigungenRequest");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;

			env = toEnvelope(getFactory(_operationClient.getOptions().getSoapVersionURI()), getBerechtigungen0,
					optimizeContent(
							new javax.xml.namespace.QName(NAMESPACE_BASE, GET_BERECHTIGUNGEN_LITERAL)),
					new javax.xml.namespace.QName(NAMESPACE_BASE, GET_BERECHTIGUNGEN_LITERAL));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Request getBereichtigungen: {}", env);
				LOGGER.info("Response getBereichtigungen: {}", _returnEnv);
			}

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetBerechtigungenResponseE.class);

			return (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetBerechtigungenResponseE) object;
		} catch (org.apache.axis2.AxisFault f) {
			org.apache.axiom.om.OMElement faultElt = f.getDetail();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Error getBerechtigungen: {}", faultElt);
			}

			if (faultElt != null) {
				if (faultExceptionNameMap.containsKey(
						new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_BERECHTIGUNGEN_LITERAL))) {
					// make the fault by reflection
					try {
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_BERECHTIGUNGEN_LITERAL));
						java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(java.lang.String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_BERECHTIGUNGEN_LITERAL));
						java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt, messageClass);
						java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage", messageClass);
						m.invoke(ex, messageObject);

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) ex;
						}

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) ex;
						}

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					} catch (Exception e) {
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
				_messageContext.getTransportOut().getSender().cleanup(_messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature for Asynchronous Invocations
	 *
	 * @see arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseService#startgetBerechtigungen
	 * @param getBerechtigungen0
	 */
	public void startgetBerechtigungen(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetBerechtigungenE getBerechtigungen0,
			final arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceCallbackHandler callback)
			throws java.rmi.RemoteException {
		org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(operations[0].getName());
		_operationClient.getOptions()
				.setAction("http://soap.base.client.chipkarte.at/IBaseService/getBerechtigungenRequest");
		_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

		addPropertyToOperationClient(_operationClient,
				org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

		// create SOAP envelope with that payload
		org.apache.axiom.soap.SOAPEnvelope env = null;
		final org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

		// Style is Doc.
		env = toEnvelope(getFactory(_operationClient.getOptions().getSoapVersionURI()), getBerechtigungen0,
				optimizeContent(
						new javax.xml.namespace.QName(NAMESPACE_BASE, GET_BERECHTIGUNGEN_LITERAL)),
				new javax.xml.namespace.QName(NAMESPACE_BASE, GET_BERECHTIGUNGEN_LITERAL));

		// adding SOAP soap_headers
		_serviceClient.addHeadersToEnvelope(env);
		// create message context with that soap envelope
		_messageContext.setEnvelope(env);

		// add the message context to the operation client
		_operationClient.addMessageContext(_messageContext);

		_operationClient.setCallback(new org.apache.axis2.client.async.AxisCallback() {
			public void onMessage(org.apache.axis2.context.MessageContext resultContext) {
				try {
					org.apache.axiom.soap.SOAPEnvelope resultEnv = resultContext.getEnvelope();

					java.lang.Object object = fromOM(resultEnv.getBody().getFirstElement(),
							arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetBerechtigungenResponseE.class);
					callback.receiveResultgetBerechtigungen(
							(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetBerechtigungenResponseE) object);
				} catch (org.apache.axis2.AxisFault e) {
					callback.receiveErrorgetBerechtigungen(e);
				}
			}

			public void onError(java.lang.Exception error) {
				if (error instanceof org.apache.axis2.AxisFault) {
					org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
					org.apache.axiom.om.OMElement faultElt = f.getDetail();

					if (faultElt != null) {
						if (faultExceptionNameMap.containsKey(
								new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_BERECHTIGUNGEN_LITERAL))) {
							// make the fault by reflection
							try {
								java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
										.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
												GET_BERECHTIGUNGEN_LITERAL));
								java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
								java.lang.reflect.Constructor constructor = exceptionClass
										.getConstructor(java.lang.String.class);
								java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

								// message class
								java.lang.String messageClassName = (java.lang.String) faultMessageMap
										.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
												GET_BERECHTIGUNGEN_LITERAL));
								java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
								java.lang.Object messageObject = fromOM(faultElt, messageClass);
								java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage", messageClass);
								m.invoke(ex, messageObject);

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) {
									callback.receiveErrorgetBerechtigungen(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) {
									callback.receiveErrorgetBerechtigungen(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) ex);

									return;
								}

								callback.receiveErrorgetBerechtigungen(
										new java.rmi.RemoteException(ex.getMessage(), ex));
							} catch (java.lang.ClassCastException | java.lang.ClassNotFoundException
									| java.lang.NoSuchMethodException | java.lang.reflect.InvocationTargetException
									| java.lang.IllegalAccessException | java.lang.InstantiationException
									| org.apache.axis2.AxisFault e) {
								// we cannot intantiate the class - throw the original Axis fault
								callback.receiveErrorgetBerechtigungen(f);
							}
						} else {
							callback.receiveErrorgetBerechtigungen(f);
						}
					} else {
						callback.receiveErrorgetBerechtigungen(f);
					}
				} else {
					callback.receiveErrorgetBerechtigungen(error);
				}
			}

			public void onFault(org.apache.axis2.context.MessageContext faultContext) {
				org.apache.axis2.AxisFault fault = org.apache.axis2.util.Utils
						.getInboundFaultFromMessageContext(faultContext);
				onError(fault);
			}

			public void onComplete() {
				try {
					_messageContext.getTransportOut().getSender().cleanup(_messageContext);
				} catch (org.apache.axis2.AxisFault axisFault) {
					callback.receiveErrorgetBerechtigungen(axisFault);
				}
			}
		});

		org.apache.axis2.util.CallbackReceiver _callbackReceiver = null;

		if ((operations[0].getMessageReceiver() == null) && _operationClient.getOptions().isUseSeparateListener()) {
			_callbackReceiver = new org.apache.axis2.util.CallbackReceiver();
			operations[0].setMessageReceiver(_callbackReceiver);
		}

		// execute the operation client
		_operationClient.execute(false);
	}

	/**
	 * Auto generated method signature
	 *
	 * @see arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseService#getMessages
	 * @param getMessages2
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException :
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException  :
	 */
	public arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMessagesResponseE getMessages(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMessagesE getMessages2)
			throws java.rmi.RemoteException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException {
		org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

		try {
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(operations[1].getName());
			_operationClient.getOptions()
					.setAction("http://soap.base.client.chipkarte.at/IBaseService/getMessagesRequest");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;

			env = toEnvelope(getFactory(_operationClient.getOptions().getSoapVersionURI()), getMessages2,
					optimizeContent(
							new javax.xml.namespace.QName(NAMESPACE_BASE, GET_MESSAGES_LITERAL)),
					new javax.xml.namespace.QName(NAMESPACE_BASE, GET_MESSAGES_LITERAL));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Request getMessages: {}", env);
				LOGGER.info("Response getMessages: {}", _returnEnv);
			}

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMessagesResponseE.class);

			return (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMessagesResponseE) object;
		} catch (org.apache.axis2.AxisFault f) {
			org.apache.axiom.om.OMElement faultElt = f.getDetail();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Error getMessages: {}", faultElt);
			}

			if (faultElt != null) {
				if (faultExceptionNameMap
						.containsKey(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_MESSAGES_LITERAL))) {
					// make the fault by reflection
					try {
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_MESSAGES_LITERAL));
						java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(java.lang.String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_MESSAGES_LITERAL));
						java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt, messageClass);
						java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage", messageClass);
						m.invoke(ex, messageObject);

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) ex;
						}

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) ex;
						}

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					} catch (Exception e) {
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
				_messageContext.getTransportOut().getSender().cleanup(_messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature for Asynchronous Invocations
	 *
	 * @see arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseService#startgetMessages
	 * @param getMessages2
	 */
	public void startgetMessages(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMessagesE getMessages2,
			final arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceCallbackHandler callback)
			throws java.rmi.RemoteException {
		org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(operations[1].getName());
		_operationClient.getOptions().setAction("http://soap.base.client.chipkarte.at/IBaseService/getMessagesRequest");
		_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

		addPropertyToOperationClient(_operationClient,
				org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

		// create SOAP envelope with that payload
		org.apache.axiom.soap.SOAPEnvelope env = null;
		final org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

		// Style is Doc.
		env = toEnvelope(getFactory(_operationClient.getOptions().getSoapVersionURI()), getMessages2,
				optimizeContent(new javax.xml.namespace.QName(NAMESPACE_BASE, GET_MESSAGES_LITERAL)),
				new javax.xml.namespace.QName(NAMESPACE_BASE, GET_MESSAGES_LITERAL));

		// adding SOAP soap_headers
		_serviceClient.addHeadersToEnvelope(env);
		// create message context with that soap envelope
		_messageContext.setEnvelope(env);

		// add the message context to the operation client
		_operationClient.addMessageContext(_messageContext);

		_operationClient.setCallback(new org.apache.axis2.client.async.AxisCallback() {
			public void onMessage(org.apache.axis2.context.MessageContext resultContext) {
				try {
					org.apache.axiom.soap.SOAPEnvelope resultEnv = resultContext.getEnvelope();

					java.lang.Object object = fromOM(resultEnv.getBody().getFirstElement(),
							arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMessagesResponseE.class);
					callback.receiveResultgetMessages(
							(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMessagesResponseE) object);
				} catch (org.apache.axis2.AxisFault e) {
					callback.receiveErrorgetMessages(e);
				}
			}

			public void onError(java.lang.Exception error) {
				if (error instanceof org.apache.axis2.AxisFault) {
					org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
					org.apache.axiom.om.OMElement faultElt = f.getDetail();

					if (faultElt != null) {
						if (faultExceptionNameMap.containsKey(
								new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_MESSAGES_LITERAL))) {
							// make the fault by reflection
							try {
								java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(
										new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_MESSAGES_LITERAL));
								java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
								java.lang.reflect.Constructor constructor = exceptionClass
										.getConstructor(java.lang.String.class);
								java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

								// message class
								java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(
										new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_MESSAGES_LITERAL));
								java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
								java.lang.Object messageObject = fromOM(faultElt, messageClass);
								java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage", messageClass);
								m.invoke(ex, messageObject);

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) {
									callback.receiveErrorgetMessages(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) {
									callback.receiveErrorgetMessages(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) ex);

									return;
								}

								callback.receiveErrorgetMessages(new java.rmi.RemoteException(ex.getMessage(), ex));
							} catch (Exception e) {
								// we cannot intantiate the class - throw the original Axis fault
								callback.receiveErrorgetMessages(f);
							}
						} else {
							callback.receiveErrorgetMessages(f);
						}
					} else {
						callback.receiveErrorgetMessages(f);
					}
				} else {
					callback.receiveErrorgetMessages(error);
				}
			}

			public void onFault(org.apache.axis2.context.MessageContext faultContext) {
				org.apache.axis2.AxisFault fault = org.apache.axis2.util.Utils
						.getInboundFaultFromMessageContext(faultContext);
				onError(fault);
			}

			public void onComplete() {
				try {
					_messageContext.getTransportOut().getSender().cleanup(_messageContext);
				} catch (org.apache.axis2.AxisFault axisFault) {
					callback.receiveErrorgetMessages(axisFault);
				}
			}
		});

		org.apache.axis2.util.CallbackReceiver _callbackReceiver = null;

		if ((operations[1].getMessageReceiver() == null) && _operationClient.getOptions().isUseSeparateListener()) {
			_callbackReceiver = new org.apache.axis2.util.CallbackReceiver();
			operations[1].setMessageReceiver(_callbackReceiver);
		}

		// execute the operation client
		_operationClient.execute(false);
	}

	/**
	 * Auto generated method signature
	 *
	 * @see arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseService#getMinMsgPollingIntervall
	 * @param getMinMsgPollingIntervall4
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException :
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException  :
	 */
	public arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMinMsgPollingIntervallResponseE getMinMsgPollingIntervall(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMinMsgPollingIntervallE getMinMsgPollingIntervall4)
			throws java.rmi.RemoteException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException {
		org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

		try {
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(operations[2].getName());
			_operationClient.getOptions()
					.setAction("http://soap.base.client.chipkarte.at/IBaseService/getMinMsgPollingIntervallRequest");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;

			env = toEnvelope(getFactory(_operationClient.getOptions().getSoapVersionURI()), getMinMsgPollingIntervall4,
					optimizeContent(new javax.xml.namespace.QName(NAMESPACE_BASE,
							GET_MIN_MSG_POLLING_INTERVAL_LITERAL)),
					new javax.xml.namespace.QName(NAMESPACE_BASE, GET_MIN_MSG_POLLING_INTERVAL_LITERAL));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Request getMinMsgPollingIntervall: {}", env);
				LOGGER.info("Response getMinMsgPollingIntervall: {}", _returnEnv);
			}

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMinMsgPollingIntervallResponseE.class);

			return (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMinMsgPollingIntervallResponseE) object;
		} catch (org.apache.axis2.AxisFault f) {
			org.apache.axiom.om.OMElement faultElt = f.getDetail();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Error getMinMsgPollingIntervall: {}", faultElt);
			}

			if (faultElt != null) {
				if (faultExceptionNameMap.containsKey(
						new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_MIN_MSG_POLLING_INTERVAL_LITERAL))) {
					// make the fault by reflection
					try {
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
										GET_MIN_MSG_POLLING_INTERVAL_LITERAL));
						java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(java.lang.String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
										GET_MIN_MSG_POLLING_INTERVAL_LITERAL));
						java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt, messageClass);
						java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage", messageClass);
						m.invoke(ex, messageObject);

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) ex;
						}

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) ex;
						}

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					} catch (Exception e) {
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
				_messageContext.getTransportOut().getSender().cleanup(_messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature for Asynchronous Invocations
	 *
	 * @see arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseService#startgetMinMsgPollingIntervall
	 * @param getMinMsgPollingIntervall4
	 */
	public void startgetMinMsgPollingIntervall(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMinMsgPollingIntervallE getMinMsgPollingIntervall4,
			final arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceCallbackHandler callback)
			throws java.rmi.RemoteException {
		org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(operations[2].getName());
		_operationClient.getOptions()
				.setAction("http://soap.base.client.chipkarte.at/IBaseService/getMinMsgPollingIntervallRequest");
		_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

		addPropertyToOperationClient(_operationClient,
				org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

		// create SOAP envelope with that payload
		org.apache.axiom.soap.SOAPEnvelope env = null;
		final org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

		// Style is Doc.
		env = toEnvelope(getFactory(_operationClient.getOptions().getSoapVersionURI()), getMinMsgPollingIntervall4,
				optimizeContent(new javax.xml.namespace.QName(NAMESPACE_BASE,
						GET_MIN_MSG_POLLING_INTERVAL_LITERAL)),
				new javax.xml.namespace.QName(NAMESPACE_BASE, GET_MIN_MSG_POLLING_INTERVAL_LITERAL));

		// adding SOAP soap_headers
		_serviceClient.addHeadersToEnvelope(env);
		// create message context with that soap envelope
		_messageContext.setEnvelope(env);

		// add the message context to the operation client
		_operationClient.addMessageContext(_messageContext);

		_operationClient.setCallback(new org.apache.axis2.client.async.AxisCallback() {
			public void onMessage(org.apache.axis2.context.MessageContext resultContext) {
				try {
					org.apache.axiom.soap.SOAPEnvelope resultEnv = resultContext.getEnvelope();

					java.lang.Object object = fromOM(resultEnv.getBody().getFirstElement(),
							arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMinMsgPollingIntervallResponseE.class);
					callback.receiveResultgetMinMsgPollingIntervall(
							(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMinMsgPollingIntervallResponseE) object);
				} catch (org.apache.axis2.AxisFault e) {
					callback.receiveErrorgetMinMsgPollingIntervall(e);
				}
			}

			public void onError(java.lang.Exception error) {
				if (error instanceof org.apache.axis2.AxisFault) {
					org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
					org.apache.axiom.om.OMElement faultElt = f.getDetail();

					if (faultElt != null) {
						if (faultExceptionNameMap.containsKey(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), GET_MIN_MSG_POLLING_INTERVAL_LITERAL))) {
							// make the fault by reflection
							try {
								java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
										.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
												GET_MIN_MSG_POLLING_INTERVAL_LITERAL));
								java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
								java.lang.reflect.Constructor constructor = exceptionClass
										.getConstructor(java.lang.String.class);
								java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

								// message class
								java.lang.String messageClassName = (java.lang.String) faultMessageMap
										.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
												GET_MIN_MSG_POLLING_INTERVAL_LITERAL));
								java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
								java.lang.Object messageObject = fromOM(faultElt, messageClass);
								java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage", messageClass);
								m.invoke(ex, messageObject);

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) {
									callback.receiveErrorgetMinMsgPollingIntervall(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) {
									callback.receiveErrorgetMinMsgPollingIntervall(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) ex);

									return;
								}

								callback.receiveErrorgetMinMsgPollingIntervall(
										new java.rmi.RemoteException(ex.getMessage(), ex));
							} catch (Exception e) {
								// we cannot intantiate the class - throw the original Axis fault
								callback.receiveErrorgetMinMsgPollingIntervall(f);
							}
						} else {
							callback.receiveErrorgetMinMsgPollingIntervall(f);
						}
					} else {
						callback.receiveErrorgetMinMsgPollingIntervall(f);
					}
				} else {
					callback.receiveErrorgetMinMsgPollingIntervall(error);
				}
			}

			public void onFault(org.apache.axis2.context.MessageContext faultContext) {
				org.apache.axis2.AxisFault fault = org.apache.axis2.util.Utils
						.getInboundFaultFromMessageContext(faultContext);
				onError(fault);
			}

			public void onComplete() {
				try {
					_messageContext.getTransportOut().getSender().cleanup(_messageContext);
				} catch (org.apache.axis2.AxisFault axisFault) {
					callback.receiveErrorgetMinMsgPollingIntervall(axisFault);
				}
			}
		});

		org.apache.axis2.util.CallbackReceiver _callbackReceiver = null;

		if ((operations[2].getMessageReceiver() == null) && _operationClient.getOptions().isUseSeparateListener()) {
			_callbackReceiver = new org.apache.axis2.util.CallbackReceiver();
			operations[2].setMessageReceiver(_callbackReceiver);
		}

		// execute the operation client
		_operationClient.execute(false);
	}

	/**
	 * Auto generated method signature
	 *
	 * @see arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseService#getVertraege
	 * @param getVertraege6
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException :
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException  :
	 */
	public arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetVertraegeResponseE getVertraege(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetVertraegeE getVertraege6)
			throws java.rmi.RemoteException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException {
		org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

		try {
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(operations[3].getName());
			_operationClient.getOptions()
					.setAction("http://soap.base.client.chipkarte.at/IBaseService/getVertraegeRequest");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;

			env = toEnvelope(getFactory(_operationClient.getOptions().getSoapVersionURI()), getVertraege6,
					optimizeContent(
							new javax.xml.namespace.QName(NAMESPACE_BASE, GET_CONTRACTS_LITERAL)),
					new javax.xml.namespace.QName(NAMESPACE_BASE, GET_CONTRACTS_LITERAL));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Request getVertraege: {}", env);
				LOGGER.info("Response getVertraege: {}", _returnEnv);
			}

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetVertraegeResponseE.class);

			return (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetVertraegeResponseE) object;
		} catch (org.apache.axis2.AxisFault f) {
			org.apache.axiom.om.OMElement faultElt = f.getDetail();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Error getVertraege: {}", faultElt);
			}

			if (faultElt != null) {
				if (faultExceptionNameMap
						.containsKey(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_CONTRACTS_LITERAL))) {
					// make the fault by reflection
					try {
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_CONTRACTS_LITERAL));
						java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(java.lang.String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_CONTRACTS_LITERAL));
						java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt, messageClass);
						java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage", messageClass);
						m.invoke(ex, messageObject);

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) ex;
						}

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) ex;
						}

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					} catch (Exception e) {
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
				_messageContext.getTransportOut().getSender().cleanup(_messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature for Asynchronous Invocations
	 *
	 * @see arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseService#startgetVertraege
	 * @param getVertraege6
	 */
	public void startgetVertraege(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetVertraegeE getVertraege6,
			final arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceCallbackHandler callback)
			throws java.rmi.RemoteException {
		org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(operations[3].getName());
		_operationClient.getOptions()
				.setAction("http://soap.base.client.chipkarte.at/IBaseService/getVertraegeRequest");
		_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

		addPropertyToOperationClient(_operationClient,
				org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

		// create SOAP envelope with that payload
		org.apache.axiom.soap.SOAPEnvelope env = null;
		final org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

		// Style is Doc.
		env = toEnvelope(getFactory(_operationClient.getOptions().getSoapVersionURI()), getVertraege6,
				optimizeContent(new javax.xml.namespace.QName(NAMESPACE_BASE, GET_CONTRACTS_LITERAL)),
				new javax.xml.namespace.QName(NAMESPACE_BASE, GET_CONTRACTS_LITERAL));

		// adding SOAP soap_headers
		_serviceClient.addHeadersToEnvelope(env);
		// create message context with that soap envelope
		_messageContext.setEnvelope(env);

		// add the message context to the operation client
		_operationClient.addMessageContext(_messageContext);

		_operationClient.setCallback(new org.apache.axis2.client.async.AxisCallback() {
			public void onMessage(org.apache.axis2.context.MessageContext resultContext) {
				try {
					org.apache.axiom.soap.SOAPEnvelope resultEnv = resultContext.getEnvelope();

					java.lang.Object object = fromOM(resultEnv.getBody().getFirstElement(),
							arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetVertraegeResponseE.class);
					callback.receiveResultgetVertraege(
							(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetVertraegeResponseE) object);
				} catch (org.apache.axis2.AxisFault e) {
					callback.receiveErrorgetVertraege(e);
				}
			}

			public void onError(java.lang.Exception error) {
				if (error instanceof org.apache.axis2.AxisFault) {
					org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
					org.apache.axiom.om.OMElement faultElt = f.getDetail();

					if (faultElt != null) {
						if (faultExceptionNameMap.containsKey(
								new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_CONTRACTS_LITERAL))) {
							// make the fault by reflection
							try {
								java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(
										new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_CONTRACTS_LITERAL));
								java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
								java.lang.reflect.Constructor constructor = exceptionClass
										.getConstructor(java.lang.String.class);
								java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

								// message class
								java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(
										new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_CONTRACTS_LITERAL));
								java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
								java.lang.Object messageObject = fromOM(faultElt, messageClass);
								java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage", messageClass);
								m.invoke(ex, messageObject);

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) {
									callback.receiveErrorgetVertraege(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) {
									callback.receiveErrorgetVertraege(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) ex);

									return;
								}

								callback.receiveErrorgetVertraege(new java.rmi.RemoteException(ex.getMessage(), ex));
							} catch (Exception e) {
								// we cannot intantiate the class - throw the original Axis fault
								callback.receiveErrorgetVertraege(f);
							}
						} else {
							callback.receiveErrorgetVertraege(f);
						}
					} else {
						callback.receiveErrorgetVertraege(f);
					}
				} else {
					callback.receiveErrorgetVertraege(error);
				}
			}

			public void onFault(org.apache.axis2.context.MessageContext faultContext) {
				org.apache.axis2.AxisFault fault = org.apache.axis2.util.Utils
						.getInboundFaultFromMessageContext(faultContext);
				onError(fault);
			}

			public void onComplete() {
				try {
					_messageContext.getTransportOut().getSender().cleanup(_messageContext);
				} catch (org.apache.axis2.AxisFault axisFault) {
					callback.receiveErrorgetVertraege(axisFault);
				}
			}
		});

		org.apache.axis2.util.CallbackReceiver _callbackReceiver = null;

		if ((operations[3].getMessageReceiver() == null) && _operationClient.getOptions().isUseSeparateListener()) {
			_callbackReceiver = new org.apache.axis2.util.CallbackReceiver();
			operations[3].setMessageReceiver(_callbackReceiver);
		}

		// execute the operation client
		_operationClient.execute(false);
	}

	/**
	 * Auto generated method signature
	 *
	 * @see arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseService#commonTypes
	 * @param commonTypes8
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.AccessException         :
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException        :
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.PatientServiceException :
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException         :
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.CardException           :
	 */
	public arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CommonTypesResponseE commonTypes(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CommonTypesE commonTypes8)
			throws java.rmi.RemoteException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.AccessException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.PatientServiceException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.CardException {
		org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

		try {
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(operations[4].getName());
			_operationClient.getOptions()
					.setAction("http://soap.base.client.chipkarte.at/IBaseService/commonTypesRequest");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;

			env = toEnvelope(getFactory(_operationClient.getOptions().getSoapVersionURI()), commonTypes8,
					optimizeContent(
							new javax.xml.namespace.QName(NAMESPACE_BASE, COMMON_TYPES_LITERAL)),
					new javax.xml.namespace.QName(NAMESPACE_BASE, COMMON_TYPES_LITERAL));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CommonTypesResponseE.class);

			return (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CommonTypesResponseE) object;
		} catch (org.apache.axis2.AxisFault f) {
			org.apache.axiom.om.OMElement faultElt = f.getDetail();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Error commonTypes: {}", faultElt);
			}

			if (faultElt != null) {
				if (faultExceptionNameMap
						.containsKey(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), COMMON_TYPES_LITERAL))) {
					// make the fault by reflection
					try {
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), COMMON_TYPES_LITERAL));
						java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(java.lang.String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), COMMON_TYPES_LITERAL));
						java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt, messageClass);
						java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage", messageClass);
						m.invoke(ex, messageObject);

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.AccessException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.AccessException) ex;
						}

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) ex;
						}

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.PatientServiceException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.PatientServiceException) ex;
						}

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) ex;
						}

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.CardException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.CardException) ex;
						}

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					} catch (Exception e) {
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
				_messageContext.getTransportOut().getSender().cleanup(_messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature for Asynchronous Invocations
	 *
	 * @see arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseService#startcommonTypes
	 * @param commonTypes8
	 */
	public void startcommonTypes(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CommonTypesE commonTypes8,
			final arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceCallbackHandler callback)
			throws java.rmi.RemoteException {
		org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(operations[4].getName());
		_operationClient.getOptions().setAction("http://soap.base.client.chipkarte.at/IBaseService/commonTypesRequest");
		_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

		addPropertyToOperationClient(_operationClient,
				org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

		// create SOAP envelope with that payload
		org.apache.axiom.soap.SOAPEnvelope env = null;
		final org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

		// Style is Doc.
		env = toEnvelope(getFactory(_operationClient.getOptions().getSoapVersionURI()), commonTypes8,
				optimizeContent(new javax.xml.namespace.QName(NAMESPACE_BASE, COMMON_TYPES_LITERAL)),
				new javax.xml.namespace.QName(NAMESPACE_BASE, COMMON_TYPES_LITERAL));

		// adding SOAP soap_headers
		_serviceClient.addHeadersToEnvelope(env);
		// create message context with that soap envelope
		_messageContext.setEnvelope(env);

		// add the message context to the operation client
		_operationClient.addMessageContext(_messageContext);

		_operationClient.setCallback(new org.apache.axis2.client.async.AxisCallback() {
			public void onMessage(org.apache.axis2.context.MessageContext resultContext) {
				try {
					org.apache.axiom.soap.SOAPEnvelope resultEnv = resultContext.getEnvelope();

					java.lang.Object object = fromOM(resultEnv.getBody().getFirstElement(),
							arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CommonTypesResponseE.class);
					callback.receiveResultcommonTypes(
							(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CommonTypesResponseE) object);
				} catch (org.apache.axis2.AxisFault e) {
					callback.receiveErrorcommonTypes(e);
				}
			}

			public void onError(java.lang.Exception error) {
				if (error instanceof org.apache.axis2.AxisFault) {
					org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
					org.apache.axiom.om.OMElement faultElt = f.getDetail();

					if (faultElt != null) {
						if (faultExceptionNameMap.containsKey(
								new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), COMMON_TYPES_LITERAL))) {
							// make the fault by reflection
							try {
								java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(
										new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), COMMON_TYPES_LITERAL));
								java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
								java.lang.reflect.Constructor constructor = exceptionClass
										.getConstructor(java.lang.String.class);
								java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

								// message class
								java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(
										new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), COMMON_TYPES_LITERAL));
								java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
								java.lang.Object messageObject = fromOM(faultElt, messageClass);
								java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage", messageClass);
								m.invoke(ex, messageObject);

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.AccessException) {
									callback.receiveErrorcommonTypes(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.AccessException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) {
									callback.receiveErrorcommonTypes(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.PatientServiceException) {
									callback.receiveErrorcommonTypes(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.PatientServiceException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) {
									callback.receiveErrorcommonTypes(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.CardException) {
									callback.receiveErrorcommonTypes(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.CardException) ex);

									return;
								}

								callback.receiveErrorcommonTypes(new java.rmi.RemoteException(ex.getMessage(), ex));
							} catch (Exception e) {
								// we cannot intantiate the class - throw the original Axis fault
								callback.receiveErrorcommonTypes(f);
							}
						} else {
							callback.receiveErrorcommonTypes(f);
						}
					} else {
						callback.receiveErrorcommonTypes(f);
					}
				} else {
					callback.receiveErrorcommonTypes(error);
				}
			}

			public void onFault(org.apache.axis2.context.MessageContext faultContext) {
				org.apache.axis2.AxisFault fault = org.apache.axis2.util.Utils
						.getInboundFaultFromMessageContext(faultContext);
				onError(fault);
			}

			public void onComplete() {
				try {
					_messageContext.getTransportOut().getSender().cleanup(_messageContext);
				} catch (org.apache.axis2.AxisFault axisFault) {
					callback.receiveErrorcommonTypes(axisFault);
				}
			}
		});

		org.apache.axis2.util.CallbackReceiver _callbackReceiver = null;

		if ((operations[4].getMessageReceiver() == null) && _operationClient.getOptions().isUseSeparateListener()) {
			_callbackReceiver = new org.apache.axis2.util.CallbackReceiver();
			operations[4].setMessageReceiver(_callbackReceiver);
		}

		// execute the operation client
		_operationClient.execute(false);
	}

	/**
	 * Auto generated method signature
	 *
	 * @see arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseService#checkStatus
	 * @param checkStatus10
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException :
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException  :
	 */
	public arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CheckStatusResponseE checkStatus(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CheckStatusE checkStatus10)
			throws java.rmi.RemoteException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException {
		org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

		try {
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(operations[5].getName());
			_operationClient.getOptions()
					.setAction("http://soap.base.client.chipkarte.at/IBaseService/checkStatusRequest");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;

			env = toEnvelope(getFactory(_operationClient.getOptions().getSoapVersionURI()), checkStatus10,
					optimizeContent(
							new javax.xml.namespace.QName(NAMESPACE_BASE, CHECK_STATUS_LITERAL)),
					new javax.xml.namespace.QName(NAMESPACE_BASE, CHECK_STATUS_LITERAL));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CheckStatusResponseE.class);

			return (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CheckStatusResponseE) object;
		} catch (org.apache.axis2.AxisFault f) {
			org.apache.axiom.om.OMElement faultElt = f.getDetail();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Error checkStatus: {}", faultElt);
			}

			if (faultElt != null) {
				if (faultExceptionNameMap
						.containsKey(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), CHECK_STATUS_LITERAL))) {
					// make the fault by reflection
					try {
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), CHECK_STATUS_LITERAL));
						java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(java.lang.String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), CHECK_STATUS_LITERAL));
						java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt, messageClass);
						java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage", messageClass);
						m.invoke(ex, messageObject);

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) ex;
						}

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) ex;
						}

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					} catch (Exception e) {
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
				_messageContext.getTransportOut().getSender().cleanup(_messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature for Asynchronous Invocations
	 *
	 * @see arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseService#startcheckStatus
	 * @param checkStatus10
	 */
	public void startcheckStatus(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CheckStatusE checkStatus10,
			final arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceCallbackHandler callback)
			throws java.rmi.RemoteException {
		org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(operations[5].getName());
		_operationClient.getOptions().setAction("http://soap.base.client.chipkarte.at/IBaseService/checkStatusRequest");
		_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

		addPropertyToOperationClient(_operationClient,
				org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

		// create SOAP envelope with that payload
		org.apache.axiom.soap.SOAPEnvelope env = null;
		final org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

		// Style is Doc.
		env = toEnvelope(getFactory(_operationClient.getOptions().getSoapVersionURI()), checkStatus10,
				optimizeContent(new javax.xml.namespace.QName(NAMESPACE_BASE, CHECK_STATUS_LITERAL)),
				new javax.xml.namespace.QName(NAMESPACE_BASE, CHECK_STATUS_LITERAL));

		// adding SOAP soap_headers
		_serviceClient.addHeadersToEnvelope(env);
		// create message context with that soap envelope
		_messageContext.setEnvelope(env);

		// add the message context to the operation client
		_operationClient.addMessageContext(_messageContext);

		_operationClient.setCallback(new org.apache.axis2.client.async.AxisCallback() {
			public void onMessage(org.apache.axis2.context.MessageContext resultContext) {
				try {
					org.apache.axiom.soap.SOAPEnvelope resultEnv = resultContext.getEnvelope();

					java.lang.Object object = fromOM(resultEnv.getBody().getFirstElement(),
							arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CheckStatusResponseE.class);
					callback.receiveResultcheckStatus(
							(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CheckStatusResponseE) object);
				} catch (org.apache.axis2.AxisFault e) {
					callback.receiveErrorcheckStatus(e);
				}
			}

			public void onError(java.lang.Exception error) {
				if (error instanceof org.apache.axis2.AxisFault) {
					org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
					org.apache.axiom.om.OMElement faultElt = f.getDetail();

					if (faultElt != null) {
						if (faultExceptionNameMap.containsKey(
								new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), CHECK_STATUS_LITERAL))) {
							// make the fault by reflection
							try {
								java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(
										new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), CHECK_STATUS_LITERAL));
								java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
								java.lang.reflect.Constructor constructor = exceptionClass
										.getConstructor(java.lang.String.class);
								java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

								// message class
								java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(
										new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), CHECK_STATUS_LITERAL));
								java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
								java.lang.Object messageObject = fromOM(faultElt, messageClass);
								java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage", messageClass);
								m.invoke(ex, messageObject);

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) {
									callback.receiveErrorcheckStatus(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) {
									callback.receiveErrorcheckStatus(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) ex);

									return;
								}

								callback.receiveErrorcheckStatus(new java.rmi.RemoteException(ex.getMessage(), ex));
							} catch (Exception e) {
								// we cannot intantiate the class - throw the original Axis fault
								callback.receiveErrorcheckStatus(f);
							}
						} else {
							callback.receiveErrorcheckStatus(f);
						}
					} else {
						callback.receiveErrorcheckStatus(f);
					}
				} else {
					callback.receiveErrorcheckStatus(error);
				}
			}

			public void onFault(org.apache.axis2.context.MessageContext faultContext) {
				org.apache.axis2.AxisFault fault = org.apache.axis2.util.Utils
						.getInboundFaultFromMessageContext(faultContext);
				onError(fault);
			}

			public void onComplete() {
				try {
					_messageContext.getTransportOut().getSender().cleanup(_messageContext);
				} catch (org.apache.axis2.AxisFault axisFault) {
					callback.receiveErrorcheckStatus(axisFault);
				}
			}
		});

		org.apache.axis2.util.CallbackReceiver _callbackReceiver = null;

		if ((operations[5].getMessageReceiver() == null) && _operationClient.getOptions().isUseSeparateListener()) {
			_callbackReceiver = new org.apache.axis2.util.CallbackReceiver();
			operations[5].setMessageReceiver(_callbackReceiver);
		}

		// execute the operation client
		_operationClient.execute(false);
	}

	/**
	 * Auto generated method signature
	 *
	 * @see arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseService#getFachgebieteByOrdId
	 * @param getFachgebieteByOrdId12
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException :
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException  :
	 */
	public arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetFachgebieteByOrdIdResponseE getFachgebieteByOrdId(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetFachgebieteByOrdIdE getFachgebieteByOrdId12)
			throws java.rmi.RemoteException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException {
		org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

		try {
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(operations[6].getName());
			_operationClient.getOptions()
					.setAction("http://soap.base.client.chipkarte.at/IBaseService/getFachgebieteByOrdIdRequest");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;

			env = toEnvelope(getFactory(_operationClient.getOptions().getSoapVersionURI()), getFachgebieteByOrdId12,
					optimizeContent(new javax.xml.namespace.QName(NAMESPACE_BASE,
							GET_SUBJECT_SURGERY_ID_LITERAL)),
					new javax.xml.namespace.QName(NAMESPACE_BASE, GET_SUBJECT_SURGERY_ID_LITERAL));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Request getFachgebieteByOrdId: {}", env);
				LOGGER.info("Response getFachgebieteByOrdId: {}", _returnEnv);
			}

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetFachgebieteByOrdIdResponseE.class);

			return (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetFachgebieteByOrdIdResponseE) object;
		} catch (org.apache.axis2.AxisFault f) {
			org.apache.axiom.om.OMElement faultElt = f.getDetail();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Error getFachgebieteByOrdId: {}", faultElt);
			}

			if (faultElt != null) {
				if (faultExceptionNameMap.containsKey(
						new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_SUBJECT_SURGERY_ID_LITERAL))) {
					// make the fault by reflection
					try {
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(
								new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_SUBJECT_SURGERY_ID_LITERAL));
						java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(java.lang.String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(
								new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), GET_SUBJECT_SURGERY_ID_LITERAL));
						java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt, messageClass);
						java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage", messageClass);
						m.invoke(ex, messageObject);

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) ex;
						}

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) ex;
						}

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					} catch (Exception e) {
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
				_messageContext.getTransportOut().getSender().cleanup(_messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature for Asynchronous Invocations
	 *
	 * @see arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseService#startgetFachgebieteByOrdId
	 * @param getFachgebieteByOrdId12
	 */
	public void startgetFachgebieteByOrdId(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetFachgebieteByOrdIdE getFachgebieteByOrdId12,
			final arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceCallbackHandler callback)
			throws java.rmi.RemoteException {
		org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(operations[6].getName());
		_operationClient.getOptions()
				.setAction("http://soap.base.client.chipkarte.at/IBaseService/getFachgebieteByOrdIdRequest");
		_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

		addPropertyToOperationClient(_operationClient,
				org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

		// create SOAP envelope with that payload
		org.apache.axiom.soap.SOAPEnvelope env = null;
		final org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

		// Style is Doc.
		env = toEnvelope(getFactory(_operationClient.getOptions().getSoapVersionURI()), getFachgebieteByOrdId12,
				optimizeContent(
						new javax.xml.namespace.QName(NAMESPACE_BASE, GET_SUBJECT_SURGERY_ID_LITERAL)),
				new javax.xml.namespace.QName(NAMESPACE_BASE, GET_SUBJECT_SURGERY_ID_LITERAL));

		// adding SOAP soap_headers
		_serviceClient.addHeadersToEnvelope(env);
		// create message context with that soap envelope
		_messageContext.setEnvelope(env);

		// add the message context to the operation client
		_operationClient.addMessageContext(_messageContext);

		_operationClient.setCallback(new org.apache.axis2.client.async.AxisCallback() {
			public void onMessage(org.apache.axis2.context.MessageContext resultContext) {
				try {
					org.apache.axiom.soap.SOAPEnvelope resultEnv = resultContext.getEnvelope();

					java.lang.Object object = fromOM(resultEnv.getBody().getFirstElement(),
							arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetFachgebieteByOrdIdResponseE.class);
					callback.receiveResultgetFachgebieteByOrdId(
							(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetFachgebieteByOrdIdResponseE) object);
				} catch (org.apache.axis2.AxisFault e) {
					callback.receiveErrorgetFachgebieteByOrdId(e);
				}
			}

			public void onError(java.lang.Exception error) {
				if (error instanceof org.apache.axis2.AxisFault) {
					org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
					org.apache.axiom.om.OMElement faultElt = f.getDetail();

					if (faultElt != null) {
						if (faultExceptionNameMap.containsKey(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), GET_SUBJECT_SURGERY_ID_LITERAL))) {
							// make the fault by reflection
							try {
								java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
										.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
												GET_SUBJECT_SURGERY_ID_LITERAL));
								java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
								java.lang.reflect.Constructor constructor = exceptionClass
										.getConstructor(java.lang.String.class);
								java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

								// message class
								java.lang.String messageClassName = (java.lang.String) faultMessageMap
										.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
												GET_SUBJECT_SURGERY_ID_LITERAL));
								java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
								java.lang.Object messageObject = fromOM(faultElt, messageClass);
								java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage", messageClass);
								m.invoke(ex, messageObject);

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) {
									callback.receiveErrorgetFachgebieteByOrdId(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) {
									callback.receiveErrorgetFachgebieteByOrdId(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) ex);

									return;
								}

								callback.receiveErrorgetFachgebieteByOrdId(
										new java.rmi.RemoteException(ex.getMessage(), ex));
							} catch (Exception e) {
								// we cannot intantiate the class - throw the original Axis fault
								callback.receiveErrorgetFachgebieteByOrdId(f);
							}
						} else {
							callback.receiveErrorgetFachgebieteByOrdId(f);
						}
					} else {
						callback.receiveErrorgetFachgebieteByOrdId(f);
					}
				} else {
					callback.receiveErrorgetFachgebieteByOrdId(error);
				}
			}

			public void onFault(org.apache.axis2.context.MessageContext faultContext) {
				org.apache.axis2.AxisFault fault = org.apache.axis2.util.Utils
						.getInboundFaultFromMessageContext(faultContext);
				onError(fault);
			}

			public void onComplete() {
				try {
					_messageContext.getTransportOut().getSender().cleanup(_messageContext);
				} catch (org.apache.axis2.AxisFault axisFault) {
					callback.receiveErrorgetFachgebieteByOrdId(axisFault);
				}
			}
		});

		org.apache.axis2.util.CallbackReceiver _callbackReceiver = null;

		if ((operations[6].getMessageReceiver() == null) && _operationClient.getOptions().isUseSeparateListener()) {
			_callbackReceiver = new org.apache.axis2.util.CallbackReceiver();
			operations[6].setMessageReceiver(_callbackReceiver);
		}

		// execute the operation client
		_operationClient.execute(false);
	}

	/**
	 * Auto generated method signature
	 *
	 * @see arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseService#pollMessages
	 * @param pollMessages14
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException :
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException  :
	 */
	public arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PollMessagesResponseE pollMessages(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PollMessagesE pollMessages14)
			throws java.rmi.RemoteException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException {
		org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

		try {
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(operations[7].getName());
			_operationClient.getOptions()
					.setAction("http://soap.base.client.chipkarte.at/IBaseService/pollMessagesRequest");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;

			env = toEnvelope(getFactory(_operationClient.getOptions().getSoapVersionURI()), pollMessages14,
					optimizeContent(
							new javax.xml.namespace.QName(NAMESPACE_BASE, POLL_MESSAGES_LITERAL)),
					new javax.xml.namespace.QName(NAMESPACE_BASE, POLL_MESSAGES_LITERAL));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PollMessagesResponseE.class);

			return (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PollMessagesResponseE) object;
		} catch (org.apache.axis2.AxisFault f) {
			org.apache.axiom.om.OMElement faultElt = f.getDetail();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Error pollMessages: {}", faultElt);
			}

			if (faultElt != null) {
				if (faultExceptionNameMap
						.containsKey(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), POLL_MESSAGES_LITERAL))) {
					// make the fault by reflection
					try {
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
								.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), POLL_MESSAGES_LITERAL));
						java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(java.lang.String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap
								.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), POLL_MESSAGES_LITERAL));
						java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt, messageClass);
						java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage", messageClass);
						m.invoke(ex, messageObject);

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) ex;
						}

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) ex;
						}

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					} catch (Exception e) {
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
				_messageContext.getTransportOut().getSender().cleanup(_messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature for Asynchronous Invocations
	 *
	 * @see arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseService#startpollMessages
	 * @param pollMessages14
	 */
	public void startpollMessages(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PollMessagesE pollMessages14,
			final arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceCallbackHandler callback)
			throws java.rmi.RemoteException {
		org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(operations[7].getName());
		_operationClient.getOptions()
				.setAction("http://soap.base.client.chipkarte.at/IBaseService/pollMessagesRequest");
		_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

		addPropertyToOperationClient(_operationClient,
				org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

		// create SOAP envelope with that payload
		org.apache.axiom.soap.SOAPEnvelope env = null;
		final org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

		// Style is Doc.
		env = toEnvelope(getFactory(_operationClient.getOptions().getSoapVersionURI()), pollMessages14,
				optimizeContent(new javax.xml.namespace.QName(NAMESPACE_BASE, POLL_MESSAGES_LITERAL)),
				new javax.xml.namespace.QName(NAMESPACE_BASE, POLL_MESSAGES_LITERAL));

		// adding SOAP soap_headers
		_serviceClient.addHeadersToEnvelope(env);
		// create message context with that soap envelope
		_messageContext.setEnvelope(env);

		// add the message context to the operation client
		_operationClient.addMessageContext(_messageContext);

		_operationClient.setCallback(new org.apache.axis2.client.async.AxisCallback() {
			public void onMessage(org.apache.axis2.context.MessageContext resultContext) {
				try {
					org.apache.axiom.soap.SOAPEnvelope resultEnv = resultContext.getEnvelope();

					java.lang.Object object = fromOM(resultEnv.getBody().getFirstElement(),
							arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PollMessagesResponseE.class);
					callback.receiveResultpollMessages(
							(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PollMessagesResponseE) object);
				} catch (org.apache.axis2.AxisFault e) {
					callback.receiveErrorpollMessages(e);
				}
			}

			public void onError(java.lang.Exception error) {
				if (error instanceof org.apache.axis2.AxisFault) {
					org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
					org.apache.axiom.om.OMElement faultElt = f.getDetail();

					if (faultElt != null) {
						if (faultExceptionNameMap.containsKey(
								new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), POLL_MESSAGES_LITERAL))) {
							// make the fault by reflection
							try {
								java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(
										new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), POLL_MESSAGES_LITERAL));
								java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
								java.lang.reflect.Constructor constructor = exceptionClass
										.getConstructor(java.lang.String.class);
								java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

								// message class
								java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(
										new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), POLL_MESSAGES_LITERAL));
								java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
								java.lang.Object messageObject = fromOM(faultElt, messageClass);
								java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage", messageClass);
								m.invoke(ex, messageObject);

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) {
									callback.receiveErrorpollMessages(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) {
									callback.receiveErrorpollMessages(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) ex);

									return;
								}

								callback.receiveErrorpollMessages(new java.rmi.RemoteException(ex.getMessage(), ex));
							} catch (Exception e) {
								// we cannot intantiate the class - throw the original Axis fault
								callback.receiveErrorpollMessages(f);
							}
						} else {
							callback.receiveErrorpollMessages(f);
						}
					} else {
						callback.receiveErrorpollMessages(f);
					}
				} else {
					callback.receiveErrorpollMessages(error);
				}
			}

			public void onFault(org.apache.axis2.context.MessageContext faultContext) {
				org.apache.axis2.AxisFault fault = org.apache.axis2.util.Utils
						.getInboundFaultFromMessageContext(faultContext);
				onError(fault);
			}

			public void onComplete() {
				try {
					_messageContext.getTransportOut().getSender().cleanup(_messageContext);
				} catch (org.apache.axis2.AxisFault axisFault) {
					callback.receiveErrorpollMessages(axisFault);
				}
			}
		});

		org.apache.axis2.util.CallbackReceiver _callbackReceiver = null;

		if ((operations[7].getMessageReceiver() == null) && _operationClient.getOptions().isUseSeparateListener()) {
			_callbackReceiver = new org.apache.axis2.util.CallbackReceiver();
			operations[7].setMessageReceiver(_callbackReceiver);
		}

		// execute the operation client
		_operationClient.execute(false);
	}

	/**
	 * Auto generated method signature
	 *
	 * @see arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseService#uebersiedelnOrdination
	 * @param uebersiedelnOrdination16
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException :
	 * @throws arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException  :
	 */
	public arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.UebersiedelnOrdinationResponseE uebersiedelnOrdination(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.UebersiedelnOrdinationE uebersiedelnOrdination16)
			throws java.rmi.RemoteException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException {
		org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

		try {
			org.apache.axis2.client.OperationClient _operationClient = _serviceClient
					.createClient(operations[8].getName());
			_operationClient.getOptions()
					.setAction("http://soap.base.client.chipkarte.at/IBaseService/uebersiedelnOrdinationRequest");
			_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

			addPropertyToOperationClient(_operationClient,
					org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

			// create SOAP envelope with that payload
			org.apache.axiom.soap.SOAPEnvelope env = null;

			env = toEnvelope(getFactory(_operationClient.getOptions().getSoapVersionURI()), uebersiedelnOrdination16,
					optimizeContent(new javax.xml.namespace.QName(NAMESPACE_BASE,
							MOVE_SURGERY_LITERAL)),
					new javax.xml.namespace.QName(NAMESPACE_BASE, MOVE_SURGERY_LITERAL));

			// adding SOAP soap_headers
			_serviceClient.addHeadersToEnvelope(env);
			// set the message context with that soap envelope
			_messageContext.setEnvelope(env);

			// add the message contxt to the operation client
			_operationClient.addMessageContext(_messageContext);

			// execute the operation client
			_operationClient.execute(true);

			org.apache.axis2.context.MessageContext _returnMessageContext = _operationClient
					.getMessageContext(org.apache.axis2.wsdl.WSDLConstants.MESSAGE_LABEL_IN_VALUE);
			org.apache.axiom.soap.SOAPEnvelope _returnEnv = _returnMessageContext.getEnvelope();

			java.lang.Object object = fromOM(_returnEnv.getBody().getFirstElement(),
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.UebersiedelnOrdinationResponseE.class);

			return (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.UebersiedelnOrdinationResponseE) object;
		} catch (org.apache.axis2.AxisFault f) {
			org.apache.axiom.om.OMElement faultElt = f.getDetail();

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Error uebersiedelnOrdination: {}", faultElt);
			}

			if (faultElt != null) {
				if (faultExceptionNameMap.containsKey(
						new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), MOVE_SURGERY_LITERAL))) {
					// make the fault by reflection
					try {
						java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap.get(
								new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), MOVE_SURGERY_LITERAL));
						java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
						java.lang.reflect.Constructor constructor = exceptionClass
								.getConstructor(java.lang.String.class);
						java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

						// message class
						java.lang.String messageClassName = (java.lang.String) faultMessageMap.get(
								new org.apache.axis2.client.FaultMapKey(faultElt.getQName(), MOVE_SURGERY_LITERAL));
						java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
						java.lang.Object messageObject = fromOM(faultElt, messageClass);
						java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage", messageClass);
						m.invoke(ex, messageObject);

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) ex;
						}

						if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) {
							throw (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) ex;
						}

						throw new java.rmi.RemoteException(ex.getMessage(), ex);
					} catch (Exception e) {
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
				_messageContext.getTransportOut().getSender().cleanup(_messageContext);
			}
		}
	}

	/**
	 * Auto generated method signature for Asynchronous Invocations
	 *
	 * @see arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseService#startuebersiedelnOrdination
	 * @param uebersiedelnOrdination16
	 */
	public void startuebersiedelnOrdination(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.UebersiedelnOrdinationE uebersiedelnOrdination16,
			final arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceCallbackHandler callback)
			throws java.rmi.RemoteException {
		org.apache.axis2.client.OperationClient _operationClient = _serviceClient.createClient(operations[8].getName());
		_operationClient.getOptions()
				.setAction("http://soap.base.client.chipkarte.at/IBaseService/uebersiedelnOrdinationRequest");
		_operationClient.getOptions().setExceptionToBeThrownOnSOAPFault(true);

		addPropertyToOperationClient(_operationClient,
				org.apache.axis2.description.WSDL2Constants.ATTR_WHTTP_QUERY_PARAMETER_SEPARATOR, "&");

		// create SOAP envelope with that payload
		org.apache.axiom.soap.SOAPEnvelope env = null;
		final org.apache.axis2.context.MessageContext _messageContext = new org.apache.axis2.context.MessageContext();

		// Style is Doc.
		env = toEnvelope(getFactory(_operationClient.getOptions().getSoapVersionURI()), uebersiedelnOrdination16,
				optimizeContent(new javax.xml.namespace.QName(NAMESPACE_BASE,
						MOVE_SURGERY_LITERAL)),
				new javax.xml.namespace.QName(NAMESPACE_BASE, MOVE_SURGERY_LITERAL));

		// adding SOAP soap_headers
		_serviceClient.addHeadersToEnvelope(env);
		// create message context with that soap envelope
		_messageContext.setEnvelope(env);

		// add the message context to the operation client
		_operationClient.addMessageContext(_messageContext);

		_operationClient.setCallback(new org.apache.axis2.client.async.AxisCallback() {
			public void onMessage(org.apache.axis2.context.MessageContext resultContext) {
				try {
					org.apache.axiom.soap.SOAPEnvelope resultEnv = resultContext.getEnvelope();

					java.lang.Object object = fromOM(resultEnv.getBody().getFirstElement(),
							arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.UebersiedelnOrdinationResponseE.class);
					callback.receiveResultuebersiedelnOrdination(
							(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.UebersiedelnOrdinationResponseE) object);
				} catch (org.apache.axis2.AxisFault e) {
					callback.receiveErroruebersiedelnOrdination(e);
				}
			}

			public void onError(java.lang.Exception error) {
				if (error instanceof org.apache.axis2.AxisFault) {
					org.apache.axis2.AxisFault f = (org.apache.axis2.AxisFault) error;
					org.apache.axiom.om.OMElement faultElt = f.getDetail();

					if (faultElt != null) {
						if (faultExceptionNameMap.containsKey(new org.apache.axis2.client.FaultMapKey(
								faultElt.getQName(), MOVE_SURGERY_LITERAL))) {
							// make the fault by reflection
							try {
								java.lang.String exceptionClassName = (java.lang.String) faultExceptionClassNameMap
										.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
												MOVE_SURGERY_LITERAL));
								java.lang.Class exceptionClass = java.lang.Class.forName(exceptionClassName);
								java.lang.reflect.Constructor constructor = exceptionClass
										.getConstructor(java.lang.String.class);
								java.lang.Exception ex = (java.lang.Exception) constructor.newInstance(f.getMessage());

								// message class
								java.lang.String messageClassName = (java.lang.String) faultMessageMap
										.get(new org.apache.axis2.client.FaultMapKey(faultElt.getQName(),
												MOVE_SURGERY_LITERAL));
								java.lang.Class messageClass = java.lang.Class.forName(messageClassName);
								java.lang.Object messageObject = fromOM(faultElt, messageClass);
								java.lang.reflect.Method m = exceptionClass.getMethod("setFaultMessage", messageClass);
								m.invoke(ex, messageObject);

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) {
									callback.receiveErroruebersiedelnOrdination(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.ServiceException) ex);

									return;
								}

								if (ex instanceof arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) {
									callback.receiveErroruebersiedelnOrdination(
											(arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.DialogException) ex);

									return;
								}

								callback.receiveErroruebersiedelnOrdination(
										new java.rmi.RemoteException(ex.getMessage(), ex));
							} catch (Exception e) {
								// we cannot intantiate the class - throw the original Axis fault
								callback.receiveErroruebersiedelnOrdination(f);
							}
						} else {
							callback.receiveErroruebersiedelnOrdination(f);
						}
					} else {
						callback.receiveErroruebersiedelnOrdination(f);
					}
				} else {
					callback.receiveErroruebersiedelnOrdination(error);
				}
			}

			public void onFault(org.apache.axis2.context.MessageContext faultContext) {
				org.apache.axis2.AxisFault fault = org.apache.axis2.util.Utils
						.getInboundFaultFromMessageContext(faultContext);
				onError(fault);
			}

			public void onComplete() {
				try {
					_messageContext.getTransportOut().getSender().cleanup(_messageContext);
				} catch (org.apache.axis2.AxisFault axisFault) {
					callback.receiveErroruebersiedelnOrdination(axisFault);
				}
			}
		});

		org.apache.axis2.util.CallbackReceiver _callbackReceiver = null;

		if ((operations[8].getMessageReceiver() == null) && _operationClient.getOptions().isUseSeparateListener()) {
			_callbackReceiver = new org.apache.axis2.util.CallbackReceiver();
			operations[8].setMessageReceiver(_callbackReceiver);
		}

		// execute the operation client
		_operationClient.execute(false);
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

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetBerechtigungenE param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetBerechtigungenE.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetBerechtigungenResponseE param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetBerechtigungenResponseE.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.ServiceException param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.ServiceException.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.DialogException param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.DialogException.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMessagesE param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMessagesE.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMessagesResponseE param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMessagesResponseE.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMinMsgPollingIntervallE param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMinMsgPollingIntervallE.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMinMsgPollingIntervallResponseE param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMinMsgPollingIntervallResponseE.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetVertraegeE param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetVertraegeE.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetVertraegeResponseE param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetVertraegeResponseE.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CommonTypesE param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CommonTypesE.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CommonTypesResponseE param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CommonTypesResponseE.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.AccessException param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.AccessException.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PatientServiceException param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PatientServiceException.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CardException param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CardException.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CheckStatusE param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CheckStatusE.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CheckStatusResponseE param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CheckStatusResponseE.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetFachgebieteByOrdIdE param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetFachgebieteByOrdIdE.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetFachgebieteByOrdIdResponseE param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetFachgebieteByOrdIdResponseE.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PollMessagesE param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PollMessagesE.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PollMessagesResponseE param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PollMessagesResponseE.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.UebersiedelnOrdinationE param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.UebersiedelnOrdinationE.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.om.OMElement toOM(
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.UebersiedelnOrdinationResponseE param,
			boolean optimizeContent) throws org.apache.axis2.AxisFault {
		try {
			return param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.UebersiedelnOrdinationResponseE.MY_QNAME,
					org.apache.axiom.om.OMAbstractFactory.getOMFactory());
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetBerechtigungenE param,
			boolean optimizeContent, javax.xml.namespace.QName elementQName) throws org.apache.axis2.AxisFault {
		try {
			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();
			emptyEnvelope.getBody().addChild(param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetBerechtigungenE.MY_QNAME,
					factory));

			return emptyEnvelope;
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */
	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMessagesE param,
			boolean optimizeContent, javax.xml.namespace.QName elementQName) throws org.apache.axis2.AxisFault {
		try {
			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();
			emptyEnvelope.getBody().addChild(param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMessagesE.MY_QNAME,
					factory));

			return emptyEnvelope;
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */
	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMinMsgPollingIntervallE param,
			boolean optimizeContent, javax.xml.namespace.QName elementQName) throws org.apache.axis2.AxisFault {
		try {
			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();
			emptyEnvelope.getBody().addChild(param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMinMsgPollingIntervallE.MY_QNAME,
					factory));

			return emptyEnvelope;
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */
	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetVertraegeE param,
			boolean optimizeContent, javax.xml.namespace.QName elementQName) throws org.apache.axis2.AxisFault {
		try {
			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();
			emptyEnvelope.getBody().addChild(param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetVertraegeE.MY_QNAME,
					factory));

			return emptyEnvelope;
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */
	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CommonTypesE param,
			boolean optimizeContent, javax.xml.namespace.QName elementQName) throws org.apache.axis2.AxisFault {
		try {
			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();
			emptyEnvelope.getBody().addChild(param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CommonTypesE.MY_QNAME,
					factory));

			return emptyEnvelope;
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */
	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CheckStatusE param,
			boolean optimizeContent, javax.xml.namespace.QName elementQName) throws org.apache.axis2.AxisFault {
		try {
			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();
			emptyEnvelope.getBody().addChild(param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CheckStatusE.MY_QNAME,
					factory));

			return emptyEnvelope;
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */
	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetFachgebieteByOrdIdE param,
			boolean optimizeContent, javax.xml.namespace.QName elementQName) throws org.apache.axis2.AxisFault {
		try {
			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();
			emptyEnvelope.getBody().addChild(param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetFachgebieteByOrdIdE.MY_QNAME,
					factory));

			return emptyEnvelope;
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */
	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PollMessagesE param,
			boolean optimizeContent, javax.xml.namespace.QName elementQName) throws org.apache.axis2.AxisFault {
		try {
			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();
			emptyEnvelope.getBody().addChild(param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PollMessagesE.MY_QNAME,
					factory));

			return emptyEnvelope;
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */
	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory,
			arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.UebersiedelnOrdinationE param,
			boolean optimizeContent, javax.xml.namespace.QName elementQName) throws org.apache.axis2.AxisFault {
		try {
			org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();
			emptyEnvelope.getBody().addChild(param.getOMElement(
					arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.UebersiedelnOrdinationE.MY_QNAME,
					factory));

			return emptyEnvelope;
		} catch (org.apache.axis2.databinding.ADBException e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}
	}

	/* methods to provide back word compatibility */

	/**
	 * get the default envelope
	 */
	private org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory) {
		return factory.getDefaultEnvelope();
	}

	private java.lang.Object fromOM(org.apache.axiom.om.OMElement param, java.lang.Class type)
			throws org.apache.axis2.AxisFault {
		try {
			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.AccessException.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.AccessException.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CardException.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CardException.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CheckStatusE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CheckStatusE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CheckStatusResponseE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CheckStatusResponseE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CommonTypesE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CommonTypesE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CommonTypesResponseE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.CommonTypesResponseE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.DialogException.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.DialogException.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetBerechtigungenE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetBerechtigungenE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetBerechtigungenResponseE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetBerechtigungenResponseE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetFachgebieteByOrdIdE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetFachgebieteByOrdIdE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetFachgebieteByOrdIdResponseE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetFachgebieteByOrdIdResponseE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMessagesE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMessagesE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMessagesResponseE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMessagesResponseE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMinMsgPollingIntervallE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMinMsgPollingIntervallE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMinMsgPollingIntervallResponseE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetMinMsgPollingIntervallResponseE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetVertraegeE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetVertraegeE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetVertraegeResponseE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.GetVertraegeResponseE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PatientServiceException.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PatientServiceException.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PollMessagesE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PollMessagesE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PollMessagesResponseE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PollMessagesResponseE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.ServiceException.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.ServiceException.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.UebersiedelnOrdinationE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.UebersiedelnOrdinationE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}

			if (arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.UebersiedelnOrdinationResponseE.class
					.equals(type)) {
				return arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.UebersiedelnOrdinationResponseE.Factory
						.parse(param.getXMLStreamReaderWithoutCaching());
			}
		} catch (java.lang.Exception e) {
			throw org.apache.axis2.AxisFault.makeFault(e);
		}

		return null;
	}

	// https://localhost/base/16
	public static class PollMessagesResponse implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * pollMessagesResponse Namespace URI = http://soap.base.client.chipkarte.at
		 * Namespace Prefix = ns2
		 */

		/**
		 * field for _return
		 */
		protected MessagePollResult local_return;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean local_returnTracker = false;

		public boolean is_returnSpecified() {
			return local_returnTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return MessagePollResult
		 */
		public MessagePollResult get_return() {
			return local_return;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param _return
		 */
		public void set_return(MessagePollResult param) {
			local_returnTracker = param != null;

			this.local_return = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":pollMessagesResponse", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							"pollMessagesResponse", xmlWriter);
				}
			}

			if (local_returnTracker) {
				if (local_return == null) {
					throw new org.apache.axis2.databinding.ADBException("return cannot be null!!");
				}

				local_return.serialize(new javax.xml.namespace.QName(NAMESPACE_BASE, "return"),
						xmlWriter);
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static PollMessagesResponse parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				PollMessagesResponse object = new PollMessagesResponse();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"pollMessagesResponse".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (PollMessagesResponse) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "return")
									.equals(reader.getName())) {
						object.set_return(MessagePollResult.Factory.parse(reader));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class PollMessages implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name = pollMessages
		 * Namespace URI = http://soap.base.client.chipkarte.at Namespace Prefix = ns2
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
		 * field for Suchzeitpunkt
		 */
		protected java.lang.String localSuchzeitpunkt;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localSuchzeitpunktTracker = false;

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

		public boolean isSuchzeitpunktSpecified() {
			return localSuchzeitpunktTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getSuchzeitpunkt() {
			return localSuchzeitpunkt;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Suchzeitpunkt
		 */
		public void setSuchzeitpunkt(java.lang.String param) {
			localSuchzeitpunktTracker = param != null;

			this.localSuchzeitpunkt = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":pollMessages", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							POLL_MESSAGES_LITERAL, xmlWriter);
				}
			}

			if (localDialogIdTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "dialogId", xmlWriter);

				if (localDialogId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("dialogId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localDialogId);
				}

				xmlWriter.writeEndElement();
			}

			if (localSuchzeitpunktTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "suchzeitpunkt", xmlWriter);

				if (localSuchzeitpunkt == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("suchzeitpunkt cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localSuchzeitpunkt);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static PollMessages parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				PollMessages object = new PollMessages();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!POLL_MESSAGES_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (PollMessages) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "dialogId")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "dialogId" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setDialogId(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "suchzeitpunkt")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "suchzeitpunkt" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setSuchzeitpunkt(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetFachgebieteByOrdIdE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_BASE, GET_SUBJECT_SURGERY_ID_LITERAL, "ns2");

		/**
		 * field for GetFachgebieteByOrdId
		 */
		protected GetFachgebieteByOrdId localGetFachgebieteByOrdId;

		/**
		 * Auto generated getter method
		 * 
		 * @return GetFachgebieteByOrdId
		 */
		public GetFachgebieteByOrdId getGetFachgebieteByOrdId() {
			return localGetFachgebieteByOrdId;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param GetFachgebieteByOrdId
		 */
		public void setGetFachgebieteByOrdId(GetFachgebieteByOrdId param) {
			this.localGetFachgebieteByOrdId = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localGetFachgebieteByOrdId == null) {
				throw new org.apache.axis2.databinding.ADBException("getFachgebieteByOrdId cannot be null!");
			}

			localGetFachgebieteByOrdId.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetFachgebieteByOrdIdE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				GetFachgebieteByOrdIdE object = new GetFachgebieteByOrdIdE();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_BASE,
											GET_SUBJECT_SURGERY_ID_LITERAL).equals(reader.getName())) {
								object.setGetFachgebieteByOrdId(GetFachgebieteByOrdId.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetMessages implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name = getMessages
		 * Namespace URI = http://soap.base.client.chipkarte.at Namespace Prefix = ns2
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
		 * field for NewOnly
		 */
		protected boolean localNewOnly;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localNewOnlyTracker = false;

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

		public boolean isNewOnlySpecified() {
			return localNewOnlyTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return boolean
		 */
		public boolean getNewOnly() {
			return localNewOnly;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param NewOnly
		 */
		public void setNewOnly(boolean param) {
			// setting primitive attribute tracker to true
			localNewOnlyTracker = true;

			this.localNewOnly = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":getMessages", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							GET_MESSAGES_LITERAL, xmlWriter);
				}
			}

			if (localDialogIdTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "dialogId", xmlWriter);

				if (localDialogId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("dialogId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localDialogId);
				}

				xmlWriter.writeEndElement();
			}

			if (localNewOnlyTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "newOnly", xmlWriter);

				if (false) {
					throw new org.apache.axis2.databinding.ADBException("newOnly cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localNewOnly));
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetMessages parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				GetMessages object = new GetMessages();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!GET_MESSAGES_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (GetMessages) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "dialogId")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "dialogId" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setDialogId(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "newOnly")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "newOnly" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setNewOnly(org.apache.axis2.databinding.utils.ConverterUtil.convertToBoolean(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class UebersiedelnOrdinationE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_BASE, MOVE_SURGERY_LITERAL, "ns2");

		/**
		 * field for UebersiedelnOrdination
		 */
		protected UebersiedelnOrdination localUebersiedelnOrdination;

		/**
		 * Auto generated getter method
		 * 
		 * @return UebersiedelnOrdination
		 */
		public UebersiedelnOrdination getUebersiedelnOrdination() {
			return localUebersiedelnOrdination;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param UebersiedelnOrdination
		 */
		public void setUebersiedelnOrdination(UebersiedelnOrdination param) {
			this.localUebersiedelnOrdination = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localUebersiedelnOrdination == null) {
				throw new org.apache.axis2.databinding.ADBException("uebersiedelnOrdination cannot be null!");
			}

			localUebersiedelnOrdination.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static UebersiedelnOrdinationE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				UebersiedelnOrdinationE object = new UebersiedelnOrdinationE();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_BASE,
											MOVE_SURGERY_LITERAL).equals(reader.getName())) {
								object.setUebersiedelnOrdination(UebersiedelnOrdination.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class DialogException implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_EXCEPTIONS_BASE, DIALOG_EXCEPTION_LITERAL, "ns1");

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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localDialogException == null) {
				throw new org.apache.axis2.databinding.ADBException("DialogException cannot be null!");
			}

			localDialogException.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_EXCEPTIONS_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

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

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
											DIALOG_EXCEPTION_LITERAL).equals(reader.getName())) {
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
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
		 * @param parentQName
		 * @param factory
		 * @return org.apache.axiom.om.OMElement
		 */
		public org.apache.axiom.om.OMElement getOMElement(final javax.xml.namespace.QName parentQName,
				final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException {
			return factory.createOMElement(new org.apache.axis2.databinding.ADBDataSource(this, parentQName));
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElementBaseService(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			java.lang.String namespacePrefix = registerPrefixBaseService(xmlWriter,
					NAMESPACE_EXCEPTIONS_BASE);

			if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
				writeAttributeBaseService(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
						namespacePrefix + ":serviceExceptionContent", xmlWriter);
			} else {
				writeAttributeBaseService(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
						"serviceExceptionContent", xmlWriter);
			}

			if (localCodeTracker) {
				namespace = NAMESPACE_EXCEPTIONS_BASE;
				writeStartElementBaseService(null, namespace, "code", xmlWriter);

				if (localCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("code cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localErrorCodeTracker) {
				namespace = NAMESPACE_EXCEPTIONS_BASE;
				writeStartElementBaseService(null, namespace, "errorCode", xmlWriter);

				if (localErrorCode == java.lang.Integer.MIN_VALUE) {
					throw new org.apache.axis2.databinding.ADBException("errorCode cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localErrorCode));
				}

				xmlWriter.writeEndElement();
			}

			if (localMessageTracker) {
				namespace = NAMESPACE_EXCEPTIONS_BASE;
				writeStartElementBaseService(null, namespace, "message", xmlWriter);

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
			if (namespace.equals(NAMESPACE_EXCEPTIONS_BASE)) {
				return "ns1";
			}

			return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
		}

		/**
		 * Utility method to write an element start tag.
		 */
		private void writeStartElementBaseService(java.lang.String prefix, java.lang.String namespace,
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
		private void writeAttributeBaseService(java.lang.String prefix, java.lang.String namespace,
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttributeBaseService(java.lang.String namespace, java.lang.String attName,
				java.lang.String attValue, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefixBaseService(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttributeBaseService(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefixBaseService(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefixBaseService(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQNameBaseService(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNamesBaseService(javax.xml.namespace.QName[] qnames,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
			}
		}

		/**
		 * Register a namespace prefix
		 */
		private java.lang.String registerPrefixBaseService(javax.xml.stream.XMLStreamWriter xmlWriter,
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

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

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"serviceExceptionContent".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (ServiceExceptionContent) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE, "code")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "code" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
									"errorCode").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "errorCode" + "  cannot be null");
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
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
									"message").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "message" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setMessage(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class CheckStatusE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_BASE, CHECK_STATUS_LITERAL, "ns2");

		/**
		 * field for CheckStatus
		 */
		protected CheckStatus localCheckStatus;

		/**
		 * Auto generated getter method
		 * 
		 * @return CheckStatus
		 */
		public CheckStatus getCheckStatus() {
			return localCheckStatus;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param CheckStatus
		 */
		public void setCheckStatus(CheckStatus param) {
			this.localCheckStatus = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localCheckStatus == null) {
				throw new org.apache.axis2.databinding.ADBException("checkStatus cannot be null!");
			}

			localCheckStatus.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static CheckStatusE parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				CheckStatusE object = new CheckStatusE();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_BASE,
											CHECK_STATUS_LITERAL).equals(reader.getName())) {
								object.setCheckStatus(CheckStatus.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetBerechtigungenResponse implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * getBerechtigungenResponse Namespace URI =
		 * http://soap.base.client.chipkarte.at Namespace Prefix = ns2
		 */

		/**
		 * field for _return This was an Array!
		 */
		protected java.lang.String[] local_return;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean local_returnTracker = false;

		public boolean is_returnSpecified() {
			return local_returnTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String[]
		 */
		public java.lang.String[] get_return() {
			return local_return;
		}

		/**
		 * validate the array for _return
		 */
		protected void validate_return(java.lang.String[] param) {
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param _return
		 */
		public void set_return(java.lang.String[] param) {
			validate_return(param);

			local_returnTracker = true;

			this.local_return = param;
		}

		/**
		 * Auto generated add method for the array for convenience
		 * 
		 * @param param java.lang.String
		 */
		public void add_return(java.lang.String param) {
			if (local_return == null) {
				local_return = new java.lang.String[] {};
			}

			// update the setting tracker
			local_returnTracker = true;

			java.util.List list = org.apache.axis2.databinding.utils.ConverterUtil.toList(local_return);
			list.add(param);
			this.local_return = (java.lang.String[]) list.toArray(new java.lang.String[list.size()]);
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":getBerechtigungenResponse", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							"getBerechtigungenResponse", xmlWriter);
				}
			}

			if (local_returnTracker) {
				if (local_return != null) {
					namespace = NAMESPACE_BASE;

					for (int i = 0; i < local_return.length; i++) {
						if (local_return[i] != null) {
							writeStartElement(null, namespace, "return", xmlWriter);

							xmlWriter.writeCharacters(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(local_return[i]));

							xmlWriter.writeEndElement();
						} else {
							// write null attribute
							namespace = NAMESPACE_BASE;
							writeStartElement(null, namespace, "return", xmlWriter);
							writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, "nil", "1", xmlWriter);
							xmlWriter.writeEndElement();
						}
					}
				} else {
					// write the null attribute
					// write null attribute
					writeStartElement(null, NAMESPACE_BASE, "return", xmlWriter);

					// write the nil attribute
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, "nil", "1", xmlWriter);
					xmlWriter.writeEndElement();
				}
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetBerechtigungenResponse parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				GetBerechtigungenResponse object = new GetBerechtigungenResponse();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"getBerechtigungenResponse".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (GetBerechtigungenResponse) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					java.util.ArrayList list1 = new java.util.ArrayList();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "return")
									.equals(reader.getName())) {
						// Process the array and step past its final element's end.
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							list1.add(null);

							reader.next();
						} else {
							list1.add(reader.getElementText());
						}

						// loop until we find a start element that is not part of this array
						boolean loopDone1 = false;

						while (!loopDone1) {
							// Ensure we are at the EndElement
							while (!reader.isEndElement()) {
								reader.next();
							}

							// Step out of this element
							reader.next();

							// Step to next element event.
							while (!reader.isStartElement() && !reader.isEndElement())
								reader.next();

							if (reader.isEndElement()) {
								// two continuous end elements means we are exiting the xml structure
								loopDone1 = true;
							} else {
								if (new javax.xml.namespace.QName(NAMESPACE_BASE, "return")
										.equals(reader.getName())) {
									nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

									if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
										list1.add(null);

										reader.next();
									} else {
										list1.add(reader.getElementText());
									}
								} else {
									loopDone1 = true;
								}
							}
						}

						// call the converter utility to convert and set the array
						object.set_return((java.lang.String[]) list1.toArray(new java.lang.String[list1.size()]));
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class CommonTypesResponse implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * commonTypesResponse Namespace URI = http://soap.base.client.chipkarte.at
		 * Namespace Prefix = ns2
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":commonTypesResponse", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							"commonTypesResponse", xmlWriter);
				}
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static CommonTypesResponse parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				CommonTypesResponse object = new CommonTypesResponse();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"commonTypesResponse".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (CommonTypesResponse) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class AccessException implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_EXCEPTIONS_BASE, "AccessException", "ns1");

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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localAccessException == null) {
				throw new org.apache.axis2.databinding.ADBException("AccessException cannot be null!");
			}

			localAccessException.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_EXCEPTIONS_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

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

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
											"AccessException").equals(reader.getName())) {
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetMinMsgPollingIntervallResponse implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * getMinMsgPollingIntervallResponse Namespace URI =
		 * http://soap.base.client.chipkarte.at Namespace Prefix = ns2
		 */

		/**
		 * field for _return
		 */
		protected int local_return;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean local_returnTracker = false;

		public boolean is_returnSpecified() {
			return local_returnTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return int
		 */
		public int get_return() {
			return local_return;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param _return
		 */
		public void set_return(int param) {
			// setting primitive attribute tracker to true
			local_returnTracker = param != java.lang.Integer.MIN_VALUE;

			this.local_return = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":getMinMsgPollingIntervallResponse", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							"getMinMsgPollingIntervallResponse", xmlWriter);
				}
			}

			if (local_returnTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "return", xmlWriter);

				if (local_return == java.lang.Integer.MIN_VALUE) {
					throw new org.apache.axis2.databinding.ADBException("return cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(local_return));
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetMinMsgPollingIntervallResponse parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				GetMinMsgPollingIntervallResponse object = new GetMinMsgPollingIntervallResponse();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"getMinMsgPollingIntervallResponse".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (GetMinMsgPollingIntervallResponse) ExtensionMapper.getTypeObject(nsUri, type,
										reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "return")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "return" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.set_return(org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(content));

						reader.next();
					} // End of if for expected property start element

					else {
						object.set_return(java.lang.Integer.MIN_VALUE);
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class CardException implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_EXCEPTIONS_BASE, "CardException", "ns1");

		/**
		 * field for CardException
		 */
		protected CardExceptionContent localCardException;

		/**
		 * Auto generated getter method
		 * 
		 * @return CardExceptionContent
		 */
		public CardExceptionContent getCardException() {
			return localCardException;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param CardException
		 */
		public void setCardException(CardExceptionContent param) {
			this.localCardException = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localCardException == null) {
				throw new org.apache.axis2.databinding.ADBException("CardException cannot be null!");
			}

			localCardException.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_EXCEPTIONS_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static CardException parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				CardException object = new CardException();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
											"CardException").equals(reader.getName())) {
								object.setCardException(CardExceptionContent.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class CommonTypesE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_BASE, COMMON_TYPES_LITERAL, "ns2");

		/**
		 * field for CommonTypes
		 */
		protected CommonTypes localCommonTypes;

		/**
		 * Auto generated getter method
		 * 
		 * @return CommonTypes
		 */
		public CommonTypes getCommonTypes() {
			return localCommonTypes;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param CommonTypes
		 */
		public void setCommonTypes(CommonTypes param) {
			this.localCommonTypes = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localCommonTypes == null) {
				throw new org.apache.axis2.databinding.ADBException("commonTypes cannot be null!");
			}

			localCommonTypes.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static CommonTypesE parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				CommonTypesE object = new CommonTypesE();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_BASE,
											COMMON_TYPES_LITERAL).equals(reader.getName())) {
								object.setCommonTypes(CommonTypes.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetMessagesE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_BASE, GET_MESSAGES_LITERAL, "ns2");

		/**
		 * field for GetMessages
		 */
		protected GetMessages localGetMessages;

		/**
		 * Auto generated getter method
		 * 
		 * @return GetMessages
		 */
		public GetMessages getGetMessages() {
			return localGetMessages;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param GetMessages
		 */
		public void setGetMessages(GetMessages param) {
			this.localGetMessages = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localGetMessages == null) {
				throw new org.apache.axis2.databinding.ADBException("getMessages cannot be null!");
			}

			localGetMessages.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetMessagesE parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				GetMessagesE object = new GetMessagesE();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_BASE,
											GET_MESSAGES_LITERAL).equals(reader.getName())) {
								object.setGetMessages(GetMessages.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class ErsatzbelegInfo implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * ersatzbelegInfo Namespace URI = http://soap.base.client.chipkarte.at
		 * Namespace Prefix = ns2
		 */

		/**
		 * field for Ausweisdaten
		 */
		protected java.lang.String localAusweisdaten;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localAusweisdatenTracker = false;

		/**
		 * field for ErsatzbelegCode
		 */
		protected java.lang.String localErsatzbelegCode;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localErsatzbelegCodeTracker = false;

		public boolean isAusweisdatenSpecified() {
			return localAusweisdatenTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getAusweisdaten() {
			return localAusweisdaten;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Ausweisdaten
		 */
		public void setAusweisdaten(java.lang.String param) {
			localAusweisdatenTracker = param != null;

			this.localAusweisdaten = param;
		}

		public boolean isErsatzbelegCodeSpecified() {
			return localErsatzbelegCodeTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getErsatzbelegCode() {
			return localErsatzbelegCode;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param ErsatzbelegCode
		 */
		public void setErsatzbelegCode(java.lang.String param) {
			localErsatzbelegCodeTracker = param != null;

			this.localErsatzbelegCode = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":ersatzbelegInfo", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							"ersatzbelegInfo", xmlWriter);
				}
			}

			if (localAusweisdatenTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "ausweisdaten", xmlWriter);

				if (localAusweisdaten == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("ausweisdaten cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localAusweisdaten);
				}

				xmlWriter.writeEndElement();
			}

			if (localErsatzbelegCodeTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "ersatzbelegCode", xmlWriter);

				if (localErsatzbelegCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("ersatzbelegCode cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localErsatzbelegCode);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static ErsatzbelegInfo parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				ErsatzbelegInfo object = new ErsatzbelegInfo();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"ersatzbelegInfo".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (ErsatzbelegInfo) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "ausweisdaten")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "ausweisdaten" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setAusweisdaten(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "ersatzbelegCode")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "ersatzbelegCode" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setErsatzbelegCode(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class ExtensionMapper {
		public static java.lang.Object getTypeObject(java.lang.String namespaceURI, java.lang.String typeName,
				javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
			if (NAMESPACE_EXCEPTIONS_BASE.equals(namespaceURI)
					&& "accessExceptionContent".equals(typeName)) {
				return AccessExceptionContent.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && "checkStatusResponse".equals(typeName)) {
				return CheckStatusResponse.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && "property".equals(typeName)) {
				return Property.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && GET_CONTRACTS_LITERAL.equals(typeName)) {
				return GetVertraege.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI)
					&& "getMinMsgPollingIntervallResponse".equals(typeName)) {
				return GetMinMsgPollingIntervallResponse.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && CHECK_STATUS_LITERAL.equals(typeName)) {
				return CheckStatus.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI)
					&& GET_SUBJECT_SURGERY_ID_LITERAL.equals(typeName)) {
				return GetFachgebieteByOrdId.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && GET_BERECHTIGUNGEN_LITERAL.equals(typeName)) {
				return GetBerechtigungen.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && GET_MESSAGES_LITERAL.equals(typeName)) {
				return GetMessages.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI)
					&& "getFachgebieteByOrdIdResponse".equals(typeName)) {
				return GetFachgebieteByOrdIdResponse.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI)
					&& "getVertraegeResponse".equals(typeName)) {
				return GetVertraegeResponse.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && "baseProperty".equals(typeName)) {
				return BaseProperty.Factory.parse(reader);
			}

			if (NAMESPACE_EXCEPTIONS_BASE.equals(namespaceURI)
					&& "baseExceptionContent".equals(typeName)) {
				return BaseExceptionContent.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI)
					&& "uebersiedelnOrdinationResponse".equals(typeName)) {
				return UebersiedelnOrdinationResponse.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && "commonTypesResponse".equals(typeName)) {
				return CommonTypesResponse.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && "getMessagesResponse".equals(typeName)) {
				return GetMessagesResponse.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && "messagePollResult".equals(typeName)) {
				return MessagePollResult.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI)
					&& GET_MIN_MSG_POLLING_INTERVAL_LITERAL.equals(typeName)) {
				return GetMinMsgPollingIntervall.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && "svPersonV2".equals(typeName)) {
				return SvPersonV2.Factory.parse(reader);
			}

			if (NAMESPACE_EXCEPTIONS_BASE.equals(namespaceURI)
					&& "patientServiceExceptionContent".equals(typeName)) {
				return PatientServiceExceptionContent.Factory.parse(reader);
			}

			if (NAMESPACE_EXCEPTIONS_BASE.equals(namespaceURI)
					&& "dialogExceptionContent".equals(typeName)) {
				return DialogExceptionContent.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && "message".equals(typeName)) {
				return Message.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && "ersatzbelegInfo".equals(typeName)) {
				return ErsatzbelegInfo.Factory.parse(reader);
			}

			if (NAMESPACE_EXCEPTIONS_BASE.equals(namespaceURI)
					&& "serviceExceptionContent".equals(typeName)) {
				return ServiceExceptionContent.Factory.parse(reader);
			}

			if (NAMESPACE_EXCEPTIONS_BASE.equals(namespaceURI)
					&& "cardExceptionContent".equals(typeName)) {
				return CardExceptionContent.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI)
					&& "getBerechtigungenResponse".equals(typeName)) {
				return GetBerechtigungenResponse.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && "svtProperty".equals(typeName)) {
				return SvtProperty.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && "vertragsDaten".equals(typeName)) {
				return VertragsDaten.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && COMMON_TYPES_LITERAL.equals(typeName)) {
				return CommonTypes.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI)
					&& "pollMessagesResponse".equals(typeName)) {
				return PollMessagesResponse.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI) && POLL_MESSAGES_LITERAL.equals(typeName)) {
				return PollMessages.Factory.parse(reader);
			}

			if (NAMESPACE_BASE.equals(namespaceURI)
					&& MOVE_SURGERY_LITERAL.equals(typeName)) {
				return UebersiedelnOrdination.Factory.parse(reader);
			}

			throw new org.apache.axis2.databinding.ADBException("Unsupported type " + namespaceURI + " " + typeName);
		}
	}

	public static class CommonTypes implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name = commonTypes
		 * Namespace URI = http://soap.base.client.chipkarte.at Namespace Prefix = ns2
		 */

		/**
		 * field for Svt
		 */
		protected SvtProperty localSvt;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localSvtTracker = false;

		public boolean isSvtSpecified() {
			return localSvtTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return SvtProperty
		 */
		public SvtProperty getSvt() {
			return localSvt;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Svt
		 */
		public void setSvt(SvtProperty param) {
			localSvtTracker = param != null;

			this.localSvt = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":commonTypes", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							COMMON_TYPES_LITERAL, xmlWriter);
				}
			}

			if (localSvtTracker) {
				if (localSvt == null) {
					throw new org.apache.axis2.databinding.ADBException("svt cannot be null!!");
				}

				localSvt.serialize(new javax.xml.namespace.QName(NAMESPACE_BASE, "svt"),
						xmlWriter);
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static CommonTypes parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				CommonTypes object = new CommonTypes();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!COMMON_TYPES_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (CommonTypes) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "svt")
									.equals(reader.getName())) {
						object.setSvt(SvtProperty.Factory.parse(reader));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetMinMsgPollingIntervallE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_BASE, GET_MIN_MSG_POLLING_INTERVAL_LITERAL, "ns2");

		/**
		 * field for GetMinMsgPollingIntervall
		 */
		protected GetMinMsgPollingIntervall localGetMinMsgPollingIntervall;

		/**
		 * Auto generated getter method
		 * 
		 * @return GetMinMsgPollingIntervall
		 */
		public GetMinMsgPollingIntervall getGetMinMsgPollingIntervall() {
			return localGetMinMsgPollingIntervall;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param GetMinMsgPollingIntervall
		 */
		public void setGetMinMsgPollingIntervall(GetMinMsgPollingIntervall param) {
			this.localGetMinMsgPollingIntervall = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localGetMinMsgPollingIntervall == null) {
				throw new org.apache.axis2.databinding.ADBException("getMinMsgPollingIntervall cannot be null!");
			}

			localGetMinMsgPollingIntervall.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetMinMsgPollingIntervallE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				GetMinMsgPollingIntervallE object = new GetMinMsgPollingIntervallE();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_BASE,
											GET_MIN_MSG_POLLING_INTERVAL_LITERAL).equals(reader.getName())) {
								object.setGetMinMsgPollingIntervall(GetMinMsgPollingIntervall.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetFachgebieteByOrdIdResponseE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_BASE, "getFachgebieteByOrdIdResponse", "ns2");

		/**
		 * field for GetFachgebieteByOrdIdResponse
		 */
		protected GetFachgebieteByOrdIdResponse localGetFachgebieteByOrdIdResponse;

		/**
		 * Auto generated getter method
		 * 
		 * @return GetFachgebieteByOrdIdResponse
		 */
		public GetFachgebieteByOrdIdResponse getGetFachgebieteByOrdIdResponse() {
			return localGetFachgebieteByOrdIdResponse;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param GetFachgebieteByOrdIdResponse
		 */
		public void setGetFachgebieteByOrdIdResponse(GetFachgebieteByOrdIdResponse param) {
			this.localGetFachgebieteByOrdIdResponse = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localGetFachgebieteByOrdIdResponse == null) {
				throw new org.apache.axis2.databinding.ADBException("getFachgebieteByOrdIdResponse cannot be null!");
			}

			localGetFachgebieteByOrdIdResponse.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetFachgebieteByOrdIdResponseE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				GetFachgebieteByOrdIdResponseE object = new GetFachgebieteByOrdIdResponseE();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_BASE,
											"getFachgebieteByOrdIdResponse").equals(reader.getName())) {
								object.setGetFachgebieteByOrdIdResponse(
										GetFachgebieteByOrdIdResponse.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetVertraegeResponseE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_BASE, "getVertraegeResponse", "ns2");

		/**
		 * field for GetVertraegeResponse
		 */
		protected GetVertraegeResponse localGetVertraegeResponse;

		/**
		 * Auto generated getter method
		 * 
		 * @return GetVertraegeResponse
		 */
		public GetVertraegeResponse getGetVertraegeResponse() {
			return localGetVertraegeResponse;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param GetVertraegeResponse
		 */
		public void setGetVertraegeResponse(GetVertraegeResponse param) {
			this.localGetVertraegeResponse = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localGetVertraegeResponse == null) {
				throw new org.apache.axis2.databinding.ADBException("getVertraegeResponse cannot be null!");
			}

			localGetVertraegeResponse.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetVertraegeResponseE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				GetVertraegeResponseE object = new GetVertraegeResponseE();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_BASE,
											"getVertraegeResponse").equals(reader.getName())) {
								object.setGetVertraegeResponse(GetVertraegeResponse.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
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
		 * @param parentQName
		 * @param factory
		 * @return org.apache.axiom.om.OMElement
		 */
		public org.apache.axiom.om.OMElement getOMElement(final javax.xml.namespace.QName parentQName,
				final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException {
			return factory.createOMElement(new org.apache.axis2.databinding.ADBDataSource(this, parentQName));
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElementBaseService(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			java.lang.String namespacePrefix = registerPrefixBaseService(xmlWriter,
					NAMESPACE_EXCEPTIONS_BASE);

			if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
				writeAttributeBaseService(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
						namespacePrefix + ":dialogExceptionContent", xmlWriter);
			} else {
				writeAttributeBaseService(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
						"dialogExceptionContent", xmlWriter);
			}

			if (localCodeTracker) {
				namespace = NAMESPACE_EXCEPTIONS_BASE;
				writeStartElementBaseService(null, namespace, "code", xmlWriter);

				if (localCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("code cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localErrorCodeTracker) {
				namespace = NAMESPACE_EXCEPTIONS_BASE;
				writeStartElementBaseService(null, namespace, "errorCode", xmlWriter);

				if (localErrorCode == java.lang.Integer.MIN_VALUE) {
					throw new org.apache.axis2.databinding.ADBException("errorCode cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localErrorCode));
				}

				xmlWriter.writeEndElement();
			}

			if (localMessageTracker) {
				namespace = NAMESPACE_EXCEPTIONS_BASE;
				writeStartElementBaseService(null, namespace, "message", xmlWriter);

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
			if (namespace.equals(NAMESPACE_EXCEPTIONS_BASE)) {
				return "ns1";
			}

			return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
		}

		/**
		 * Utility method to write an element start tag.
		 */
		private void writeStartElementBaseService(java.lang.String prefix, java.lang.String namespace,
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
		private void writeAttributeBaseService(java.lang.String prefix, java.lang.String namespace,
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttributeBaseService(java.lang.String namespace, java.lang.String attName,
				java.lang.String attValue, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefixBaseService(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttributeBaseService(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefixBaseService(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefixBaseService(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQNameBaseService(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNamesBaseService(javax.xml.namespace.QName[] qnames,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
			}
		}

		/**
		 * Register a namespace prefix
		 */
		private java.lang.String registerPrefixBaseService(javax.xml.stream.XMLStreamWriter xmlWriter,
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

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

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"dialogExceptionContent".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (DialogExceptionContent) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE, "code")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "code" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
									"errorCode").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "errorCode" + "  cannot be null");
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
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
									"message").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "message" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setMessage(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class ServiceException implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_EXCEPTIONS_BASE, SERVICE_EXCEPTION_LITERAL, "ns1");

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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localServiceException == null) {
				throw new org.apache.axis2.databinding.ADBException("ServiceException cannot be null!");
			}

			localServiceException.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_EXCEPTIONS_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

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

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
											SERVICE_EXCEPTION_LITERAL).equals(reader.getName())) {
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class PollMessagesResponseE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_BASE, "pollMessagesResponse", "ns2");

		/**
		 * field for PollMessagesResponse
		 */
		protected PollMessagesResponse localPollMessagesResponse;

		/**
		 * Auto generated getter method
		 * 
		 * @return PollMessagesResponse
		 */
		public PollMessagesResponse getPollMessagesResponse() {
			return localPollMessagesResponse;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param PollMessagesResponse
		 */
		public void setPollMessagesResponse(PollMessagesResponse param) {
			this.localPollMessagesResponse = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localPollMessagesResponse == null) {
				throw new org.apache.axis2.databinding.ADBException("pollMessagesResponse cannot be null!");
			}

			localPollMessagesResponse.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static PollMessagesResponseE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				PollMessagesResponseE object = new PollMessagesResponseE();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_BASE,
											"pollMessagesResponse").equals(reader.getName())) {
								object.setPollMessagesResponse(PollMessagesResponse.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetVertraegeResponse implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * getVertraegeResponse Namespace URI = http://soap.base.client.chipkarte.at
		 * Namespace Prefix = ns2
		 */

		/**
		 * field for _return This was an Array!
		 */
		protected VertragsDaten[] local_return;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean local_returnTracker = false;

		public boolean is_returnSpecified() {
			return local_returnTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return VertragsDaten[]
		 */
		public VertragsDaten[] get_return() {
			return local_return;
		}

		/**
		 * validate the array for _return
		 */
		protected void validate_return(VertragsDaten[] param) {
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param _return
		 */
		public void set_return(VertragsDaten[] param) {
			validate_return(param);

			local_returnTracker = true;

			this.local_return = param;
		}

		/**
		 * Auto generated add method for the array for convenience
		 * 
		 * @param param VertragsDaten
		 */
		public void add_return(VertragsDaten param) {
			if (local_return == null) {
				local_return = new VertragsDaten[] {};
			}

			// update the setting tracker
			local_returnTracker = true;

			java.util.List list = org.apache.axis2.databinding.utils.ConverterUtil.toList(local_return);
			list.add(param);
			this.local_return = (VertragsDaten[]) list.toArray(new VertragsDaten[list.size()]);
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":getVertraegeResponse", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							"getVertraegeResponse", xmlWriter);
				}
			}

			if (local_returnTracker) {
				if (local_return != null) {
					for (int i = 0; i < local_return.length; i++) {
						if (local_return[i] != null) {
							local_return[i].serialize(
									new javax.xml.namespace.QName(NAMESPACE_BASE, "return"),
									xmlWriter);
						} else {
							writeStartElement(null, NAMESPACE_BASE, "return", xmlWriter);

							// write the nil attribute
							writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, "nil", "1", xmlWriter);
							xmlWriter.writeEndElement();
						}
					}
				} else {
					writeStartElement(null, NAMESPACE_BASE, "return", xmlWriter);

					// write the nil attribute
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, "nil", "1", xmlWriter);
					xmlWriter.writeEndElement();
				}
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetVertraegeResponse parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				GetVertraegeResponse object = new GetVertraegeResponse();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"getVertraegeResponse".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (GetVertraegeResponse) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					java.util.ArrayList list1 = new java.util.ArrayList();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "return")
									.equals(reader.getName())) {
						// Process the array and step past its final element's end.
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							list1.add(null);
							reader.next();
						} else {
							list1.add(VertragsDaten.Factory.parse(reader));
						}

						// loop until we find a start element that is not part of this array
						boolean loopDone1 = false;

						while (!loopDone1) {
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
								loopDone1 = true;
							} else {
								if (new javax.xml.namespace.QName(NAMESPACE_BASE, "return")
										.equals(reader.getName())) {
									nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

									if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
										list1.add(null);
										reader.next();
									} else {
										list1.add(VertragsDaten.Factory.parse(reader));
									}
								} else {
									loopDone1 = true;
								}
							}
						}

						// call the converter utility to convert and set the array
						object.set_return((VertragsDaten[]) org.apache.axis2.databinding.utils.ConverterUtil
								.convertToArray(VertragsDaten.class, list1));
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetMessagesResponseE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_BASE, "getMessagesResponse", "ns2");

		/**
		 * field for GetMessagesResponse
		 */
		protected GetMessagesResponse localGetMessagesResponse;

		/**
		 * Auto generated getter method
		 * 
		 * @return GetMessagesResponse
		 */
		public GetMessagesResponse getGetMessagesResponse() {
			return localGetMessagesResponse;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param GetMessagesResponse
		 */
		public void setGetMessagesResponse(GetMessagesResponse param) {
			this.localGetMessagesResponse = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localGetMessagesResponse == null) {
				throw new org.apache.axis2.databinding.ADBException("getMessagesResponse cannot be null!");
			}

			localGetMessagesResponse.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetMessagesResponseE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				GetMessagesResponseE object = new GetMessagesResponseE();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_BASE,
											"getMessagesResponse").equals(reader.getName())) {
								object.setGetMessagesResponse(GetMessagesResponse.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetFachgebieteByOrdIdResponse implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * getFachgebieteByOrdIdResponse Namespace URI =
		 * http://soap.base.client.chipkarte.at Namespace Prefix = ns2
		 */

		/**
		 * field for _return This was an Array!
		 */
		protected BaseProperty[] local_return;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean local_returnTracker = false;

		public boolean is_returnSpecified() {
			return local_returnTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return BaseProperty[]
		 */
		public BaseProperty[] get_return() {
			return local_return;
		}

		/**
		 * validate the array for _return
		 */
		protected void validate_return(BaseProperty[] param) {
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param _return
		 */
		public void set_return(BaseProperty[] param) {
			validate_return(param);

			local_returnTracker = true;

			this.local_return = param;
		}

		/**
		 * Auto generated add method for the array for convenience
		 * 
		 * @param param BaseProperty
		 */
		public void add_return(BaseProperty param) {
			if (local_return == null) {
				local_return = new BaseProperty[] {};
			}

			// update the setting tracker
			local_returnTracker = true;

			java.util.List list = org.apache.axis2.databinding.utils.ConverterUtil.toList(local_return);
			list.add(param);
			this.local_return = (BaseProperty[]) list.toArray(new BaseProperty[list.size()]);
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":getFachgebieteByOrdIdResponse", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							"getFachgebieteByOrdIdResponse", xmlWriter);
				}
			}

			if (local_returnTracker) {
				if (local_return != null) {
					for (int i = 0; i < local_return.length; i++) {
						if (local_return[i] != null) {
							local_return[i].serialize(
									new javax.xml.namespace.QName(NAMESPACE_BASE, "return"),
									xmlWriter);
						} else {
							writeStartElement(null, NAMESPACE_BASE, "return", xmlWriter);

							// write the nil attribute
							writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, "nil", "1", xmlWriter);
							xmlWriter.writeEndElement();
						}
					}
				} else {
					writeStartElement(null, NAMESPACE_BASE, "return", xmlWriter);

					// write the nil attribute
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, "nil", "1", xmlWriter);
					xmlWriter.writeEndElement();
				}
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetFachgebieteByOrdIdResponse parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				GetFachgebieteByOrdIdResponse object = new GetFachgebieteByOrdIdResponse();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"getFachgebieteByOrdIdResponse".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (GetFachgebieteByOrdIdResponse) ExtensionMapper.getTypeObject(nsUri, type,
										reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					java.util.ArrayList list1 = new java.util.ArrayList();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "return")
									.equals(reader.getName())) {
						// Process the array and step past its final element's end.
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							list1.add(null);
							reader.next();
						} else {
							list1.add(BaseProperty.Factory.parse(reader));
						}

						// loop until we find a start element that is not part of this array
						boolean loopDone1 = false;

						while (!loopDone1) {
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
								loopDone1 = true;
							} else {
								if (new javax.xml.namespace.QName(NAMESPACE_BASE, "return")
										.equals(reader.getName())) {
									nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

									if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
										list1.add(null);
										reader.next();
									} else {
										list1.add(BaseProperty.Factory.parse(reader));
									}
								} else {
									loopDone1 = true;
								}
							}
						}

						// call the converter utility to convert and set the array
						object.set_return((BaseProperty[]) org.apache.axis2.databinding.utils.ConverterUtil
								.convertToArray(BaseProperty.class, list1));
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class MessagePollResult implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * messagePollResult Namespace URI = http://soap.base.client.chipkarte.at
		 * Namespace Prefix = ns2
		 */

		/**
		 * field for Nachrichten This was an Array!
		 */
		protected Message[] localNachrichten;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localNachrichtenTracker = false;

		/**
		 * field for NachrichtenVerfuegbar
		 */
		protected boolean localNachrichtenVerfuegbar;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localNachrichtenVerfuegbarTracker = false;

		/**
		 * field for NaechsterSuchzeitpunkt
		 */
		protected java.lang.String localNaechsterSuchzeitpunkt;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localNaechsterSuchzeitpunktTracker = false;

		public boolean isNachrichtenSpecified() {
			return localNachrichtenTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return Message[]
		 */
		public Message[] getNachrichten() {
			return localNachrichten;
		}

		/**
		 * validate the array for Nachrichten
		 */
		protected void validateNachrichten(Message[] param) {
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Nachrichten
		 */
		public void setNachrichten(Message[] param) {
			validateNachrichten(param);

			localNachrichtenTracker = true;

			this.localNachrichten = param;
		}

		/**
		 * Auto generated add method for the array for convenience
		 * 
		 * @param param Message
		 */
		public void addNachrichten(Message param) {
			if (localNachrichten == null) {
				localNachrichten = new Message[] {};
			}

			// update the setting tracker
			localNachrichtenTracker = true;

			java.util.List list = org.apache.axis2.databinding.utils.ConverterUtil.toList(localNachrichten);
			list.add(param);
			this.localNachrichten = (Message[]) list.toArray(new Message[list.size()]);
		}

		public boolean isNachrichtenVerfuegbarSpecified() {
			return localNachrichtenVerfuegbarTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return boolean
		 */
		public boolean getNachrichtenVerfuegbar() {
			return localNachrichtenVerfuegbar;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param NachrichtenVerfuegbar
		 */
		public void setNachrichtenVerfuegbar(boolean param) {
			// setting primitive attribute tracker to true
			localNachrichtenVerfuegbarTracker = true;

			this.localNachrichtenVerfuegbar = param;
		}

		public boolean isNaechsterSuchzeitpunktSpecified() {
			return localNaechsterSuchzeitpunktTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getNaechsterSuchzeitpunkt() {
			return localNaechsterSuchzeitpunkt;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param NaechsterSuchzeitpunkt
		 */
		public void setNaechsterSuchzeitpunkt(java.lang.String param) {
			localNaechsterSuchzeitpunktTracker = param != null;

			this.localNaechsterSuchzeitpunkt = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":messagePollResult", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							"messagePollResult", xmlWriter);
				}
			}

			if (localNachrichtenTracker) {
				if (localNachrichten != null) {
					for (int i = 0; i < localNachrichten.length; i++) {
						if (localNachrichten[i] != null) {
							localNachrichten[i].serialize(new javax.xml.namespace.QName(
									NAMESPACE_BASE, "nachrichten"), xmlWriter);
						} else {
							writeStartElement(null, NAMESPACE_BASE, "nachrichten", xmlWriter);

							// write the nil attribute
							writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, "nil", "1", xmlWriter);
							xmlWriter.writeEndElement();
						}
					}
				} else {
					writeStartElement(null, NAMESPACE_BASE, "nachrichten", xmlWriter);

					// write the nil attribute
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, "nil", "1", xmlWriter);
					xmlWriter.writeEndElement();
				}
			}

			if (localNachrichtenVerfuegbarTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "nachrichtenVerfuegbar", xmlWriter);

				if (false) {
					throw new org.apache.axis2.databinding.ADBException("nachrichtenVerfuegbar cannot be null!!");
				} else {
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil
							.convertToString(localNachrichtenVerfuegbar));
				}

				xmlWriter.writeEndElement();
			}

			if (localNaechsterSuchzeitpunktTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "naechsterSuchzeitpunkt", xmlWriter);

				if (localNaechsterSuchzeitpunkt == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("naechsterSuchzeitpunkt cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localNaechsterSuchzeitpunkt);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static MessagePollResult parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				MessagePollResult object = new MessagePollResult();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"messagePollResult".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (MessagePollResult) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					java.util.ArrayList list1 = new java.util.ArrayList();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "nachrichten")
									.equals(reader.getName())) {
						// Process the array and step past its final element's end.
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							list1.add(null);
							reader.next();
						} else {
							list1.add(Message.Factory.parse(reader));
						}

						// loop until we find a start element that is not part of this array
						boolean loopDone1 = false;

						while (!loopDone1) {
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
								loopDone1 = true;
							} else {
								if (new javax.xml.namespace.QName(NAMESPACE_BASE, "nachrichten")
										.equals(reader.getName())) {
									nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

									if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
										list1.add(null);
										reader.next();
									} else {
										list1.add(Message.Factory.parse(reader));
									}
								} else {
									loopDone1 = true;
								}
							}
						}

						// call the converter utility to convert and set the array
						object.setNachrichten((Message[]) org.apache.axis2.databinding.utils.ConverterUtil
								.convertToArray(Message.class, list1));
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(NAMESPACE_BASE,
							"nachrichtenVerfuegbar").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "nachrichtenVerfuegbar" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setNachrichtenVerfuegbar(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToBoolean(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(NAMESPACE_BASE,
							"naechsterSuchzeitpunkt").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "naechsterSuchzeitpunkt" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setNaechsterSuchzeitpunkt(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class Property implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name = property
		 * Namespace URI = http://soap.base.client.chipkarte.at Namespace Prefix = ns2
		 */

		/**
		 * field for Key
		 */
		protected java.lang.String localKey;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localKeyTracker = false;

		/**
		 * field for Value
		 */
		protected java.lang.String localValue;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localValueTracker = false;

		public boolean isKeySpecified() {
			return localKeyTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getKey() {
			return localKey;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Key
		 */
		public void setKey(java.lang.String param) {
			localKeyTracker = param != null;

			this.localKey = param;
		}

		public boolean isValueSpecified() {
			return localValueTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getValue() {
			return localValue;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Value
		 */
		public void setValue(java.lang.String param) {
			localValueTracker = param != null;

			this.localValue = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":property", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							"property", xmlWriter);
				}
			}

			if (localKeyTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "key", xmlWriter);

				if (localKey == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("key cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localKey);
				}

				xmlWriter.writeEndElement();
			}

			if (localValueTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "value", xmlWriter);

				if (localValue == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("value cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localValue);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static Property parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				Property object = new Property();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"property".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (Property) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "key")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "key" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setKey(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "value")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "value" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setValue(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetBerechtigungenResponseE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_BASE, "getBerechtigungenResponse", "ns2");

		/**
		 * field for GetBerechtigungenResponse
		 */
		protected GetBerechtigungenResponse localGetBerechtigungenResponse;

		/**
		 * Auto generated getter method
		 * 
		 * @return GetBerechtigungenResponse
		 */
		public GetBerechtigungenResponse getGetBerechtigungenResponse() {
			return localGetBerechtigungenResponse;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param GetBerechtigungenResponse
		 */
		public void setGetBerechtigungenResponse(GetBerechtigungenResponse param) {
			this.localGetBerechtigungenResponse = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localGetBerechtigungenResponse == null) {
				throw new org.apache.axis2.databinding.ADBException("getBerechtigungenResponse cannot be null!");
			}

			localGetBerechtigungenResponse.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetBerechtigungenResponseE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				GetBerechtigungenResponseE object = new GetBerechtigungenResponseE();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_BASE,
											"getBerechtigungenResponse").equals(reader.getName())) {
								object.setGetBerechtigungenResponse(GetBerechtigungenResponse.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class PollMessagesE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_BASE, POLL_MESSAGES_LITERAL, "ns2");

		/**
		 * field for PollMessages
		 */
		protected PollMessages localPollMessages;

		/**
		 * Auto generated getter method
		 * 
		 * @return PollMessages
		 */
		public PollMessages getPollMessages() {
			return localPollMessages;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param PollMessages
		 */
		public void setPollMessages(PollMessages param) {
			this.localPollMessages = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localPollMessages == null) {
				throw new org.apache.axis2.databinding.ADBException("pollMessages cannot be null!");
			}

			localPollMessages.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static PollMessagesE parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				PollMessagesE object = new PollMessagesE();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_BASE,
											POLL_MESSAGES_LITERAL).equals(reader.getName())) {
								object.setPollMessages(PollMessages.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class CardExceptionContent extends BaseExceptionContent
			implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * cardExceptionContent Namespace URI =
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElementBaseService(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			java.lang.String namespacePrefix = registerPrefixBaseService(xmlWriter,
					NAMESPACE_EXCEPTIONS_BASE);

			if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
				writeAttributeBaseService(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
						namespacePrefix + ":cardExceptionContent", xmlWriter);
			} else {
				writeAttributeBaseService(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
						"cardExceptionContent", xmlWriter);
			}

			if (localCodeTracker) {
				namespace = NAMESPACE_EXCEPTIONS_BASE;
				writeStartElementBaseService(null, namespace, "code", xmlWriter);

				if (localCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("code cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localErrorCodeTracker) {
				namespace = NAMESPACE_EXCEPTIONS_BASE;
				writeStartElementBaseService(null, namespace, "errorCode", xmlWriter);

				if (localErrorCode == java.lang.Integer.MIN_VALUE) {
					throw new org.apache.axis2.databinding.ADBException("errorCode cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localErrorCode));
				}

				xmlWriter.writeEndElement();
			}

			if (localMessageTracker) {
				namespace = NAMESPACE_EXCEPTIONS_BASE;
				writeStartElementBaseService(null, namespace, "message", xmlWriter);

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
			if (namespace.equals(NAMESPACE_EXCEPTIONS_BASE)) {
				return "ns1";
			}

			return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
		}

		/**
		 * Utility method to write an element start tag.
		 */
		private void writeStartElementBaseService(java.lang.String prefix, java.lang.String namespace,
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
		private void writeAttributeBaseService(java.lang.String prefix, java.lang.String namespace,
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void bute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefixBaseService(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttributeBaseService(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefixBaseService(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefixBaseService(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQNameBaseService(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNamesBaseService(javax.xml.namespace.QName[] qnames,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
			}
		}

		/**
		 * Register a namespace prefix
		 */
		private java.lang.String registerPrefixBaseService(javax.xml.stream.XMLStreamWriter xmlWriter,
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static CardExceptionContent parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				CardExceptionContent object = new CardExceptionContent();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"cardExceptionContent".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (CardExceptionContent) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE, "code")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "code" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
									"errorCode").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "errorCode" + "  cannot be null");
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
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
									"message").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "message" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setMessage(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetMessagesResponse implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * getMessagesResponse Namespace URI = http://soap.base.client.chipkarte.at
		 * Namespace Prefix = ns2
		 */

		/**
		 * field for _return This was an Array!
		 */
		protected Message[] local_return;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean local_returnTracker = false;

		public boolean is_returnSpecified() {
			return local_returnTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return Message[]
		 */
		public Message[] get_return() {
			return local_return;
		}

		/**
		 * validate the array for _return
		 */
		protected void validate_return(Message[] param) {
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param _return
		 */
		public void set_return(Message[] param) {
			validate_return(param);

			local_returnTracker = true;

			this.local_return = param;
		}

		/**
		 * Auto generated add method for the array for convenience
		 * 
		 * @param param Message
		 */
		public void add_return(Message param) {
			if (local_return == null) {
				local_return = new Message[] {};
			}

			// update the setting tracker
			local_returnTracker = true;

			java.util.List list = org.apache.axis2.databinding.utils.ConverterUtil.toList(local_return);
			list.add(param);
			this.local_return = (Message[]) list.toArray(new Message[list.size()]);
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":getMessagesResponse", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							"getMessagesResponse", xmlWriter);
				}
			}

			if (local_returnTracker) {
				if (local_return != null) {
					for (int i = 0; i < local_return.length; i++) {
						if (local_return[i] != null) {
							local_return[i].serialize(
									new javax.xml.namespace.QName(NAMESPACE_BASE, "return"),
									xmlWriter);
						} else {
							writeStartElement(null, NAMESPACE_BASE, "return", xmlWriter);

							// write the nil attribute
							writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, "nil", "1", xmlWriter);
							xmlWriter.writeEndElement();
						}
					}
				} else {
					writeStartElement(null, NAMESPACE_BASE, "return", xmlWriter);

					// write the nil attribute
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, "nil", "1", xmlWriter);
					xmlWriter.writeEndElement();
				}
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetMessagesResponse parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				GetMessagesResponse object = new GetMessagesResponse();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"getMessagesResponse".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (GetMessagesResponse) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					java.util.ArrayList list1 = new java.util.ArrayList();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "return")
									.equals(reader.getName())) {
						// Process the array and step past its final element's end.
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							list1.add(null);
							reader.next();
						} else {
							list1.add(Message.Factory.parse(reader));
						}

						// loop until we find a start element that is not part of this array
						boolean loopDone1 = false;

						while (!loopDone1) {
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
								loopDone1 = true;
							} else {
								if (new javax.xml.namespace.QName(NAMESPACE_BASE, "return")
										.equals(reader.getName())) {
									nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

									if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
										list1.add(null);
										reader.next();
									} else {
										list1.add(Message.Factory.parse(reader));
									}
								} else {
									loopDone1 = true;
								}
							}
						}

						// call the converter utility to convert and set the array
						object.set_return((Message[]) org.apache.axis2.databinding.utils.ConverterUtil
								.convertToArray(Message.class, list1));
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetFachgebieteByOrdId implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * getFachgebieteByOrdId Namespace URI = http://soap.base.client.chipkarte.at
		 * Namespace Prefix = ns2
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
		 * field for OrdId
		 */
		protected java.lang.String localOrdId;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localOrdIdTracker = false;

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

		public boolean isOrdIdSpecified() {
			return localOrdIdTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getOrdId() {
			return localOrdId;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param OrdId
		 */
		public void setOrdId(java.lang.String param) {
			localOrdIdTracker = param != null;

			this.localOrdId = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":getFachgebieteByOrdId", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							GET_SUBJECT_SURGERY_ID_LITERAL, xmlWriter);
				}
			}

			if (localDialogIdTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "dialogId", xmlWriter);

				if (localDialogId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("dialogId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localDialogId);
				}

				xmlWriter.writeEndElement();
			}

			if (localOrdIdTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "ordId", xmlWriter);

				if (localOrdId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("ordId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localOrdId);
				}

				xmlWriter.writeEndElement();
			}

			if (localTaetigkeitsBereichIdTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "taetigkeitsBereichId", xmlWriter);

				if (localTaetigkeitsBereichId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("taetigkeitsBereichId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localTaetigkeitsBereichId);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetFachgebieteByOrdId parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				GetFachgebieteByOrdId object = new GetFachgebieteByOrdId();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!GET_SUBJECT_SURGERY_ID_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (GetFachgebieteByOrdId) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "dialogId")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "dialogId" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setDialogId(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "ordId")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "ordId" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setOrdId(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(NAMESPACE_BASE,
							"taetigkeitsBereichId").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "taetigkeitsBereichId" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setTaetigkeitsBereichId(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class UebersiedelnOrdinationResponse implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * uebersiedelnOrdinationResponse Namespace URI =
		 * http://soap.base.client.chipkarte.at Namespace Prefix = ns2
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":uebersiedelnOrdinationResponse", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							"uebersiedelnOrdinationResponse", xmlWriter);
				}
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static UebersiedelnOrdinationResponse parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				UebersiedelnOrdinationResponse object = new UebersiedelnOrdinationResponse();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"uebersiedelnOrdinationResponse".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (UebersiedelnOrdinationResponse) ExtensionMapper.getTypeObject(nsUri, type,
										reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class CheckStatusResponse implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * checkStatusResponse Namespace URI = http://soap.base.client.chipkarte.at
		 * Namespace Prefix = ns2
		 */

		/**
		 * field for _return This was an Array!
		 */
		protected Property[] local_return;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean local_returnTracker = false;

		public boolean is_returnSpecified() {
			return local_returnTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return Property[]
		 */
		public Property[] get_return() {
			return local_return;
		}

		/**
		 * validate the array for _return
		 */
		protected void validate_return(Property[] param) {
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param _return
		 */
		public void set_return(Property[] param) {
			validate_return(param);

			local_returnTracker = true;

			this.local_return = param;
		}

		/**
		 * Auto generated add method for the array for convenience
		 * 
		 * @param param Property
		 */
		public void add_return(Property param) {
			if (local_return == null) {
				local_return = new Property[] {};
			}

			// update the setting tracker
			local_returnTracker = true;

			java.util.List list = org.apache.axis2.databinding.utils.ConverterUtil.toList(local_return);
			list.add(param);
			this.local_return = (Property[]) list.toArray(new Property[list.size()]);
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":checkStatusResponse", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							"checkStatusResponse", xmlWriter);
				}
			}

			if (local_returnTracker) {
				if (local_return != null) {
					for (int i = 0; i < local_return.length; i++) {
						if (local_return[i] != null) {
							local_return[i].serialize(
									new javax.xml.namespace.QName(NAMESPACE_BASE, "return"),
									xmlWriter);
						} else {
							writeStartElement(null, NAMESPACE_BASE, "return", xmlWriter);

							// write the nil attribute
							writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, "nil", "1", xmlWriter);
							xmlWriter.writeEndElement();
						}
					}
				} else {
					writeStartElement(null, NAMESPACE_BASE, "return", xmlWriter);

					// write the nil attribute
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, "nil", "1", xmlWriter);
					xmlWriter.writeEndElement();
				}
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static CheckStatusResponse parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				CheckStatusResponse object = new CheckStatusResponse();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"checkStatusResponse".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (CheckStatusResponse) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					java.util.ArrayList list1 = new java.util.ArrayList();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "return")
									.equals(reader.getName())) {
						// Process the array and step past its final element's end.
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							list1.add(null);
							reader.next();
						} else {
							list1.add(Property.Factory.parse(reader));
						}

						// loop until we find a start element that is not part of this array
						boolean loopDone1 = false;

						while (!loopDone1) {
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
								loopDone1 = true;
							} else {
								if (new javax.xml.namespace.QName(NAMESPACE_BASE, "return")
										.equals(reader.getName())) {
									nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

									if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
										list1.add(null);
										reader.next();
									} else {
										list1.add(Property.Factory.parse(reader));
									}
								} else {
									loopDone1 = true;
								}
							}
						}

						// call the converter utility to convert and set the array
						object.set_return((Property[]) org.apache.axis2.databinding.utils.ConverterUtil
								.convertToArray(Property.class, list1));
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class UebersiedelnOrdinationResponseE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_BASE, "uebersiedelnOrdinationResponse", "ns2");

		/**
		 * field for UebersiedelnOrdinationResponse
		 */
		protected UebersiedelnOrdinationResponse localUebersiedelnOrdinationResponse;

		/**
		 * Auto generated getter method
		 * 
		 * @return UebersiedelnOrdinationResponse
		 */
		public UebersiedelnOrdinationResponse getUebersiedelnOrdinationResponse() {
			return localUebersiedelnOrdinationResponse;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param UebersiedelnOrdinationResponse
		 */
		public void setUebersiedelnOrdinationResponse(UebersiedelnOrdinationResponse param) {
			this.localUebersiedelnOrdinationResponse = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localUebersiedelnOrdinationResponse == null) {
				throw new org.apache.axis2.databinding.ADBException("uebersiedelnOrdinationResponse cannot be null!");
			}

			localUebersiedelnOrdinationResponse.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static UebersiedelnOrdinationResponseE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				UebersiedelnOrdinationResponseE object = new UebersiedelnOrdinationResponseE();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_BASE,
											"uebersiedelnOrdinationResponse").equals(reader.getName())) {
								object.setUebersiedelnOrdinationResponse(
										UebersiedelnOrdinationResponse.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class SvPersonV2 implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name = svPersonV2
		 * Namespace URI = http://soap.base.client.chipkarte.at Namespace Prefix = ns2
		 */

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
		 * field for Geschlecht
		 */
		protected java.lang.String localGeschlecht;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localGeschlechtTracker = false;

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
		 * field for SvNummer
		 */
		protected java.lang.String localSvNummer;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localSvNummerTracker = false;

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

		public boolean isGeschlechtSpecified() {
			return localGeschlechtTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getGeschlecht() {
			return localGeschlecht;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Geschlecht
		 */
		public void setGeschlecht(java.lang.String param) {
			localGeschlechtTracker = param != null;

			this.localGeschlecht = param;
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

		public boolean isSvNummerSpecified() {
			return localSvNummerTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getSvNummer() {
			return localSvNummer;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param SvNummer
		 */
		public void setSvNummer(java.lang.String param) {
			localSvNummerTracker = param != null;

			this.localSvNummer = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":svPersonV2", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							"svPersonV2", xmlWriter);
				}
			}

			if (localDruckNachnameTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "druckNachname", xmlWriter);

				if (localDruckNachname == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("druckNachname cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localDruckNachname);
				}

				xmlWriter.writeEndElement();
			}

			if (localDruckTitelHintenTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "druckTitelHinten", xmlWriter);

				if (localDruckTitelHinten == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("druckTitelHinten cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localDruckTitelHinten);
				}

				xmlWriter.writeEndElement();
			}

			if (localDruckTitelVorneTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "druckTitelVorne", xmlWriter);

				if (localDruckTitelVorne == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("druckTitelVorne cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localDruckTitelVorne);
				}

				xmlWriter.writeEndElement();
			}

			if (localDruckVornameTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "druckVorname", xmlWriter);

				if (localDruckVorname == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("druckVorname cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localDruckVorname);
				}

				xmlWriter.writeEndElement();
			}

			if (localGeburtsdatumTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "geburtsdatum", xmlWriter);

				if (localGeburtsdatum == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("geburtsdatum cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localGeburtsdatum);
				}

				xmlWriter.writeEndElement();
			}

			if (localGeschlechtTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "geschlecht", xmlWriter);

				if (localGeschlecht == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("geschlecht cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localGeschlecht);
				}

				xmlWriter.writeEndElement();
			}

			if (localNachnameTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "nachname", xmlWriter);

				if (localNachname == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("nachname cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localNachname);
				}

				xmlWriter.writeEndElement();
			}

			if (localSvNummerTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "svNummer", xmlWriter);

				if (localSvNummer == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("svNummer cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localSvNummer);
				}

				xmlWriter.writeEndElement();
			}

			if (localTitelHintenTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "titelHinten", xmlWriter);

				if (localTitelHinten == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("titelHinten cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localTitelHinten);
				}

				xmlWriter.writeEndElement();
			}

			if (localTitelVorneTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "titelVorne", xmlWriter);

				if (localTitelVorne == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("titelVorne cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localTitelVorne);
				}

				xmlWriter.writeEndElement();
			}

			if (localVornameTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "vorname", xmlWriter);

				if (localVorname == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("vorname cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localVorname);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static SvPersonV2 parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				SvPersonV2 object = new SvPersonV2();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"svPersonV2".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (SvPersonV2) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "druckNachname")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "druckNachname" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setDruckNachname(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "druckTitelHinten")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "druckTitelHinten" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setDruckTitelHinten(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "druckTitelVorne")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "druckTitelVorne" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setDruckTitelVorne(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "druckVorname")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "druckVorname" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setDruckVorname(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "geburtsdatum")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "geburtsdatum" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setGeburtsdatum(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "geschlecht")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "geschlecht" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setGeschlecht(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "nachname")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "nachname" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setNachname(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "svNummer")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "svNummer" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setSvNummer(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "titelHinten")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "titelHinten" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setTitelHinten(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "titelVorne")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "titelVorne" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setTitelVorne(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "vorname")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "vorname" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setVorname(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetVertraege implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name = getVertraege
		 * Namespace URI = http://soap.base.client.chipkarte.at Namespace Prefix = ns2
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":getVertraege", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							GET_CONTRACTS_LITERAL, xmlWriter);
				}
			}

			if (localDialogIdTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "dialogId", xmlWriter);

				if (localDialogId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("dialogId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localDialogId);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetVertraege parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				GetVertraege object = new GetVertraege();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!GET_CONTRACTS_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (GetVertraege) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "dialogId")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "dialogId" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setDialogId(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class PatientServiceException implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_EXCEPTIONS_BASE, "PatientServiceException", "ns1");

		/**
		 * field for PatientServiceException
		 */
		protected PatientServiceExceptionContent localPatientServiceException;

		/**
		 * Auto generated getter method
		 * 
		 * @return PatientServiceExceptionContent
		 */
		public PatientServiceExceptionContent getPatientServiceException() {
			return localPatientServiceException;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param PatientServiceException
		 */
		public void setPatientServiceException(PatientServiceExceptionContent param) {
			this.localPatientServiceException = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localPatientServiceException == null) {
				throw new org.apache.axis2.databinding.ADBException("PatientServiceException cannot be null!");
			}

			localPatientServiceException.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_EXCEPTIONS_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static PatientServiceException parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				PatientServiceException object = new PatientServiceException();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
											"PatientServiceException").equals(reader.getName())) {
								object.setPatientServiceException(PatientServiceExceptionContent.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class UebersiedelnOrdination implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * uebersiedelnOrdination Namespace URI = http://soap.base.client.chipkarte.at
		 * Namespace Prefix = ns2
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
		 * field for ForceUebersiedlung
		 */
		protected boolean localForceUebersiedlung;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localForceUebersiedlungTracker = false;

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

		public boolean isForceUebersiedlungSpecified() {
			return localForceUebersiedlungTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return boolean
		 */
		public boolean getForceUebersiedlung() {
			return localForceUebersiedlung;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param ForceUebersiedlung
		 */
		public void setForceUebersiedlung(boolean param) {
			// setting primitive attribute tracker to true
			localForceUebersiedlungTracker = true;

			this.localForceUebersiedlung = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":uebersiedelnOrdination", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							MOVE_SURGERY_LITERAL, xmlWriter);
				}
			}

			if (localDialogIdTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "dialogId", xmlWriter);

				if (localDialogId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("dialogId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localDialogId);
				}

				xmlWriter.writeEndElement();
			}

			if (localOrdinationIdTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "ordinationId", xmlWriter);

				if (localOrdinationId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("ordinationId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localOrdinationId);
				}

				xmlWriter.writeEndElement();
			}

			if (localForceUebersiedlungTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "forceUebersiedlung", xmlWriter);

				if (false) {
					throw new org.apache.axis2.databinding.ADBException("forceUebersiedlung cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localForceUebersiedlung));
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static UebersiedelnOrdination parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				UebersiedelnOrdination object = new UebersiedelnOrdination();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!MOVE_SURGERY_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (UebersiedelnOrdination) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "dialogId")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "dialogId" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setDialogId(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "ordinationId")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "ordinationId" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setOrdinationId(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(NAMESPACE_BASE,
							"forceUebersiedlung").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "forceUebersiedlung" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setForceUebersiedlung(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToBoolean(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class CheckStatus implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name = checkStatus
		 * Namespace URI = http://soap.base.client.chipkarte.at Namespace Prefix = ns2
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":checkStatus", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							CHECK_STATUS_LITERAL, xmlWriter);
				}
			}

			if (localDialogIdTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "dialogId", xmlWriter);

				if (localDialogId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("dialogId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localDialogId);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static CheckStatus parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				CheckStatus object = new CheckStatus();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!CHECK_STATUS_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (CheckStatus) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "dialogId")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "dialogId" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setDialogId(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class Message implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name = message
		 * Namespace URI = http://soap.base.client.chipkarte.at Namespace Prefix = ns2
		 */

		/**
		 * field for Appid
		 */
		protected java.lang.String localAppid;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localAppidTracker = false;

		/**
		 * field for Category
		 */
		protected java.lang.String localCategory;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localCategoryTracker = false;

		/**
		 * field for Data
		 */
		protected java.lang.String localData;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localDataTracker = false;

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
		 * field for Text
		 */
		protected java.lang.String localText;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localTextTracker = false;

		/**
		 * field for Timestamp
		 */
		protected java.lang.String localTimestamp;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localTimestampTracker = false;

		public boolean isAppidSpecified() {
			return localAppidTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getAppid() {
			return localAppid;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Appid
		 */
		public void setAppid(java.lang.String param) {
			localAppidTracker = param != null;

			this.localAppid = param;
		}

		public boolean isCategorySpecified() {
			return localCategoryTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getCategory() {
			return localCategory;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Category
		 */
		public void setCategory(java.lang.String param) {
			localCategoryTracker = param != null;

			this.localCategory = param;
		}

		public boolean isDataSpecified() {
			return localDataTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getData() {
			return localData;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Data
		 */
		public void setData(java.lang.String param) {
			localDataTracker = param != null;

			this.localData = param;
		}

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

		public boolean isTextSpecified() {
			return localTextTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getText() {
			return localText;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Text
		 */
		public void setText(java.lang.String param) {
			localTextTracker = param != null;

			this.localText = param;
		}

		public boolean isTimestampSpecified() {
			return localTimestampTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getTimestamp() {
			return localTimestamp;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Timestamp
		 */
		public void setTimestamp(java.lang.String param) {
			localTimestampTracker = param != null;

			this.localTimestamp = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":message", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							"message", xmlWriter);
				}
			}

			if (localAppidTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "appid", xmlWriter);

				if (localAppid == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("appid cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localAppid);
				}

				xmlWriter.writeEndElement();
			}

			if (localCategoryTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "category", xmlWriter);

				if (localCategory == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("category cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localCategory);
				}

				xmlWriter.writeEndElement();
			}

			if (localDataTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "data", xmlWriter);

				if (localData == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("data cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localData);
				}

				xmlWriter.writeEndElement();
			}

			if (localIdTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "id", xmlWriter);

				if (localId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("id cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localId);
				}

				xmlWriter.writeEndElement();
			}

			if (localTextTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "text", xmlWriter);

				if (localText == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("text cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localText);
				}

				xmlWriter.writeEndElement();
			}

			if (localTimestampTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "timestamp", xmlWriter);

				if (localTimestamp == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("timestamp cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localTimestamp);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static Message parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				Message object = new Message();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"message".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (Message) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "appid")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "appid" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setAppid(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "category")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "category" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setCategory(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "data")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "data" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setData(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "id")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "id" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setId(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "text")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "text" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setText(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "timestamp")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "timestamp" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setTimestamp(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetMinMsgPollingIntervall implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * getMinMsgPollingIntervall Namespace URI =
		 * http://soap.base.client.chipkarte.at Namespace Prefix = ns2
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":getMinMsgPollingIntervall", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							GET_MIN_MSG_POLLING_INTERVAL_LITERAL, xmlWriter);
				}
			}

			if (localDialogIdTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "dialogId", xmlWriter);

				if (localDialogId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("dialogId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localDialogId);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetMinMsgPollingIntervall parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				GetMinMsgPollingIntervall object = new GetMinMsgPollingIntervall();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!GET_MIN_MSG_POLLING_INTERVAL_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (GetMinMsgPollingIntervall) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "dialogId")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "dialogId" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setDialogId(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class PatientServiceExceptionContent extends BaseExceptionContent
			implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * patientServiceExceptionContent Namespace URI =
		 * http://exceptions.soap.base.client.chipkarte.at Namespace Prefix = ns1
		 */

		/**
		 * field for Ersatzbeleginfo
		 */
		protected ErsatzbelegInfo localErsatzbeleginfo;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localErsatzbeleginfoTracker = false;

		/**
		 * field for SvPerson
		 */
		protected SvPersonV2 localSvPerson;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localSvPersonTracker = false;

		public boolean isErsatzbeleginfoSpecified() {
			return localErsatzbeleginfoTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return ErsatzbelegInfo
		 */
		public ErsatzbelegInfo getErsatzbeleginfo() {
			return localErsatzbeleginfo;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Ersatzbeleginfo
		 */
		public void setErsatzbeleginfo(ErsatzbelegInfo param) {
			localErsatzbeleginfoTracker = param != null;

			this.localErsatzbeleginfo = param;
		}

		public boolean isSvPersonSpecified() {
			return localSvPersonTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return SvPersonV2
		 */
		public SvPersonV2 getSvPerson() {
			return localSvPerson;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param SvPerson
		 */
		public void setSvPerson(SvPersonV2 param) {
			localSvPersonTracker = param != null;

			this.localSvPerson = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElementBaseService(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			java.lang.String namespacePrefix = registerPrefixBaseService(xmlWriter,
					NAMESPACE_EXCEPTIONS_BASE);

			if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
				writeAttributeBaseService(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
						namespacePrefix + ":patientServiceExceptionContent", xmlWriter);
			} else {
				writeAttributeBaseService(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
						"patientServiceExceptionContent", xmlWriter);
			}

			if (localCodeTracker) {
				namespace = NAMESPACE_EXCEPTIONS_BASE;
				writeStartElementBaseService(null, namespace, "code", xmlWriter);

				if (localCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("code cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localErrorCodeTracker) {
				namespace = NAMESPACE_EXCEPTIONS_BASE;
				writeStartElementBaseService(null, namespace, "errorCode", xmlWriter);

				if (localErrorCode == java.lang.Integer.MIN_VALUE) {
					throw new org.apache.axis2.databinding.ADBException("errorCode cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localErrorCode));
				}

				xmlWriter.writeEndElement();
			}

			if (localMessageTracker) {
				namespace = NAMESPACE_EXCEPTIONS_BASE;
				writeStartElementBaseService(null, namespace, "message", xmlWriter);

				if (localMessage == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("message cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localMessage);
				}

				xmlWriter.writeEndElement();
			}

			if (localErsatzbeleginfoTracker) {
				if (localErsatzbeleginfo == null) {
					throw new org.apache.axis2.databinding.ADBException("ersatzbeleginfo cannot be null!!");
				}

				localErsatzbeleginfo.serialize(new javax.xml.namespace.QName(
						NAMESPACE_EXCEPTIONS_BASE, "ersatzbeleginfo"), xmlWriter);
			}

			if (localSvPersonTracker) {
				if (localSvPerson == null) {
					throw new org.apache.axis2.databinding.ADBException("svPerson cannot be null!!");
				}

				localSvPerson.serialize(
						new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE, "svPerson"),
						xmlWriter);
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_EXCEPTIONS_BASE)) {
				return "ns1";
			}

			return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
		}

		/**
		 * Utility method to write an element start tag.
		 */
		private void writeStartElementBaseService(java.lang.String prefix, java.lang.String namespace,
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
		private void writeAttributeBaseService(java.lang.String prefix, java.lang.String namespace,
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttributeBaseService(java.lang.String namespace, java.lang.String attName,
				java.lang.String attValue, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefixBaseService(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttributeBaseService(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefixBaseService(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefixBaseService(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQNameBaseService(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNamesBaseService(javax.xml.namespace.QName[] qnames,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
			}
		}

		/**
		 * Register a namespace prefix
		 */
		private java.lang.String registerPrefixBaseService(javax.xml.stream.XMLStreamWriter xmlWriter,
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static PatientServiceExceptionContent parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				PatientServiceExceptionContent object = new PatientServiceExceptionContent();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"patientServiceExceptionContent".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (PatientServiceExceptionContent) ExtensionMapper.getTypeObject(nsUri, type,
										reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE, "code")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "code" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
									"errorCode").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "errorCode" + "  cannot be null");
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
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
									"message").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "message" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setMessage(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
									"ersatzbeleginfo").equals(reader.getName())) {
						object.setErsatzbeleginfo(ErsatzbelegInfo.Factory.parse(reader));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
									"svPerson").equals(reader.getName())) {
						object.setSvPerson(SvPersonV2.Factory.parse(reader));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class BaseProperty implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name = baseProperty
		 * Namespace URI = http://soap.base.client.chipkarte.at Namespace Prefix = ns2
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
		 * field for NurAnzeige
		 */
		protected boolean localNurAnzeige;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localNurAnzeigeTracker = false;

		/**
		 * field for Text
		 */
		protected java.lang.String localText;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localTextTracker = false;

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

		public boolean isNurAnzeigeSpecified() {
			return localNurAnzeigeTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return boolean
		 */
		public boolean getNurAnzeige() {
			return localNurAnzeige;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param NurAnzeige
		 */
		public void setNurAnzeige(boolean param) {
			// setting primitive attribute tracker to true
			localNurAnzeigeTracker = true;

			this.localNurAnzeige = param;
		}

		public boolean isTextSpecified() {
			return localTextTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getText() {
			return localText;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Text
		 */
		public void setText(java.lang.String param) {
			localTextTracker = param != null;

			this.localText = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":baseProperty", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							"baseProperty", xmlWriter);
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

			if (localNurAnzeigeTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "nurAnzeige", xmlWriter);

				if (false) {
					throw new org.apache.axis2.databinding.ADBException("nurAnzeige cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localNurAnzeige));
				}

				xmlWriter.writeEndElement();
			}

			if (localTextTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "text", xmlWriter);

				if (localText == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("text cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localText);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static BaseProperty parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				BaseProperty object = new BaseProperty();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"baseProperty".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (BaseProperty) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "code")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "code" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "nurAnzeige")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "nurAnzeige" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setNurAnzeige(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToBoolean(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "text")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "text" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setText(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class VertragsDaten implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * vertragsDaten Namespace URI = http://soap.base.client.chipkarte.at Namespace
		 * Prefix = ns2
		 */

		/**
		 * field for BezBereich
		 */
		protected java.lang.String localBezBereich;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localBezBereichTracker = false;

		/**
		 * field for FachGebietsCode
		 */
		protected java.lang.String localFachGebietsCode;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localFachGebietsCodeTracker = false;

		/**
		 * field for Konsultationsrecht
		 */
		protected boolean localKonsultationsrecht;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localKonsultationsrechtTracker = false;

		/**
		 * field for LeistungsSVT
		 */
		protected java.lang.String localLeistungsSVT;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localLeistungsSVTTracker = false;

		/**
		 * field for OrdId
		 */
		protected java.lang.String localOrdId;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localOrdIdTracker = false;

		/**
		 * field for Rezepturrecht
		 */
		protected boolean localRezepturrecht;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localRezepturrechtTracker = false;

		/**
		 * field for VerrechnungsSVT
		 */
		protected java.lang.String localVerrechnungsSVT;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localVerrechnungsSVTTracker = false;

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
		 * field for VertragsTyp
		 */
		protected java.lang.String localVertragsTyp;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localVertragsTypTracker = false;

		public boolean isBezBereichSpecified() {
			return localBezBereichTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getBezBereich() {
			return localBezBereich;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param BezBereich
		 */
		public void setBezBereich(java.lang.String param) {
			localBezBereichTracker = param != null;

			this.localBezBereich = param;
		}

		public boolean isFachGebietsCodeSpecified() {
			return localFachGebietsCodeTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getFachGebietsCode() {
			return localFachGebietsCode;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param FachGebietsCode
		 */
		public void setFachGebietsCode(java.lang.String param) {
			localFachGebietsCodeTracker = param != null;

			this.localFachGebietsCode = param;
		}

		public boolean isKonsultationsrechtSpecified() {
			return localKonsultationsrechtTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return boolean
		 */
		public boolean getKonsultationsrecht() {
			return localKonsultationsrecht;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Konsultationsrecht
		 */
		public void setKonsultationsrecht(boolean param) {
			// setting primitive attribute tracker to true
			localKonsultationsrechtTracker = true;

			this.localKonsultationsrecht = param;
		}

		public boolean isLeistungsSVTSpecified() {
			return localLeistungsSVTTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getLeistungsSVT() {
			return localLeistungsSVT;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param LeistungsSVT
		 */
		public void setLeistungsSVT(java.lang.String param) {
			localLeistungsSVTTracker = param != null;

			this.localLeistungsSVT = param;
		}

		public boolean isOrdIdSpecified() {
			return localOrdIdTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getOrdId() {
			return localOrdId;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param OrdId
		 */
		public void setOrdId(java.lang.String param) {
			localOrdIdTracker = param != null;

			this.localOrdId = param;
		}

		public boolean isRezepturrechtSpecified() {
			return localRezepturrechtTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return boolean
		 */
		public boolean getRezepturrecht() {
			return localRezepturrecht;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Rezepturrecht
		 */
		public void setRezepturrecht(boolean param) {
			// setting primitive attribute tracker to true
			localRezepturrechtTracker = true;

			this.localRezepturrecht = param;
		}

		public boolean isVerrechnungsSVTSpecified() {
			return localVerrechnungsSVTTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getVerrechnungsSVT() {
			return localVerrechnungsSVT;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param VerrechnungsSVT
		 */
		public void setVerrechnungsSVT(java.lang.String param) {
			localVerrechnungsSVTTracker = param != null;

			this.localVerrechnungsSVT = param;
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

		public boolean isVertragsTypSpecified() {
			return localVertragsTypTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getVertragsTyp() {
			return localVertragsTyp;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param VertragsTyp
		 */
		public void setVertragsTyp(java.lang.String param) {
			localVertragsTypTracker = param != null;

			this.localVertragsTyp = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":vertragsDaten", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							"vertragsDaten", xmlWriter);
				}
			}

			if (localBezBereichTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "bezBereich", xmlWriter);

				if (localBezBereich == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("bezBereich cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localBezBereich);
				}

				xmlWriter.writeEndElement();
			}

			if (localFachGebietsCodeTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "fachGebietsCode", xmlWriter);

				if (localFachGebietsCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("fachGebietsCode cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localFachGebietsCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localKonsultationsrechtTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "konsultationsrecht", xmlWriter);

				if (false) {
					throw new org.apache.axis2.databinding.ADBException("konsultationsrecht cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localKonsultationsrecht));
				}

				xmlWriter.writeEndElement();
			}

			if (localLeistungsSVTTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "leistungsSVT", xmlWriter);

				if (localLeistungsSVT == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("leistungsSVT cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localLeistungsSVT);
				}

				xmlWriter.writeEndElement();
			}

			if (localOrdIdTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "ordId", xmlWriter);

				if (localOrdId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("ordId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localOrdId);
				}

				xmlWriter.writeEndElement();
			}

			if (localRezepturrechtTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "rezepturrecht", xmlWriter);

				if (false) {
					throw new org.apache.axis2.databinding.ADBException("rezepturrecht cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localRezepturrecht));
				}

				xmlWriter.writeEndElement();
			}

			if (localVerrechnungsSVTTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "verrechnungsSVT", xmlWriter);

				if (localVerrechnungsSVT == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("verrechnungsSVT cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localVerrechnungsSVT);
				}

				xmlWriter.writeEndElement();
			}

			if (localTaetigkeitsBereichIdTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "taetigkeitsBereichId", xmlWriter);

				if (localTaetigkeitsBereichId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("taetigkeitsBereichId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localTaetigkeitsBereichId);
				}

				xmlWriter.writeEndElement();
			}

			if (localVertragsTypTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "vertragsTyp", xmlWriter);

				if (localVertragsTyp == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("vertragsTyp cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localVertragsTyp);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static VertragsDaten parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				VertragsDaten object = new VertragsDaten();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"vertragsDaten".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (VertragsDaten) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "bezBereich")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "bezBereich" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setBezBereich(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "fachGebietsCode")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "fachGebietsCode" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setFachGebietsCode(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(NAMESPACE_BASE,
							"konsultationsrecht").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "konsultationsrecht" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setKonsultationsrecht(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToBoolean(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "leistungsSVT")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "leistungsSVT" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setLeistungsSVT(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "ordId")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "ordId" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setOrdId(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "rezepturrecht")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "rezepturrecht" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setRezepturrecht(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToBoolean(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "verrechnungsSVT")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "verrechnungsSVT" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setVerrechnungsSVT(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement() && new javax.xml.namespace.QName(NAMESPACE_BASE,
							"taetigkeitsBereichId").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "taetigkeitsBereichId" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setTaetigkeitsBereichId(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "vertragsTyp")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "vertragsTyp" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setVertragsTyp(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class CheckStatusResponseE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_BASE, "checkStatusResponse", "ns2");

		/**
		 * field for CheckStatusResponse
		 */
		protected CheckStatusResponse localCheckStatusResponse;

		/**
		 * Auto generated getter method
		 * 
		 * @return CheckStatusResponse
		 */
		public CheckStatusResponse getCheckStatusResponse() {
			return localCheckStatusResponse;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param CheckStatusResponse
		 */
		public void setCheckStatusResponse(CheckStatusResponse param) {
			this.localCheckStatusResponse = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localCheckStatusResponse == null) {
				throw new org.apache.axis2.databinding.ADBException("checkStatusResponse cannot be null!");
			}

			localCheckStatusResponse.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static CheckStatusResponseE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				CheckStatusResponseE object = new CheckStatusResponseE();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_BASE,
											"checkStatusResponse").equals(reader.getName())) {
								object.setCheckStatusResponse(CheckStatusResponse.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetVertraegeE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_BASE, GET_CONTRACTS_LITERAL, "ns2");

		/**
		 * field for GetVertraege
		 */
		protected GetVertraege localGetVertraege;

		/**
		 * Auto generated getter method
		 * 
		 * @return GetVertraege
		 */
		public GetVertraege getGetVertraege() {
			return localGetVertraege;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param GetVertraege
		 */
		public void setGetVertraege(GetVertraege param) {
			this.localGetVertraege = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localGetVertraege == null) {
				throw new org.apache.axis2.databinding.ADBException("getVertraege cannot be null!");
			}

			localGetVertraege.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetVertraegeE parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				GetVertraegeE object = new GetVertraegeE();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_BASE,
											GET_CONTRACTS_LITERAL).equals(reader.getName())) {
								object.setGetVertraege(GetVertraege.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetMinMsgPollingIntervallResponseE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_BASE, "getMinMsgPollingIntervallResponse", "ns2");

		/**
		 * field for GetMinMsgPollingIntervallResponse
		 */
		protected GetMinMsgPollingIntervallResponse localGetMinMsgPollingIntervallResponse;

		/**
		 * Auto generated getter method
		 * 
		 * @return GetMinMsgPollingIntervallResponse
		 */
		public GetMinMsgPollingIntervallResponse getGetMinMsgPollingIntervallResponse() {
			return localGetMinMsgPollingIntervallResponse;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param GetMinMsgPollingIntervallResponse
		 */
		public void setGetMinMsgPollingIntervallResponse(GetMinMsgPollingIntervallResponse param) {
			this.localGetMinMsgPollingIntervallResponse = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localGetMinMsgPollingIntervallResponse == null) {
				throw new org.apache.axis2.databinding.ADBException(
						"getMinMsgPollingIntervallResponse cannot be null!");
			}

			localGetMinMsgPollingIntervallResponse.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetMinMsgPollingIntervallResponseE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				GetMinMsgPollingIntervallResponseE object = new GetMinMsgPollingIntervallResponseE();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_BASE,
											"getMinMsgPollingIntervallResponse").equals(reader.getName())) {
								object.setGetMinMsgPollingIntervallResponse(
										GetMinMsgPollingIntervallResponse.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetBerechtigungenE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_BASE, GET_BERECHTIGUNGEN_LITERAL, "ns2");

		/**
		 * field for GetBerechtigungen
		 */
		protected GetBerechtigungen localGetBerechtigungen;

		/**
		 * Auto generated getter method
		 * 
		 * @return GetBerechtigungen
		 */
		public GetBerechtigungen getGetBerechtigungen() {
			return localGetBerechtigungen;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param GetBerechtigungen
		 */
		public void setGetBerechtigungen(GetBerechtigungen param) {
			this.localGetBerechtigungen = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localGetBerechtigungen == null) {
				throw new org.apache.axis2.databinding.ADBException("getBerechtigungen cannot be null!");
			}

			localGetBerechtigungen.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetBerechtigungenE parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				GetBerechtigungenE object = new GetBerechtigungenE();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_BASE,
											GET_BERECHTIGUNGEN_LITERAL).equals(reader.getName())) {
								object.setGetBerechtigungen(GetBerechtigungen.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class SvtProperty extends BaseProperty implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name = svtProperty
		 * Namespace URI = http://soap.base.client.chipkarte.at Namespace Prefix = ns2
		 */

		/**
		 * field for ASVG
		 */
		protected boolean localASVG;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localASVGTracker = false;

		/**
		 * field for EKVKCode
		 */
		protected java.lang.String localEKVKCode;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localEKVKCodeTracker = false;

		/**
		 * field for EKVKName
		 */
		protected java.lang.String localEKVKName;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localEKVKNameTracker = false;

		/**
		 * field for Kurzbezeichnung
		 */
		protected java.lang.String localKurzbezeichnung;

		/*
		 * This tracker boolean wil be used to detect whether the user called the set
		 * method for this attribute. It will be used to determine whether to include
		 * this field in the serialized XML
		 */
		protected boolean localKurzbezeichnungTracker = false;

		public boolean isASVGSpecified() {
			return localASVGTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return boolean
		 */
		public boolean getASVG() {
			return localASVG;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param ASVG
		 */
		public void setASVG(boolean param) {
			// setting primitive attribute tracker to true
			localASVGTracker = true;

			this.localASVG = param;
		}

		public boolean isEKVKCodeSpecified() {
			return localEKVKCodeTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getEKVKCode() {
			return localEKVKCode;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param EKVKCode
		 */
		public void setEKVKCode(java.lang.String param) {
			localEKVKCodeTracker = param != null;

			this.localEKVKCode = param;
		}

		public boolean isEKVKNameSpecified() {
			return localEKVKNameTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getEKVKName() {
			return localEKVKName;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param EKVKName
		 */
		public void setEKVKName(java.lang.String param) {
			localEKVKNameTracker = param != null;

			this.localEKVKName = param;
		}

		public boolean isKurzbezeichnungSpecified() {
			return localKurzbezeichnungTracker;
		}

		/**
		 * Auto generated getter method
		 * 
		 * @return java.lang.String
		 */
		public java.lang.String getKurzbezeichnung() {
			return localKurzbezeichnung;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param Kurzbezeichnung
		 */
		public void setKurzbezeichnung(java.lang.String param) {
			localKurzbezeichnungTracker = param != null;

			this.localKurzbezeichnung = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElementBaseService(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			java.lang.String namespacePrefix = registerPrefixBaseService(xmlWriter,
					NAMESPACE_BASE);

			if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
				writeAttributeBaseService(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
						namespacePrefix + ":svtProperty", xmlWriter);
			} else {
				writeAttributeBaseService(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
						"svtProperty", xmlWriter);
			}

			if (localCodeTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementBaseService(null, namespace, "code", xmlWriter);

				if (localCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("code cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localNurAnzeigeTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementBaseService(null, namespace, "nurAnzeige", xmlWriter);

				if (false) {
					throw new org.apache.axis2.databinding.ADBException("nurAnzeige cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localNurAnzeige));
				}

				xmlWriter.writeEndElement();
			}

			if (localTextTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementBaseService(null, namespace, "text", xmlWriter);

				if (localText == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("text cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localText);
				}

				xmlWriter.writeEndElement();
			}

			if (localASVGTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementBaseService(null, namespace, "ASVG", xmlWriter);

				if (false) {
					throw new org.apache.axis2.databinding.ADBException("ASVG cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localASVG));
				}

				xmlWriter.writeEndElement();
			}

			if (localEKVKCodeTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementBaseService(null, namespace, "EKVKCode", xmlWriter);

				if (localEKVKCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("EKVKCode cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localEKVKCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localEKVKNameTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementBaseService(null, namespace, "EKVKName", xmlWriter);

				if (localEKVKName == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("EKVKName cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localEKVKName);
				}

				xmlWriter.writeEndElement();
			}

			if (localKurzbezeichnungTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElementBaseService(null, namespace, "kurzbezeichnung", xmlWriter);

				if (localKurzbezeichnung == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("kurzbezeichnung cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localKurzbezeichnung);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
				return "ns2";
			}

			return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
		}

		/**
		 * Utility method to write an element start tag.
		 */
		private void writeStartElementBaseService(java.lang.String prefix, java.lang.String namespace,
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
		private void writeAttributeBaseService(java.lang.String prefix, java.lang.String namespace,
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttributeBaseService(java.lang.String namespace, java.lang.String attName,
				java.lang.String attValue, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefixBaseService(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttributeBaseService(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefixBaseService(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefixBaseService(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQNameBaseService(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNamesBaseService(javax.xml.namespace.QName[] qnames,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
			}
		}

		/**
		 * Register a namespace prefix
		 */
		private java.lang.String registerPrefixBaseService(javax.xml.stream.XMLStreamWriter xmlWriter,
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static SvtProperty parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				SvtProperty object = new SvtProperty();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"svtProperty".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (SvtProperty) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "code")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "code" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "nurAnzeige")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "nurAnzeige" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setNurAnzeige(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToBoolean(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "text")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "text" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setText(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "ASVG")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "ASVG" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setASVG(org.apache.axis2.databinding.utils.ConverterUtil.convertToBoolean(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "EKVKCode")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "EKVKCode" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setEKVKCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "EKVKName")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "EKVKName" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setEKVKName(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "kurzbezeichnung")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "kurzbezeichnung" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setKurzbezeichnung(
								org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class GetBerechtigungen implements org.apache.axis2.databinding.ADBBean {
		/*
		 * This type was generated from the piece of schema that had name =
		 * getBerechtigungen Namespace URI = http://soap.base.client.chipkarte.at
		 * Namespace Prefix = ns2
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter, NAMESPACE_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":getBerechtigungen", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							GET_BERECHTIGUNGEN_LITERAL, xmlWriter);
				}
			}

			if (localDialogIdTracker) {
				namespace = NAMESPACE_BASE;
				writeStartElement(null, namespace, "dialogId", xmlWriter);

				if (localDialogId == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("dialogId cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localDialogId);
				}

				xmlWriter.writeEndElement();
			}

			xmlWriter.writeEndElement();
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static GetBerechtigungen parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception {
				GetBerechtigungen object = new GetBerechtigungen();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!GET_BERECHTIGUNGEN_LITERAL.equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (GetBerechtigungen) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_BASE, "dialogId")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "dialogId" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setDialogId(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class AccessExceptionContent extends BaseExceptionContent
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElementBaseService(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			java.lang.String namespacePrefix = registerPrefixBaseService(xmlWriter,
					NAMESPACE_EXCEPTIONS_BASE);

			if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
				writeAttributeBaseService(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
						namespacePrefix + ":accessExceptionContent", xmlWriter);
			} else {
				writeAttributeBaseService(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
						"accessExceptionContent", xmlWriter);
			}

			if (localCodeTracker) {
				namespace = NAMESPACE_EXCEPTIONS_BASE;
				writeStartElementBaseService(null, namespace, "code", xmlWriter);

				if (localCode == null) {
					// write the nil attribute
					throw new org.apache.axis2.databinding.ADBException("code cannot be null!!");
				} else {
					xmlWriter.writeCharacters(localCode);
				}

				xmlWriter.writeEndElement();
			}

			if (localErrorCodeTracker) {
				namespace = NAMESPACE_EXCEPTIONS_BASE;
				writeStartElementBaseService(null, namespace, "errorCode", xmlWriter);

				if (localErrorCode == java.lang.Integer.MIN_VALUE) {
					throw new org.apache.axis2.databinding.ADBException("errorCode cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localErrorCode));
				}

				xmlWriter.writeEndElement();
			}

			if (localMessageTracker) {
				namespace = NAMESPACE_EXCEPTIONS_BASE;
				writeStartElementBaseService(null, namespace, "message", xmlWriter);

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
			if (namespace.equals(NAMESPACE_EXCEPTIONS_BASE)) {
				return "ns1";
			}

			return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
		}

		/**
		 * Utility method to write an element start tag.
		 */
		private void writeStartElementBaseService(java.lang.String prefix, java.lang.String namespace,
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
		private void writeAttributeBaseService(java.lang.String prefix, java.lang.String namespace,
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttributeBaseService(java.lang.String namespace, java.lang.String attName,
				java.lang.String attValue, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefixBaseService(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttributeBaseService(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefixBaseService(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefixBaseService(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQNameBaseService(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNamesBaseService(javax.xml.namespace.QName[] qnames,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
			}
		}

		/**
		 * Register a namespace prefix
		 */
		private java.lang.String registerPrefixBaseService(javax.xml.stream.XMLStreamWriter xmlWriter,
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

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

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"accessExceptionContent".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (AccessExceptionContent) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE, "code")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "code" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
									"errorCode").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "errorCode" + "  cannot be null");
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
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
									"message").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "message" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setMessage(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			java.lang.String prefix = null;
			java.lang.String namespace = null;

			prefix = parentQName.getPrefix();
			namespace = parentQName.getNamespaceURI();
			writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);

			if (serializeType) {
				java.lang.String namespacePrefix = registerPrefix(xmlWriter,
						NAMESPACE_EXCEPTIONS_BASE);

				if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)) {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							namespacePrefix + ":baseExceptionContent", xmlWriter);
				} else {
					writeAttribute(SoapUtil.XSI_LITERAL, SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL,
							"baseExceptionContent", xmlWriter);
				}
			}

			if (localCodeTracker) {
				namespace = NAMESPACE_EXCEPTIONS_BASE;
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
				namespace = NAMESPACE_EXCEPTIONS_BASE;
				writeStartElement(null, namespace, "errorCode", xmlWriter);

				if (localErrorCode == java.lang.Integer.MIN_VALUE) {
					throw new org.apache.axis2.databinding.ADBException("errorCode cannot be null!!");
				} else {
					xmlWriter.writeCharacters(
							org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localErrorCode));
				}

				xmlWriter.writeEndElement();
			}

			if (localMessageTracker) {
				namespace = NAMESPACE_EXCEPTIONS_BASE;
				writeStartElement(null, namespace, "message", xmlWriter);

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
			if (namespace.equals(NAMESPACE_EXCEPTIONS_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

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

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					if (reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, SoapUtil.TYPE_LITERAL) != null) {
						java.lang.String fullTypeName = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE,
								SoapUtil.TYPE_LITERAL);

						if (fullTypeName != null) {
							java.lang.String nsPrefix = null;

							if (fullTypeName.indexOf(":") > -1) {
								nsPrefix = fullTypeName.substring(0, fullTypeName.indexOf(":"));
							}

							nsPrefix = (nsPrefix == null) ? "" : nsPrefix;

							java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":") + 1);

							if (!"baseExceptionContent".equals(type)) {
								// find namespace for the prefix
								java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);

								return (BaseExceptionContent) ExtensionMapper.getTypeObject(nsUri, type, reader);
							}
						}
					}

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					reader.next();

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE, "code")
									.equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "code" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setCode(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
									"errorCode").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "errorCode" + "  cannot be null");
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
							&& new javax.xml.namespace.QName(NAMESPACE_EXCEPTIONS_BASE,
									"message").equals(reader.getName())) {
						nillableValue = reader.getAttributeValue(SoapUtil.XML_SCHEMA_NAMESPACE, "nil");

						if ("true".equals(nillableValue) || "1".equals(nillableValue)) {
							throw new org.apache.axis2.databinding.ADBException(
									"The element: " + "message" + "  cannot be null");
						}

						java.lang.String content = reader.getElementText();

						object.setMessage(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));

						reader.next();
					} // End of if for expected property start element

					else {
					}

					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					if (reader.isStartElement()) {
						// 2 - A start element we are not expecting indicates a trailing invalid
						// property
						throw new org.apache.axis2.databinding.ADBException(
								"Unexpected subelement " + reader.getName());
					}
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}

	public static class CommonTypesResponseE implements org.apache.axis2.databinding.ADBBean {
		public static final javax.xml.namespace.QName MY_QNAME = new javax.xml.namespace.QName(
				NAMESPACE_BASE, "commonTypesResponse", "ns2");

		/**
		 * field for CommonTypesResponse
		 */
		protected CommonTypesResponse localCommonTypesResponse;

		/**
		 * Auto generated getter method
		 * 
		 * @return CommonTypesResponse
		 */
		public CommonTypesResponse getCommonTypesResponse() {
			return localCommonTypesResponse;
		}

		/**
		 * Auto generated setter method
		 * 
		 * @param param CommonTypesResponse
		 */
		public void setCommonTypesResponse(CommonTypesResponse param) {
			this.localCommonTypesResponse = param;
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
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			serialize(parentQName, xmlWriter, false);
		}

		public void serialize(final javax.xml.namespace.QName parentQName, javax.xml.stream.XMLStreamWriter xmlWriter,
				boolean serializeType)
				throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException {
			// We can safely assume an element has only one type associated with it
			if (localCommonTypesResponse == null) {
				throw new org.apache.axis2.databinding.ADBException("commonTypesResponse cannot be null!");
			}

			localCommonTypesResponse.serialize(MY_QNAME, xmlWriter);
		}

		private static java.lang.String generatePrefix(java.lang.String namespace) {
			if (namespace.equals(NAMESPACE_BASE)) {
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
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeAttribute(java.lang.String namespace, java.lang.String attName, java.lang.String attValue,
				javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attValue);
			} else {
				xmlWriter.writeAttribute(registerPrefix(xmlWriter, namespace), namespace, attName, attValue);
			}
		}

		/**
		 * Util method to write an attribute without the ns prefix
		 */
		private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
				javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String attributeNamespace = qname.getNamespaceURI();
			java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);

			if (attributePrefix == null) {
				attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
			}

			java.lang.String attributeValue;

			if (attributePrefix.trim().length() > 0) {
				attributeValue = attributePrefix + ":" + qname.getLocalPart();
			} else {
				attributeValue = qname.getLocalPart();
			}

			if (namespace.equals("")) {
				xmlWriter.writeAttribute(attName, attributeValue);
			} else {
				registerPrefix(xmlWriter, namespace);
				xmlWriter.writeAttribute(attributePrefix, namespace, attName, attributeValue);
			}
		}

		/**
		 * method to handle Qnames
		 */
		private void writeQName(javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			java.lang.String namespaceURI = qname.getNamespaceURI();

			if (namespaceURI != null) {
				java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);

				if (prefix == null) {
					prefix = generatePrefix(namespaceURI);
					xmlWriter.writeNamespace(prefix, namespaceURI);
					xmlWriter.setPrefix(prefix, namespaceURI);
				}

				if (prefix.trim().length() > 0) {
					xmlWriter.writeCharacters(
							prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				} else {
					// i.e this is the default namespace
					xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
				}
			} else {
				xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
			}
		}

		private void writeQNames(javax.xml.namespace.QName[] qnames, javax.xml.stream.XMLStreamWriter xmlWriter)
				throws javax.xml.stream.XMLStreamException {
			if (qnames != null) {
				// we have to store this data until last moment since it is not possible to
				// write any
				// namespace data after writing the charactor data
				java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
				java.lang.String namespaceURI = null;
				java.lang.String prefix = null;

				for (int i = 0; i < qnames.length; i++) {
					if (i > 0) {
						stringToWrite.append(" ");
					}

					namespaceURI = qnames[i].getNamespaceURI();

					if (namespaceURI != null) {
						prefix = xmlWriter.getPrefix(namespaceURI);

						if ((prefix == null) || (prefix.length() == 0)) {
							prefix = generatePrefix(namespaceURI);
							xmlWriter.writeNamespace(prefix, namespaceURI);
							xmlWriter.setPrefix(prefix, namespaceURI);
						}

						if (prefix.trim().length() > 0) {
							stringToWrite.append(prefix).append(":").append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						} else {
							stringToWrite.append(
									org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
						}
					} else {
						stringToWrite
								.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
					}
				}

				xmlWriter.writeCharacters(stringToWrite.toString());
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
			private static org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory
					.getLog(Factory.class);

			/**
			 * static method to create the object Precondition: If this object is an
			 * element, the current or next start element starts this object and any
			 * intervening reader events are ignorable If this object is not an element, it
			 * is a complex type and the reader is at the event just after the outer start
			 * element Postcondition: If this object is an element, the reader is positioned
			 * at its end element If this object is a complex type, the reader is positioned
			 * at the end element of its outer element
			 */
			public static CommonTypesResponseE parse(javax.xml.stream.XMLStreamReader reader)
					throws java.lang.Exception {
				CommonTypesResponseE object = new CommonTypesResponseE();

				int event;
				javax.xml.namespace.QName currentQName = null;
				java.lang.String nillableValue = null;
				java.lang.String prefix = "";
				java.lang.String namespaceuri = "";

				try {
					while (!reader.isStartElement() && !reader.isEndElement())
						reader.next();

					currentQName = reader.getName();

					// Note all attributes that were handled. Used to differ normal attributes
					// from anyAttributes.
					java.util.Vector handledAttributes = new java.util.Vector();

					while (!reader.isEndElement()) {
						if (reader.isStartElement()) {
							if (reader.isStartElement()
									&& new javax.xml.namespace.QName(NAMESPACE_BASE,
											"commonTypesResponse").equals(reader.getName())) {
								object.setCommonTypesResponse(CommonTypesResponse.Factory.parse(reader));
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
				} catch (javax.xml.stream.XMLStreamException e) {
					throw new java.lang.Exception(e);
				}

				return object;
			}
		} // end of factory class
	}
}
