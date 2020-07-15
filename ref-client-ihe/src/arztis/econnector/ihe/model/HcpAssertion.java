/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the Eclipse Public License v1.0.
 *
 */
package arztis.econnector.ihe.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.TimeZone;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType;
import arztis.econnector.ihe.utilities.AssertionTypeUtil;

/**
 * This class includes fields of HCP (health care provider) assertion. It
 * extracts information of received XML HCP assertion. Following elements and
 * attributes of assertion are extracted: </br>
 *
 * <table border="1">
 * <tr>
 * <td>element/attribute</td>
 * <td>Path to element/attribute</td>
 * </tr>
 * <tr>
 * <td>notBefore</td>
 * <td>/Conditions/@NotBefore</td>
 * </tr>
 * <tr>
 * <td>notOnOrAfter</td>
 * <td>/Conditions/@NotOnOrAfter</td>
 * </tr>
 * <tr>
 * <td>issuer</td>
 * <td>/Issuer</td>
 * </tr>
 * <tr>
 * <td>subject</td>
 * <td>/Subject/NameID</td>
 * </tr>
 * <tr>
 * <td>claims</td>
 * <td><b>key:</b> /AttributeStatement/Attribute/@Name </br>
 * <b>value:</b> /AttributeStatement/Attribute/AttributeValue</td>
 * </tr>
 * </table>
 * </br>
 * HCP assertions always have same structure.
 *
 * <pre>
 * {@code
 *
 * <xml-fragment xmlns:saml2="urn:oasis:names:tc:SAML:2.0:assertion"
 *   xmlns:xs="http://www.w3.org/2001/XMLSchema" ID="_8bbe7760-50c7-4103-8264-50a485479788" IssueInstant="2015-03-18T09:23:19.375Z" Version="2.0">
 *   <saml2:Issuer Format="urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified">urn:elga:ets</saml2:Issuer>
 *   <ds:Signature xmlns:ds="http://www.w3.org/2000/09/xmldsig#">
 *       <ds:SignedInfo>
 *           <ds:CanonicalizationMethod Algorithm="http://www.w3.org/2001/10/xml-exc-c14n#"/>
 *           <ds:SignatureMethod Algorithm="http://www.w3.org/2001/04/xmldsig-more#rsa-sha256"/>
 *           <ds:Reference URI="#_8bbe7760-50c7-4103-8264-50a485479788">
 *               <ds:Transforms>
 *                   <ds:Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature"/>
 *                   <ds:Transform Algorithm="http://www.w3.org/2001/10/xml-exc-c14n#">
 *                       <ec:InclusiveNamespaces xmlns:ec="http://www.w3.org/2001/10/xml-exc-c14n#" PrefixList="xs"/>
 *                   </ds:Transform>
 *               </ds:Transforms>
 *               <ds:DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/>
 *               <ds:DigestValue>example</ds:DigestValue>
 *           </ds:Reference>
 *       </ds:SignedInfo>
 *       <ds:SignatureValue>exampleSignature</ds:SignatureValue>
 *       <ds:KeyInfo>
 *           <ds:X509Data>
 *               <ds:X509Certificate>exampleCertificate</ds:X509Certificate>
 *           </ds:X509Data>
 *       </ds:KeyInfo>
 *   </ds:Signature>
 *   <saml2:Subject>
 *       <saml2:NameID Format="urn:oasis:names:tc:SAML:2.0:unspecified">1.2.40.0.34.3.1.1000^K434@Wels-Grieskirchen-KL</saml2:NameID>
 *       <saml2:SubjectConfirmation Method="urn:oasis:names:tc:SAML:2.0:cm:bearer">
 *           <saml2:SubjectConfirmationData />
 *       </saml2:SubjectConfirmation>
 *   </saml2:Subject>
 *   <saml2:Conditions NotBefore="2015-03-18T09:23:19.374Z" NotOnOrAfter="2015-03-18T13:23:19.374Z">
 *       <saml2:ProxyRestriction Count="1" />
 *       <saml2:AudienceRestriction>
 *           <saml2:Audience>https://elga-online.at/KBS</saml2:Audience>
 *           <saml2:Audience>https://elga-online.at/ETS</saml2:Audience>
 *       </saml2:AudienceRestriction>
 *   </saml2:Conditions>
 *   <saml2:AuthnStatement AuthnInstant="2015-03-18T09:23:19.374Z">
 *       <saml2:AuthnContext>
 *           <saml2:AuthnContextClassRef>urn:oasis:names:tc:SAML:2.0:ac:classes:PreviousSession</saml2:AuthnContextClassRef>
 *       </saml2:AuthnContext>
 *   </saml2:AuthnStatement>
 *   <saml2:AttributeStatement>
 *       <saml2:Attribute FriendlyName="Purpose Of Use" Name="urn:oasis:names:tc:xspa:1.0:subject:purposeofuse" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:uri">
 *           <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">PUBLICHEALTH</saml2:AttributeValue>
 *       </saml2:Attribute>
 *       <saml2:Attribute FriendlyName="ELGA Rolle" Name="urn:oasis:names:tc:xacml:2.0:subject:role" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:uri">
 *           <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:anyType">
 *               <Role xmlns="urn:hl7-org:v3" code="702" codeSystem="1.2.40.0.34.5.3" codeSystemName="ELGA Rollen" displayName="Krankenanstalt" />
 *           </saml2:AttributeValue>
 *       </saml2:Attribute>
 *       <saml2:Attribute FriendlyName="XSPA Subject" Name="urn:oasis:names:tc:xacml:1.0:subject:subject-id" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:uri">
 *           <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">Dr. John Zoidberg</saml2:AttributeValue>
 *       </saml2:Attribute>
 *       <saml2:Attribute FriendlyName="XSPA Organization ID" Name="urn:oasis:names:tc:xspa:1.0:subject:organization-id" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:uri">
 *           <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:anyURI">1.2.40.0.34.3.1.1000</saml2:AttributeValue>
 *       </saml2:Attribute>
 *       <saml2:Attribute FriendlyName="Permissions" Name="urn:elga:bes:permission" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:uri">
 *           <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">urn:elga:bes:2013:permission:eBefunde</saml2:AttributeValue>
 *           <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">urn:elga:bes:2013:permission:eMedikation</saml2:AttributeValue>
 *       </saml2:Attribute>
 *   </saml2:AttributeStatement>
 *</xml-fragment>
 *
 * }
 * </pre>
 *
 * @author Anna Jungwirth
 *
 */
public class HcpAssertion {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(HcpAssertion.class.getName());

	/** The issuer. */
	private String issuer;

	/** The subject. */
	private String subject;

	/** The claims. */
	private Map<String, Object> claims;

	/** The not before. */
	private Date notBefore;

	/** The not on or after. */
	private Date notOnOrAfter;

	/**
	 * Instantiates a new hcp assertion.
	 *
	 * @param hcpAssertion the hcp assertion
	 */
	public HcpAssertion(AssertionType hcpAssertion) {
		claims = new HashMap<>();
		extractAssertionInformation(hcpAssertion);
	}

	/**
	 * URI that identifies endpoint of issuing service. For HCP assertion, it is the
	 * URI that representing ELGA ETS
	 *
	 * @return issuer
	 */
	public String getIssuer() {
		return issuer;
	}

	/**
	 * Identifier of health care provider to whom HCP assertion was issued.
	 * Identifier contains values of GDA index. Identifier is formatted like
	 * <i>ID^oidIssuingAuthority@description</i>
	 *
	 * @return identifier of health care provider
	 */
	public String getSubject() {
		return subject;
	}

	/**
	 * Map filled with HCP identity attributes and permissions. Key is name of
	 * attribute and value is attribute value.
	 *
	 * @return HCP identity attributes and permissions
	 */
	public Map<String, Object> getClaims() {
		return claims;
	}

	/**
	 * Time instant from which assertion can be used.
	 *
	 * @return time
	 */
	public Date getNotBefore() {
		return notBefore;
	}

	/**
	 * Time instant at which assertion expires. This value is same value as in
	 * attribute "notBefore" plus 4 hours.
	 *
	 * @return time
	 */
	public Date getNotOnOrAfter() {
		return notOnOrAfter;
	}

	/**
	 * extracts information form passed HCP assertion like issuer or subject.
	 *
	 * @param hcpAssertion {@link AssertionType} HCP assertion from which
	 *                     information should be extracted
	 */
	private void extractAssertionInformation(AssertionType hcpAssertion) {
		if (hcpAssertion == null) {
			return;
		}

		Node assertionElement = hcpAssertion.getDomNode();
		NodeList childElements = assertionElement.getChildNodes();

		LOGGER.debug("children: {}", childElements);

		for (int j = 0; j < childElements.getLength(); j++) {
			if ("Issuer".equals(childElements.item(j).getLocalName())) {
				issuer = childElements.item(j).getFirstChild().getNodeValue();
			} else if ("Subject".equals(childElements.item(j).getLocalName())) {
				subject = AssertionTypeUtil.getTextContentNode("NameID", childElements.item(j).getChildNodes());
			} else if ("Conditions".equals(childElements.item(j).getLocalName())) {
				setDateValuesOfConditionsElement(childElements.item(j));
			} else if ("AttributeStatement".equals(childElements.item(j).getLocalName())) {
				addClaim(childElements.item(j));
			}
		}
	}

	/**
	 * extracts attribute Name of Attribute element and text from element
	 * AttributeValue. This extracted information are added to claims map. Extracted
	 * name is used as key and extracted attribute value is used as value.
	 *
	 * @param item AttributeStatement element of HCP assertion
	 */
	private void addClaim(Node item) {
		if (item == null) {
			return;
		}

		NodeList attributeElements = item.getChildNodes();

		if (attributeElements != null) {
			for (int index = 0; index < attributeElements.getLength(); index++) {
				String key = null;
				String value = null;

				NamedNodeMap attributes = attributeElements.item(index).getAttributes();

				if (attributes != null) {
					Node nameNode = attributes.getNamedItem("Name");

					if (nameNode != null) {
						key = nameNode.getNodeValue();
					}
				}

				NodeList attributeValueNodes = attributeElements.item(index).getChildNodes();
				Node attributeValueNode = null;

				if (attributeValueNodes != null) {
					for (int count = 0; count < attributeValueNodes.getLength(); count++) {
						if (attributeValueNodes.item(count) != null
								&& "AttributeValue".equalsIgnoreCase(attributeValueNodes.item(count).getLocalName())) {
							attributeValueNode = attributeValueNodes.item(count);
						}
					}
				}

				if (attributeValueNode != null && attributeValueNode.getFirstChild() != null) {
					value = attributeValueNode.getFirstChild().getNodeValue();
				}

				if (key != null && value != null) {
					claims.put(key, value);
				}
			}
		}
	}

	/**
	 * extracts attributes NotBefore and NotOnOrAfter from Conditions element of HCP
	 * assertions.
	 *
	 * @param item Conditions element
	 */
	private void setDateValuesOfConditionsElement(Node item) {
		if (item == null) {
			return;
		}

		NamedNodeMap attributes = item.getAttributes();

		if (attributes != null) {
			Node notBeforeNode = attributes.getNamedItem("NotBefore");

			if (notBeforeNode != null) {
				notBefore = parseStringToDate(notBeforeNode.getNodeValue());
			}

			Node notOnOrAfterNode = attributes.getNamedItem("NotOnOrAfter");

			if (notOnOrAfterNode != null) {
				notOnOrAfter = parseStringToDate(notOnOrAfterNode.getNodeValue());
			}
		}
	}

	/**
	 * Parses String to {@link Date}.
	 *
	 * @param stringDate date in format yyyy-MM-dd'T'HH:mm:ss.SSSXXX to parse in
	 *                   time zone GMT
	 * @return parsed {@link Date} or null if parsing went wrong
	 */
	private Date parseStringToDate(String stringDate) {
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSXXX");
			sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
			return sdf.parse(stringDate);
		} catch (ParseException e) {
			LOGGER.error(e.getLocalizedMessage());
		}

		return null;
	}

}
