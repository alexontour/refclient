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

/**
 * This class contains functionality to build single parts for ELGA requests.
 *
 * @author Anna Jungwirth
 */
public class QueryPartFactory {

	/** The Constant URN_UUID_PREFIX. */
	private static final String URN_UUID_PREFIX = "urn:uuid:";
	
	/** The Constant XMLSCHEMA_ANY_URI. */
	public static final String XMLSCHEMA_ANY_URI = "http://www.w3.org/2001/XMLSchema#anyURI";
	
	/** The Constant XMLSCHEMA_STRING. */
	public static final String XMLSCHEMA_STRING = "http://www.w3.org/2001/XMLSchema#string";
	
	/** The Constant WS_TRUST_200512_RST_ISSUE. */
	public static final String WS_TRUST_200512_RST_ISSUE = "http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue";
	
	/** The Constant CLAIMS_DIALECT_2013. */
	public static final String CLAIMS_DIALECT_2013 = "urn:tiani-spirit:bes:2013:claims";
	
	/** The Constant SUBJECT_ORGANIZATION_ID. */
	public static final String SUBJECT_ORGANIZATION_ID = "urn:oasis:names:tc:xspa:1.0:subject:organization-id";
	
	/** The Constant RESOURCE_RESOURCE_ID. */
	public static final String RESOURCE_RESOURCE_ID = "urn:oasis:names:tc:xacml:1.0:resource:resource-id";

	/**
	 * Instantiates a new query part factory.
	 */
	private QueryPartFactory() {
		throw new IllegalStateException("Utility class");
	}

	/**
	 * builds classification element in following structure:
	 *
	 *<pre>
	 * {@code
	 * <rim:Classification classificationScheme="urn:uuid:41a5887f-8865-4c09-adf7-e362475b143a" classifiedObject="urn:uuid:9f4cbb3a-ff4c-18f6-3113-467490e52bbd" id="c1591284372968-22750440173389305851" nodeRepresentation="11369-6">
     *     <rim:Slot name="codingScheme">
     *         <rim:ValueList>
     *             <rim:Value>2.16.840.1.113883.6.1</rim:Value>
     *         </rim:ValueList>
     *     </rim:Slot>
     *     <rim:Name>
     *         <rim:LocalizedString charset="UTF-8" value="HISTORY OF IMMUNIZATIONS"/>
     *     </rim:Name>
     * </rim:Classification>
	 * }
	 * </pre>
	 *
	 * @param classificationId ID of classification scheme or node
	 * @param registryObjectId ID of object
	 * @param type object type of classification
	 * @param value node representation to include
	 * @param slots to include
	 * @param name display name of value
	 *
	 * @return created {@link ClassificationType}
	 */
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

	/**
	 * builds association element in following structure:
	 * 
	 * <pre>
	 * {@code
	 * <rim:Association associationType="urn:oasis:names:tc:ebxml-regrep:AssociationType:HasMember" id="a1591284372971-10632272285742144810" sourceObject="urn:uuid:9f477116-ff42-18f6-b9ab-fab524f5203d" targetObject="urn:uuid:9f4cbb3a-ff4c-18f6-3113-467490e52bbd">
	 *    <rim:Slot name="SubmissionSetStatus">
	 *       <rim:ValueList>
	 *          <rim:Value>Original</rim:Value>
	 *       </rim:ValueList>
	 *    </rim:Slot>
	 * </rim:Association>
	 * }
	 * </pre>.
	 *
	 * @param objectType object type of association
	 * @param registryObjectId ID of object
	 * @param type association type like replace
	 * @param targetObject ID of document entry object to reference to
	 * @param slots to include
	 * @return created {@link AssociationType1}
	 */
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

	/**
	 * builds external identifier element in following structure:
	 *
	 *<pre>
	 * {@code
	 * <rim:ExternalIdentifier id="i159128437294587411094102774552503" identificationScheme="urn:uuid:96fdda7c-d067-4183-912e-bf5ee74998a8" registryObject="urn:uuid:9f477116-ff42-18f6-b9ab-fab524f5203d" value="urn:oid:1.2.40.1.34.99.3.2.1.151078054001149215.1">
     *    <rim:Name>
     *       <rim:LocalizedString value="XDSSubmissionSet.uniqueId"/>
     *    </rim:Name>
     * </rim:ExternalIdentifier>
	 * }
	 * </pre>
	 *
	 * @param idScheme ID of identification scheme {@link ObjectIds}
	 * @param registryObjectId ID of object
	 * @param id ID value
	 * @param objectType object type of external identifier {@link ObjectTypes}
	 * @param name of given ID
	 *
	 * @return created {@link ExternalIdentifierType}
	 */
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

	/**
	 * builds international string element in following structure:
	 * 
	 * <pre>
	 * {@code
	 * <rim:LocalizedString charset="UTF-8" value="Update Immunisierungsstatus" xml:lang="de-AT"/>
	 * }
	 * </pre>.
	 *
	 * @param value text
	 * @param lang language in which value is written
	 * @param charset encoding in which the value is written
	 * @return created {@link InternationalStringType}
	 */
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

	/**
	 * builds registry package element in following structure:
	 *
	 *<pre>
	 * {@code
	 * <rim:RegistryPackage id="urn:uuid:9f477116-ff42-18f6-b9ab-fab524f5203d"  status="urn:oasis:names:tc:ebxml-regrep:StatusType:Approved">
     *      <rim:Slot name="submissionTime">
     *          <rim:ValueList>
     *              <rim:Value>20200604</rim:Value>
     *          </rim:ValueList>
     *      </rim:Slot>
     *      <rim:Name/>
     *      <rim:Description/>
     *      <rim:Classification classificationScheme="urn:uuid:aa543740-bdda-424e-8c96-df4873be8500" classifiedObject="urn:uuid:9f477116-ff42-18f6-b9ab-fab524f5203d" id="cs1591284372929-10399044918726681251" nodeRepresentation="87273-9">
     *          <rim:Slot name="codingScheme">
     *              <rim:ValueList>
     *                  <rim:Value>2.16.840.1.113883.6.1</rim:Value>
     *              </rim:ValueList>
     *           </rim:Slot>
     *           <rim:Name>
     *               <rim:LocalizedString charset="UTF-8" value="Immunization note" xml:lang="de-ch"/>
     *           </rim:Name>
     *       </rim:Classification>
     *       <rim:Classification classificationScheme="urn:uuid:a7058bb9-b4e4-4307-ba5b-e3f0ab85e12d" classifiedObject="urn:uuid:9f477116-ff42-18f6-b9ab-fab524f5203d" id="cs159128437293441654090621735005722" nodeRepresentation="">
     *           <rim:Slot name="authorInstitution">
     *               <rim:ValueList>
     *                   <rim:Value>Ordination Dr. Muster[0xc3][0xa4]rztin^^^^^^^^^1.2.40.0.34.99.3.2.1</rim:Value>
     *               </rim:ValueList>
     *           </rim:Slot>
     *           <rim:Slot name="authorPerson">
     *               <rim:ValueList>
     *                   <rim:Value>1.2.40.0.34.99.3.2.1^Muster[0xc3][0xa4]rztin^Helga^^MBA^Dr.^^^&amp;&amp;ISO</rim:Value>
     *               </rim:ValueList>
     *           </rim:Slot>
     *       </rim:Classification>
     *       <rim:ExternalIdentifier id="i1591284372938-58489893456368858111" identificationScheme="urn:uuid:6b5aea1a-874d-4603-a4bc-96a0a7b38446" registryObject="urn:uuid:9f477116-ff42-18f6-b9ab-fab524f5203d" value="1002120289^^^&amp;1.2.40.0.10.1.4.3.1&amp;ISO">
     *           <rim:Name>
     *               <rim:LocalizedString value="XDSSubmissionSet.patientId"/>
     *           </rim:Name>
     *       </rim:ExternalIdentifier>
     *       <rim:ExternalIdentifier id="i1591284372945-32427687394852800092" identificationScheme="urn:uuid:554ac39e-e3fe-47fe-b233-965d2a147832" registryObject="urn:uuid:9f477116-ff42-18f6-b9ab-fab524f5203d" value="urn:oid:1.2.40.0.34.99.3.2.1">
     *           <rim:Name>
     *               <rim:LocalizedString value="XDSSubmissionSet.sourceId"/>
     *           </rim:Name>
     *       </rim:ExternalIdentifier>
     *       <rim:ExternalIdentifier id="i159128437294587411094102774552503" identificationScheme="urn:uuid:96fdda7c-d067-4183-912e-bf5ee74998a8" registryObject="urn:uuid:9f477116-ff42-18f6-b9ab-fab524f5203d" value="urn:oid:1.2.40.1.34.99.3.2.1.151078054001149215.1">
     *           <rim:Name>
     *               <rim:LocalizedString value="XDSSubmissionSet.uniqueId"/>
     *           </rim:Name>
     *       </rim:ExternalIdentifier>
     *   </rim:RegistryPackage>
	 * }
	 * </pre>
	 *
	 * @param availabilityStatus status of submission set. This value should always be approved
	 * @param registryId ID of object
	 * @param objectType object type of registry package {@link ObjectTypes}
	 * @param classifications list of classification elements to include
	 * @param externalIds list of external identifier elements to include
	 * @param slots slot element to include
	 * @param description of registry package
	 * @param homeCommunity globally unique ID for a community
	 * @param name of registry package
	 *
	 * @return created {@link RegistryPackageType}
	 */
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

	/**
	 * builds value list elements in following structure:
	 *
	 *<pre>
	 * {@code
	 * <rim:ValueList>
     *     <rim:Value>urn:oid:2.16.840.1.113883.6.1</rim:Value>
     * </rim:ValueList>
	 * }
	 * </pre>
	 *
	 * @param values list of text contents for value elements
	 *
	 * @return created {@link ValueListType}
	 */
	public static ValueListType generateValueList(List<String> values) {
		ValueListType valueListType = ValueListType.Factory.newInstance();
		if (values != null) {
			String[] valueArray = new String[values.size()];
			valueListType.setValueArray(values.toArray(valueArray));
		}

		return valueListType;
	}

	/**
	 * builds slot element in following structure:
	 *
	 *<pre>
	 * {@code
	 * <rim:Slot name="codingScheme">
     *     <rim:ValueList>
     *        <rim:Value>urn:oid:2.16.840.1.113883.6.1</rim:Value>
     *     </rim:ValueList>
     * </rim:Slot>
	 * }
	 * </pre>
	 *
	 * @param valueList value list element to include
	 * @param name of slot
	 *
	 * @return created {@link SlotType1}
	 */
	public static SlotType1 generateSlot(ValueListType valueList, String name) {
		SlotType1 slotType = SlotType1.Factory.newInstance();
		slotType.setName(name);

		if (valueList != null) {
			slotType.setValueList(valueList);
		}

		return slotType;
	}

	/**
	 * builds registry object element in following structure:
	 * 
	 * <pre>
	 * {@code
	 * <rim:RegistryObjectList>
	 *    <rim:Classification
	 *       classificationNode="urn:uuid:a54d6aa5-d40d-43f9-88c5-b4633d873bdd"
	 *       classifiedObject="urn:uuid:52ad1f9a-92a8-1f90-43d4-e3e06569d360"
	 *       id="cl159410850256567023691517883522410"
	 *       nodeRepresentation=""/>
	 *    <rim:ExtrinsicObject id="urn:uuid:52ae7746-92a8-1f90-a7aa-22ccc7ddd708"
	 *       mimeType="text/xml"
	 *       objectType="urn:uuid:7edca82f-054d-47f2-a032-9b2a5b5186c1"
	 *       status="urn:oasis:names:tc:ebxml-regrep:StatusType:Approved">
	 *       <!-- include values-->
	 *    </rim:ExtrinsicObject>
	 *    <rim:RegistryPackage
	 *       id="urn:uuid:52ad1f9a-92a8-1f90-43d4-e3e06569d360"
	 *       status="urn:oasis:names:tc:ebxml-regrep:StatusType:Approved">
	 *      <!-- include values-->
	 *    </rim:RegistryPackage>
	 *    <rim:Association
	 *       associationType="urn:oasis:names:tc:ebxml-regrep:AssociationType:HasMember"
	 *       id="a1594108502581-80835998524600595860"
	 *       sourceObject="urn:uuid:52ad1f9a-92a8-1f90-43d4-e3e06569d360"
	 *       targetObject="urn:uuid:52ae7746-92a8-1f90-a7aa-22ccc7ddd708">
	 *     <!-- include values-->
	 *    </rim:Association>
	 * </rim:RegistryObjectList>
	 * }
	 * </pre>.
	 *
	 * @param registryPackages list of registry package elements to include
	 * @param extrinsicObjects list of extrinsic object elements to include
	 * @param associations list of association elements to include
	 * @param classifications list of classification elements to include
	 * @return created {@link RegistryObjectListType}
	 */
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

	/**
	 *  builds submit objects request document element.
	 *
	 * @param registryObjectList registry object list element to include
	 * @return created {@link SubmitObjectsRequestDocument}
	 */
	public static SubmitObjectsRequestDocument generateSubmitObjectsRequestDocument(
			RegistryObjectListType registryObjectList) {
		SubmitObjectsRequestDocument submitObjectsRequestDoc = SubmitObjectsRequestDocument.Factory.newInstance();
		SubmitObjectsRequest submitObjectsRequest = SubmitObjectsRequest.Factory.newInstance();

		submitObjectsRequest.setRegistryObjectList(registryObjectList);
		submitObjectsRequestDoc.setSubmitObjectsRequest(submitObjectsRequest);
		return submitObjectsRequestDoc;
	}

	/**
	 * builds response option element in following structure
	 * 
	 * <pre>
	 * {@code
	 *  <query:ResponseOption returnComposedObjects="true" returnType="LeafClass"/>
	 * }
	 * </pre>
	 * 
	 * There are two different types for return values:
	 * <ul>
	 * <li>ObjectRef (a list of object references)</li>
	 * <li>LeafClass (list of XML elements representing leaf class of object)</li>
	 * </ul>.
	 *
	 * @param returnType type for returning objects (LeafClass and ObjectRef)
	 * @param returnComposedObject the return composed object
	 * @return created {@link ResponseOptionType}
	 */
	public static ResponseOptionType generateResponseOption(ReturnType.Enum returnType, boolean returnComposedObject) {
		ResponseOptionType responseOption = ResponseOptionType.Factory.newInstance();
		responseOption.setReturnComposedObjects(returnComposedObject);
		responseOption.setReturnType(returnType);
		return responseOption;
	}

	/**
	 * builds adhoc query request element.
	 *
	 * @param queryId ID of provided stored query, which should be used
	 * @param slots list of slots to include
	 *
	 * @return created {@link AdhocQueryType}
	 */
	public static AdhocQueryType generateAdhocQuery(PharmQueryIds queryId, List<SlotType1> slots) {
		AdhocQueryType adhocQuery = AdhocQueryType.Factory.newInstance();
		adhocQuery.setId(queryId.getValue());

		if (slots != null && !slots.isEmpty()) {
			SlotType1[] slotArray = new SlotType1[slots.size()];
			adhocQuery.setSlotArray(slots.toArray(slotArray));
		}

		return adhocQuery;
	}

	/**
	 * builds claim type element in following structure
	 *
	 *<pre>
	 * {@code
     *  <ClaimType DataType="http://www.w3.org/2001/XMLSchema#anyURI" name="urn:tiani-spirit:bes:2013:claims:ident-method" xmlns="urn:tiani-spirit:ts">
     *     <ClaimValue>PIM101</ClaimValue>
     *  </ClaimType>
	 * }
	 * </pre>
	 *
	 * @param dataType data type of claim type element
	 * @param name of claim type element
	 * @param value of claim value element
	 *
	 * @return created {@link ClaimTypeType}
	 */
	public static ClaimTypeType generateClaimValue(String dataType, String name, String value) {
		ClaimTypeType claimType = ClaimTypeType.Factory.newInstance();
		claimType.setDataType(dataType);
		claimType.setName(name);
		ClaimValue claimValue = ClaimValue.Factory.newInstance();
		claimValue.setStringValue(value);
		claimType.setClaimValue(claimValue);
		return claimType;
	}

	/**
	 * builds claims element in following structure
	 *
	 *<pre>
	 * {@code
     *  <Claims Dialect="urn:tiani-spirit:bes:2013:claims">
     *   <ClaimType DataType="http://www.w3.org/2001/XMLSchema#anyURI" name="urn:tiani-spirit:bes:2013:claims:requested-role" xmlns="urn:tiani-spirit:ts">
     *     <ClaimValue>702</ClaimValue>
     *   </ClaimType>
     *  </Claims>
	 * }
	 * </pre>
	 *
	 * @param dialect value of attribute Dialect
	 * @param types list of claim types to include
	 *
	 * @return created {@link ELGAClaimsType}
	 */
	public static ELGAClaimsType generateELGAClaimsType(String dialect, ClaimTypeType... types) {
		ELGAClaimsType claims = ELGAClaimsType.Factory.newInstance();
		claims.setDialect(dialect);
		claims.setClaimTypeArray(types);
		return claims;
	}

	/**
	 * <pre>
	 * {@code
	 * <RequestSecurityToken xmlns="http://docs.oasis-open.org/ws-sx/ws-trust/200512">
	 *  <TokenType>urn:elga:bes:2013:HCP:assertion</TokenType>
	 *  <RequestType>http://docs.oasis-open.org/ws-sx/ws-trust/200512/Issue</RequestType>
	 *  <Claims Dialect="urn:tiani-spirit:bes:2013:claims">
	 *    <ClaimType DataType="http://www.w3.org/2001/XMLSchema#anyURI" name="urn:tiani-spirit:bes:2013:claims:requested-role" xmlns="urn:tiani-spirit:ts">
	 *      <ClaimValue>702</ClaimValue>
	 *    </ClaimType>
	 *  </Claims>
	 * </RequestSecurityToken>
	 * }
	 * </pre>
	 *
	 * @param tokenType text content of element token type
	 * @param requestType text content of element request type
	 * @param dialect dialect of element claims
	 * @param claimTypes list of claim types to include
	 * @return created {@link RequestSecurityTokenDocument}
	 * @throws XmlException the xml exception
	 */
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

	/**
	 * builds security document element. First "xml-fragment" element is replaced by "saml2:Assertion" in passed hcpAssertion.
	 * Afterward it includes assertion in security element.
	 * 
	 * <pre>
	 * {@code
	 * <wsse:Security xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd">
	 *       <saml2:Assertion xmlns:saml2="urn:oasis:names:tc:SAML:2.0:assertion"
	 *         <!-- assertion content-->
	 *       </saml2:Assertion>
	 * </wsse:Security>
	 * 
	 * }
	 * </pre>
	 *
	 * @param hcpAssertion assertion to include, it could be HCP or context assertion
	 * @return created {@link SecurityDocument}
	 * @throws XmlException the xml exception
	 */
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
