/**
 * DialogException.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap;

public class DialogException extends java.lang.Exception {
    private static final long serialVersionUID = 1579702174478L;
    private arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.DialogException faultMessage;

    public DialogException() {
        super("DialogException");
    }

    public DialogException(java.lang.String s) {
        super(s);
    }

    public DialogException(java.lang.String s, java.lang.Throwable ex) {
        super(s, ex);
    }

    public DialogException(java.lang.Throwable cause) {
        super(cause);
    }

    public void setFaultMessage(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.DialogException msg) {
        faultMessage = msg;
    }

    public arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.DialogException getFaultMessage() {
        return faultMessage;
    }
}
