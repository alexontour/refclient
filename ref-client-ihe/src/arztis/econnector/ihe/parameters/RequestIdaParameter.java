/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 *
 */
package arztis.econnector.ihe.parameters;

import arztis.econnector.common.model.Parameter;

/**
 * This class is used to pass details to request an IDA of an ELGA area. This
 * IDA could be used to register in ELGA. This method is only possible
 * for hospitals as health care provider.
 *
 * @author Anna Jungwirth
 *
 */
public class RequestIdaParameter extends Parameter {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;
	
	/** The subject id. */
	private String subjectId;
	
	/** The organization id. */
	private String organizationId;
	
	/** The organization name. */
	private String organizationName;

	/**
	 * Instantiates a new request ida parameter.
	 *
	 * @param subjectId the subject id
	 * @param organizationId the organization id
	 * @param organizationName the organization name
	 */
	public RequestIdaParameter(String subjectId, String organizationId, String organizationName) {
		this.subjectId = subjectId;
		this.organizationId = organizationId;
		this.organizationName = organizationName;
	}

	/**
	 * Identifier of user (e.g. name of physician) for which IDA is requested
	 *
	 * @return user identifier
	 */
	public String getSubjectId() {
		return subjectId;
	}

	/**
	 * Sets the subject id.
	 *
	 * @param subjectId the new subject id
	 */
	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}

	/**
	 * OID of health care provider. This value can be requested from GDA index.
	 *
	 * @return OID of health care provider (GDA)
	 */
	public String getOrganizationId() {
		return organizationId;
	}

	/**
	 * Sets the organization id.
	 *
	 * @param organizationId the new organization id
	 */
	public void setOrganizationId(String organizationId) {
		this.organizationId = organizationId;
	}

	/**
	 * Name of health care provider e.g. SWHKrankenanstalt Landesklinikum Wels
	 *
	 * @return the organization name
	 */
	public String getOrganizationName() {
		return organizationName;
	}

	/**
	 * Sets the organization name.
	 *
	 * @param organizationName the new organization name
	 */
	public void setOrganizationName(String organizationName) {
		this.organizationName = organizationName;
	}

}
