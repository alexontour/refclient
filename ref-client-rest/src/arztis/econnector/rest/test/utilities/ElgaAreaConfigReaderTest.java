/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the Eclipse Public License v1.0.
 * 
 */
package arztis.econnector.rest.test.utilities;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import java.util.Map;

import org.junit.Before;
import org.junit.Test;

import arztis.econnector.ihe.utilities.ElgaAreaConfig;
import arztis.econnector.ihe.utilities.ElgaAreaConfigReader;
import arztis.econnector.ihe.utilities.IheConstants;

/**
 * Test of {@link ElgaAreaConfigReader}.
 */
public class ElgaAreaConfigReaderTest {

	/** The map. */
	Map<String, ElgaAreaConfig> map;

	/**
	 * Method implementing.
	 */
	@Before
	public void setUp() {
		ElgaAreaConfigReader reader = ElgaAreaConfigReader.getInstance();
		map = reader.getElgaAreaConfigMap();
	}

	/**
	 * Test method for
	 * {@link ElgaAreaConfigReader()}.
	 *
	 */
	@Test
	public void testElgaAreaConfigReader() {
		ElgaAreaConfig config = map.get(IheConstants.OID_EIMMUNIZATION_HOME_COMMUNITY);
		assertEquals(IheConstants.OID_EIMMUNIZATION_HOME_COMMUNITY, config.getOid());
		assertTrue(config.isUrnOidNeeded());
		assertFalse(config.isDifferentContentTypeNeeded());

	}

}
