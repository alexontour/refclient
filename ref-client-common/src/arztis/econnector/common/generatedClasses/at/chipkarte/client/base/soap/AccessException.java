/**
 * AccessException.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap;

public class AccessException extends java.lang.Exception {
    private static final long serialVersionUID = 1579702174464L;
    private arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.AccessException faultMessage;

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
        arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.AccessException msg) {
        faultMessage = msg;
    }

    public arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.AccessException getFaultMessage() {
        return faultMessage;
    }
}
