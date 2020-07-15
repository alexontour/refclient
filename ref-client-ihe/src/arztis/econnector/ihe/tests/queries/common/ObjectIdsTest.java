/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the Eclipse Public License v1.0.
 * 
 */
package arztis.econnector.ihe.tests.queries.common;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

import arztis.econnector.ihe.queries.common.ObjectIds;

/**
 * Test of {@link ObjectIds}.
 *
 * @author Anna Jungwirth
 */
public class ObjectIdsTest {

	/**
	 * Test method for {@link ObjectIds#getType()}.
	 *
	 */
	@Test
	public void testGetType() {
		String type = ObjectIds.getType(ObjectIds.EXTERNAL_IDENTIFIER_PATIENTID_DOCUMENT_CODE);
		assertEquals(ObjectIds.EXTERNAL_IDENTIFIER_LITERAL, type);

		type = ObjectIds.getType(ObjectIds.CLASSIFICATION_SCHEME_AUTHOR_EXTERNAL_DOCUMENT_ENTRY_CODE);
		assertEquals(ObjectIds.CLASSIFICATION_SCHEME_LITERAL, type);

		type = ObjectIds.getType(ObjectIds.CLASSIFICATION_NODE_ASSOCIATION_DOCUMENT_CODE);
		assertEquals(ObjectIds.CLASSIFICATION_NODE_LITERAL, type);
	}



}
