/**
 * EmedAtExceptionException.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.ihe.generatedClasses.emedat;

public class EmedAtExceptionException extends java.lang.Exception {
    private static final long serialVersionUID = 1579865814022L;
    private arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.EmedAtExceptionDocument faultMessage;

    public EmedAtExceptionException() {
        super("EmedAtExceptionException");
    }

    public EmedAtExceptionException(java.lang.String s) {
        super(s);
    }

    public EmedAtExceptionException(java.lang.String s, java.lang.Throwable ex) {
        super(s, ex);
    }

    public EmedAtExceptionException(java.lang.Throwable cause) {
        super(cause);
    }

    public void setFaultMessage(
        arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.EmedAtExceptionDocument msg) {
        faultMessage = msg;
    }

    public arztis.econnector.ihe.generatedClasses.at.gv.elga.ns.emedat._2014._01.eMedikation.EmedAtExceptionDocument getFaultMessage() {
        return faultMessage;
    }
}
