/**
 * AccessException.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap;

public class AccessException extends java.lang.Exception {
    private static final long serialVersionUID = 1579699993072L;
    private arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.AccessException faultMessage;

    public AccessException() {
        super("AccessException");
    }

    public AccessException(java.lang.String s) {
        super(s);
    }

    public AccessException(java.lang.String s, java.lang.Throwable ex) {
        super(s, ex);
    }

    public AccessException(java.lang.Throwable cause) {
        super(cause);
    }

    public void setFaultMessage(
        arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.AccessException msg) {
        faultMessage = msg;
    }

    public arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.AccessException getFaultMessage() {
        return faultMessage;
    }
}
