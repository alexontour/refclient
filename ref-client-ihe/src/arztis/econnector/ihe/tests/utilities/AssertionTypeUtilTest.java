package arztis.econnector.ihe.tests.utilities;

import static org.junit.Assert.assertEquals;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.xmlbeans.XmlException;
import org.junit.Before;
import org.junit.Test;

import arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType;
import arztis.econnector.ihe.utilities.AssertionTypeUtil;

/**
 * Test of {@link AssertionTypeUtil}.
 *
 * @author Anna Jungwirth
 */
public class AssertionTypeUtilTest {

	/** The test hcp assertion. */
	private AssertionType testHcpAssertion;
	
	/** The saml ticket. */
	private String samlTicket;

	/**
	 * Method implementing.
	 *
	 * @throws XmlException the xml exception
	 */
	@Before
	public void setUp() throws XmlException {
		String hcpAssertion = "<?xml version='1.0' encoding='UTF-8'?><saml2:Assertion xmlns:saml2=\"urn:oasis:names:tc:SAML:2.0:assertion\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" ID=\"_8bbe7760-50c7-4103-8264-50a485479788\" IssueInstant=\"2015-03-18T09:23:19.375Z\" Version=\"2.0\"><saml2:Issuer Format=\"urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified\">urn:elga:ets</saml2:Issuer><ds:Signature xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\"><ds:SignedInfo><ds:CanonicalizationMethod Algorithm=\"http://www.w3.org/2001/10/xml-exc-c14n#\" /><ds:SignatureMethod Algorithm=\"http://www.w3.org/2001/04/xmldsig-more#rsa-sha256\" /><ds:Reference URI=\"#_8bbe7760-50c7-4103-8264-50a485479788\"><ds:Transforms><ds:Transform Algorithm=\"http://www.w3.org/2000/09/xmldsig#enveloped-signature\" /><ds:Transform Algorithm=\"http://www.w3.org/2001/10/xml-exc-c14n#\"><ec:InclusiveNamespaces xmlns:ec=\"http://www.w3.org/2001/10/xml-exc-c14n#\" PrefixList=\"xs\" /></ds:Transform></ds:Transforms><ds:DigestMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#sha256\" /><ds:DigestValue>PWc/D/NBInAk9D8lES+q1kIebtY=</ds:DigestValue></ds:Reference></ds:SignedInfo><ds:SignatureValue>F3lFBtnQliCP3TSnjpVCbbf2y6yFQSM3tcB8G5cKa5umep7s4zVvZpGcdf0QQnRVAwB4NlsORYb++Pfz0deVc4+fuYHUYE8oC0wexk3Yfzz1CDc4NWLH+bR7vYxwGYUvks3aAcHC/wxxc7Ezlv2LHf7t7Cqp+g1agpN0IlY34b+C6OEq4+4mOD9X07mtxQE34/63CZtAfQYkrWm19vVg/Zj1kBC7/WeCEn0AAy/mli+E/WQLSwPLm0wV7SBxhj3wqsiLp7YFcQWBZ+yGpUYujUYt+HkiKsIwvFtuUaLYGIiU8hHY0uXwl5ln6w9Zh+316blb1JLxn6/sTlBA26SwSQ==</ds:SignatureValue><ds:KeyInfo><ds:X509Data><ds:X509Certificate>MIIEQTCCAymgAwIBAgIBAzANBgkqhkiG9w0BAQUFADCBrDELMAkGA1UEBhMCQVQxEDAOBgNVBAgTB0F1c3RyaWExDzANBgNVBAcTBlZpZW5uYTEaMBgGA1UEChMRVGlhbmkgU3Bpcml0IEdtYkgxGTAXBgNVBAsTEERlbW8gRW52aXJvbm1lbnQxEDAOBgNVBAMTB1Rlc3QgQ0ExMTAvBgkqhkiG9w0BCQEWIm1hc3NpbWlsaWFuby5tYXNpQHRpYW5pLXNwaXJpdC5jb20wIBcNMTEwNzI3MDgyMTUyWhgPMjE5MDEyMzEwODIxNTJaMIGbMQswCQYDVQQGEwJBVDEQMA4GA1UECBMHQXVzdHJpYTEaMBgGA1UEChMRVGlhbmkgU3Bpcml0IEdtYkgxGTAXBgNVBAsTEERlbW8gRW52aXJvbm1lbnQxEDAOBgNVBAMTB3NlcnZlcjExMTAvBgkqhkiG9w0BCQEWIm1hc3NpbWlsaWFuby5tYXNpQHRpYW5pLXNwaXJpdC5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDcEpmyaFK8aKKrvaFZL6IGttOwI3ImGCUiwINIc+fcuVWRyT7Deb8tymnwVBfHVD/8Mh5ufwiS9YU774Ta2aB8H/Gwr5QIndu4eG9+adDEV3+Di6e3HhiA/8RP8CXCMGY4LOAjaNwUh/EEsn1S2oa+Dsiff5Ba8wmddc6pyYiwmhDfwEF0YBXDjvB8iexcLcOLvo/pl2hP87g/ptDXy0VUWWPzX9qxc6YtqhkS7EtmhzMW5deWvmRiPzJ2NVfCuvpcsK2Tii+MgCYbLXCLYkCg+5ZpV7esrqb5hWOf2tKUsDlu/sjck2lflsWTE1woKr0tbp7IxLzvGKx9hERB0hzJAgMBAAGjezB5MAkGA1UdEwQCMAAwLAYJYIZIAYb4QgENBB8WHU9wZW5TU0wgR2VuZXJhdGVkIENlcnRpZmljYXRlMB0GA1UdDgQWBBQU7M3dSaInYi+0MCDYpbACOCjvBzAfBgNVHSMEGDAWgBRkwihuUTlGpNDxrnZFbW84FXj72jANBgkqhkiG9w0BAQUFAAOCAQEAjEqNtOb2Hk6BpBDRXk9vd+0vvJSOWvdZnL3I2Kr30oN6nQOMud68FPI1JC1QwLni05ZVDTyMYOk/HRPK2jSByFmLZECaE6Q5Z1BTD9vR/AqtmTOvub922uS5gTpVEWijSW1o9j+LFzGC4k8l4xWidPtKa3o1aXSGcWSw0i1BKgxM3pMzSvKieZ2KQaHgZSb7bfk4uR4kAaida5hv6kveiDKRRG+8AeBvBD5lofaqUaUN9q/YIOucc8gHQBzGrmkObvyykzyPz5wddLmouqrZZqfufPTNh4whyABbXCPXsptDZZss8DlKS37rFVUKLHEhcfd1J+IOioaTnaPhgY/dXg==</ds:X509Certificate></ds:X509Data></ds:KeyInfo></ds:Signature><saml2:Subject><saml2:NameID Format=\"urn:oasis:names:tc:SAML:2.0:unspecified\">1.2.40.0.34.3.1.1000^K434@Wels-Grieskirchen-KL</saml2:NameID><saml2:SubjectConfirmation Method=\"urn:oasis:names:tc:SAML:2.0:cm:bearer\"><saml2:SubjectConfirmationData /></saml2:SubjectConfirmation></saml2:Subject><saml2:Conditions NotBefore=\"2015-03-18T09:23:19.374Z\" NotOnOrAfter=\"2015-03-18T13:23:19.374Z\"><saml2:ProxyRestriction Count=\"1\" /><saml2:AudienceRestriction><saml2:Audience>https://elga-online.at/KBS</saml2:Audience><saml2:Audience>https://elga-online.at/ETS</saml2:Audience></saml2:AudienceRestriction></saml2:Conditions><saml2:AuthnStatement AuthnInstant=\"2015-03-18T09:23:19.374Z\"><saml2:AuthnContext><saml2:AuthnContextClassRef>urn:oasis:names:tc:SAML:2.0:ac:classes:PreviousSession</saml2:AuthnContextClassRef></saml2:AuthnContext></saml2:AuthnStatement><saml2:AttributeStatement><saml2:Attribute FriendlyName=\"Purpose Of Use\" Name=\"urn:oasis:names:tc:xspa:1.0:subject:purposeofuse\" NameFormat=\"urn:oasis:names:tc:SAML:2.0:attrname-format:uri\"><saml2:AttributeValue xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"xs:string\">PUBLICHEALTH</saml2:AttributeValue></saml2:Attribute><saml2:Attribute FriendlyName=\"ELGA Rolle\" Name=\"urn:oasis:names:tc:xacml:2.0:subject:role\" NameFormat=\"urn:oasis:names:tc:SAML:2.0:attrname-format:uri\"><saml2:AttributeValue xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"xs:anyType\"><Role xmlns=\"urn:hl7-org:v3\" code=\"702\" codeSystem=\"1.2.40.0.34.5.3\" codeSystemName=\"ELGA Rollen\" displayName=\"Krankenanstalt\" /></saml2:AttributeValue></saml2:Attribute><saml2:Attribute FriendlyName=\"XSPA Subject\" Name=\"urn:oasis:names:tc:xacml:1.0:subject:subject-id\" NameFormat=\"urn:oasis:names:tc:SAML:2.0:attrname-format:uri\"><saml2:AttributeValue xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"xs:string\">Dr. John Zoidberg</saml2:AttributeValue></saml2:Attribute><saml2:Attribute FriendlyName=\"XSPA Organization ID\" Name=\"urn:oasis:names:tc:xspa:1.0:subject:organization-id\" NameFormat=\"urn:oasis:names:tc:SAML:2.0:attrname-format:uri\"><saml2:AttributeValue xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"xs:anyURI\">1.2.40.0.34.3.1.1000</saml2:AttributeValue></saml2:Attribute><saml2:Attribute FriendlyName=\"Permissions\" Name=\"urn:elga:bes:permission\" NameFormat=\"urn:oasis:names:tc:SAML:2.0:attrname-format:uri\"><saml2:AttributeValue xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"xs:string\">urn:elga:bes:2013:permission:eBefunde</saml2:AttributeValue><saml2:AttributeValue xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"xs:string\">urn:elga:bes:2013:permission:eMedikation</saml2:AttributeValue></saml2:Attribute></saml2:AttributeStatement></saml2:Assertion>";
		samlTicket = "<?xml version='1.0' encoding='utf-8'?><soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\"><soap:Body><requestSamlAssertionResponse xmlns=\"http://soap.sts.client.chipkarte.at\" xmlns:ns2=\"http://exceptions.soap.base.client.chipkarte.at\" xmlns:ns3=\"http://soap.base.client.chipkarte.at\" xmlns:ns4=\"http://internal.soap.base.client.chipkarte.at\" xmlns:ns5=\"http://exceptions.soap.sts.client.chipkarte.at\"><return><samlTicket>&lt;?xml version=\"1.0\" encoding=\"UTF-8\"?>&lt;saml2:Assertion ID=\"ecardSTS-f4dac171-355b-4be1-9f72-b79a96675d43\" IssueInstant=\"2020-04-24T07:57:46.034Z\" Version=\"2.0\" xmlns:saml2=\"urn:oasis:names:tc:SAML:2.0:assertion\">&lt;saml2:Issuer Format=\"urn:oasis:names:tc:SAML:2.0:nameid-format:entity\">http://ns.svc.co.at/sts/2008/1/base/e-Card-System&lt;/saml2:Issuer>&lt;dsig:Signature xmlns:dsig=\"http://www.w3.org/2000/09/xmldsig#\">&lt;dsig:SignedInfo>&lt;dsig:CanonicalizationMethod Algorithm=\"http://www.w3.org/2001/10/xml-exc-c14n#WithComments\"/>&lt;dsig:SignatureMethod Algorithm=\"http://www.w3.org/2001/04/xmldsig-more#rsa-sha256\"/>&lt;dsig:Reference URI=\"#ecardSTS-f4dac171-355b-4be1-9f72-b79a96675d43\">&lt;dsig:Transforms>&lt;dsig:Transform Algorithm=\"http://www.w3.org/2000/09/xmldsig#enveloped-signature\"/>&lt;dsig:Transform Algorithm=\"http://www.w3.org/2001/10/xml-exc-c14n#WithComments\"/>&lt;/dsig:Transforms>&lt;dsig:DigestMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#sha256\"/>&lt;dsig:DigestValue>VQMIj5igTRBw6mWCwxUZo4JFCTGcmU2Y0TV1cbLH6T8=&lt;/dsig:DigestValue>&lt;/dsig:Reference>&lt;/dsig:SignedInfo>&lt;dsig:SignatureValue>guU0pJsH+K9DfvuL3lYCqHPGsLMjP0NGh9ob4lS2UN8LKKpDA5xjVZfPK897SyD9GICwb+lLS3Sf3fAi7XPKezR7u4gKjkfUHB6hfycO5ziBUVlCSY72ohj53ymxEY2wnsCHCJ6pFU4Uiu1BJ6pfjeDKED+ojTXTauNAHKjGbOjYgYTgYbJ82ICZVz0hC4lditQrtk4aaaTYCViRja3gLRHYERDXhGeDjfJYzsXAiU2wqNNiF0FKwqucS6clV3s9NBoASohcM85sNgN9ZUIbS/ML94WN9HN9YO4stG8uCafULKIxjq1fBPHoycXHUOccQfiWM9o38DDYQdqYyMwNL5xaSnwyLMMo8C03VOrSL18vgEPmfkMgpeL6N7JPyKanW+9jBA8/mOR2WbuP4oES4mgZfVXI+fIxPx+u+RyT0R/2hGTyceEMjj1aVSzOAipOxcT9Ejat2Jrwzf2s0aIP3Z5iciZnHyXZghIiZOkcvuo11ezFoo/65h1sssaGzpou&lt;/dsig:SignatureValue>&lt;dsig:KeyInfo>&lt;dsig:X509Data>&lt;dsig:X509Certificate>MIIFYjCCA8qgAwIBAgIQAQIAAAAAAMF+4fMIoLyuhzANBgkqhkiG9w0BAQsFADBUMQswCQYDVQQGEwJBVDExMC8GA1UEChMoVGVzdCAtIEhhdXB0dmVyYmFuZCBvZXN0ZXJyLiBTb3ppYWx2ZXJzLjESMBAGA1UECxMJU3lzdGVtIENBMB4XDTE5MDYyNjEwMzkzMloXDTI1MDYyNjEwMzkzMlowejELMAkGA1UEBhMCQVQxMTAvBgNVBAoTKFRlc3QgLSBIYXVwdHZlcmJhbmQgb2VzdGVyci4gU296aWFsdmVycy4xEjAQBgNVBAsTCVN5c3RlbSBDQTEkMCIGA1UEAxMbU2lnIFN0cyBTYW1sVGlja2V0IFYwNSBUZXN0MIIBojANBgkqhkiG9w0BAQEFAAOCAY8AMIIBigKCAYEAt4e/fWUHHebXZa836cWILjJPpZlmIUvyIaujLhNcTFF2mI4kgoJI3om0qqXc0uWLQza7FjDXudcaQfKDj/48w9hpuVW8RW02glr5lzc3YHtI18EY3XCRdYSsGRKh1fxbov9sXYAH0Z5FHGkIqP8T/0eb1KXUrSm5G7zwWD9gK9DGl4p6CcPF+y7XpGlufIDHDLmsqkbRaump1Z0dgoR3VUlT1pBAucYY+8UvVEU5liXO+wRvJeDUiArrpnXhhFLb0eFI7nsycns8g9RcWgPoTQe5t8PeOezEJ2f19eE4cP+qAan51EGEpPYhrV1V+6Q/tbHtMa+rX8UhyFEobScVw9g/o2xKQBKOKSSlYPNFcl2ElJgrpCwfQAxBKjcq0GhU14gYoDSVO9kx6+P2muTup38DRf27Flgqpn0DjLGB4qrZPlVuJ38hdOpKWSLk/09W3FYfpoD7GU2a7gvz1qUesXc7unrxAtBax/PwhYfUBM89dEUmUFeIOuf5sefcXksXAgMBAAGjggEIMIIBBDBVBggrBgEFBQcBAQRJMEcwRQYIKwYBBQUHMAGGOWh0dHA6Ly9vY3NwLXRlc3QuZWNhcmQuc296aWFsdmVyc2ljaGVydW5nLmF0L3BraS9vY3NwL3N5czAfBgNVHSMEGDAWgBRvIMz7ojSuGFgaQZc2DlCZvUNWhzAMBgNVHRMEBTADAgEAMFAGA1UdHwRJMEcwRaBDoEGGP2h0dHA6Ly9jcmwtdGVzdC5lY2FyZC5zb3ppYWx2ZXJzaWNoZXJ1bmcuYXQvcGtpL2NybC9zeXMvc3lzLmNybDALBgNVHQ8EBAMCA6gwHQYDVR0OBBYEFA+wnFkknWqanQz4bXlfbjR1wd5FMA0GCSqGSIb3DQEBCwUAA4IBgQAhLKqjL1K/yM17V+08BX3ghfw7XlEbXQy6DzprHbYN/4+AjzJXKIzbfOCX2/6BKKDNthW5RTcMEMXAfG9b3NyX0h1RrN0pK2bH5fi62iLD8ohg28vBhSol2TprV7v2Xyh2gPQFIBj1optKhu9iI/TLWn6hXf5PjTMPvYJKqi8ar/xuW5BmiaJMb47A4GSfW2avlOmr1gWW2ECxJjp4AgArNkzfLxahiKVQr1D6P8658YycFzH+TgCLSRlA5ztXJ/MIUVL8GN3jggF8kYwsyOvSOR0suKLPUV+wUmAx0lVPJwoPOcJKgkMakfxnGxqy4L1WnX2aq7y/Tw+ByF18MrmO2A6sZYsvdCMJ+GX8gPmtT47qYsknK1bgYwdiNZcFP0Kqp/nbR7iMldYf+1bvAwEMBYxmWQXj3rd2LQu+ioepNjJP5ApmBancS4osQdwm/3wkz+bKYcmv3lGZEJNd3azF5CHaU+eK5Fs8+tn0OwzspJ+A9VMlpZ5XEFaNv6o+rB0=&lt;/dsig:X509Certificate>&lt;/dsig:X509Data>&lt;/dsig:KeyInfo>&lt;/dsig:Signature>&lt;saml2:Subject>&lt;saml2:NameID Format=\"urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified\">http://ns.svc.co.at/sts/elga-ecardonly_1.0/Patientenkontakt?VPNR=046167&amp;amp;VSNR=1001210995&lt;/saml2:NameID>&lt;saml2:SubjectConfirmation Method=\"urn:oasis:names:tc:SAML:2.0:cm:bearer\">&lt;saml2:SubjectConfirmationData NotOnOrAfter=\"2020-04-24T08:57:46.044Z\"/>&lt;/saml2:SubjectConfirmation>&lt;/saml2:Subject>&lt;saml2:Conditions NotBefore=\"2020-04-24T07:57:46.034Z\" NotOnOrAfter=\"2020-04-24T08:57:46.034Z\">&lt;saml2:AudienceRestriction>&lt;saml2:Audience>https://elga-online.at/KBS&lt;/saml2:Audience>&lt;/saml2:AudienceRestriction>&lt;/saml2:Conditions>&lt;saml2:AuthnStatement AuthnInstant=\"2020-04-24T07:57:44.000Z\">&lt;saml2:AuthnContext>&lt;saml2:AuthnContextClassRef>urn:oasis:names:tc:SAML:2.0:ac:classes:SmartcardPKI&lt;/saml2:AuthnContextClassRef>&lt;/saml2:AuthnContext>&lt;/saml2:AuthnStatement>&lt;saml2:AttributeStatement>&lt;saml2:Attribute Name=\"PAT_Patientenversicherungsnummer\" NameFormat=\"http://ns.svc.co.at/sts/2008/1/base/PAT/Patientenversicherungsnummer\">&lt;saml2:AttributeValue xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"xsd:string\">1001210995&lt;/saml2:AttributeValue>&lt;/saml2:Attribute>&lt;saml2:Attribute Name=\"PAT_Kontaktbestaetigung_Zeitpunkt\" NameFormat=\"http://ns.svc.co.at/sts/2008/1/base/PAT/Kontaktbestaetigung/Zeitpunkt\">&lt;saml2:AttributeValue xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"xsd:dateTime\">2020-04-24T07:57:44.000Z&lt;/saml2:AttributeValue>&lt;/saml2:Attribute>&lt;saml2:Attribute Name=\"PAT_Kontaktbestaetigung_Qualitaet\" NameFormat=\"http://ns.svc.co.at/sts/2008/1/base/PAT/Kontaktbestaetigung/Qualitaet\">&lt;saml2:AttributeValue xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"xsd:string\">1.0&lt;/saml2:AttributeValue>&lt;/saml2:Attribute>&lt;saml2:Attribute Name=\"VP_Vertragspartnernummer\" NameFormat=\"http://ns.svc.co.at/sts/2008/1/base/VP/Vertragspartnernummer\">&lt;saml2:AttributeValue xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"xsd:string\">046167&lt;/saml2:AttributeValue>&lt;/saml2:Attribute>&lt;/saml2:AttributeStatement>&lt;/saml2:Assertion></samlTicket></return></requestSamlAssertionResponse></soap:Body></soap:Envelope>";

		testHcpAssertion = AssertionType.Factory.parse(hcpAssertion);
	}

	/**
	 * Test method for {@link AssertionTypeUtil#getRoleOfAssertionShort()}.
	 *
	 */
	@Test
	public void testExtractAssertionInformation() {
		String role = AssertionTypeUtil.getRoleOfAssertionShort(testHcpAssertion);
		assertEquals("702", role);
	}

	/**
	 * Test method for {@link AssertionTypeUtil#getDateToRenewalAssertion()}.
	 *
	 */
	@Test
	public void testGetDateToRenewalAssertion() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ");
		Date date = AssertionTypeUtil.getDateToRenewalAssertion(testHcpAssertion);
		assertEquals("2015-03-18T14:23:19+0100", sdf.format(date));
	}

	/**
	 * Test method for
	 * {@link AssertionTypeUtil#getOrganizationIdOfHcpAssertion()}.
	 *
	 */
	@Test
	public void testGetOrganizationIdOfHcpAssertion() {
		String role = AssertionTypeUtil.getOrganizationIdOfHcpAssertion(testHcpAssertion);
		assertEquals("1.2.40.0.34.3.1.1000", role);
	}

	/**
	 * Test method for {@link AssertionTypeUtil#getReferenceOfAssertion()}.
	 *
	 */
	@Test
	public void testGetReferenceOfAssertion() {
		String reference = AssertionTypeUtil.getReferenceOfAssertion(testHcpAssertion);
		assertEquals("_8bbe7760-50c7-4103-8264-50a485479788", reference);
	}

	/**
	 * Test method for
	 * {@link AssertionTypeUtil#getTimeOfPatientContactOfAssertion()}.
	 *
	 * @throws XmlException the xml exception
	 */
	@Test
	public void testGetTimeOfPatientContactOfAssertion() throws XmlException {
		String date = AssertionTypeUtil.getTimeOfPatientContactOfAssertion(samlTicket);
		assertEquals("", date);
	}
}
