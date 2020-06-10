/**
 * CardException.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap;

public class CardException extends java.lang.Exception {
    private static final long serialVersionUID = 1579706755156L;
    private arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.GinaServiceStub.CardException faultMessage;

    public CardException() {
        super("CardException");
    }

    public CardException(java.lang.String s) {
        super(s);
    }

    public CardException(java.lang.String s, java.lang.Throwable ex) {
        super(s, ex);
    }

    public CardException(java.lang.Throwable cause) {
        super(cause);
    }

    public void setFaultMessage(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.GinaServiceStub.CardException msg) {
        faultMessage = msg;
    }

    public arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.GinaServiceStub.CardException getFaultMessage() {
        return faultMessage;
    }
}
