/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the Eclipse Public License v1.0.
 * 
 */
package arztis.econnector.ihe.tests.model;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.text.SimpleDateFormat;

import org.apache.xmlbeans.XmlException;
import org.junit.Before;
import org.junit.Test;

import arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType;
import arztis.econnector.ihe.model.HcpAssertion;

/**
 * Test of {@link HcpAssertion}.
 *
 * @author Anna Jungwirth
 */
public class HcpAssertionTest {

	/** The test hcp assertion. */
	private AssertionType testHcpAssertion;

	/**
	 * Method implementing.
	 *
	 * @throws XmlException the xml exception
	 */
	@Before
	public void setUp() throws XmlException {
		String hcpAssertion = "<xml-fragment xmlns:saml2=\"urn:oasis:names:tc:SAML:2.0:assertion\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" ID=\"_8bbe7760-50c7-4103-8264-50a485479788\" IssueInstant=\"2015-03-18T09:23:19.375Z\" Version=\"2.0\"><saml2:Issuer Format=\"urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified\">urn:elga:ets</saml2:Issuer><ds:Signature xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\"><ds:SignedInfo><ds:CanonicalizationMethod Algorithm=\"http://www.w3.org/2001/10/xml-exc-c14n#\" /><ds:SignatureMethod Algorithm=\"http://www.w3.org/2001/04/xmldsig-more#rsa-sha256\" /><ds:Reference URI=\"#_8bbe7760-50c7-4103-8264-50a485479788\"><ds:Transforms><ds:Transform Algorithm=\"http://www.w3.org/2000/09/xmldsig#enveloped-signature\" /><ds:Transform Algorithm=\"http://www.w3.org/2001/10/xml-exc-c14n#\"><ec:InclusiveNamespaces xmlns:ec=\"http://www.w3.org/2001/10/xml-exc-c14n#\" PrefixList=\"xs\" /></ds:Transform></ds:Transforms><ds:DigestMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#sha256\" /><ds:DigestValue>PWc/D/NBInAk9D8lES+q1kIebtY=</ds:DigestValue></ds:Reference></ds:SignedInfo><ds:SignatureValue>F3lFBtnQliCP3TSnjpVCbbf2y6yFQSM3tcB8G5cKa5umep7s4zVvZpGcdf0QQnRVAwB4NlsORYb++Pfz0deVc4+fuYHUYE8oC0wexk3Yfzz1CDc4NWLH+bR7vYxwGYUvks3aAcHC/wxxc7Ezlv2LHf7t7Cqp+g1agpN0IlY34b+C6OEq4+4mOD9X07mtxQE34/63CZtAfQYkrWm19vVg/Zj1kBC7/WeCEn0AAy/mli+E/WQLSwPLm0wV7SBxhj3wqsiLp7YFcQWBZ+yGpUYujUYt+HkiKsIwvFtuUaLYGIiU8hHY0uXwl5ln6w9Zh+316blb1JLxn6/sTlBA26SwSQ==</ds:SignatureValue><ds:KeyInfo><ds:X509Data><ds:X509Certificate>MIIEQTCCAymgAwIBAgIBAzANBgkqhkiG9w0BAQUFADCBrDELMAkGA1UEBhMCQVQxEDAOBgNVBAgTB0F1c3RyaWExDzANBgNVBAcTBlZpZW5uYTEaMBgGA1UEChMRVGlhbmkgU3Bpcml0IEdtYkgxGTAXBgNVBAsTEERlbW8gRW52aXJvbm1lbnQxEDAOBgNVBAMTB1Rlc3QgQ0ExMTAvBgkqhkiG9w0BCQEWIm1hc3NpbWlsaWFuby5tYXNpQHRpYW5pLXNwaXJpdC5jb20wIBcNMTEwNzI3MDgyMTUyWhgPMjE5MDEyMzEwODIxNTJaMIGbMQswCQYDVQQGEwJBVDEQMA4GA1UECBMHQXVzdHJpYTEaMBgGA1UEChMRVGlhbmkgU3Bpcml0IEdtYkgxGTAXBgNVBAsTEERlbW8gRW52aXJvbm1lbnQxEDAOBgNVBAMTB3NlcnZlcjExMTAvBgkqhkiG9w0BCQEWIm1hc3NpbWlsaWFuby5tYXNpQHRpYW5pLXNwaXJpdC5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDcEpmyaFK8aKKrvaFZL6IGttOwI3ImGCUiwINIc+fcuVWRyT7Deb8tymnwVBfHVD/8Mh5ufwiS9YU774Ta2aB8H/Gwr5QIndu4eG9+adDEV3+Di6e3HhiA/8RP8CXCMGY4LOAjaNwUh/EEsn1S2oa+Dsiff5Ba8wmddc6pyYiwmhDfwEF0YBXDjvB8iexcLcOLvo/pl2hP87g/ptDXy0VUWWPzX9qxc6YtqhkS7EtmhzMW5deWvmRiPzJ2NVfCuvpcsK2Tii+MgCYbLXCLYkCg+5ZpV7esrqb5hWOf2tKUsDlu/sjck2lflsWTE1woKr0tbp7IxLzvGKx9hERB0hzJAgMBAAGjezB5MAkGA1UdEwQCMAAwLAYJYIZIAYb4QgENBB8WHU9wZW5TU0wgR2VuZXJhdGVkIENlcnRpZmljYXRlMB0GA1UdDgQWBBQU7M3dSaInYi+0MCDYpbACOCjvBzAfBgNVHSMEGDAWgBRkwihuUTlGpNDxrnZFbW84FXj72jANBgkqhkiG9w0BAQUFAAOCAQEAjEqNtOb2Hk6BpBDRXk9vd+0vvJSOWvdZnL3I2Kr30oN6nQOMud68FPI1JC1QwLni05ZVDTyMYOk/HRPK2jSByFmLZECaE6Q5Z1BTD9vR/AqtmTOvub922uS5gTpVEWijSW1o9j+LFzGC4k8l4xWidPtKa3o1aXSGcWSw0i1BKgxM3pMzSvKieZ2KQaHgZSb7bfk4uR4kAaida5hv6kveiDKRRG+8AeBvBD5lofaqUaUN9q/YIOucc8gHQBzGrmkObvyykzyPz5wddLmouqrZZqfufPTNh4whyABbXCPXsptDZZss8DlKS37rFVUKLHEhcfd1J+IOioaTnaPhgY/dXg==</ds:X509Certificate></ds:X509Data></ds:KeyInfo></ds:Signature><saml2:Subject><saml2:NameID Format=\"urn:oasis:names:tc:SAML:2.0:unspecified\">1.2.40.0.34.3.1.1000^K434@Wels-Grieskirchen-KL</saml2:NameID><saml2:SubjectConfirmation Method=\"urn:oasis:names:tc:SAML:2.0:cm:bearer\"><saml2:SubjectConfirmationData /></saml2:SubjectConfirmation></saml2:Subject><saml2:Conditions NotBefore=\"2015-03-18T09:23:19.374Z\" NotOnOrAfter=\"2015-03-18T13:23:19.374Z\"><saml2:ProxyRestriction Count=\"1\" /><saml2:AudienceRestriction><saml2:Audience>https://elga-online.at/KBS</saml2:Audience><saml2:Audience>https://elga-online.at/ETS</saml2:Audience></saml2:AudienceRestriction></saml2:Conditions><saml2:AuthnStatement AuthnInstant=\"2015-03-18T09:23:19.374Z\"><saml2:AuthnContext><saml2:AuthnContextClassRef>urn:oasis:names:tc:SAML:2.0:ac:classes:PreviousSession</saml2:AuthnContextClassRef></saml2:AuthnContext></saml2:AuthnStatement><saml2:AttributeStatement><saml2:Attribute FriendlyName=\"Purpose Of Use\" Name=\"urn:oasis:names:tc:xspa:1.0:subject:purposeofuse\" NameFormat=\"urn:oasis:names:tc:SAML:2.0:attrname-format:uri\"><saml2:AttributeValue xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"xs:string\">PUBLICHEALTH</saml2:AttributeValue></saml2:Attribute><saml2:Attribute FriendlyName=\"ELGA Rolle\" Name=\"urn:oasis:names:tc:xacml:2.0:subject:role\" NameFormat=\"urn:oasis:names:tc:SAML:2.0:attrname-format:uri\"><saml2:AttributeValue xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"xs:anyType\"><Role xmlns=\"urn:hl7-org:v3\" code=\"702\" codeSystem=\"1.2.40.0.34.5.3\" codeSystemName=\"ELGA Rollen\" displayName=\"Krankenanstalt\" /></saml2:AttributeValue></saml2:Attribute><saml2:Attribute FriendlyName=\"XSPA Subject\" Name=\"urn:oasis:names:tc:xacml:1.0:subject:subject-id\" NameFormat=\"urn:oasis:names:tc:SAML:2.0:attrname-format:uri\"><saml2:AttributeValue xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"xs:string\">Dr. John Zoidberg</saml2:AttributeValue></saml2:Attribute><saml2:Attribute FriendlyName=\"XSPA Organization ID\" Name=\"urn:oasis:names:tc:xspa:1.0:subject:organization-id\" NameFormat=\"urn:oasis:names:tc:SAML:2.0:attrname-format:uri\"><saml2:AttributeValue xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"xs:anyURI\">1.2.40.0.34.3.1.1000</saml2:AttributeValue></saml2:Attribute><saml2:Attribute FriendlyName=\"Permissions\" Name=\"urn:elga:bes:permission\" NameFormat=\"urn:oasis:names:tc:SAML:2.0:attrname-format:uri\"><saml2:AttributeValue xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"xs:string\">urn:elga:bes:2013:permission:eBefunde</saml2:AttributeValue><saml2:AttributeValue xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"xs:string\">urn:elga:bes:2013:permission:eMedikation</saml2:AttributeValue></saml2:Attribute></saml2:AttributeStatement></xml-fragment>";

		testHcpAssertion = AssertionType.Factory.parse(hcpAssertion);
	}

	/**
	 * Test method for {@link HcpAssertion#extractAssertionInformation()}.
	 *
	 */
	@Test
	public void testExtractAssertionInformation() {
		HcpAssertion assertion = new HcpAssertion(testHcpAssertion);

		assertNotNull(assertion);
		assertEquals("urn:elga:ets", assertion.getIssuer());
		assertEquals("1.2.40.0.34.3.1.1000^K434@Wels-Grieskirchen-KL", assertion.getSubject());

		assertTrue(!assertion.getClaims().isEmpty());
		assertTrue(assertion.getClaims().containsKey("urn:oasis:names:tc:xspa:1.0:subject:purposeofuse"));
		assertEquals("PUBLICHEALTH", assertion.getClaims().get("urn:oasis:names:tc:xspa:1.0:subject:purposeofuse"));

		assertTrue(!assertion.getClaims().isEmpty());
		assertTrue(assertion.getClaims().containsKey("urn:oasis:names:tc:xacml:1.0:subject:subject-id"));
		assertEquals("Dr. John Zoidberg", assertion.getClaims().get("urn:oasis:names:tc:xacml:1.0:subject:subject-id"));

		assertTrue(!assertion.getClaims().isEmpty());
		assertTrue(assertion.getClaims().containsKey("urn:oasis:names:tc:xspa:1.0:subject:organization-id"));
		assertEquals("1.2.40.0.34.3.1.1000", assertion.getClaims().get("urn:oasis:names:tc:xspa:1.0:subject:organization-id"));

		assertTrue(!assertion.getClaims().isEmpty());
		assertTrue(assertion.getClaims().containsKey("urn:elga:bes:permission"));
		assertEquals("urn:elga:bes:2013:permission:eMedikation", assertion.getClaims().get("urn:elga:bes:permission"));

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");

		//in the hcp assertion the UTC time is given, therefore it is necessary to add 1 hour to the expected date values.
		assertEquals("2015-03-18T10:23:19", sdf.format(assertion.getNotBefore()));
		assertEquals("2015-03-18T14:23:19", sdf.format(assertion.getNotOnOrAfter()));
	}
}
