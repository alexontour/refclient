/**
 * StsException.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap;

public class StsException extends java.lang.Exception {
    private static final long serialVersionUID = 1579699993084L;
    private arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.StsException faultMessage;

    public StsException() {
        super("StsException");
    }

    public StsException(java.lang.String s) {
        super(s);
    }

    public StsException(java.lang.String s, java.lang.Throwable ex) {
        super(s, ex);
    }

    public StsException(java.lang.Throwable cause) {
        super(cause);
    }

    public void setFaultMessage(
        arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.StsException msg) {
        faultMessage = msg;
    }

    public arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub.StsException getFaultMessage() {
        return faultMessage;
    }
}
