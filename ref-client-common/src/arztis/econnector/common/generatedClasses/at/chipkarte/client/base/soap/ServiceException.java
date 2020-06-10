/**
 * ServiceException.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap;

public class ServiceException extends java.lang.Exception {
    private static final long serialVersionUID = 1579702174469L;
    private arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.ServiceException faultMessage;

    public ServiceException() {
        super("ServiceException");
    }

    public ServiceException(java.lang.String s) {
        super(s);
    }

    public ServiceException(java.lang.String s, java.lang.Throwable ex) {
        super(s, ex);
    }

    public ServiceException(java.lang.Throwable cause) {
        super(cause);
    }

    public void setFaultMessage(
        arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.ServiceException msg) {
        faultMessage = msg;
    }

    public arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.ServiceException getFaultMessage() {
        return faultMessage;
    }
}
