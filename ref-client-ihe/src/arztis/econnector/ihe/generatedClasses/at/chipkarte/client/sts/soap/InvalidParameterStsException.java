/**
 * InvalidParameterStsException.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap;

public class InvalidParameterStsException extends java.lang.Exception {
    private static final long serialVersionUID = 1579699993090L;
    private arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.InvalidParameterStsException faultMessage;

    public InvalidParameterStsException() {
        super("InvalidParameterStsException");
    }

    public InvalidParameterStsException(java.lang.String s) {
        super(s);
    }

    public InvalidParameterStsException(java.lang.String s,
        java.lang.Throwable ex) {
        super(s, ex);
    }

    public InvalidParameterStsException(java.lang.Throwable cause) {
        super(cause);
    }

    public void setFaultMessage(
        arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.InvalidParameterStsException msg) {
        faultMessage = msg;
    }

    public arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.InvalidParameterStsException getFaultMessage() {
        return faultMessage;
    }
}
