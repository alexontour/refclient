/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 * 
 */
package arztis.econnector.common.model;

/**
 * List of different message types. At the moment there are two different types.
 * One for error messages and another for successful messages.
 *
 * @author Anna Jungwirth
 *
 */
public enum MessageTypes {
	
	/** type for error messages. */
	ERROR,

	/** type for successful messages. */
	SUCCESS
}
