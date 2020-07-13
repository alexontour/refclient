/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 * 
 */
package arztis.econnector.ihe.utilities;

/**
 * This class UnauthorizedException are a form of Exception that indicates that
 * user is unauthorized and are not allowed to access service.
 *
 * @author Anna Jungwirth
 *
 */
public class UnauthorizedException extends Exception {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/**
	 * Instantiates a new unauthorized exception.
	 *
	 * @param errorMessage the error message
	 */
	public UnauthorizedException(String errorMessage) {
		super(errorMessage);
	}
}
