package arztis.econnector.rest.test.utilities;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.xml.parsers.ParserConfigurationException;

import org.ehealth_connector.common.utils.XdsMetadataUtil;
import org.hl7.fhir.dstu3.model.Enumerations.ResourceType;
import org.hl7.fhir.r4.model.DocumentReference.DocumentRelationshipType;
import org.hl7.fhir.r4.model.Enumerations.DocumentReferenceStatus;
import org.junit.Assert;
import org.junit.Test;
import org.openhealthtools.ihe.common.hl7v2.CX;
import org.openhealthtools.ihe.common.hl7v2.Hl7v2Factory;
import org.openhealthtools.ihe.common.hl7v2.SourcePatientInfoType;
import org.openhealthtools.ihe.common.hl7v2.XAD;
import org.openhealthtools.ihe.common.hl7v2.XCN;
import org.openhealthtools.ihe.xds.document.DocumentDescriptor;
import org.openhealthtools.ihe.xds.document.XDSDocument;
import org.openhealthtools.ihe.xds.document.XDSDocumentFromStream;
import org.openhealthtools.ihe.xds.metadata.AvailabilityStatusType;
import org.openhealthtools.ihe.xds.metadata.CodedMetadataType;
import org.openhealthtools.ihe.xds.metadata.DocumentEntryType;
import org.openhealthtools.ihe.xds.metadata.MetadataFactory;
import org.openhealthtools.ihe.xds.metadata.ParentDocumentRelationshipType;
import org.openhealthtools.ihe.xds.metadata.ParentDocumentType;
import org.openhealthtools.ihe.xds.response.DocumentEntryResponseType;
import org.openhealthtools.ihe.xds.response.impl.DocumentEntryResponseTypeImpl;
import org.openhealthtools.ihe.xua.XUAAssertion;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;

import arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType;
import arztis.econnector.ihe.utilities.AssertionTypeUtil;
import arztis.econnector.ihe.utilities.IheConstants;
import arztis.econnector.rest.FhirElgaConnectionCaller;
import arztis.econnector.rest.model.fhir.FhirDocumentReference;
import arztis.econnector.rest.model.fhir.FhirPatientAt;
import arztis.econnector.rest.model.fhir.FhirPractitioner;

public class ElgaTypeConverterTest {

	private static final Logger LOGGER = LoggerFactory.getLogger(ElgaTypeConverterTest.class.getName());
	private static final String HOME_COMMUNITY_ID = "1234.23";
	private static final String REPOSITORY_ID = "1234.22";
	private static final String DOCUMENT_ID = "1234";
	private static final String UNIQUE_ID = "122334";
	private static final String ID_PATH = "/1234/1234.22/1234.23";
	private static final String APPLICATION_XML = "application/xml";

	@Test
	public void testCastDocument() {
		XDSDocument xdsDocument = getDocumentFromFile("resources/tests/xml/ELGA-Entlassungsbrief-Beispiel.xml");

		FhirDocumentReference reference = new FhirDocumentReference(ID_PATH, APPLICATION_XML);
		FhirElgaConnectionCaller.getInstance().addXdsDocumentToDocumentReference(List.of(xdsDocument), reference, "");

		Assert.assertNotNull(reference);
		Assert.assertTrue(reference.hasContent());
		Assert.assertNotNull(reference.getContentFirstRep().getAttachment());
		Assert.assertNotNull(reference.getContentFirstRep().getAttachment().getData());
		Assert.assertEquals(ID_PATH, reference.getContentFirstRep().getAttachment().getUrl());
	}

	@Test
	public void testCastDocumentPrescription() {
		XDSDocument xdsDocument = getDocumentFromFile(
				"resources/tests/xml/ELGA-083-e-Medikation_1-Rezept_mit_Verordnungen1-4 Dosierungsvarianten an EINEM Tag.xml");

		FhirDocumentReference reference = new FhirDocumentReference(ID_PATH, APPLICATION_XML);
		FhirElgaConnectionCaller.getInstance().addXdsDocumentToDocumentReference(List.of(xdsDocument), reference, "");

		Assert.assertNotNull(reference);
		Assert.assertTrue(reference.hasContent());
		Assert.assertNotNull(reference.getContentFirstRep().getAttachment());
		Assert.assertNotNull(reference.getContentFirstRep().getAttachment().getData());
		Assert.assertEquals(ID_PATH, reference.getContentFirstRep().getAttachment().getUrl());

	}

	private XDSDocument getDocumentFromFile(String path) {
		try (InputStream documentStream = new FileInputStream(path)) {
			DocumentDescriptor descriptor = new DocumentDescriptor("xml", APPLICATION_XML);
			XDSDocumentFromStream document = new XDSDocumentFromStream(descriptor, documentStream);
			document.setHomeCommunityId(HOME_COMMUNITY_ID);
			document.setDocumentUniqueId(DOCUMENT_ID);
			document.setRepositoryUniqueId(REPOSITORY_ID);
			return document;
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
		}
		return null;
	}

	@Test
	public void testTransformAssertionTypeToXUAAssertion() {
		try {
			AssertionType assertion = AssertionType.Factory.parse(new File("resources/tests/xml/hcpAssertion.xml"));
			XUAAssertion xuaAssertion = AssertionTypeUtil.transformAssertionTypeToXUAAssertion(assertion);

			Element[] elements = xuaAssertion.getAssertionElements();
			Assert.assertEquals(1, elements.length);

			Assert.assertEquals("urn:elga:ets",
					elements[0].getElementsByTagName("saml2:Issuer").item(0).getTextContent());

			Assert.assertEquals(2,
					elements[0].getElementsByTagName("saml2:Conditions").item(0).getAttributes().getLength());

			Assert.assertEquals("2019-07-29T12:05:10.933Z", elements[0].getElementsByTagName("saml2:Conditions").item(0)
					.getAttributes().getNamedItem("NotBefore").getTextContent());

		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	@Test
	public void testCastDocumentEntryResponse() {
		DocumentEntryResponseType documentEntryResponse = new DocumentEntryResponseTypeImpl();
		documentEntryResponse.setHomeCommunityId("1.2.3.4.5");

		DocumentEntryType documentEntry = MetadataFactory.eINSTANCE.createDocumentEntryType();
		documentEntry.setAvailabilityStatus(AvailabilityStatusType.APPROVED_LITERAL);

		CodedMetadataType classCode = MetadataFactory.eINSTANCE.createCodedMetadataType();
		classCode.setCode("18842-5");
		classCode.setDisplayName(XdsMetadataUtil.createInternationalString("Discharge summary"));
		classCode.setSchemeUUID("1.2.3.4.5.6");
		documentEntry.setClassCode(classCode);

		CodedMetadataType typeCode = MetadataFactory.eINSTANCE.createCodedMetadataType();
		typeCode.setCode("34745-0");
		typeCode.setDisplayName(XdsMetadataUtil.createInternationalString("Nurse Discharge summary"));
		typeCode.setSchemeUUID("1.2.3.4.5.6");
		documentEntry.setTypeCode(typeCode);

		documentEntry.setComments(XdsMetadataUtil.createInternationalString("asdfg"));

		documentEntry.setCreationTime("2019-08-02T14:42:22.5353");
		documentEntry.setEntryUUID("urn:uuid:34234234234");

		CodedMetadataType formatCode = MetadataFactory.eINSTANCE.createCodedMetadataType();
		formatCode.setCode("urn:elga:dissum-n:2015:EIS_FullSupport");
		documentEntry.setFormatCode(formatCode);

		CodedMetadataType healthCareFacilityTypeCode = MetadataFactory.eINSTANCE.createCodedMetadataType();
		healthCareFacilityTypeCode.setCode("100");
		healthCareFacilityTypeCode
				.setDisplayName(XdsMetadataUtil.createInternationalString("Ärztin/Arzt für Allgemeinmedizin"));
		documentEntry.setHealthCareFacilityTypeCode(healthCareFacilityTypeCode);

		documentEntry.setLanguageCode("de-AT");

		XCN legalAuthenticator = Hl7v2Factory.eINSTANCE.createXCN();
		legalAuthenticator.setGivenName("Sonja");
		legalAuthenticator.setFamilyName("Huber");
		legalAuthenticator.setPrefix("Mag.");
		legalAuthenticator.setSuffix("Bac");
		documentEntry.setLegalAuthenticator(legalAuthenticator);

		documentEntry.setMimeType("xml");

		ParentDocumentType parentDocument = MetadataFactory.eINSTANCE.createParentDocumentType();
		parentDocument.setParentDocumentId("11111");
		parentDocument.setParentDocumentRelationship(ParentDocumentRelationshipType.RPLC_LITERAL);
		documentEntry.setParentDocument(parentDocument);

		CX patientId = Hl7v2Factory.eINSTANCE.createCX();
		patientId.setIdNumber("1002120995");
		patientId.setAssigningAuthorityUniversalId(IheConstants.OID_SVNR);
		patientId.setAssigningAuthorityName("SVNR");
		patientId.setAssigningAuthorityUniversalIdType("ISO");
		documentEntry.setPatientId(patientId);

		CX sourcePatientId = Hl7v2Factory.eINSTANCE.createCX();
		sourcePatientId.setIdNumber("77");
		sourcePatientId.setAssigningAuthorityUniversalId("10.9.8.7.6.5.4.3");
		sourcePatientId.setAssigningAuthorityName("Ordination Dr. Musterärztin");
		sourcePatientId.setAssigningAuthorityUniversalIdType("ISO");
		documentEntry.setSourcePatientId(sourcePatientId);

		SourcePatientInfoType sourcePatientInfo = Hl7v2Factory.eINSTANCE.createSourcePatientInfoType();
		sourcePatientInfo.setPatientDateOfBirth("1980-01-01");
		sourcePatientInfo.setPatientSex("M");

		XAD address = Hl7v2Factory.eINSTANCE.createXAD();
		address.setCity("Graz");
		address.setCountry("AT");
		address.setStateOrProvince("Steiermark");
		address.setStreetAddress("Grabenstraße 110b");
		address.setZipOrPostalCode("8010");

		sourcePatientInfo.setPatientAddress(address);
		documentEntry.setSourcePatientInfo(sourcePatientInfo);

		CodedMetadataType practiceSettingCode = MetadataFactory.eINSTANCE.createCodedMetadataType();
		practiceSettingCode.setCode("F001");
		practiceSettingCode.setDisplayName(XdsMetadataUtil.createInternationalString("Allgemeinmedizin"));
		practiceSettingCode.setSchemeName("ELGA");
		practiceSettingCode.setSchemeUUID("1.2.3.4.5.6.7");
		documentEntry.setPracticeSettingCode(practiceSettingCode);

		documentEntry.setRepositoryUniqueId("1.2.3.4.5.56.7");
		documentEntry.setServiceStartTime("2019-07-04T16:12:22.5353");
		documentEntry.setServiceStopTime("2019-07-14T10:42:22.5353");

		documentEntry.setSize("12334");
		documentEntry.setTitle(XdsMetadataUtil.createInternationalString("Arztbrief"));
		documentEntry.setUniqueId(UNIQUE_ID);

		documentEntryResponse.setDocumentEntry(documentEntry);

		FhirDocumentReference actualDocument = new FhirDocumentReference(documentEntryResponse, 0);

		assertNotNull(actualDocument);

		Assert.assertEquals("urn:uuid:34234234234", actualDocument.getIdentifierFirstRep().getValue());
		Assert.assertEquals(UNIQUE_ID, actualDocument.getMasterIdentifier().getValue());
		Assert.assertEquals(DocumentReferenceStatus.CURRENT, actualDocument.getStatus());
		Assert.assertEquals("Arztbrief", actualDocument.getDescription());
		Assert.assertEquals("34745-0", actualDocument.getType().getCodingFirstRep().getCode());
		Assert.assertEquals("18842-5", actualDocument.getCategoryFirstRep().getCodingFirstRep().getCode());
		Assert.assertNotNull(actualDocument.getSubject());
		Assert.assertEquals("Patient/0-1", actualDocument.getSubject().getReference());
		Assert.assertEquals("de-AT", actualDocument.getLanguage());

		assertNotNull(actualDocument.getAuthenticator());
		Assert.assertEquals("Practitioner/0-1", actualDocument.getAuthenticator().getReference());
		FhirPractitioner practitioner = new FhirPractitioner(legalAuthenticator, "1-1");
		assertNotNull(practitioner);
		assertEquals(1, practitioner.getName().size());
		assertEquals("Huber", practitioner.getNameFirstRep().getFamily());
		assertEquals("Sonja", practitioner.getNameFirstRep().getGivenAsSingleString());
		assertEquals("Mag.", practitioner.getNameFirstRep().getPrefixAsSingleString());
		assertEquals("Bac", practitioner.getNameFirstRep().getSuffixAsSingleString());

		Assert.assertTrue(actualDocument.getAuthor().isEmpty());

		Assert.assertTrue(actualDocument.getSecurityLabel().isEmpty());

		assertTrue(actualDocument.hasContent());
		assertEquals(1, actualDocument.getContent().size());
		assertNotNull(actualDocument.getContentFirstRep().getAttachment());
		assertTrue(actualDocument.getContentFirstRep().getAttachment().getUrl().contains("1.2.3.4.5.56.7"));
		assertTrue(actualDocument.getContentFirstRep().getAttachment().getUrl().contains("1.2.3.4.5"));
		assertTrue(actualDocument.getContentFirstRep().getAttachment().getUrl().contains(UNIQUE_ID));
		Assert.assertEquals("xml", actualDocument.getContentFirstRep().getAttachment().getContentType());
		Assert.assertEquals("urn:elga:dissum-n:2015:EIS_FullSupport",
				actualDocument.getContentFirstRep().getFormat().getCode());

		assertTrue(actualDocument.hasContext());
		assertNotNull(actualDocument.getContext().getSourcePatientInfo());
		Assert.assertEquals("Patient/0-1", actualDocument.getContext().getSourcePatientInfo().getReference());

		FhirPatientAt fhirPatient = new FhirPatientAt(documentEntryResponse, "0-1");
		Assert.assertEquals(org.hl7.fhir.r4.model.Enumerations.AdministrativeGender.MALE, fhirPatient.getGender());
		Assert.assertEquals("1002120995", fhirPatient.getIdentifierFirstRep().getValue());

		Assert.assertFalse(actualDocument.getContext().hasEvent());
		Assert.assertEquals("100", actualDocument.getContext().getFacilityType().getCodingFirstRep().getCode());
		Assert.assertEquals("F001", actualDocument.getContext().getPracticeSetting().getCodingFirstRep().getCode());

		Assert.assertFalse(actualDocument.getRelatesTo().isEmpty());
		assertEquals(1, actualDocument.getRelatesTo().size());
		Assert.assertEquals(DocumentRelationshipType.REPLACES, actualDocument.getRelatesToFirstRep().getCode());
		Assert.assertEquals(ResourceType.DOCUMENTREFERENCE.getDisplay(),
				actualDocument.getRelatesToFirstRep().getTarget().getType());
		Assert.assertEquals("11111", actualDocument.getRelatesToFirstRep().getTarget().getIdentifier().getValue());
	}

	@Test
	public void testTransformNullToXUAAssertion() throws ParserConfigurationException, SAXException, IOException {
		Assert.assertEquals(null, AssertionTypeUtil.transformAssertionTypeToXUAAssertion(null));
	}

}
