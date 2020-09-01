/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.ihe.utilities;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.TimeZone;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.apache.commons.lang3.StringUtils;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.openhealthtools.ihe.xua.XUAAssertion;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType;

/**
 * This class contains utility functionalities to extract information from
 * different assertions.
 *
 *
 * @author Anna Jungwirth
 *
 */
public class AssertionTypeUtil {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(AssertionTypeUtil.class.getName());

	/** The Constant XML_NODE_ATTRIBUTE. */
	private static final String XML_NODE_ATTRIBUTE = "Attribute";

	/** The Constant SUBJECT_ORGANIZATION_ID. */
	private static final String SUBJECT_ORGANIZATION_ID = "urn:oasis:names:tc:xspa:1.0:subject:organization-id";

	/**
	 * Default constructor.
	 */
	private AssertionTypeUtil() {
		throw new IllegalStateException("utility class to extract information from assertions");
	}

	/**
	 * extracts ID of registered organization of passed HCP or Context assertion. The organization ID can be found within "AttributeStatement" elements.
	 *
	 * <pre>
     * {@code
     *
     * <xml-fragment xmlns:saml2="urn:oasis:names:tc:SAML:2.0:assertion"
     *   xmlns:xs="http://www.w3.org/2001/XMLSchema" ID="_8bbe7760-50c7-4103-8264-50a485479788" IssueInstant="2015-03-18T09:23:19.375Z" Version="2.0">
     *   <!-- other elements -->
     *   <saml2:AttributeStatement>
     *       <!-- other elements -->
     *       <saml2:Attribute FriendlyName="XSPA Organization ID" Name="urn:oasis:names:tc:xspa:1.0:subject:organization-id" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:uri">
     *           <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:anyURI">1.2.40.0.34.3.1.1000</saml2:AttributeValue>
     *       </saml2:Attribute>
     *       <!-- other elements -->
     *   </saml2:AttributeStatement>
     *</xml-fragment>
     *
     * }
     * </pre>
	 *
	 * @param hcpAssertion HCP or Context assertion
	 *
	 * @return organization ID
	 */
	public static String getOrganizationIdOfHcpAssertion(AssertionType hcpAssertion) {
		if (hcpAssertion == null) {
			return "";
		}

		List<Node> nodes = getChildrenByName(XML_NODE_ATTRIBUTE, hcpAssertion.getDomNode());
		Node organizationNode = getAttributeValueNode(XML_NODE_ATTRIBUTE, "Name", SUBJECT_ORGANIZATION_ID, nodes);

		if (organizationNode != null) {
			return organizationNode.getFirstChild().getFirstChild().getNodeValue();
		}

		return "";
	}

	/**
	 * extracts time of patient contact from passed assertion. The time of patient contact can be found within "AttributeStatement" elements
	 * in "Attribute" element with name "PAT_Kontaktbestaetigung_Zeitpunkt".
	 *
	 * <pre>
	 * {@code
	 *
	 * <saml2:Assertion ID="ecardSTS-f4dac171-355b-4be1-9f72-b79a96675d43" IssueInstant="2020-04-24T07:57:46.034Z" Version="2.0"
	 *      xmlns:saml2="urn:oasis:names:tc:SAML:2.0:assertion">
	 *      <!-- other elements -->
	 *      <saml2:AttributeStatement>
	 *           <!-- other elements -->
	 *           <saml2:Attribute Name="PAT_Kontaktbestaetigung_Zeitpunkt" NameFormat="http://ns.svc.co.at/sts/2008/1/base/PAT/Kontaktbestaetigung/Zeitpunkt">
	 *                <saml2:AttributeValue xmlns:xsd="http://www.w3.org/2001/XMLSchema"
	 *                     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xsd:dateTime">2020-04-24T07:57:44.000Z</saml2:AttributeValue>
	 *           </saml2:Attribute>
	 *           <!-- other elements -->
	 *      </saml2:AttributeStatement>
	 * </saml2:Assertion>
	 *
	 * }
	 * </pre>
	 *
	 * @param samlTicket the saml ticket
	 * @return organization ID
	 * @throws XmlException the xml exception
	 */
	public static String getTimeOfPatientContactOfAssertion(String samlTicket) throws XmlException {
		XmlObject assertion = XmlObject.Factory.parse(samlTicket);

		List<Node> nodes = getChildrenByName(XML_NODE_ATTRIBUTE, assertion.getDomNode());
		Node patientContactTimeNode = getAttributeValueNode(XML_NODE_ATTRIBUTE, "Name",
				"PAT_Kontaktbestaetigung_Zeitpunkt", nodes);

		if (patientContactTimeNode != null) {
			return patientContactTimeNode.getFirstChild().getFirstChild().getNodeValue();
		}

		return "";
	}

	/**
	 * This function parses the time of validity expiration of passed assertion to
	 * a {@link Date}.
	 *
	 * @param hcpAssertion assertion
	 * @return validity expiration {@link Date} minus 5 minutes
	 */
	public static Date getDateToRenewalAssertion(AssertionType hcpAssertion) {
		return extractDateOfConditionsElement(hcpAssertion, "NotOnOrAfter");
	}

	/**
	 * This function parses the creation time of passed assertion to
	 * a {@link Date}.
	 *
	 * @param pHcpAssertion AssertionType
	 * @return creation time {@link Date}
	 */
	public static Date getNotBeforeDateOfAssertion(AssertionType pHcpAssertion) {
		return extractDateOfConditionsElement(pHcpAssertion, "NotBefore");
	}

	/**
	 * extracts attribute with passed name from Conditions element of assertions
	 *
	 * <pre>
     * {@code
     *
     * <xml-fragment xmlns:saml2="urn:oasis:names:tc:SAML:2.0:assertion"
     *   xmlns:xs="http://www.w3.org/2001/XMLSchema" ID="_8bbe7760-50c7-4103-8264-50a485479788" IssueInstant="2015-03-18T09:23:19.375Z" Version="2.0">
     *   <!-- other elements -->
     *   <saml2:Conditions NotBefore="2020-04-24T07:57:46.034Z" NotOnOrAfter="2020-04-24T08:57:46.034Z">
     *       <saml2:AudienceRestriction>
     *           <saml2:Audience>https://elga-online.at/KBS</saml2:Audience>
     *       </saml2:AudienceRestriction>
     *   </saml2:Conditions>
     *   <!-- other elements -->
     * </xml-fragment>
     *
     * }
     * </pre>
	 *
	 * @param hcpAssertion assertion
	 * @param attributeName name of attribute either "NotBefore" or "NotOnOrAfter"
	 *
	 * @return extracted {@link Date}
	 */
	private static Date extractDateOfConditionsElement(AssertionType hcpAssertion, String attributeName) {
		Date date = new Date();
		String dateHl7 = "";
		Node messageElement = hcpAssertion.getDomNode();
		List<Node> elements = getChildrenByName("Conditions", messageElement);

		for (int j = 0; j < elements.size(); j++) {
			dateHl7 = getAttributeValue(attributeName, elements.get(j));
		}

		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSXXX");
			sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
			date = sdf.parse(dateHl7);
		} catch (ParseException e) {
			LOGGER.error(e.getLocalizedMessage());
		}

		date.setTime(date.getTime());
		return date;
	}

	/**
	 * extracts attribute ID of assertion root element.
	 *
	 * <pre>
     * {@code
     *
     * <xml-fragment xmlns:saml2="urn:oasis:names:tc:SAML:2.0:assertion"
     *   xmlns:xs="http://www.w3.org/2001/XMLSchema" ID="_8bbe7760-50c7-4103-8264-50a485479788" IssueInstant="2015-03-18T09:23:19.375Z" Version="2.0">
     *   <!-- other elements -->
     * </xml-fragment>
     *
     * }
     * </pre>
	 *
	 * @param assertion to extract from
	 *
	 * @return extracted ID is returned. If no ID attribute found an empty {@link String} is returned.
	 */
	public static String getReferenceOfAssertion(AssertionType assertion) {
		List<Node> nodes = getChildrenByName("Assertion", assertion.getDomNode());

		if (!nodes.isEmpty()) {
			return getAttributeValue("ID", nodes.get(0));
		}

		return "";
	}

	/**
	 * extracts ELGA role of passed assertion. The role can be found within "AttributeStatement" elements
	 * in the "Attribute" element with the name "ELGA Rolle". The element "Role" contains code details of ELGA role.
	 * This method extracts only code value and not code system or display name.
	 *
	 * <pre>{@code
	 * <saml2:Attribute FriendlyName="ELGA Rolle" Name="urn:oasis:names:tc:xacml:2.0:subject:role" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:uri">
     *     <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:anyType">
     *          <Role xmlns="urn:hl7-org:v3" code="702" codeSystem="1.2.40.0.34.5.3" codeSystemName="ELGA Rollen" displayName="Krankenanstalt" />
     *     </saml2:AttributeValue>
     * </saml2:Attribute>
	 * }
	 * </pre>
	 *
	 * @param assertion to extract from
	 *
	 * @return role code e.g. 702 or 700
	 */
	public static String getRoleOfAssertionShort(AssertionType assertion) {
		Node messageElement = assertion.getDomNode();
		List<Node> childAttributeStatements = getChildrenByName(XML_NODE_ATTRIBUTE, messageElement);

		Node nodeRole = getAttributeValueNode(XML_NODE_ATTRIBUTE, "FriendlyName", "ELGA Rolle",
				childAttributeStatements);

		if (nodeRole != null) {
			return getAttributeValue("code", nodeRole.getFirstChild().getFirstChild());
		}

		return "";
	}

	/**
	 * extracts value of attribute with passed name within passed XML element.
	 *
	 * @param attributeName name of attribute for which value is to be extracted
	 * @param element XML element containing attribute
	 * @return the attribute value
	 */
	private static String getAttributeValue(String attributeName, Node element) {
		if (element == null || element.getAttributes() == null) {
			return null;
		}

		NamedNodeMap roleAttributes = element.getAttributes();
		for (int a = 0; a < roleAttributes.getLength(); a++) {
			if (attributeName != null && attributeName.equals(roleAttributes.item(a).getNodeName())) {
				return roleAttributes.item(a).getNodeValue();
			}
		}

		return null;
	}

	/**
	 * extracts child element with certain element and attribute name and attribute value.
	 *
	 * @param elementName name of element for which child element is to be extracted
	 * @param attributeName name of attribute for which child element is to be extracted
	 * @param attributeValue value of attribute for which child element is to be extracted
	 * @param elements XML elements from which a child element is to be extracted
	 *
	 * @return found child element {@link Node} or null if no matching child element was found
	 */
	private static Node getAttributeValueNode(String elementName, String attributeName, String attributeValue,
			List<Node> elements) {
		for (int index = 0; index < elements.size(); index++) {
			if (elementName.equals(elements.get(index).getLocalName())) {
				NamedNodeMap attributes = elements.get(index).getAttributes();
				for (int k = 0; k < attributes.getLength(); k++) {
					if (attributeName != null && attributeName.equals(attributes.item(k).getNodeName())
							&& attributeValue != null && attributeValue.equals(attributes.item(k).getNodeValue())) {
						return elements.get(index);
					}
				}
			}
		}

		return null;
	}

	/**
	 * extracts text content from element with certain element name.
	 *
	 * @param elementName name of element for which text content is to be extracted
	 * @param elements XML elements from which a child element is to be extracted
	 * @return the text content node
	 */
	public static String getTextContentNode(String elementName, NodeList elements) {
		for (int index = 0; index < elements.getLength(); index++) {
			if (elementName.equals(elements.item(index).getLocalName())) {
				return elements.item(index).getFirstChild().getNodeValue();
			}
		}

		return null;
	}

	/**
	 * extracts all child elements with passed element name.
	 *
	 * @param nodeName name of element which is to be extracted
	 * @param element XML element from which child elements are to be extracted
	 *
	 * @return list of found child elements {@link Node}
	 */
	private static List<Node> getChildrenByName(String nodeName, Node element) {
		List<Node> nodes = new LinkedList<>();
		NodeList childElements = element.getChildNodes();
		for (int j = 0; j < childElements.getLength(); j++) {
			if (nodeName.equals(childElements.item(j).getLocalName())) {
				nodes.add(childElements.item(j));
			}
			nodes.addAll(getChildrenByName(nodeName, childElements.item(j)));
		}

		return nodes;
	}

	/**
	 * transforms {@link AssertionType} to {@link XUAAssertion}. {@link AssertionType} is needed for all requests defined in
	 * ELGA Ref Client like PHARM-1 transactions. </br>
	 * {@link XUAAssertion} is needed for all requests defined in ehealth connetor like ITI-18 or ITI-43 transactions in XDS profile.
	 *
	 * @param hcpAssertion assertion to transform
	 * @return transformed {@link XUAAssertion}
	 * @throws ParserConfigurationException the parser configuration exception
	 * @throws SAXException the SAX exception
	 * @throws IOException Signals that an I/O exception has occurred.
	 */
	public static XUAAssertion transformAssertionTypeToXUAAssertion(AssertionType hcpAssertion)
			throws ParserConfigurationException, SAXException, IOException {
		if (hcpAssertion == null) {
			return null;
		}

		String hcpAssertionString = StringUtils.replace(hcpAssertion.xmlText(), "xml-fragment", "saml2:Assertion");
		org.w3c.dom.Element assertionElement = castStringToDomElement(hcpAssertionString);
		return new XUAAssertion(assertionElement);
	}

	/**
	 * casts XML, which is given as {@link String} to a {@link Element}.
	 *
	 * @param xmlAsString XML
	 * @return XML as {@link Element}
	 * @throws ParserConfigurationException the parser configuration exception
	 * @throws SAXException the SAX exception
	 * @throws IOException Signals that an I/O exception has occurred.
	 */
	public static Element castStringToDomElement(String xmlAsString)
			throws ParserConfigurationException, SAXException, IOException {
		InputStream sbis = new ByteArrayInputStream(xmlAsString.getBytes(StandardCharsets.UTF_8));

		DocumentBuilderFactory b = DocumentBuilderFactory.newInstance();
		b.setFeature("http://apache.org/xml/features/disallow-doctype-decl", true);
		b.setFeature("http://xml.org/sax/features/external-general-entities", false);
		b.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
		b.setFeature("http://apache.org/xml/features/nonvalidating/load-external-dtd", false);
		b.setXIncludeAware(false);
		b.setExpandEntityReferences(false);

		b.setNamespaceAware(false);

		org.w3c.dom.Document doc = null;

		javax.xml.parsers.DocumentBuilder db = null;

		db = b.newDocumentBuilder();

		doc = db.parse(sbis);

		return doc.getDocumentElement();
	}
}
