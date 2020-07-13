/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 * 
 */
package arztis.econnector.rest.test.utilities;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hl7.fhir.r4.model.Bundle.BundleEntryComponent;
import org.hl7.fhir.r4.model.DocumentReference;
import org.hl7.fhir.r4.model.Enumerations.DocumentReferenceStatus;
import org.hl7.fhir.r4.model.Organization;
import org.hl7.fhir.r4.model.Patient;
import org.hl7.fhir.r4.model.Practitioner;
import org.junit.Assert;
import org.junit.Test;

import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotType1;
import arztis.econnector.ihe.queries.common.ObjectIds;
import arztis.econnector.ihe.queries.common.QueryPartFactory;
import arztis.econnector.ihe.utilities.IheConstants;
import arztis.econnector.rest.model.fhir.FhirBundle;
import arztis.econnector.rest.utilities.ElgaTypeConverter;

/**
 * The Class MetadataConverterTest.
 */
public class MetadataConverterTest {

	/** The Constant SAMPLE_OID. */
	private static final String SAMPLE_OID = "1.2.40.0.34.6.7";
	
	/** The Constant SAMPLE_ID. */
	private static final String SAMPLE_ID = "urn:uuid:8c165cbd-45e3-4282-baa0-0f21d0004424";
	
	/** The Constant SAMPLE_E_MED_ID. */
	private static final String SAMPLE_E_MED_ID = "1.2.40.0.10.1.4.3.4.2.1^7E36MJHP949S";
	
	/** The Constant SAMPLE_HOME_COMMUNITY_ID. */
	private static final String SAMPLE_HOME_COMMUNITY_ID = "urn:oid:1.2.40.0.34.3.9.107";
	
	/** The Constant SNOMED_CT_OID. */
	private static final String SNOMED_CT_OID = "2.16.840.1.113883.6.1";
	
	/** The Constant OBJECT_ID. */
	private static final String OBJECT_ID = "urn:uuid:34268e47-fdf5-41a6-ba33-82133c465248";
	
	/** The Constant ELGA_MEDIKATION_NAME. */
	private static final String ELGA_MEDIKATION_NAME = "ELGA e-Medikation v2.06";
	
	/** The Constant SERVICE_START_TIME_LITERAL. */
	private static final String SERVICE_START_TIME_LITERAL = "serviceStartTime";
	
	/** The Constant SERVICE_STOP_TIME_LITERAL. */
	private static final String SERVICE_STOP_TIME_LITERAL = "serviceStopTime";
	
	/** The Constant SERVICE_CREATION_TIME_LITERAL. */
	private static final String SERVICE_CREATION_TIME_LITERAL = "creationTime";
	
	/** The Constant SOURCE_PATIENT_INFO_LITERAL. */
	private static final String SOURCE_PATIENT_INFO_LITERAL = "sourcePatientInfo";
	
	/** The Constant CODING_SCHEME_LITERAL. */
	private static final String CODING_SCHEME_LITERAL = "codingScheme";
	
	/** The Constant SOZIALVERSICHERUNG. */
	private static final String SOZIALVERSICHERUNG = "Sozialversicherung";
	
	/** The Constant EN_US. */
	private static final String EN_US = "en-US";
	
	/** The Constant TEXT_XML. */
	private static final String TEXT_XML = "text/xml";
	
	/** The Constant FORMAT_CODE_EMEDAT. */
	private static final String FORMAT_CODE_EMEDAT = "urn:elga:emedat:2015-v2.06";
	
	/** The Constant STATUS_APPROVED. */
	private static final String STATUS_APPROVED = "urn:oasis:names:tc:ebxml-regrep:StatusType:Approved";
	
	/** The Constant SAMPLE_PID5_ELEMENT. */
	private static final String SAMPLE_PID5_ELEMENT = "PID-5|Random^Tom^^^Dr.";
	
	/** The Constant SAMPLE_PID3_ELEMENT. */
	private static final String SAMPLE_PID3_ELEMENT = "PID-3|1001210995^^^&amp;1.2.40.0.10.1.4.3.1&amp;ISO";
	
	/** The Constant SAMPLE_PID7_ELEMENT. */
	private static final String SAMPLE_PID7_ELEMENT = "PID-7|19800328000000";
	
	/** The Constant SAMPLE_PID8_ELEMENT. */
	private static final String SAMPLE_PID8_ELEMENT = "PID-8|M";
	
	/** The Constant SAMPLE_PID11_ELEMENT. */
	private static final String SAMPLE_PID11_ELEMENT = "PID-11|Mustergasse 11^^Wien^W^1230^Austria";

	/**
	 * Adds the base value to extrinsic object.
	 *
	 * @param extrinsicObject the extrinsic object
	 */
	private void addBaseValueToExtrinsicObject(ExtrinsicObjectType extrinsicObject) {
		extrinsicObject.setId(SAMPLE_ID);
		extrinsicObject.setHome(SAMPLE_HOME_COMMUNITY_ID);
		extrinsicObject.setMimeType(TEXT_XML);
		extrinsicObject.setObjectType(OBJECT_ID);
		extrinsicObject.setStatus(STATUS_APPROVED);
	}

	/**
	 * Adds the source patient info to extrinsic object.
	 *
	 * @param extrinsicObject the extrinsic object
	 * @param index the index
	 */
	private void addSourcePatientInfoToExtrinsicObject(ExtrinsicObjectType extrinsicObject, int index) {
		List<String> values = new ArrayList<>();
		values.add(SAMPLE_PID3_ELEMENT);
		values.add(SAMPLE_PID5_ELEMENT);
		values.add(SAMPLE_PID7_ELEMENT);
		values.add(SAMPLE_PID8_ELEMENT);
		values.add(SAMPLE_PID11_ELEMENT);
		extrinsicObject.addNewSlot();
		extrinsicObject.setSlotArray(index,
				QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), SOURCE_PATIENT_INFO_LITERAL));
	}

	/**
	 * Adds the times to extrinsic object.
	 *
	 * @param extrinsicObject the extrinsic object
	 * @param index the index
	 */
	private void addTimesToExtrinsicObject(ExtrinsicObjectType extrinsicObject, int index) {
		List<String> values = new ArrayList<>();
		values.add("20160308170232");
		extrinsicObject.addNewSlot();
		extrinsicObject.setSlotArray(index,
				QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), SERVICE_START_TIME_LITERAL));

		values.clear();
		values.add("20160308170232");
		extrinsicObject.addNewSlot();
		extrinsicObject.setSlotArray(index + 1,
				QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), SERVICE_STOP_TIME_LITERAL));

		values.clear();
		values.add("20160308160232");
		extrinsicObject.addNewSlot();
		extrinsicObject.setSlotArray(index + 2, QueryPartFactory
				.generateSlot(QueryPartFactory.generateValueList(values), SERVICE_CREATION_TIME_LITERAL));
	}

	/**
	 * Creates the dummy registry object list.
	 *
	 * @return the registry object list type
	 */
	private RegistryObjectListType createDummyRegistryObjectList() {
		RegistryObjectListType registryObject = RegistryObjectListType.Factory.newInstance();
		ExtrinsicObjectType extrinsicObject = ExtrinsicObjectType.Factory.newInstance();

		addBaseValueToExtrinsicObject(extrinsicObject);

		List<String> values = new ArrayList<>();
		values.add("de-AT");
		extrinsicObject.addNewSlot();
		extrinsicObject.setSlotArray(0,
				QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), "languageCode"));

		addTimesToExtrinsicObject(extrinsicObject, 1);

		values.clear();
		values.add("BPKGH^^^&amp;1.2.40.0.10.2.1.1.149&amp;ISO");
		extrinsicObject.addNewSlot();
		extrinsicObject.setSlotArray(4,
				QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), "sourcePatientId"));

		addSourcePatientInfoToExtrinsicObject(extrinsicObject, 5);

		values.clear();
		values.add(SAMPLE_OID);
		extrinsicObject.addNewSlot();
		extrinsicObject.setSlotArray(6,
				QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), "repositoryUniqueId"));

		values.clear();
		values.add("9999^Mayer^Franz^^^^^^&amp;1.2.40.0.34.99.111.1.3&amp;ISO");
		extrinsicObject.addNewSlot();
		extrinsicObject.setSlotArray(7,
				QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), "legalAuthenticator"));

		values.clear();
		values.add(
				"2b03875e-512f-406d-93f8-0e9257329331^^^&amp;1.2.40.0.10.1.4.3.4.2.1&amp;ISO^urn:elga:iti:xds:2014:ownDocument_setId^&amp;1.2.40.0.34.3.9.107&amp;ISO");
		extrinsicObject.addNewSlot();
		extrinsicObject.setSlotArray(8, QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values),
				"urn:ihe:iti:xds:2013:referenceIdList"));

		extrinsicObject.setName(
				QueryPartFactory.generateInternationalString("Medikationsliste", EN_US, StandardCharsets.UTF_8.name()));

		List<SlotType1> slots = new ArrayList<>();
		values.clear();
		values.add("16.1.2.0^ELGA Anwendung e-Medikation");
		slots.add(QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), "authorPerson"));
		values.clear();
		values.add("ELGA Anwendung e-Medikation^^^^^^^^^1.2.40.0.34.3.9.107");
		slots.add(QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), "authorInstitution"));
		values.clear();
		values.add("700");
		slots.add(QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), "authorRole"));
		slots.add(QueryPartFactory.generateSlot(null, "authorSpecialty"));

		extrinsicObject.addNewClassification();
		extrinsicObject.setClassificationArray(0, QueryPartFactory.generateClassification(
				ObjectIds.CLASSIFICATION_SCHEME_AUTHOR_EXTERNAL_DOCUMENT_ENTRY_CODE, SAMPLE_ID, null, "", slots, null));

		slots.clear();
		values.clear();
		values.add(SNOMED_CT_OID);
		slots.add(QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), CODING_SCHEME_LITERAL));
		extrinsicObject.addNewClassification();
		extrinsicObject.setClassificationArray(1, QueryPartFactory.generateClassification(
				ObjectIds.CLASSIFICATION_SCHEME_CLASS_CODE_CODE, SAMPLE_ID, null, "52471-0", slots,
				QueryPartFactory.generateInternationalString("Medications", EN_US, StandardCharsets.UTF_8.name())));

		slots.clear();
		values.clear();
		values.add("urn:oid:1.2.40.0.34.5.37");
		slots.add(QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), CODING_SCHEME_LITERAL));
		extrinsicObject.addNewClassification();
		extrinsicObject.setClassificationArray(2,
				QueryPartFactory.generateClassification(ObjectIds.CLASSIFICATION_SCHEME_FORMAT_CODE_CODE, SAMPLE_ID,
						null, FORMAT_CODE_EMEDAT, slots, QueryPartFactory.generateInternationalString(
								ELGA_MEDIKATION_NAME, EN_US, StandardCharsets.UTF_8.name())));

		slots.clear();
		values.clear();
		values.add("urn:oid:1.2.40.0.34.5.2");
		slots.add(QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), CODING_SCHEME_LITERAL));
		extrinsicObject.addNewClassification();
		extrinsicObject.setClassificationArray(3,
				QueryPartFactory.generateClassification(ObjectIds.CLASSIFICATION_SCHEME_HEALTHCAREFACILITY_CODE_CODE,
						SAMPLE_ID, null, "406", slots, QueryPartFactory.generateInternationalString(SOZIALVERSICHERUNG,
								EN_US, StandardCharsets.UTF_8.name())));

		slots.clear();
		values.clear();
		values.add("urn:oid:1.2.40.0.34.5.12");
		slots.add(QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), CODING_SCHEME_LITERAL));
		extrinsicObject.addNewClassification();
		extrinsicObject.setClassificationArray(4,
				QueryPartFactory.generateClassification(ObjectIds.CLASSIFICATION_SCHEME_PRACTICESETTING_CODE_CODE,
						SAMPLE_ID, null, "F023", slots, QueryPartFactory.generateInternationalString(
								"Interdisziplinärer Bereich", EN_US, StandardCharsets.UTF_8.name())));

		slots.clear();
		values.clear();
		values.add(SNOMED_CT_OID);
		slots.add(QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), CODING_SCHEME_LITERAL));
		extrinsicObject.addNewClassification();
		extrinsicObject.setClassificationArray(5,
				QueryPartFactory.generateClassification(ObjectIds.CLASSIFICATION_SCHEME_TYPE_CODE_CODE, SAMPLE_ID, null,
						"56445-0", slots, QueryPartFactory.generateInternationalString("Medication summary Document",
								EN_US, StandardCharsets.UTF_8.name())));

		slots.clear();
		values.clear();
		values.add("urn:oid:2.16.840.1.113883.5.25");
		slots.add(QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), CODING_SCHEME_LITERAL));
		extrinsicObject.addNewClassification();
		extrinsicObject.setClassificationArray(6,
				QueryPartFactory.generateClassification(ObjectIds.CLASSIFICATION_SCHEME_CONFIDENTIALITY_CODE_CODE,
						SAMPLE_ID, null, "N", slots,
						QueryPartFactory.generateInternationalString("normal", EN_US, StandardCharsets.UTF_8.name())));

		slots.clear();
		values.clear();
		values.add("urn:oid:1.2.40.0.10.1.4.3.4.3.3");
		slots.add(QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), CODING_SCHEME_LITERAL));
		extrinsicObject.addNewClassification();
		extrinsicObject.setClassificationArray(7, QueryPartFactory.generateClassification(
				ObjectIds.CLASSIFICATION_SCHEME_EVENTCODELIST_CODE_CODE, SAMPLE_ID, null, "KASSEN", slots,
				QueryPartFactory.generateInternationalString("Kassenrezept", EN_US, StandardCharsets.UTF_8.name())));

		extrinsicObject.addNewExternalIdentifier();
		extrinsicObject.setExternalIdentifierArray(0,
				QueryPartFactory.generateExternalIdentifier(ObjectIds.EXTERNAL_IDENTIFIER_PATIENTID_DOCUMENT_CODE,
						SAMPLE_ID, "BPKGH^^^&amp;1.2.40.0.10.2.1.1.149&amp;ISO", null,
						QueryPartFactory.generateInternationalString("XDSDocumentEntry.patientId", null, null)));

		extrinsicObject.addNewExternalIdentifier();
		extrinsicObject.setExternalIdentifierArray(1,
				QueryPartFactory.generateExternalIdentifier(ObjectIds.EXTERNAL_IDENTIFIER_UNIQUEID_DOCUMENT_CODE,
						SAMPLE_ID, SAMPLE_E_MED_ID, null,
						QueryPartFactory.generateInternationalString("XDSDocumentEntry.uniqueId", null, null)));

		registryObject.addNewExtrinsicObject();
		registryObject.setExtrinsicObjectArray(0, extrinsicObject);

		return registryObject;

	}

	/**
	 * Creates the dummy registry object list with invalid date values.
	 *
	 * @return the registry object list type
	 */
	private RegistryObjectListType createDummyRegistryObjectListWithInvalidDateValues() {
		RegistryObjectListType registryObject = RegistryObjectListType.Factory.newInstance();
		ExtrinsicObjectType extrinsicObject = ExtrinsicObjectType.Factory.newInstance();

		addBaseValueToExtrinsicObject(extrinsicObject);

		List<String> values = new ArrayList<>();
		values.add("avc");
		extrinsicObject.addNewSlot();
		extrinsicObject.setSlotArray(0,
				QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), SERVICE_START_TIME_LITERAL));

		values.clear();
		values.add("2016a");
		extrinsicObject.addNewSlot();
		extrinsicObject.setSlotArray(1,
				QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), SERVICE_STOP_TIME_LITERAL));

		values.clear();
		values.add("2016ee");
		extrinsicObject.addNewSlot();
		extrinsicObject.setSlotArray(2, QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values),
				SERVICE_CREATION_TIME_LITERAL));

		values.clear();
		values.add(SAMPLE_PID3_ELEMENT);
		values.add(SAMPLE_PID5_ELEMENT);
		values.add("PID-7|19800badf");
		values.add("PID-8|F");
		values.add(SAMPLE_PID11_ELEMENT);
		extrinsicObject.addNewSlot();
		extrinsicObject.setSlotArray(3,
				QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(values), SOURCE_PATIENT_INFO_LITERAL));

		registryObject.addNewExtrinsicObject();
		registryObject.setExtrinsicObjectArray(0, extrinsicObject);

		return registryObject;
	}

	/**
	 * Creates the dummy registry object list only with date values.
	 *
	 * @return the registry object list type
	 */
	private RegistryObjectListType createDummyRegistryObjectListOnlyWithDateValues() {
		RegistryObjectListType registryObject = RegistryObjectListType.Factory.newInstance();
		ExtrinsicObjectType extrinsicObject = ExtrinsicObjectType.Factory.newInstance();

		addBaseValueToExtrinsicObject(extrinsicObject);

		addTimesToExtrinsicObject(extrinsicObject, 0);

		addSourcePatientInfoToExtrinsicObject(extrinsicObject, 3);

		extrinsicObject.addNewExternalIdentifier();
		extrinsicObject.setExternalIdentifierArray(0,
				QueryPartFactory.generateExternalIdentifier(ObjectIds.EXTERNAL_IDENTIFIER_PATIENTID_DOCUMENT_CODE,
						SAMPLE_ID, "1001210995^^^&amp;1.2.40.0.10.1.4.3.1&amp;ISO", null,
						QueryPartFactory.generateInternationalString("XDSDocumentEntry.patientId", null, null)));

		registryObject.addNewExtrinsicObject();
		registryObject.setExtrinsicObjectArray(0, extrinsicObject);

		return registryObject;
	}

	/**
	 * Creates the dummy registry object list empty date values.
	 *
	 * @return the registry object list type
	 */
	private RegistryObjectListType createDummyRegistryObjectListEmptyDateValues() {
		RegistryObjectListType registryObject = RegistryObjectListType.Factory.newInstance();
		ExtrinsicObjectType extrinsicObject = ExtrinsicObjectType.Factory.newInstance();

		addBaseValueToExtrinsicObject(extrinsicObject);

		extrinsicObject.addNewSlot();
		extrinsicObject.setSlotArray(0,
				QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(null), SERVICE_START_TIME_LITERAL));

		extrinsicObject.addNewSlot();
		extrinsicObject.setSlotArray(1,
				QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(null), SERVICE_STOP_TIME_LITERAL));

		extrinsicObject.addNewSlot();
		extrinsicObject.setSlotArray(2,
				QueryPartFactory.generateSlot(QueryPartFactory.generateValueList(null), SERVICE_CREATION_TIME_LITERAL));

		registryObject.addNewExtrinsicObject();
		registryObject.setExtrinsicObjectArray(0, extrinsicObject);

		return registryObject;
	}

	/**
	 * Creates the dummy registry object list with empty classification.
	 *
	 * @return the registry object list type
	 */
	private RegistryObjectListType createDummyRegistryObjectListWithEmptyClassification() {
		RegistryObjectListType registryObject = RegistryObjectListType.Factory.newInstance();
		ExtrinsicObjectType extrinsicObject = ExtrinsicObjectType.Factory.newInstance();

		addBaseValueToExtrinsicObject(extrinsicObject);

		List<SlotType1> slots = new ArrayList<>();
		extrinsicObject.addNewClassification();
		extrinsicObject.setClassificationArray(0,
				QueryPartFactory.generateClassification(ObjectIds.CLASSIFICATION_SCHEME_FORMAT_CODE_CODE, SAMPLE_ID,
						null, FORMAT_CODE_EMEDAT, slots, QueryPartFactory.generateInternationalString(
								ELGA_MEDIKATION_NAME, EN_US, StandardCharsets.UTF_8.name())));

		extrinsicObject.addNewClassification();
		extrinsicObject.setClassificationArray(1,
				QueryPartFactory.generateClassification(ObjectIds.CLASSIFICATION_SCHEME_HEALTHCAREFACILITY_CODE_CODE,
						SAMPLE_ID, null, "406", null, QueryPartFactory.generateInternationalString(SOZIALVERSICHERUNG,
								EN_US, StandardCharsets.UTF_8.name())));

		registryObject.addNewExtrinsicObject();
		registryObject.setExtrinsicObjectArray(0, extrinsicObject);

		return registryObject;

	}

	/**
	 * Test convert registry object to metadata.
	 */
	@Test
	public void testConvertRegistryObjectToMetadata() {
		RegistryObjectListType registryObjectList = createDummyRegistryObjectList();
		FhirBundle bundle = ElgaTypeConverter.createFhirBundleOfRegistryObjectToMetadata(registryObjectList);

		assertNotNull(bundle);
		assertEquals(6, bundle.getEntry().size());

		for (BundleEntryComponent comp : bundle.getEntry()) {
			if (comp != null && comp.getResource() != null) {
				if (comp.getResource().getResourceType().equals(org.hl7.fhir.r4.model.ResourceType.DocumentReference)) {
					DocumentReference documentReference = (DocumentReference) comp.getResource();

					Assert.assertEquals("de-AT", documentReference.getLanguage());
					Assert.assertEquals(SAMPLE_E_MED_ID, documentReference.getMasterIdentifier().getValue());
					Assert.assertEquals("Medikationsliste", documentReference.getDescription());

					Assert.assertEquals("52471-0",
							documentReference.getCategoryFirstRep().getCodingFirstRep().getCode());
					Assert.assertEquals(SNOMED_CT_OID,
							documentReference.getCategoryFirstRep().getCodingFirstRep().getSystem());
					Assert.assertEquals("Medications",
							documentReference.getCategoryFirstRep().getCodingFirstRep().getDisplay());

					Assert.assertEquals("56445-0", documentReference.getType().getCodingFirstRep().getCode());
					Assert.assertEquals(SNOMED_CT_OID, documentReference.getType().getCodingFirstRep().getSystem());
					Assert.assertEquals("Medication summary Document",
							documentReference.getType().getCodingFirstRep().getDisplay());

					Assert.assertEquals("N",
							documentReference.getSecurityLabelFirstRep().getCodingFirstRep().getCode());
					Assert.assertEquals("normal",
							documentReference.getSecurityLabelFirstRep().getCodingFirstRep().getDisplay());

					Assert.assertEquals(DocumentReferenceStatus.CURRENT, documentReference.getStatus());

					Assert.assertEquals(new Date(1457452952000L), documentReference.getDate());

					assertTrue(documentReference.hasContent());
					assertTrue(documentReference.getContentFirstRep().hasAttachment());
					assertTrue(
							documentReference.getContentFirstRep().getAttachment().getUrl().contains(SAMPLE_E_MED_ID));
					assertTrue(documentReference.getContentFirstRep().getAttachment().getUrl().contains(SAMPLE_OID));
					assertTrue(documentReference.getContentFirstRep().getAttachment().getUrl()
							.contains(SAMPLE_HOME_COMMUNITY_ID));

					Assert.assertEquals(FORMAT_CODE_EMEDAT,
							documentReference.getContentFirstRep().getFormat().getCode());
					Assert.assertEquals("1.2.40.0.34.5.37",
							documentReference.getContentFirstRep().getFormat().getSystem());
					Assert.assertEquals(ELGA_MEDIKATION_NAME,
							documentReference.getContentFirstRep().getFormat().getDisplay());

					assertTrue(documentReference.hasContext());

					Assert.assertEquals("406",
							documentReference.getContext().getFacilityType().getCodingFirstRep().getCode());
					Assert.assertEquals("1.2.40.0.34.5.2",
							documentReference.getContext().getFacilityType().getCodingFirstRep().getSystem());
					Assert.assertEquals(SOZIALVERSICHERUNG,
							documentReference.getContext().getFacilityType().getCodingFirstRep().getDisplay());

					Assert.assertEquals("F023",
							documentReference.getContext().getPracticeSetting().getCodingFirstRep().getCode());
					Assert.assertEquals("1.2.40.0.34.5.12",
							documentReference.getContext().getPracticeSetting().getCodingFirstRep().getSystem());
					Assert.assertEquals("Interdisziplinärer Bereich",
							documentReference.getContext().getPracticeSetting().getCodingFirstRep().getDisplay());

					Assert.assertEquals("KASSEN",
							documentReference.getContext().getEventFirstRep().getCodingFirstRep().getCode());
					Assert.assertEquals("1.2.40.0.10.1.4.3.4.3.3",
							documentReference.getContext().getEventFirstRep().getCodingFirstRep().getSystem());
					Assert.assertEquals("Kassenrezept",
							documentReference.getContext().getEventFirstRep().getCodingFirstRep().getDisplay());

					Assert.assertEquals(new Date(1457456552000L),
							documentReference.getContext().getPeriod().getStart());
					Assert.assertEquals(new Date(1457456552000L), documentReference.getContext().getPeriod().getEnd());

					assertNotNull(documentReference.getSubject());
					assertEquals("Patient/0-1", documentReference.getSubject().getReference());

					assertNotNull(documentReference.getAuthenticator());
					assertEquals("Practitioner/0-1", documentReference.getAuthenticator().getReference());

					assertNotNull(documentReference.getSubject());
					assertEquals("PractitionerRole/0-2", documentReference.getAuthorFirstRep().getReference());
				} else if (comp.getResource().getResourceType().equals(org.hl7.fhir.r4.model.ResourceType.Patient)) {
					Patient patient = (Patient) comp.getResource();

					assertEquals("0-1", patient.getId());
					Assert.assertNotNull(patient.getIdentifier());
					Assert.assertEquals(3, patient.getIdentifier().size());
					Assert.assertEquals("BPKGH", patient.getIdentifier().get(0).getValue());
					Assert.assertEquals("1.2.40.0.10.2.1.1.149", patient.getIdentifier().get(0).getSystem());
					Assert.assertEquals("1001210995", patient.getIdentifier().get(1).getValue());
					Assert.assertEquals(IheConstants.OID_SVNR, patient.getIdentifier().get(1).getSystem());

					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					Assert.assertEquals("1980-03-28", sdf.format(patient.getBirthDate()));
				} else if (comp.getResource().getResourceType()
						.equals(org.hl7.fhir.r4.model.ResourceType.Practitioner)) {
					Practitioner practitioner = (Practitioner) comp.getResource();

					assertTrue(practitioner.getId().contains("0-"));

					if (practitioner.getId().equalsIgnoreCase("0-1")) {
						assertEquals("0-1", practitioner.getId());
						Assert.assertEquals("Franz", practitioner.getNameFirstRep().getGivenAsSingleString());
						Assert.assertEquals("Mayer", practitioner.getNameFirstRep().getFamily());
					} else if (practitioner.getId().equalsIgnoreCase("0-2")) {
						assertEquals("0-2", practitioner.getId());
						assertEquals("ELGA Anwendung e-Medikation", practitioner.getNameFirstRep().getFamily());
						assertFalse(practitioner.getNameFirstRep().hasGiven());
					}
				} else if (comp.getResource().getResourceType()
						.equals(org.hl7.fhir.r4.model.ResourceType.PractitionerRole)) {
					org.hl7.fhir.r4.model.PractitionerRole practitionerRole = (org.hl7.fhir.r4.model.PractitionerRole) comp
							.getResource();

					assertEquals("0-2", practitionerRole.getId());
					assertNotNull(practitionerRole.getOrganization());
					assertEquals("Organization/0-2", practitionerRole.getOrganization().getReference());
					assertNotNull(practitionerRole.getPractitioner());
					assertEquals("Practitioner/0-2", practitionerRole.getPractitioner().getReference());

					Assert.assertEquals("700", practitionerRole.getCodeFirstRep().getCodingFirstRep().getCode());
				} else if (comp.getResource().getResourceType()
						.equals(org.hl7.fhir.r4.model.ResourceType.Organization)) {
					Organization organization = (Organization) comp.getResource();

					assertEquals("0-2", organization.getId());
					Assert.assertEquals("ELGA Anwendung e-Medikation", organization.getName());
				}
			}
		}

	}

	/**
	 * Test convert registry object with invalid date values to metadata.
	 */
	@Test
	public void testConvertRegistryObjectWithInvalidDateValuesToMetadata() {
		RegistryObjectListType registryObjectList = createDummyRegistryObjectListWithInvalidDateValues();
		FhirBundle bundle = ElgaTypeConverter.createFhirBundleOfRegistryObjectToMetadata(registryObjectList);

		assertNotNull(bundle);
		assertEquals(3, bundle.getEntry().size());

		for (BundleEntryComponent comp : bundle.getEntry()) {
			if (comp != null && comp.getResource() != null) {
				if (comp.getResource().getResourceType().equals(org.hl7.fhir.r4.model.ResourceType.DocumentReference)) {
					DocumentReference documentReference = (DocumentReference) comp.getResource();

					Assert.assertEquals(DocumentReferenceStatus.CURRENT, documentReference.getStatus());

					Assert.assertNull(documentReference.getDate());

					assertTrue(documentReference.hasContent());
					assertTrue(documentReference.getContentFirstRep().hasAttachment());
					assertTrue(documentReference.getContentFirstRep().getAttachment().getUrl()
							.contains(SAMPLE_HOME_COMMUNITY_ID));

					assertNull(documentReference.getContext().getPeriod().getStart());
					assertNull(documentReference.getContext().getPeriod().getEnd());

				} else if (comp.getResource().getResourceType().equals(org.hl7.fhir.r4.model.ResourceType.Patient)) {
					Patient patient = (Patient) comp.getResource();

					assertEquals("0-1", patient.getId());
					assertNull(patient.getBirthDate());
				}
			}
		}
	}

	/**
	 * Test convert registry object with empty date values to metadata.
	 */
	@Test
	public void testConvertRegistryObjectWithEmptyDateValuesToMetadata() {
		RegistryObjectListType registryObjectList = createDummyRegistryObjectListEmptyDateValues();
		FhirBundle bundle = ElgaTypeConverter.createFhirBundleOfRegistryObjectToMetadata(registryObjectList);

		assertNotNull(bundle);
		assertEquals(3, bundle.getEntry().size());

		for (BundleEntryComponent comp : bundle.getEntry()) {
			if (comp != null && comp.getResource() != null) {
				if (comp.getResource().getResourceType().equals(org.hl7.fhir.r4.model.ResourceType.DocumentReference)) {
					DocumentReference documentReference = (DocumentReference) comp.getResource();

					Assert.assertEquals(DocumentReferenceStatus.CURRENT, documentReference.getStatus());

					Assert.assertNull(documentReference.getDate());

					assertTrue(documentReference.hasContent());
					assertTrue(documentReference.getContentFirstRep().hasAttachment());
					assertTrue(documentReference.getContentFirstRep().getAttachment().getUrl()
							.contains(SAMPLE_HOME_COMMUNITY_ID));

					assertNull(documentReference.getContext().getPeriod().getStart());
					assertNull(documentReference.getContext().getPeriod().getEnd());

				} else if (comp.getResource().getResourceType().equals(org.hl7.fhir.r4.model.ResourceType.Patient)) {
					Patient patient = (Patient) comp.getResource();

					assertEquals("0-1", patient.getId());
					assertNull(patient.getBirthDate());
				}
			}
		}
	}

	/**
	 * Test convert registry object only with date values to metadata.
	 */
	@Test
	public void testConvertRegistryObjectOnlyWithDateValuesToMetadata() {
		RegistryObjectListType registryObjectList = createDummyRegistryObjectListOnlyWithDateValues();
		FhirBundle bundle = ElgaTypeConverter.createFhirBundleOfRegistryObjectToMetadata(registryObjectList);

		assertNotNull(bundle);
		assertEquals(3, bundle.getEntry().size());

		for (BundleEntryComponent comp : bundle.getEntry()) {
			if (comp != null && comp.getResource() != null) {
				if (comp.getResource().getResourceType().equals(org.hl7.fhir.r4.model.ResourceType.DocumentReference)) {
					DocumentReference documentReference = (DocumentReference) comp.getResource();

					Assert.assertEquals(DocumentReferenceStatus.CURRENT, documentReference.getStatus());

					assertEquals(new Date(1457452952000L), documentReference.getDate());

					assertTrue(documentReference.hasContent());
					assertTrue(documentReference.getContentFirstRep().hasAttachment());
					assertTrue(documentReference.getContentFirstRep().getAttachment().getUrl()
							.contains(SAMPLE_HOME_COMMUNITY_ID));

					assertEquals(new Date(1457456552000L), documentReference.getContext().getPeriod().getStart());
					assertEquals(new Date(1457456552000L), documentReference.getContext().getPeriod().getEnd());

				} else if (comp.getResource().getResourceType().equals(org.hl7.fhir.r4.model.ResourceType.Patient)) {
					Patient patient = (Patient) comp.getResource();

					assertEquals("0-1", patient.getId());
					Assert.assertNotNull(patient.getIdentifier());
					Assert.assertEquals(2, patient.getIdentifier().size());
					Assert.assertEquals("1001210995", patient.getIdentifier().get(0).getValue());
					Assert.assertEquals(IheConstants.OID_SVNR, patient.getIdentifier().get(0).getSystem());

					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					Assert.assertEquals("1980-03-28", sdf.format(patient.getBirthDate()));

					assertEquals(org.hl7.fhir.r4.model.Enumerations.AdministrativeGender.MALE, patient.getGender());

					assertNotNull(patient.getAddressFirstRep());
					assertEquals("[Mustergasse 11]", patient.getAddressFirstRep().getLine().toString());
					assertEquals("Wien", patient.getAddressFirstRep().getCity());

				}
			}
		}
	}

	/**
	 * Test convert registry object with empty classifications to metadata.
	 */
	@Test
	public void testConvertRegistryObjectWithEmptyClassificationsToMetadata() {
		RegistryObjectListType registryObjectList = createDummyRegistryObjectListWithEmptyClassification();
		FhirBundle bundle = ElgaTypeConverter.createFhirBundleOfRegistryObjectToMetadata(registryObjectList);

		assertNotNull(bundle);
		assertEquals(3, bundle.getEntry().size());

		for (BundleEntryComponent comp : bundle.getEntry()) {
			if (comp != null && comp.getResource() != null && comp.getResource().getResourceType()
					.equals(org.hl7.fhir.r4.model.ResourceType.DocumentReference)) {
				DocumentReference documentReference = (DocumentReference) comp.getResource();

				Assert.assertEquals(DocumentReferenceStatus.CURRENT, documentReference.getStatus());

				assertTrue(documentReference.hasContent());
				assertNotNull(documentReference.getContentFirstRep().getFormat());
				assertEquals(FORMAT_CODE_EMEDAT, documentReference.getContentFirstRep().getFormat().getCode());
				assertEquals(ELGA_MEDIKATION_NAME, documentReference.getContentFirstRep().getFormat().getDisplay());

				assertTrue(documentReference.hasContext());
				assertEquals("406", documentReference.getContext().getFacilityType().getCodingFirstRep().getCode());
				assertEquals(SOZIALVERSICHERUNG,
						documentReference.getContext().getFacilityType().getCodingFirstRep().getDisplay());

				assertTrue(documentReference.hasContent());
				assertTrue(documentReference.getContentFirstRep().getAttachment().getUrl()
						.contains(SAMPLE_HOME_COMMUNITY_ID));
			}
		}
	}

	/**
	 * Test convert empty registry object to metadata.
	 */
	@Test
	public void testConvertEmptyRegistryObjectToMetadata() {
		RegistryObjectListType registryObjectList = RegistryObjectListType.Factory.newInstance();
		FhirBundle bundle = ElgaTypeConverter.createFhirBundleOfRegistryObjectToMetadata(registryObjectList);

		assertNotNull(bundle);
		assertEquals(0, bundle.getEntry().size());
	}

}
