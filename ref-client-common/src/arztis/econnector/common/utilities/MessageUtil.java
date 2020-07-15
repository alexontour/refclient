/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the Eclipse Public License v1.0.
 *
 */
package arztis.econnector.common.utilities;

import java.text.MessageFormat;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

/**
 * Utilities for building messages of properties file.
 *
 * @author Anna Jungwirth
 */
public class MessageUtil {

	/** The bundle. */
	private static ResourceBundle bundle = ResourceBundle.getBundle("messages_de");

	/**
	 * Default Constructor.
	 *
	 * @throws UnsupportedOperationException the unsupported operation exception
	 */
	private MessageUtil() {
		throw new UnsupportedOperationException();
	}

	/**
	 * This method reads property value of <b>resources/messages_de.properties</b>
	 * file for passed <code>key</code>
	 *
	 * @param key       property key
	 * @param arguments message values to pass for example social security number
	 *                  for a certain patient.
	 *
	 * @return retrieved value, if no value could be retrieved an empty string is
	 *         returned
	 */
	public static String getMessageFromProperties(String key, Object... arguments) {
		try {
			MessageFormat messageFormat = new MessageFormat(bundle.getString(key));
			return messageFormat.format(arguments, new StringBuffer(), null).toString();
		} catch (MissingResourceException ex) {
			return "";
		}
	}

}
