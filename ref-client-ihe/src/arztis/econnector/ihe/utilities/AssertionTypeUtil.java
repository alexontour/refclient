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

import org.apache.commons.lang3.RegExUtils;
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

public class AssertionTypeUtil {
	private static final Logger LOGGER = LoggerFactory.getLogger(AssertionTypeUtil.class.getName());
	private static final String XML_NODE_ATTRIBUTE = "Attribute";
	private static final String SUBJECT_ORGANIZATION_ID = "urn:oasis:names:tc:xspa:1.0:subject:organization-id";
	
	private AssertionTypeUtil() {
		throw new IllegalStateException("utility class to extract information from assertions");
	}

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
	 * This function parses the time of validity expiration of the HCP Assertion to
	 * a java.util.Date object
	 *
	 * @param pHcpAssertion AssertionType
	 * @return Date validity expiration Date minus 5 minutes
	 */
	public static Date getDateToRenewalAssertion(AssertionType pHcpAssertion) {		
		return extractDateOfConditionsElement(pHcpAssertion, "NotOnOrAfter");
	}
	
	/**
	 * This function parses the creation time of the HCP Assertion to
	 * a java.util.Date object
	 *
	 * @param pHcpAssertion AssertionType
	 * @return Date validity expiration Date
	 */
	public static Date getNotBeforeDateOfAssertion(AssertionType pHcpAssertion) {
		return extractDateOfConditionsElement(pHcpAssertion, "NotBefore");
	}
	
	private static Date extractDateOfConditionsElement(AssertionType pHcpAssertion, String attributeName) {
		Date date = new Date();
		String dateHl7 = "";
		Node messageElement = pHcpAssertion.getDomNode();
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
	
	public static String getReferenceOfAssertion(AssertionType assertion) {
		List<Node> nodes = getChildrenByName("Assertion", assertion.getDomNode());

		if (!nodes.isEmpty()) {
			return getAttributeValue("ID", nodes.get(0));
		}

		return "";
	}
	
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
	
	public static String getTextContentNode(String elementName, NodeList elements) {
		for (int index = 0; index < elements.getLength(); index++) {
			if (elementName.equals(elements.item(index).getLocalName())) {
				return elements.item(index).getFirstChild().getNodeValue();
			}
		}

		return null;
	}

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
	
	public static XUAAssertion transformAssertionTypeToXUAAssertion(AssertionType hcpAssertion)
			throws ParserConfigurationException, SAXException, IOException {
		if (hcpAssertion == null) {
			return null;
		}

		String hcpAssertionString = StringUtils.replace(hcpAssertion.xmlText(), "xml-fragment", "saml2:Assertion");
		org.w3c.dom.Element assertionElement = castStringToDomElement(hcpAssertionString);
		return new XUAAssertion(assertionElement);
	}

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
