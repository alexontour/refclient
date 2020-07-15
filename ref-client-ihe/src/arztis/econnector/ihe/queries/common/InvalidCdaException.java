/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the Eclipse Public License v1.0.
 * 
 */
package arztis.econnector.ihe.queries.common;

/**
 * This class InvalidCdaException are a form of Exception that indicates that
 * CDA document is invalid.
 *
 * @author Anna Jungwirth
 *
 */
public class InvalidCdaException extends Exception {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;
	
	/** The code. */
	private final int code;
	
	/** The message. */
	private final String message;

	/**
	 * Constructor to create exception with HTTP status code and message why CDA is
	 * invalid.
	 *
	 * @param code    HTTP status code e.g. 404 for not found
	 * @param message why CDA document is invalid
	 */
	public InvalidCdaException(int code, String message) {
		this.code = code;
		this.message = message;
	}

	/**
	 * HTTP status code.
	 *
	 * @return HTTP status code
	 */
	public int getCode() {
		return code;
	}

	/**
	 * message of this exception why CDA is invalid.
	 *
	 * @return the message
	 */
	@Override
	public String getMessage() {
		return message;
	}
}
