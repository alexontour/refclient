/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the Eclipse Public License v1.0.
 *
 */
package arztis.econnector.ihe.queries.common;

import java.util.HashMap;
import java.util.Map;

/**
 * This class contains different IHE IDs to identify types of classification or
 * external identifier.</br>
 *
 * @author Anna Jungwirth
 *
 */
public class ObjectIds {

	/**
	 * creating a submission set from a registry package. Fixed value identifying
	 * the type of object registry package represents.
	 */
	public static final String CLASSIFICATION_NODE_SUBMISSION_SET_CODE = "urn:uuid:a54d6aa5-d40d-43f9-88c5-b4633d873bdd";

	/**
	 * creating a folder from a registry package. Fixed value identifying the type
	 * of object registry package represents.
	 */
	public static final String CLASSIFICATION_NODE_FOLDER_CODE = "urn:uuid:d9d542f3-6cc4-48b6-8870-ea235fbc94c2";

	/**
	 * Represents humans and/or machines that authored submission set. Fixed value
	 * identifying the type of object.
	 */
	public static final String CLASSIFICATION_SCHEME_AUTHOR_EXTERNAL_SUBMISSION_SET_CODE = "urn:uuid:a7058bb9-b4e4-4307-ba5b-e3f0ab85e12d";

	/**
	 * Represents content type code of submission set. Fixed value identifying the
	 * type of object.
	 */
	public static final String CLASSIFICATION_SCHEME_CONTENTTYPECODE_CODE = "urn:uuid:aa543740-bdda-424e-8c96-df4873be8500";

	/**
	 * Represents humans and/or machines that authored document entry. Fixed value
	 * identifying the type of object.
	 */
	public static final String CLASSIFICATION_SCHEME_AUTHOR_EXTERNAL_DOCUMENT_ENTRY_CODE = "urn:uuid:93606bcf-9494-43ec-9b4e-a7748d1a838d";

	/**
	 * Represents class code of document entry. Fixed value identifying the type of
	 * object.
	 */
	public static final String CLASSIFICATION_SCHEME_CLASS_CODE_CODE = "urn:uuid:41a5887f-8865-4c09-adf7-e362475b143a";

	/**
	 * Represents confidentiality code of document entry. Fixed value identifying
	 * the type of object.
	 */
	public static final String CLASSIFICATION_SCHEME_CONFIDENTIALITY_CODE_CODE = "urn:uuid:f4f85eac-e6cb-4883-b524-f2705394840f";

	/**
	 * Represents list of event codes of document entry. Fixed value identifying the
	 * type of object.
	 */
	public static final String CLASSIFICATION_SCHEME_EVENTCODELIST_CODE_CODE = "urn:uuid:2c6b8cb7-8b2a-4051-b291-b1ae6a575ef4";

	/**
	 * Represents format code of document entry. Fixed value identifying the type of
	 * object.
	 */
	public static final String CLASSIFICATION_SCHEME_FORMAT_CODE_CODE = "urn:uuid:a09d5840-386c-46f2-b5ad-9c3699a4309d";

	/**
	 * Represents health care facility code of document entry. Fixed value
	 * identifying the type of object.
	 */
	public static final String CLASSIFICATION_SCHEME_HEALTHCAREFACILITY_CODE_CODE = "urn:uuid:f33fb8ac-18af-42cc-ae0e-ed0b0bdb91e1";

	/**
	 * Represents practice setting code of document entry. Fixed value identifying
	 * the type of object.
	 */
	public static final String CLASSIFICATION_SCHEME_PRACTICESETTING_CODE_CODE = "urn:uuid:cccf5598-8b07-4b77-a05e-ae952c785ead";

	/**
	 * Represents list of codes of folder. Fixed value identifying the type of
	 * object.
	 */
	public static final String CLASSIFICATION_SCHEME_CODE_LIST_FOLDER_CODE = "urn:uuid:1ba97051-7806-41a8-a48b-8fce7af683c5";

	/**
	 * Represents type code of document entry. Fixed value identifying the type of
	 * object.
	 */
	public static final String CLASSIFICATION_SCHEME_TYPE_CODE_CODE = "urn:uuid:f0306f51-975f-434e-a61c-c59651d33983";

	/**
	 * Represents the patient for whom the submission set was created. Fixed value
	 * identifying the type of object.
	 */
	public static final String EXTERNAL_IDENTIFIER_PATIENTID_SUBMISSION_SET_CODE = "urn:uuid:6b5aea1a-874d-4603-a4bc-96a0a7b38446";

	/**
	 * Represents unique and immutable identifier of the entity that contributed
	 * submission set. Fixed value identifying the type of object.
	 */
	public static final String EXTERNAL_IDENTIFIER_SOURCEID_SUBMISSION_SET_CODE = "urn:uuid:554ac39e-e3fe-47fe-b233-965d2a147832";

	/**
	 * Represents globally unique identifier for submission set assigned by entity
	 * that contributed submission set. Fixed value identifying the type of object.
	 */
	public static final String EXTERNAL_IDENTIFIER_UNIQUEID_SUBMISSION_SET_CODE = "urn:uuid:96fdda7c-d067-4183-912e-bf5ee74998a8";

	/**
	 * Represents the patient for whom the document entry was created. Fixed value
	 * identifying the type of object.
	 */
	public static final String EXTERNAL_IDENTIFIER_PATIENTID_DOCUMENT_CODE = "urn:uuid:58a6f841-87b3-4a3e-92fd-a8ffeff98427";

	/**
	 * Represents globally unique identifier for document entry assigned by its
	 * author. Fixed value identifying the type of object.
	 */
	public static final String EXTERNAL_IDENTIFIER_UNIQUEID_DOCUMENT_CODE = "urn:uuid:2e82c1f6-a085-4c72-9da3-8640a32e42ab";

	/**
	 * Represents the patient for whom the folder was created. Fixed value
	 * identifying the type of object.
	 */
	public static final String EXTERNAL_IDENTIFIER_PATIENTID_FOLDER_CODE = "urn:uuid:f64ffdf0-4b97-4e06-b79f-a52b38ec2f8a";

	/**
	 * Represents globally unique identifier for folder assigned by by entity that
	 * created folder. Fixed value identifying the type of object.
	 */
	public static final String EXTERNAL_IDENTIFIER_UNIQUEID_FOLDER_CODE = "urn:uuid:75df8f67-9973-4fbe-a900-df66cefecc5a";

	/**
	 * Represents association documentation. Fixed value identifying the type of
	 * object.
	 */
	public static final String CLASSIFICATION_NODE_ASSOCIATION_DOCUMENT_CODE = "urn:uuid:abd807a3-4432-4053-87b4-fd82c643d1f3";

	/** Attribute name classificationNode for Classification element. */
	public static final String CLASSIFICATION_NODE_LITERAL = "classificationNode";

	/** Attribute name classificationScheme for Classification element. */
	public static final String CLASSIFICATION_SCHEME_LITERAL = "classificationScheme";

	/**
	 * Element name externalIdentifier.
	 */
	public static final String EXTERNAL_IDENTIFIER_LITERAL = "externalIdentifier";

	/** The map. */
	private static Map<String, String> map;

	/**
	 * Instantiates a new object IDs.
	 */
	private ObjectIds() {
		throw new IllegalStateException("Constant class");
	}

	/**
	 * initialize map key is object ID and value is attribute name.
	 */
	private static void initializeMap() {
		map = new HashMap<>();
		map.put(CLASSIFICATION_NODE_SUBMISSION_SET_CODE, CLASSIFICATION_NODE_LITERAL);
		map.put(CLASSIFICATION_NODE_FOLDER_CODE, CLASSIFICATION_NODE_LITERAL);
		map.put(CLASSIFICATION_SCHEME_AUTHOR_EXTERNAL_SUBMISSION_SET_CODE, CLASSIFICATION_SCHEME_LITERAL);
		map.put(CLASSIFICATION_SCHEME_CONTENTTYPECODE_CODE, CLASSIFICATION_SCHEME_LITERAL);
		map.put(CLASSIFICATION_SCHEME_AUTHOR_EXTERNAL_DOCUMENT_ENTRY_CODE, CLASSIFICATION_SCHEME_LITERAL);
		map.put(CLASSIFICATION_SCHEME_CLASS_CODE_CODE, CLASSIFICATION_SCHEME_LITERAL);
		map.put(CLASSIFICATION_SCHEME_CONFIDENTIALITY_CODE_CODE, CLASSIFICATION_SCHEME_LITERAL);
		map.put(CLASSIFICATION_SCHEME_EVENTCODELIST_CODE_CODE, CLASSIFICATION_SCHEME_LITERAL);
		map.put(CLASSIFICATION_SCHEME_FORMAT_CODE_CODE, CLASSIFICATION_SCHEME_LITERAL);
		map.put(CLASSIFICATION_SCHEME_HEALTHCAREFACILITY_CODE_CODE, CLASSIFICATION_SCHEME_LITERAL);
		map.put(CLASSIFICATION_SCHEME_PRACTICESETTING_CODE_CODE, CLASSIFICATION_SCHEME_LITERAL);
		map.put(CLASSIFICATION_SCHEME_CODE_LIST_FOLDER_CODE, CLASSIFICATION_SCHEME_LITERAL);
		map.put(CLASSIFICATION_SCHEME_TYPE_CODE_CODE, CLASSIFICATION_SCHEME_LITERAL);
		map.put(EXTERNAL_IDENTIFIER_PATIENTID_SUBMISSION_SET_CODE, EXTERNAL_IDENTIFIER_LITERAL);
		map.put(EXTERNAL_IDENTIFIER_SOURCEID_SUBMISSION_SET_CODE, EXTERNAL_IDENTIFIER_LITERAL);
		map.put(EXTERNAL_IDENTIFIER_UNIQUEID_SUBMISSION_SET_CODE, EXTERNAL_IDENTIFIER_LITERAL);
		map.put(EXTERNAL_IDENTIFIER_PATIENTID_DOCUMENT_CODE, EXTERNAL_IDENTIFIER_LITERAL);
		map.put(EXTERNAL_IDENTIFIER_UNIQUEID_DOCUMENT_CODE, EXTERNAL_IDENTIFIER_LITERAL);
		map.put(EXTERNAL_IDENTIFIER_PATIENTID_FOLDER_CODE, EXTERNAL_IDENTIFIER_LITERAL);
		map.put(EXTERNAL_IDENTIFIER_UNIQUEID_FOLDER_CODE, EXTERNAL_IDENTIFIER_LITERAL);
		map.put(CLASSIFICATION_NODE_ASSOCIATION_DOCUMENT_CODE, CLASSIFICATION_NODE_LITERAL);
	}

	/**
	 * returns matching attribute name for passed value.
	 *
	 * @param value object ID
	 * @return returns matching attribute name
	 */
	public static String getType(String value) {
		if (map == null) {
			initializeMap();
		}
		return map.get(value);
	}

}
