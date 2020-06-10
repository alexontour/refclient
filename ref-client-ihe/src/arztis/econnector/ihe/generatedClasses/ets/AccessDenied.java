/**
 * AccessDenied.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.ihe.generatedClasses.ets;

public class AccessDenied extends java.lang.Exception {
    private static final long serialVersionUID = 1579864637201L;
    private arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument faultMessage;

    public AccessDenied() {
        super("AccessDenied");
    }

    public AccessDenied(java.lang.String s) {
        super(s);
    }

    public AccessDenied(java.lang.String s, java.lang.Throwable ex) {
        super(s, ex);
    }

    public AccessDenied(java.lang.Throwable cause) {
        super(cause);
    }

    public void setFaultMessage(
        arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument msg) {
        faultMessage = msg;
    }

    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.FaultDocument getFaultMessage() {
        return faultMessage;
    }
}
