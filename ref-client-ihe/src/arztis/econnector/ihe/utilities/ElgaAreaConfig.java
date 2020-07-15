/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the Eclipse Public License v1.0.
 * 
 */
package arztis.econnector.ihe.utilities;

import java.util.HashMap;
import java.util.Map;

/**
 * This class includes all data, which are important for ELGA area
 * configuration. It may be extended in the future if additional differences
 * arise for ELGA areas<br/>
 * At the moment (2020-07-09) there are differences for "urn:oid:" prefixes and
 * content types. </br>
 * OID of an ELGA area serves as unique identifier in this class.
 *
 * @author Anna Jungwirth
 *
 */
public class ElgaAreaConfig {

	/** The oid. */
	private String oid;
	
	/** The urn oid needed. */
	private boolean urnOidNeeded;
	
	/** The urn oid needed for organization id. */
	private boolean urnOidNeededForOrganizationId;
	
	/** The different content type needed. */
	private boolean differentContentTypeNeeded;
	
	/** The content types. */
	private Map<String, String> contentTypes;

	/**
	 * Default constructor. Assigning empty hash map.
	 */
	public ElgaAreaConfig() {
		contentTypes = new HashMap<>();
	}

	/**
	 * Gets the oid.
	 *
	 * @return OID of ELGA area
	 */
	public String getOid() {
		return oid;
	}

	/**
	 * Sets the oid.
	 *
	 * @param oid the new oid
	 */
	public void setOid(String oid) {
		this.oid = oid;
	}

	/**
	 * indicates whether prefix "urn:oid:" is needed for coding systems.
	 *
	 * @return true if prefix is needed, false otherwise
	 */
	public boolean isUrnOidNeeded() {
		return urnOidNeeded;
	}

	/**
	 * Sets the urn oid needed.
	 *
	 * @param urnOidNeeded the new urn oid needed
	 */
	public void setUrnOidNeeded(boolean urnOidNeeded) {
		this.urnOidNeeded = urnOidNeeded;
	}

	/**
	 * indicates whether prefix "urn:oid:" is needed for organization OID.
	 *
	 * @return true if prefix is needed, false otherwise
	 */
	public boolean isUrnOidNeededForOrganizationId() {
		return urnOidNeededForOrganizationId;
	}

	/**
	 * Sets the urn oid needed for organization id.
	 *
	 * @param urnOidNeededForOrganizationId the new urn oid needed for organization id
	 */
	public void setUrnOidNeededForOrganizationId(boolean urnOidNeededForOrganizationId) {
		this.urnOidNeededForOrganizationId = urnOidNeededForOrganizationId;
	}

	/**
	 * indicates whether a content type other than the type code in CDA document is
	 * required.
	 *
	 * @return true if other content type is needed
	 */
	public boolean isDifferentContentTypeNeeded() {
		return differentContentTypeNeeded;
	}

	/**
	 * Sets the different content type needed.
	 *
	 * @param differentContentTypeNeeded the new different content type needed
	 */
	public void setDifferentContentTypeNeeded(boolean differentContentTypeNeeded) {
		this.differentContentTypeNeeded = differentContentTypeNeeded;
	}

	/**
	 * map for content types. Key is type code in CDA document and value is content
	 * type to use.
	 *
	 * @return mapping of type code and content type code
	 */
	public Map<String, String> getContentTypes() {
		return contentTypes;
	}
}
