package arztis.econnector.common.utilities;

import java.util.Iterator;

import org.apache.axiom.om.OMElement;
import org.apache.axis2.AxisFault;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Utilities for SOAP messages.
 *
 * @author Anna Jungwirth
 *
 */
public class SoapUtil {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(SoapUtil.class.getName());
	
	/** XML schema instance namespace. */
	public static final String XML_SCHEMA_NAMESPACE = "http://www.w3.org/2001/XMLSchema-instance";

	/** local name for attribute type. */
	public static final String TYPE_LITERAL = "type";

	/** prefix for XML schema instance namespace. */
	public static final String XSI_LITERAL = "xsi";

	/**
	 * Instantiates a new soap util.
	 */
	private SoapUtil() {
		throw new UnsupportedOperationException();
	}

	/**
	 * This method extracts error message of passed {@link AxisFault}.
	 *
	 * @param af exception thrown when a SOAP message was sent
	 * @return extracted text of {@link AxisFault}
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
