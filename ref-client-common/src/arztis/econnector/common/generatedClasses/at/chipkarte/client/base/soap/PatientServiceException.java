/**
 * PatientServiceException.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap;

public class PatientServiceException extends java.lang.Exception {
    private static final long serialVersionUID = 1579702174473L;
    private arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PatientServiceException faultMessage;

    public PatientServiceException() {
        super("PatientServiceException");
    }

    public PatientServiceException(java.lang.String s) {
        super(s);
    }

    public PatientServiceException(java.lang.String s, java.lang.Throwable ex) {
        super(s, ex);
    }

    public PatientServiceException(java.lang.Throwable cause) {
        super(cause);
    }

    public void setFaultMessage(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PatientServiceException msg) {
        faultMessage = msg;
    }

    public arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.PatientServiceException getFaultMessage() {
        return faultMessage;
    }
}
