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

public class HcpAssertion {
	private static final Logger LOGGER = LoggerFactory.getLogger(HcpAssertion.class.getName());
	private String issuer;
	private String subject;
	private Map<String, Object> claims;
	private Date notBefore;
	private Date notOnOrAfter;

	public HcpAssertion(AssertionType hcpAssertion) {
		claims = new HashMap<>();
		extractAssertionInformation(hcpAssertion);
	}

	public String getIssuer() {
		return issuer;
	}

	public void setIssuer(String issuer) {
		this.issuer = issuer;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public Map<String, Object> getClaims() {
		return claims;
	}

	public void setClaims(Map<String, Object> claims) {
		this.claims = claims;
	}

	public Date getNotBefore() {
		return notBefore;
	}

	public void setNotBefore(Date notBefore) {
		this.notBefore = notBefore;
	}

	public Date getNotOnOrAfter() {
		return notOnOrAfter;
	}

	public void setNotOnOrAfter(Date notOnOrAfter) {
		this.notOnOrAfter = notOnOrAfter;
	}

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
