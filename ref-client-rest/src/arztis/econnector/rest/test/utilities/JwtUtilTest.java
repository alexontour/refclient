/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest.test.utilities;

import static org.junit.Assert.assertNotNull;

import org.apache.xmlbeans.XmlException;
import org.junit.Before;
import org.junit.Test;

import arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType;
import arztis.econnector.rest.utilities.JwtUtil;

/**
 * Tests for {@link JwtUtil}.
 *
 * @author Anna Jungwirth
 */
public class JwtUtilTest {

	/** The test hcp assertion. */
	private AssertionType testHcpAssertion;

	/**
	 * Method implementing.
	 *
	 * @throws XmlException the xml exception
	 */
	@Before
	public void setUp() throws XmlException {
		String hcpAssertion = "<xml-fragment ID=\"_4f3a5b66-e471-46b7-946f-70511787c6b6\" IssueInstant=\"2020-05-27T07:08:19.243Z\" Version=\"2.0\" xmlns:saml2=\"urn:oasis:names:tc:SAML:2.0:assertion\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:wst=\"http://docs.oasis-open.org/ws-sx/ws-trust/200512\" xmlns:env=\"http://www.w3.org/2003/05/soap-envelope\">\n" +
				"  <saml2:Issuer Format=\"urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified\">urn:elga:ets</saml2:Issuer>\n" +
				"  <ds:Signature xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\">\n" +
				"    <ds:SignedInfo>\n" +
				"      <ds:CanonicalizationMethod Algorithm=\"http://www.w3.org/2001/10/xml-exc-c14n#\"/>\n" +
				"      <ds:SignatureMethod Algorithm=\"http://www.w3.org/2001/04/xmldsig-more#rsa-sha256\"/>\n" +
				"      <ds:Reference URI=\"#_4f3a5b66-e471-46b7-946f-70511787c6b6\">\n" +
				"        <ds:Transforms>\n" +
				"          <ds:Transform Algorithm=\"http://www.w3.org/2000/09/xmldsig#enveloped-signature\"/>\n" +
				"          <ds:Transform Algorithm=\"http://www.w3.org/2001/10/xml-exc-c14n#\">\n" +
				"            <ec:InclusiveNamespaces PrefixList=\"xsd\" xmlns:ec=\"http://www.w3.org/2001/10/xml-exc-c14n#\"/>\n" +
				"          </ds:Transform>\n" +
				"        </ds:Transforms>\n" +
				"        <ds:DigestMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#sha256\"/>\n" +
				"        <ds:DigestValue>+gXLEy64UaWmnmYRIAcQBi+/q0c8lOZaaAmvySQUtDA=</ds:DigestValue>\n" +
				"      </ds:Reference>\n" +
				"    </ds:SignedInfo>\n" +
				"    <ds:SignatureValue>WtADurNVQicusXVMr6lw05Z3benDFt2vYMzdO56+WYrjy3vU9fJ2K0zsjfqbhOgmxpE5iOZw5CdNBIpidnif6MV4rHbl6kimTNLtPUA7IZvehEVYGBgkdKojiG5FEOiNCwBnwpfduO1aVjgy+R67fQx+OaWIPhkmpGnYRe/qKWkSGDCFz0gI7PE7eiAnaHf1NG447/0f2sAdyR6H8kbFHGt0B86xM0FMZnZhDpfFXs3YTOWfRUFkxL5kZllaSJQMjco6kh8FLLDDKM8xIiuuuP5Y7oJK4RgJSzTqsE4Wf2n3lPIzsjMepMFI5vZvRyC6sKDA5pZBzU4gmTZ/puHLrw==</ds:SignatureValue>\n" +
				"    <ds:KeyInfo>\n" +
				"      <ds:X509Data>\n" +
				"        <ds:X509Certificate>MIIEMzCCAxugAwIBAgIIXazOdf5ItY4wDQYJKoZIhvcNAQELBQAwFjEUMBIGA1UEAwwLRUxHQS1JTlRDQTEwHhcNMjAwNTEwMTE1MzExWhcNMjIwNTEwMTE1MzExWjBCMRwwGgYDVQQDDBNhY3MuZWxnYS1zcGlyaXQuaW50MRUwEwYDVQQKDAxUaWFuaS1TcGlyaXQxCzAJBgNVBAYTAkFUMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5RYjoSxZdKoAOo4Q+4zojVrBr3t55E25L4u9VLgxm7evS6lhI1zFa03elnVCVPZsEbz8zEuqBjDLpU4fYvDdyw6u8U5Sw9q9jtiUt9JBkgGO9lxppRRfARqbbJKvLlzpQa0IARYeh4sBj5fNc2ohUjifOATPkhW/QzTiCnMDZh9U3tYeLUORX/b3Lgm8wZ5/oy6MUtPnXefTRMVmFtP5YAevhsQqpqAyMcqmodtRDiNDa5mHReVH/ftKGGWeX6MeO7b6RTy0Znji/TH7Y7GIjqwh4ISRgxJ/B9ZzCUApoFD2MceGCvZzIYQ2St8WAA0UsxDFA5EuPS7G18LHvcRLyQIDAQABo4IBVzCCAVMwDAYDVR0TAQH/BAIwADAfBgNVHSMEGDAWgBRpnVuezwNOHziBG5P0dFmd5NVI5zBTBggrBgEFBQcBAQRHMEUwQwYIKwYBBQUHMAGGN2h0dHA6Ly9iZXMudGlhbmktc3Bpcml0LmNvbS9lamJjYS9wdWJsaWN3ZWIvc3RhdHVzL29jc3AwgYEGA1UdEQR6MHiCF2Fjcy5lbGdhLWRldi1zcGlyaXQuaW50ghVhY3Mua29sbGFiLXNwaXJpdC5pbnSCFmFjcy5rb2xsYWIxLXNwaXJpdC5pbnSCFmFjcy5rb2xsYWIyLXNwaXJpdC5pbnSCFmFjcy5rb2xsYWIzLXNwaXJpdC5pbnQwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMBMB0GA1UdDgQWBBQS4G6YdEJcRn3+26BTwmyhrrh5EjALBgNVHQ8EBAMCBeAwDQYJKoZIhvcNAQELBQADggEBADr7WLGpG1nCcSNfA/zdlSQvuUVuzLgT3DDdZ1Yjj/tZkG6hAO+rIwRAroz4sNbNxzrksDghhvhZe2GsboJaiJlu81uxH/Y7mi3fh3CTYkTjW4dxS1i9D9uXXLTKuuP1S4XBVuK/FF47Y5MXxAY6IGc/Hoy/cxHxRAWpGskPIkx2weQ0g/UkmWwG41QafEuwyZcaGIxI7ZJkvt7Zw96U01AlnkQodq4dG0tsG+YRuHb+4iRCOjo1gQPucVS6ss+bbRBJ+ikO8fT9cV6yXAKoBi8yfw4HBGDTSbJdWs7F0bRKV1IJDR6xadByG9skpSOhuEe4VXuqNAkvdxxExLxN5/Q=</ds:X509Certificate>\n" +
				"      </ds:X509Data>\n" +
				"    </ds:KeyInfo>\n" +
				"  </ds:Signature>\n" +
				"  <saml2:Subject>\n" +
				"    <saml2:NameID Format=\"urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified\">1.2.40.0.34.99.3.2.1046167^1.2.40.0.10.1.4.3.2@ArztIS Test GDA 1</saml2:NameID>\n" +
				"    <saml2:SubjectConfirmation Method=\"urn:oasis:names:tc:SAML:2.0:cm:bearer\">\n" +
				"      <saml2:SubjectConfirmationData/>\n" +
				"    </saml2:SubjectConfirmation>\n" +
				"  </saml2:Subject>\n" +
				"  <saml2:Conditions NotBefore=\"2020-05-27T07:08:19.243Z\" NotOnOrAfter=\"2020-05-27T11:08:19.243Z\">\n" +
				"    <saml2:ProxyRestriction Count=\"1\"/>\n" +
				"    <saml2:AudienceRestriction>\n" +
				"      <saml2:Audience>https://elga-online.at/KBS</saml2:Audience>\n" +
				"      <saml2:Audience>https://elga-online.at/ETS</saml2:Audience>\n" +
				"      <saml2:Audience>https://elga-online.at/ZPI</saml2:Audience>\n" +
				"    </saml2:AudienceRestriction>\n" +
				"  </saml2:Conditions>\n" +
				"  <saml2:AuthnStatement AuthnInstant=\"2020-05-27T07:08:19.243Z\">\n" +
				"    <saml2:AuthnContext>\n" +
				"      <saml2:AuthnContextClassRef>urn:oasis:names:tc:SAML:2.0:ac:classes:PreviousSession</saml2:AuthnContextClassRef>\n" +
				"    </saml2:AuthnContext>\n" +
				"  </saml2:AuthnStatement>\n" +
				"  <saml2:AttributeStatement>\n" +
				"    <saml2:Attribute FriendlyName=\"BeS Purpose of Use\" Name=\"urn:oasis:names:tc:xspa:1.0:subject:purposeofuse\" NameFormat=\"urn:oasis:names:tc:SAML:2.0:attrname-format:uri\">\n" +
				"      <saml2:AttributeValue xsi:type=\"xsd:string\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">PUBLICHEALTH</saml2:AttributeValue>\n" +
				"    </saml2:Attribute>\n" +
				"    <saml2:Attribute FriendlyName=\"ELGA Rolle\" Name=\"urn:oasis:names:tc:xacml:2.0:subject:role\" NameFormat=\"urn:oasis:names:tc:SAML:2.0:attrname-format:uri\">\n" +
				"      <saml2:AttributeValue xsi:type=\"xsd:anyType\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">\n" +
				"        <Role code=\"700\" codeSystem=\"1.2.40.0.34.5.3\" codeSystemName=\"ELGA GDA Aggregatrollen\" displayName=\"Arzt\" xmlns=\"urn:hl7-org:v3\"/>\n" +
				"      </saml2:AttributeValue>\n" +
				"    </saml2:Attribute>\n" +
				"    <saml2:Attribute FriendlyName=\"XSPA Subject\" Name=\"urn:oasis:names:tc:xacml:1.0:subject:subject-id\" NameFormat=\"urn:oasis:names:tc:SAML:2.0:attrname-format:uri\">\n" +
				"      <saml2:AttributeValue xsi:type=\"xsd:string\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">Dr. Anna Test</saml2:AttributeValue>\n" +
				"    </saml2:Attribute>\n" +
				"    <saml2:Attribute FriendlyName=\"Local Organisation ID\" Name=\"urn:elga:bes:2013:local-organisation-id\" NameFormat=\"urn:oasis:names:tc:SAML:2.0:attrname-format:uri\">\n" +
				"      <saml2:AttributeValue xsi:type=\"xsd:anyURI\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">046167@1.2.40.0.10.1.4.3.2</saml2:AttributeValue>\n" +
				"    </saml2:Attribute>\n" +
				"    <saml2:Attribute FriendlyName=\"XSPA Organization ID\" Name=\"urn:oasis:names:tc:xspa:1.0:subject:organization-id\" NameFormat=\"urn:oasis:names:tc:SAML:2.0:attrname-format:uri\">\n" +
				"      <saml2:AttributeValue xsi:type=\"xsd:anyURI\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">urn:oid:1.2.40.0.34.99.3.2.1046167</saml2:AttributeValue>\n" +
				"    </saml2:Attribute>\n" +
				"    <saml2:Attribute FriendlyName=\"Permissions\" Name=\"urn:elga:bes:permission\" NameFormat=\"urn:oasis:names:tc:SAML:2.0:attrname-format:uri\">\n" +
				"      <saml2:AttributeValue xsi:type=\"xsd:string\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">urn:elga:bes:2013:permission:eBefunde</saml2:AttributeValue>\n" +
				"      <saml2:AttributeValue xsi:type=\"xsd:string\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">urn:elga:bes:2013:permission:eMedikation</saml2:AttributeValue>\n" +
				"    </saml2:Attribute>\n" +
				"  </saml2:AttributeStatement>\n" +
				"</xml-fragment>";
		testHcpAssertion = AssertionType.Factory.parse(hcpAssertion);
	}

	/**
	 * Test method for {@link JwtUtil#buildJwtFromHcpAssertion()}.
	 *
	 */
	@Test
	public void testBuildJwtFromHcpAssertion() {
		String token = JwtUtil.buildJwtFromHcpAssertion(testHcpAssertion);

		assertNotNull(token);
	}

}
