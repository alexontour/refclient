package arztis.econnector.common.utilities;

import java.util.Iterator;

import org.apache.axiom.om.OMElement;
import org.apache.axis2.AxisFault;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * utilities for SOAP messages
 * 
 * @author ET-Innovations
 *
 */
public class SoapUtil {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(SoapUtil.class.getName());
	public static final String XML_SCHEMA_NAMESPACE = "http://www.w3.org/2001/XMLSchema-instance";
	public static final String TYPE_LITERAL = "type";
	public static final String XSI_LITERAL = "xsi";
	
	private SoapUtil() {
		throw new UnsupportedOperationException();
	}
	
	/**
	 * 
	 * extracts the error message of the Axis fault object
	 * 
	 * @param af exception, which was thrown at sending the SOAP message
	 * @return message of the exception
	 */
    public static String extractErrorMessageOfAxisFault(AxisFault af) {
        String returnMessage = "";
        if (af.getDetail() != null
                && (af.getMessage() == null || af.getMessage().isEmpty() || af.getMessage().equals(" "))) {
            Iterator exceptionElements = af.getDetail().getChildElements();
            while (exceptionElements.hasNext()) {
                Object object = exceptionElements.next();
                if (object instanceof OMElement) {
                    OMElement element = (OMElement) object;
                    if ("message".equalsIgnoreCase(element.getLocalName())) {
                        returnMessage = element.getText();
                        LOGGER.error("There was a problem: {}", returnMessage);
                    }
                }
            }
        } else if (af.getMessage() != null) {
            returnMessage = af.getMessage();
        }
        
        return returnMessage;
    }

}
