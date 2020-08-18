package arztis.econnector.rest.test.utilities;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.hl7.fhir.r4.model.CodeableConcept;
import org.hl7.fhir.r4.model.Identifier;
import org.junit.Test;

import arztis.econnector.rest.utilities.FhirUtil;

/**
 * Tests for {@link FhirUtil}.
 *
 * @author Anna Jungwirth
 */
public class FhirUtilTest {

	/** The Constant SSNO. */
	private static final String SSNO = "1001210995";
	
	/** The Constant FEMALE. */
	private static final String FEMALE = "female";

	/**
	 * Test method for {@link FhirUtil#extractIdentifierFromTokenType()}.
	 *
	 */
	@Test
	public void testExtractIdentifierFromTokenType() {
		Identifier id = FhirUtil.extractIdentifierFromTokenType("1.2.3.4.5.6|1001210995");

		assertNotNull(id);
		assertEquals(SSNO, id.getValue());
		assertEquals("1.2.3.4.5.6", id.getSystem());

		id = FhirUtil.extractIdentifierFromTokenType(SSNO);

		assertNotNull(id);
		assertEquals(SSNO, id.getValue());
	}

	/**
	 * Test method for {@link FhirUtil#extractCodeFromTokenType()}.
	 *
	 */
	@Test
	public void testExtractCodeFromTokenType() {
		CodeableConcept code = FhirUtil.extractCodeFromTokenType("1.2.3.4.5.6|female");

		assertNotNull(code);
		assertNotNull(code.getCoding());
		assertEquals(FEMALE, code.getCodingFirstRep().getCode());
		assertEquals("1.2.3.4.5.6", code.getCodingFirstRep().getSystem());

		code = FhirUtil.extractCodeFromTokenType(FEMALE);

		assertNotNull(code);
		assertNotNull(code.getCoding());
		assertEquals(FEMALE, code.getCodingFirstRep().getCode());
	}

}
