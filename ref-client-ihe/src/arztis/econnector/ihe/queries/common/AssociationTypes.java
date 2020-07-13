/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 * 
 */
package arztis.econnector.ihe.queries.common;

/**
 * This list contains IHE association types. An Association is an object that
 * describes a named relationship between two metadata objects. Association
 * objects describe all aspects of this link including references to source and
 * target objects, the specific variant or name of the Association, and status
 * and version information. </br>
 * </br>
 *
 * There are two types of Associations: HasMember and Relationship.
 * <ul>
 * <li>HasMember (defines a membership relationship between two objects)</li>
 * <li>Relationship (defines an association between two DocumentEntry
 * objects)</li>
 * </ul>
 *
 *
 * </br>
 * More details you can find under <a href=
 * "https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol3.pdf">https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol3.pdf</a>
 * page 25 and following </br>
 *
 * @author Anna Jungwirth
 *
 */
public enum AssociationTypes {

	/**
	 * defines a membership relationship between two objects (Submission set or
	 * folder.
	 */
	HAS_MEMBER("urn:oasis:names:tc:ebxml-regrep:AssociationType:HasMember"),

	/** indicates the replacement of a previous document with a new document. */
	RPLC("urn:ihe:iti:2007:AssociationType:RPLC"),

	/**
	 * indicates the transformation of a previous document into a new document.
	 */
	XFRM("urn:ihe:iti:2007:AssociationType:XFRM"),

	/**
	 * indicates a new document that appends to the contents of a previous document.
	 */
	APND("urn:ihe:iti:2007:AssociationType:APND"),

	/**
	 * indicates a transformed replacement of a previous document with a new
	 * document.
	 */
	XFRM_RPLC("urn:ihe:iti:2007:AssociationType:XFRM_RPLC"),

	/**
	 * indicates a new document is a signature for a previous document, as in new
	 * document signs previous document.
	 */
	SIGNS("urn:ihe:iti:2007:AssociationType:signs"),

	/** Current document is a snapshot in time of the parent which is an on-demand document. */
	SNAPSHOT_OF("urn:ihe:iti:2010:AssociationType:IsSnapshotOf"),

	/**
	 * The availability status is set to a new value for the current document.
	 * Association with this type reference current document.
	 *
	 * <a href=
	 * "https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_XDS_Metadata_Update_Rev1.7_TI_2016-08-05.pdf">https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_XDS_Metadata_Update_Rev1.7_TI_2016-08-05.pdf</a>
	 */
	UPDATE_AVAILABILITY_STATUS("urn:ihe:iti:2010:AssociationType:UpdateAvailabilityStatus");

	/** The code. */
	private String code;

	/**
	 * Constructor to create association type with code.
	 *
	 * @param code association type
	 */
	private AssociationTypes(String code) {
		this.code = code;
	}

	/**
	 * Code of association type.
	 *
	 * @return association type
	 */
	public String getCode() {
		return code;
	}

	/**
	 * Gets enum of with passed value as code.
	 *
	 * @param value association type
	 * @return {@link AssociationTypes} association type
	 */
	public static AssociationTypes getEnum(String value) {
		for (final AssociationTypes x : values()) {
			if (x.getCode().equals(value)) {
				return x;
			}
		}
		return null;
	}

	/**
	 * checks if passed enum name is available.
	 *
	 * @param enumName name of enum
	 * @return true if enum is available and false if not
	 */
	public static boolean isEnumOfValueSet(String enumName) {
		if (enumName == null) {
			return false;
		}
		try {
			Enum.valueOf(AssociationTypes.class, enumName);
			return true;
		} catch (final IllegalArgumentException ex) {
			return false;
		}
	}

	/**
	 * checks if passed value is available.
	 *
	 * @param value of enum
	 * @return true if value is available and false if not
	 */
	public static boolean isInValueSet(String value) {
		for (final AssociationTypes x : values()) {
			if (x.getCode().equals(value)) {
				return true;
			}
		}
		return false;
	}

}
