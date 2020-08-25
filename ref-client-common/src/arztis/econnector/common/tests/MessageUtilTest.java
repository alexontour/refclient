/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.common.tests;

import org.junit.Assert;
import org.junit.Test;

import arztis.econnector.common.utilities.MessageUtil;

/**
 * Tests for {@link MessageUtil}.
 *
 * @author Anna Jungwirth
 */
public class MessageUtilTest {

	/**
	 * Test get message from properties.
	 */
	@Test
	public void testGetMessageFromProperties() {
		Assert.assertEquals("Ein oder mehrere benötigte Parameter wurden nicht übergeben.",
				MessageUtil.getMessageFromProperties("MISSING_PARAMETERS"));
		Assert.assertEquals("Bitte überprüfen Sie Ihren Kartenleser und die gesteckte Karte.",
				MessageUtil.getMessageFromProperties("CHECK_CARD_READER"));
		Assert.assertEquals("Überprüfen Sie bitte, ob eine Anmeldung mit der ACard stattgefunden hat.",
				MessageUtil.getMessageFromProperties("CHECK_REGISTRATION_WITH_A_CARD"));
		Assert.assertEquals("EKOS kann für den Sozialversicherungsträger STGKK nicht verwendet werden.",
				MessageUtil.getMessageFromProperties("KVT_IS_NOT_POSSIBLE_IN_EBS", "STGKK"));
		Assert.assertEquals("Es wurden keine Dokumente für den Patienten mit der SVNR 1111120345 gefunden.",
				MessageUtil.getMessageFromProperties("NO_DOCUMENTS_FOR_PATIENT_FOUND", "1111120345"));
		Assert.assertEquals("Die ELGA Dokumente werden geladen. ",
				MessageUtil.getMessageFromProperties("DOCUMENTS_WILL_BE_LOADED", "no"));

		Assert.assertEquals("", MessageUtil.getMessageFromProperties("DOCUMENT"));
		Assert.assertEquals("", MessageUtil.getMessageFromProperties("DOCUMENT", "12"));
	}

}
