package arztis.econnector.ihe.queries.common;

import java.util.List;
import java.util.UUID;

import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;

import arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType;
import arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument;
import arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument.SubmitObjectsRequest;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityHeaderType;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAClaimsType;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType.Enum;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGARequestSecurityToken;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenDocument;
import arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType;
import arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType.ReturnType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AssociationType1;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LocalizedStringType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryPackageType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotType1;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ValueListType;
import arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType;
import arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimValue;

public class QueryPartFactory {

	private static final String URN_UUID_PREFIX = "urn:uuid:";

	private QueryPartFactory() {
		throw new IllegalStateException("Utility class");
	}

	public static ClassificationType generateClassification(String classificationId, String registryObjectId,
			ObjectTypes type, String value, List<SlotType1> slots, InternationalStringType name) {
		ClassificationType classification = ClassificationType.Factory.newInstance();

		if (classificationId != null
				&& ObjectIds.CLASSIFICATION_SCHEME_LITERAL.equalsIgnoreCase(ObjectIds.getType(classificationId))) {
			classification.setClassificationScheme(classificationId);
		} else if (classificationId != null
				&& ObjectIds.CLASSIFICATION_NODE_LITERAL.equalsIgnoreCase(ObjectIds.getType(classificationId))) {
			classification.setClassificationNode(classificationId);
		}

		if (type != null) {
			classification.setObjectType(type.getCode());
		}

		if (registryObjectId != null) {
			classification.setClassifiedObject(registryObjectId);
		}

		classification.setId(URN_UUID_PREFIX + UUID.randomUUID());

		classification.setNodeRepresentation(value);

		if (slots != null && !slots.isEmpty()) {
			SlotType1[] slotArray = new SlotType1[slots.size()];
			classification.setSlotArray(slots.toArray(slotArray));
		}

		if (name != null) {
			classification.setName(name);
		}

		return classification;
	}

	public static AssociationType1 generateAssociation(ObjectTypes objectType, String registryObjectId,
			AssociationTypes type, String targetObject, List<SlotType1> slots) {
		AssociationType1 association = AssociationType1.Factory.newInstance();

		if (type != null) {
			association.setAssociationType(type.getCode());
		}

		association.setSourceObject(registryObjectId);

		if (objectType != null) {
			association.setObjectType(objectType.getCode());
		}

		association.setTargetObject(targetObject);

		if (slots != null && !slots.isEmpty()) {
			SlotType1[] slotArray = new SlotType1[slots.size()];
			association.setSlotArray(slots.toArray(slotArray));
		}

		association.setId(URN_UUID_PREFIX + UUID.randomUUID());

		return association;
	}

	public static ExternalIdentifierType generateExternalIdentifier(String idScheme, String registryObjectId, String id,
			ObjectTypes objectType, InternationalStringType name) {
		ExternalIdentifierType externalId = ExternalIdentifierType.Factory.newInstance();
		externalId.setId(URN_UUID_PREFIX + UUID.randomUUID());

		if (id != null) {
			externalId.setIdentificationScheme(idScheme);
		}

		externalId.setRegistryObject(registryObjectId);
		externalId.setValue(id);

		if (objectType != null) {
			externalId.setObjectType(objectType.getCode());
		}

		if (name != null) {
			externalId.setName(name);
		}

		return externalId;
	}

	public static InternationalStringType generateInternationalString(String value, String lang, String charset) {
		InternationalStringType string = InternationalStringType.Factory.newInstance();
		LocalizedStringType localizedString = LocalizedStringType.Factory.newInstance();

		if (charset != null && !charset.isEmpty()) {
			localizedString.addNewCharset().setStringValue(charset);
		}

		localizedString.setValue(value);

		if (lang != null && !lang.isEmpty()) {
			localizedString.setLang(lang);
		}

		string.setLocalizedStringArray(new LocalizedStringType[] { localizedString });

		return string;
	}

	public static RegistryPackageType generateRegistryPackage(String availabilityStatus, String registryId,
			ObjectTypes objectType, List<ClassificationType> classifications, List<ExternalIdentifierType> externalIds,
			List<SlotType1> slots, InternationalStringType description, String homeCommunity,
			InternationalStringType name) {
		RegistryPackageType registryPackage = RegistryPackageType.Factory.newInstance();
		registryPackage.setId(registryId);
		registryPackage.setStatus(availabilityStatus);

		if (objectType != null) {
			registryPackage.setObjectType(objectType.getCode());
		}

		if (externalIds != null && !externalIds.isEmpty()) {
			ExternalIdentifierType[] externalIdArray = new ExternalIdentifierType[externalIds.size()];
			registryPackage.setExternalIdentifierArray(externalIds.toArray(externalIdArray));
		}

		if (externalIds != null && !externalIds.isEmpty()) {
			ExternalIdentifierType[] externalIdArray = new ExternalIdentifierType[externalIds.size()];
			registryPackage.setExternalIdentifierArray(externalIds.toArray(externalIdArray));
		}

		if (classifications != null && !classifications.isEmpty()) {
			ClassificationType[] classificationArray = new ClassificationType[classifications.size()];
			registryPackage.setClassificationArray(classifications.toArray(classificationArray));
		}

		if (slots != null && !slots.isEmpty()) {
			SlotType1[] slotArray = new SlotType1[slots.size()];
			registryPackage.setSlotArray(slots.toArray(slotArray));
		}

		if (description != null) {
			registryPackage.setDescription(description);
		}

		if (name != null) {
			registryPackage.setName(name);
		}

		if (homeCommunity != null) {
			registryPackage.setHome(homeCommunity);
		}

		return registryPackage;
	}

	public static ValueListType generateValueList(List<String> values) {
		ValueListType valueListType = ValueListType.Factory.newInstance();
		if (values != null) {
			String[] valueArray = new String[values.size()];
			valueListType.setValueArray(values.toArray(valueArray));
		}

		return valueListType;
	}

	public static SlotType1 generateSlot(ValueListType valueList, String name) {
		SlotType1 slotType = SlotType1.Factory.newInstance();
		slotType.setName(name);

		if (valueList != null) {
			slotType.setValueList(valueList);
		}

		return slotType;
	}

	public static RegistryObjectListType generateRegistryObjectList(List<RegistryPackageType> registryPackages,
			List<ExtrinsicObjectType> extrinsicObjects, List<AssociationType1> associations,
			List<ClassificationType> classifications) {
		RegistryObjectListType registryObjectList = RegistryObjectListType.Factory.newInstance();

		if (registryPackages != null && !registryPackages.isEmpty()) {
			RegistryPackageType[] registryPackageArray = new RegistryPackageType[registryPackages.size()];
			registryObjectList.setRegistryPackageArray(registryPackages.toArray(registryPackageArray));
		}

		if (extrinsicObjects != null && !extrinsicObjects.isEmpty()) {
			ExtrinsicObjectType[] extrinsicObjectArray = new ExtrinsicObjectType[extrinsicObjects.size()];
			registryObjectList.setExtrinsicObjectArray(extrinsicObjects.toArray(extrinsicObjectArray));
		}

		if (associations != null && !associations.isEmpty()) {
			AssociationType1[] associationArray = new AssociationType1[associations.size()];
			registryObjectList.setAssociationArray(associations.toArray(associationArray));
		}

		if (classifications != null && !classifications.isEmpty()) {
			ClassificationType[] classificationArray = new ClassificationType[classifications.size()];
			registryObjectList.setClassificationArray(classifications.toArray(classificationArray));
		}

		return registryObjectList;
	}

	public static SubmitObjectsRequestDocument generateSubmitObjectsRequestDocument(
			RegistryObjectListType registryObjectList) {
		SubmitObjectsRequestDocument submitObjectsRequestDoc = SubmitObjectsRequestDocument.Factory.newInstance();
		SubmitObjectsRequest submitObjectsRequest = SubmitObjectsRequest.Factory.newInstance();

		submitObjectsRequest.setRegistryObjectList(registryObjectList);
		submitObjectsRequestDoc.setSubmitObjectsRequest(submitObjectsRequest);
		return submitObjectsRequestDoc;
	}

	public static ResponseOptionType generateResponseOption(ReturnType.Enum returnType, boolean returnComposedObject) {
		ResponseOptionType responseOption = ResponseOptionType.Factory.newInstance();
		responseOption.setReturnComposedObjects(returnComposedObject);
		responseOption.setReturnType(returnType);
		return responseOption;
	}

	public static AdhocQueryType generateAdhocQuery(PharmQueryIds queryId, List<SlotType1> slots) {
		AdhocQueryType adhocQuery = AdhocQueryType.Factory.newInstance();
		adhocQuery.setId(queryId.getValue());

		if (slots != null && !slots.isEmpty()) {
			SlotType1[] slotArray = new SlotType1[slots.size()];
			adhocQuery.setSlotArray(slots.toArray(slotArray));
		}

		return adhocQuery;
	}

	public static ClaimTypeType generateClaimValue(String dataType, String name, String value) {
		ClaimTypeType claimType = ClaimTypeType.Factory.newInstance();
		claimType.setDataType(dataType);
		claimType.setName(name);
		ClaimValue claimValue = ClaimValue.Factory.newInstance();
		claimValue.setStringValue(value);
		claimType.setClaimValue(claimValue);
		return claimType;
	}

	public static ELGAClaimsType generateELGAClaimsType(String dialect, ClaimTypeType... types) {
		ELGAClaimsType claims = ELGAClaimsType.Factory.newInstance();
		claims.setDialect(dialect);
		claims.setClaimTypeArray(types);
		return claims;
	}

	public static RequestSecurityTokenDocument generateRequestSecurityTokenDocument(Enum tokenType,
			arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGARequestTypeEnum.Enum requestType,
			String dialect, ClaimTypeType... claimTypes) throws XmlException {
		RequestSecurityTokenDocument reqSecToken = RequestSecurityTokenDocument.Factory.newInstance();
		ELGARequestSecurityToken elgaReqSecToken = ELGARequestSecurityToken.Factory.newInstance();
		elgaReqSecToken.setTokenType(tokenType);
		elgaReqSecToken.setRequestType(requestType);

		ELGAClaimsType claims = generateELGAClaimsType(dialect, claimTypes);
		XmlObject xmlSecurityToken = XmlObject.Factory.parse(claims.xmlText());
		elgaReqSecToken.setELGARequestSecurityTokenChoice(xmlSecurityToken);
		reqSecToken.setRequestSecurityToken(elgaReqSecToken);

		return reqSecToken;
	}
	
	public static SecurityDocument buildSecurityHeader(AssertionType hcpAssertion) throws XmlException {
		SecurityDocument security = SecurityDocument.Factory.newInstance();
		if (hcpAssertion != null) {
			String xmlHcpAssertion = hcpAssertion.xmlText().replace("xml-fragment", "saml2:Assertion");
			SecurityHeaderType securityHeaderType = SecurityHeaderType.Factory.parse(xmlHcpAssertion);

			security.setSecurity(securityHeaderType);
		}

		return security;
	}

}
