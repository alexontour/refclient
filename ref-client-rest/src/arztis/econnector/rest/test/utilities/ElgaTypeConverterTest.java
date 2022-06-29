/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest.test.utilities;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.activation.DataHandler;
import javax.xml.parsers.ParserConfigurationException;

import org.apache.axis2.builder.unknowncontent.InputStreamDataSource;
import org.hl7.fhir.dstu3.model.Enumerations.ResourceType;
import org.hl7.fhir.r4.model.DocumentReference.DocumentRelationshipType;
import org.hl7.fhir.r4.model.Enumerations.DocumentReferenceStatus;
import org.husky.common.utils.XdsMetadataUtil;
import org.husky.xua.core.SecurityHeaderElement;
import org.husky.xua.exceptions.DeserializeException;
import org.junit.Assert;
import org.junit.Test;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.Address;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.AssigningAuthority;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.Association;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.AssociationType;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.AvailabilityStatus;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.Code;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.DocumentEntry;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.Identifiable;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.PatientInfo;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.Person;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.XpnName;
import org.openehealth.ipf.commons.ihe.xds.core.responses.RetrievedDocument;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.xml.sax.SAXException;

import arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType;
import arztis.econnector.ihe.utilities.AssertionTypeUtil;
import arztis.econnector.ihe.utilities.IheConstants;
import arztis.econnector.rest.FhirElgaConnectionCaller;
import arztis.econnector.rest.model.fhir.FhirDocumentReference;
import arztis.econnector.rest.model.fhir.FhirPatientAt;
import arztis.econnector.rest.model.fhir.FhirPractitioner;

/**
 * The Class ElgaTypeConverterTest.
 */
public class ElgaTypeConverterTest {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(ElgaTypeConverterTest.class.getName());

	/** The Constant REPOSITORY_ID. */
	private static final String REPOSITORY_ID = "1234.22";
	
	/** The Constant DOCUMENT_ID. */
	private static final String DOCUMENT_ID = "1234";
	
	/** The Constant UNIQUE_ID. */
	private static final String UNIQUE_ID = "122334";
	
	/** The Constant ID_PATH. */
	private static final String ID_PATH = "/1234/1234.22/1234.23";
	
	/** The Constant APPLICATION_XML. */
	private static final String APPLICATION_XML = "application/xml";

	/**
	 * Test cast document.
	 */
	@Test
	public void testCastDocument() {
		RetrievedDocument xdsDocument = getDocumentFromFile("resources/tests/xml/ELGA-Entlassungsbrief-Beispiel.xml");

		FhirDocumentReference reference = new FhirDocumentReference(ID_PATH, APPLICATION_XML);
		FhirElgaConnectionCaller.getInstance().addXdsDocumentToDocumentReference(List.of(xdsDocument), reference, "");

		Assert.assertNotNull(reference);
		Assert.assertTrue(reference.hasContent());
		Assert.assertNotNull(reference.getContentFirstRep().getAttachment());
		Assert.assertNotNull(reference.getContentFirstRep().getAttachment().getData());
		Assert.assertEquals(ID_PATH, reference.getContentFirstRep().getAttachment().getUrl());
	}

	/**
	 * Test cast document prescription.
	 */
	@Test
	public void testCastDocumentPrescription() {
		RetrievedDocument xdsDocument = getDocumentFromFile(
				"resources/tests/xml/ELGA-083-e-Medikation_1-Rezept_mit_Verordnungen1-4 Dosierungsvarianten an EINEM Tag.xml");

		FhirDocumentReference reference = new FhirDocumentReference(ID_PATH, APPLICATION_XML);
		FhirElgaConnectionCaller.getInstance().addXdsDocumentToDocumentReference(List.of(xdsDocument), reference, "");

		Assert.assertNotNull(reference);
		Assert.assertTrue(reference.hasContent());
		Assert.assertNotNull(reference.getContentFirstRep().getAttachment());
		Assert.assertNotNull(reference.getContentFirstRep().getAttachment().getData());
		Assert.assertEquals(ID_PATH, reference.getContentFirstRep().getAttachment().getUrl());

	}

	/**
	 * Gets the document from file.
	 *
	 * @param path the path
	 * @return the document from file
	 */
	private RetrievedDocument getDocumentFromFile(String path) {
		try (InputStream documentStream = new FileInputStream(path)) {
			RetrievedDocument document = new RetrievedDocument();
			document.setMimeType(APPLICATION_XML);
			document.setDataHandler(new DataHandler(new InputStreamDataSource(documentStream)));
			document.setNewDocumentUniqueId(DOCUMENT_ID);
			document.setNewRepositoryUniqueId(REPOSITORY_ID);
			return document;
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
		}
		return null;
	}

	/**
	 * Test transform assertion type to XUA assertion.
	 */
	@Test
	public void testTransformAssertionTypeToXUAAssertion() {
		try {
			AssertionType assertion = AssertionType.Factory.parse(new File("resources/tests/xml/hcpAssertion.xml"));
			SecurityHeaderElement xuaAssertion = AssertionTypeUtil.transformAssertionTypeToXUAAssertion(assertion);

			org.opensaml.saml.saml2.core.Assertion element = (org.opensaml.saml.saml2.core.Assertion) xuaAssertion
					.getWrappedObject();

			Assert.assertEquals("urn:elga:ets",
					element.getIssuer().getValue());

			Assert.assertEquals(2, element.getConditions().getConditions().size());

			Assert.assertEquals("2019-07-29T12:05:10.933Z", element.getConditions().getConditions().get(0));

		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	/**
	 * Test cast document entry response.
	 */
	@Test
	public void testCastDocumentEntryResponse() {
		DocumentEntry documentEntry = new DocumentEntry();
		documentEntry.setHomeCommunityId("1.2.3.4.5");

		documentEntry.setAvailabilityStatus(AvailabilityStatus.APPROVED);

		Code classCode = new Code();
		classCode.setCode("18842-5");
		classCode.setDisplayName(XdsMetadataUtil.createInternationalString("Discharge summary"));
		classCode.setSchemeName("1.2.3.4.5.6");
		documentEntry.setClassCode(classCode);

		Code typeCode = new Code();
		typeCode.setCode("34745-0");
		typeCode.setDisplayName(XdsMetadataUtil.createInternationalString("Nurse Discharge summary"));
		typeCode.setSchemeName("1.2.3.4.5.6");
		documentEntry.setTypeCode(typeCode);

		documentEntry.setComments(XdsMetadataUtil.createInternationalString("asdfg"));

		documentEntry.setCreationTime("2019-08-02T14:42:22.5353");
		documentEntry.setEntryUuid("urn:uuid:34234234234");

		Code formatCode = new Code();
		formatCode.setCode("urn:elga:dissum-n:2015:EIS_FullSupport");
		documentEntry.setFormatCode(formatCode);

		Code healthCareFacilityTypeCode = new Code();
		healthCareFacilityTypeCode.setCode("100");
		healthCareFacilityTypeCode
				.setDisplayName(XdsMetadataUtil.createInternationalString("Ärztin/Arzt für Allgemeinmedizin"));
		documentEntry.setHealthcareFacilityTypeCode(healthCareFacilityTypeCode);

		documentEntry.setLanguageCode("de-AT");

		Person legalAuthenticator = new Person();
		XpnName xpnName = new XpnName();
		xpnName.setGivenName("Sonja");
		xpnName.setFamilyName("Huber");
		xpnName.setPrefix("Mag.");
		xpnName.setSuffix("Bac");
		legalAuthenticator.setName(xpnName);
		documentEntry.setLegalAuthenticator(legalAuthenticator);

		documentEntry.setMimeType("xml");

		Association parentDocument = new Association();
		parentDocument.setEntryUuid("11111");
		parentDocument.setAssociationType(AssociationType.REPLACE);

		Identifiable patientId = new Identifiable();
		patientId.setId("1002120995");
		AssigningAuthority authority = new AssigningAuthority();
		authority.setUniversalId(IheConstants.OID_SVNR);
		authority.setUniversalIdType("ISO");
		patientId.setAssigningAuthority(authority);
		documentEntry.setPatientId(patientId);

		Identifiable sourcePatientId = new Identifiable();
		sourcePatientId.setId("77");
		authority = new AssigningAuthority();
		authority.setUniversalId("10.9.8.7.6.5.4.3");
		authority.setUniversalIdType("ISO");
		sourcePatientId.setAssigningAuthority(authority);
		documentEntry.setSourcePatientId(sourcePatientId);

		PatientInfo sourcePatientInfo = new PatientInfo();
		sourcePatientInfo.setDateOfBirth("1980-01-01");
		sourcePatientInfo.setGender("M");

		Address address = new Address();
		address.setCity("Graz");
		address.setCountry("AT");
		address.setStateOrProvince("Steiermark");
		address.setStreetAddress("Grabenstraße 110b");
		address.setZipOrPostalCode("8010");

		sourcePatientInfo.getAddresses().add(address);
		documentEntry.setSourcePatientInfo(sourcePatientInfo);

		Code practiceSettingCode = new Code();
		practiceSettingCode.setCode("F001");
		practiceSettingCode.setDisplayName(XdsMetadataUtil.createInternationalString("Allgemeinmedizin"));
		practiceSettingCode.setSchemeName("1.2.3.4.5.6.7");
		documentEntry.setPracticeSettingCode(practiceSettingCode);

		documentEntry.setRepositoryUniqueId("1.2.3.4.5.56.7");
		documentEntry.setServiceStartTime("2019-07-04T16:12:22.5353");
		documentEntry.setServiceStopTime("2019-07-14T10:42:22.5353");

		documentEntry.setSize(12334L);
		documentEntry.setTitle(XdsMetadataUtil.createInternationalString("Arztbrief"));
		documentEntry.setUniqueId(UNIQUE_ID);

		FhirDocumentReference actualDocument = new FhirDocumentReference(documentEntry, parentDocument, 0);

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

		FhirPatientAt fhirPatient = new FhirPatientAt(documentEntry, "0-1");
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

	/**
	 * Test transform null to XUA assertion.
	 *
	 * @throws ParserConfigurationException the parser configuration exception
	 * @throws SAXException                 the SAX exception
	 * @throws IOException                  Signals that an I/O exception has
	 *                                      occurred.
	 * @throws DeserializeException
	 */
	@Test
	public void testTransformNullToXUAAssertion()
			throws ParserConfigurationException, SAXException, IOException, DeserializeException {
		Assert.assertEquals(null, AssertionTypeUtil.transformAssertionTypeToXUAAssertion(null));
	}

}
