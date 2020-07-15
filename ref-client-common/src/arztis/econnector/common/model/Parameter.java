/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the Eclipse Public License v1.0.
 *
 */
package arztis.econnector.common.model;

import java.io.Serializable;

/**
 * Base class for parameters for requests like registration or retrieving card
 * data.
 *
 * @author Anna Jungwirth
 *
 */
public abstract class Parameter implements Serializable {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 2156092287485623593L;

	/** The id. */
	private long id;

	/** The version. */
	private int version;

	/**
	 * Gets the id.
	 *
	 * @return ID of requested object
	 */
	public long getId() {
		return id;
	}

	/**
	 * Sets ID for requesting objects with this ID.
	 *
	 * @param id the new id
	 */
	public void setId(long id) {
		this.id = id;
	}

	/**
	 * Gets the version.
	 *
	 * @return version of requested object
	 */
	public int getVersion() {
		return version;
	}

	/**
	 * Sets version for requesting objects with a certain version.
	 *
	 * @param version the new version
	 */
	public void setVersion(int version) {
		this.version = version;
	}

}
