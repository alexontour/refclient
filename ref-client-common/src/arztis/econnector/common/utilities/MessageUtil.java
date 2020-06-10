package arztis.econnector.common.utilities;

import java.text.MessageFormat;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

/**
 * 
 * Utilities for messages 
 * 
 * @author ET-Innovations
 *
 */

public class MessageUtil {
	private static ResourceBundle bundle = ResourceBundle.getBundle("messages_de");
	
	private MessageUtil() {
		throw new UnsupportedOperationException();
	}

	/**
	 * reads property values of the <b>resources/messages_de.properties</b> file
	 * @param key of the property
	 * @param arguments to pass to the message value like the social security number for 
	 * "Es wurden keine Dokumente für den Patienten mit der SVNR {0} gefunden."
	 * 
	 * @return the retrieved value, if no value could be retrieved a empty string will be returned
	 */
	public static String getMessageFromProperties(String key, Object arguments) {
		try {
			return MessageFormat.format(bundle.getString(key), arguments);
		} catch (MissingResourceException ex) {
			return "";
		}
	}

}
