/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest.model.fhir;

import java.util.Date;
import java.util.List;

import org.hl7.fhir.r4.model.Address;
import org.hl7.fhir.r4.model.ContactPoint;
import org.hl7.fhir.r4.model.Enumerations.AdministrativeGender;
import org.hl7.fhir.r4.model.HumanName;
import org.hl7.fhir.r4.model.Identifier;
import org.hl7.fhir.r4.model.Patient;
import org.husky.cda.elga.generated.artdecor.AtcdabbrHeaderRecordTargetEImpfpass;
import org.husky.cda.elga.generated.artdecor.base.HeaderRecordTarget;
import org.husky.cda.elga.generated.artdecor.enums.ElgaAdministrativeGender;
import org.husky.common.enums.NullFlavor;
import org.husky.common.hl7cdar2.AD;
import org.husky.common.hl7cdar2.CE;
import org.husky.common.hl7cdar2.II;
import org.husky.common.hl7cdar2.ObjectFactory;
import org.husky.common.hl7cdar2.PN;
import org.husky.common.hl7cdar2.POCDMT000040Guardian;
import org.husky.common.hl7cdar2.POCDMT000040Patient;
import org.husky.common.hl7cdar2.POCDMT000040PatientRole;
import org.husky.common.hl7cdar2.POCDMT000040Person;
import org.husky.common.hl7cdar2.POCDMT000040RecordTarget;
import org.husky.common.hl7cdar2.TEL;
import org.husky.common.hl7cdar2.TS;
import org.husky.common.model.Identificator;
import org.husky.fhir.structures.gen.FhirPatient;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.DocumentEntry;

import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalIdentifierType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotType1;
import arztis.econnector.ihe.queries.common.ObjectIds;
import arztis.econnector.ihe.utilities.CdaUtil;
import arztis.econnector.ihe.utilities.DateUtil;
import arztis.econnector.ihe.utilities.Hl7Utils;
import arztis.econnector.ihe.utilities.MetadataConverter;
import ca.uhn.fhir.model.api.annotation.ResourceDef;

/**
 * This class is used to pass details to query demographic data from patients in
 * ELGA. The class attributes restrict the search. It is important to restrict
 * the search of demographic data as much as possible to enable best possible
 * return value.
 *
 * @author Anna Jungwirth
 *
 */
@ResourceDef(name = "Patient", profile = "http://hl7.org/fhir/StructureDefinition/Patient")
public class FhirPatientAt extends org.hl7.fhir.r4.model.Patient {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public FhirPatientAt() {

	}

	/**
	 * Creates fhir patient instance.
	 *
	 * @param patientId id of patient
	 */
	public FhirPatientAt(Identificator patientId) {
		if (patientId != null) {
			Identifier id = new Identifier();
			id.setSystem(patientId.getRoot());
			id.setValue(patientId.getExtension());
			addIdentifier(id);
		}
	}

	/**
	 * Creates fhir patient instance from CDA record target element.
	 *
	 * @param target record target of CDA
	 * @param resourceId the resource id
	 */
	public FhirPatientAt(POCDMT000040RecordTarget target, String resourceId) {
		if (target != null && target.getPatientRole() != null) {

			setId(resourceId);
			if (target.getPatientRole().getPatient() != null
					&& target.getPatientRole().getPatient().getName() != null) {
				List<PN> names = target.getPatientRole().getPatient().getName();

				for (PN name : names) {
					if (name != null) {
						addName(new FhirHumanName(name));
					}
				}

				if (target.getPatientRole().getPatient().getAdministrativeGenderCode() != null) {
					setGender(convertAdministrativeGenderToFhirGender(
							target.getPatientRole().getPatient().getAdministrativeGenderCode().getCode()));
				}

				if (target.getPatientRole().getPatient().getBirthTime() != null) {
					setBirthDate(DateUtil
							.parseHl7Timestamp(target.getPatientRole().getPatient().getBirthTime().getValue()));
				}
			}

			if (target.getPatientRole().getAddr() != null) {
				for (AD ad : target.getPatientRole().getAddr()) {
					if (ad != null) {
						addAddress(new FhirAddress(ad));
					}
				}
			}

			if (target.getPatientRole().getTelecom() != null) {
				for (TEL tel : target.getPatientRole().getTelecom()) {
					if (tel != null) {
						addTelecom(new FhirContactPoint(tel));
					}
				}
			}

			if (target.getPatientRole().getId() != null) {
				for (II id : target.getPatientRole().getId()) {
					if (id != null) {
						addIdentifier(new FhirIdentifier(id));
					}
				}
			}
		}
	}

	/**
	 * Creates fhir patient instance.
	 *
	 * @param given     patient's given name
	 * @param family    patient's family name
	 * @param id        id of the patient
	 * @param gender    patient's gender
	 * @param birthDate patient's birth date
	 */
	public FhirPatientAt(String given, String family, Identifier id, AdministrativeGender gender, Date birthDate) {
		addName(given, family);
		addIdentifier(id);
		setGender(gender);
		setBirthTime(birthDate);
	}

	/**
	 * Constructor to create patient from ITI-18 response (Query document metadata).
	 *
	 * @param documentResponse the document response
	 * @param index         index of response. It must be build of {document
	 *                      response index} - {patient index}
	 */
	public FhirPatientAt(DocumentEntry documentResponse, String index) {
		fromDocumentEntryResponse(documentResponse, index);
	}

	/**
	 * Constructor to create patient from PHARM-1 response (Query pharmaceutical
	 * document metadata).
	 *
	 * @param extrinsicObject document reference response
	 * @param index           index of response. It must be build of {document
	 *                        response index} - {patient index}
	 */
	public FhirPatientAt(ExtrinsicObjectType extrinsicObject, String index) {
		fromExtrinsicObject(extrinsicObject, index);
	}

	/**
	 * Name of the patient to search. Given and family name will be used for the
	 * demographic search. Prefixes and suffixes won't be used.
	 *
	 * @param given  patient's given name
	 * @param family patient's family name
	 */
	public void addName(String given, String family) {
		HumanName name = new HumanName();
		name.addGiven(given);
		name.setFamily(family);
		addName(name);
	}

	/**
	 * Unique identifier of the patient. One of this identifier is for example the
	 * social security number. This parameter restricts the search as much as
	 * possible.
	 *
	 * @param id  id of the patient, e.g. 1001210995
	 * @param oid oid of the identificator system
	 */
	public void addIdentifier(String id, String oid) {
		Identifier identifier = new Identifier();
		identifier.setSystem(oid);
		identifier.setValue(id);
		addIdentifier(identifier);
	}

	/**
	 * Gender of the patient. Possible values are male, female and undifferentiated
	 * in ELGA.
	 *
	 * @param gender patient's gender
	 * @return this patient
	 */
	@Override
	public Patient setGender(AdministrativeGender gender) {
		getGenderElement().setValue(gender);
		return this;
	}

	/**
	 * The date of birth of the patient being sought.
	 *
	 * @param birthTime patient's birth date
	 */
	public void setBirthTime(Date birthTime) {
		setBirthDate(birthTime);
	}

	/**
	 * The address of the patient.
	 *
	 * @param addressline addressline of patient's address
	 * @param city        city of patient's address
	 * @param postalcode  postal code of patient's address
	 * @param country     country of patient's address
	 * @param state       state of patient's address
	 */
	public void addAddress(String addressline, String city, String postalcode, String country, String state) {
		org.hl7.fhir.r4.model.Address address = new org.hl7.fhir.r4.model.Address();
		address.setCountry(country);
		address.setCity(city);
		address.setPostalCode(postalcode);
		address.setState(state);
		address.addLine(addressline);
		addAddress(address);
	}

	/**
	 * From document entry response.
	 *
	 * @param documentEntry the document entry
	 * @param index the index
	 */
	private void fromDocumentEntryResponse(DocumentEntry documentEntry, String index) {
		if (documentEntry == null) {
			return;
		}

		setId(index);

		if (documentEntry.getPatientId() != null) {
			addIdentifier(documentEntry.getPatientId().getId(),
					documentEntry.getPatientId().getAssigningAuthority().getUniversalId());
		}

		if (documentEntry.getSourcePatientInfo() != null) {
			setGender(convertAdministrativeGenderToFhirGender(
					documentEntry.getSourcePatientInfo().getGender()));
		}
	}

	/**
	 * From extrinsic object.
	 *
	 * @param extrinsicObject the extrinsic object
	 * @param index the index
	 */
	private void fromExtrinsicObject(ExtrinsicObjectType extrinsicObject, String index) {
		if (extrinsicObject == null) {
			return;
		}

		setId(index);

		fromSlots(extrinsicObject.getSlotArray());
		convertExternalIdentifiers(extrinsicObject.getExternalIdentifierArray());
	}

	/**
	 * From slots.
	 *
	 * @param aSlots the a slots
	 */
	private void fromSlots(SlotType1[] aSlots) {
		if (aSlots == null) {
			return;
		}

		for (SlotType1 slot : aSlots) {
			switch (slot.getName()) {
			case "sourcePatientId":
				addIdentifier(Hl7Utils.extractHl7Cx(MetadataConverter.getStringFromSlot(slot)));
				break;
			case "sourcePatientInfo":
				extractSourcePatientInfo(MetadataConverter.getListOfStringsFromSlot(slot));
				break;
			default:
				break;
			}
		}

	}

	/**
	 * Convert external identifiers.
	 *
	 * @param identifiers the identifiers
	 */
	private void convertExternalIdentifiers(ExternalIdentifierType[] identifiers) {
		if (identifiers == null) {
			return;
		}

		for (ExternalIdentifierType id : identifiers) {
			if (id != null && ObjectIds.EXTERNAL_IDENTIFIER_PATIENTID_DOCUMENT_CODE
					.equalsIgnoreCase(id.getIdentificationScheme())) {
				addIdentifier(Hl7Utils.extractHl7Cx(id.getValue()));
			}
		}
	}

	/**
	 * Extract source patient info.
	 *
	 * @param values the values
	 */
	private void extractSourcePatientInfo(List<String> values) {
		for (String value : values) {
			if (value != null && value.contains("PID-3")) {
				addIdentifier(Hl7Utils.extractHl7Cx(value.substring(6)));
			} else if (value != null && value.contains("PID-5")) {
				addName(Hl7Utils.extractHl7Xcn(value.substring(6)));
			} else if (value != null && value.contains("PID-7")) {
				setBirthDate(DateUtil.parseHl7Timestamp(value.substring(6)));
			} else if (value != null && value.contains("PID-8")) {
				setGender(convertAdministrativeGenderToFhirGender(value.substring(6)));
			} else if (value != null && value.contains("PID-11")) {
				addAddress(Hl7Utils.extractHl7Xad(value.substring(7)));
			}
		}
	}

	/**
	 * Convert administrative gender to fhir gender.
	 *
	 * @param value the value
	 * @return the administrative gender
	 */
	private AdministrativeGender convertAdministrativeGenderToFhirGender(String value) {
		if (org.husky.common.enums.AdministrativeGender.MALE_CODE.equalsIgnoreCase(value)) {
			return AdministrativeGender.MALE;
		} else if (org.husky.common.enums.AdministrativeGender.FEMALE_CODE.equalsIgnoreCase(value)) {
			return AdministrativeGender.FEMALE;
		} else if (org.husky.common.enums.AdministrativeGender.UNDIFFERENTIATED_CODE
				.equalsIgnoreCase(value)) {
			return AdministrativeGender.OTHER;
		} else {
			return AdministrativeGender.UNKNOWN;
		}
	}

	/**
	 * Convert fhir gender to administrative gender.
	 *
	 * @param gender the gender
	 * @return the elga administrative gender
	 */
	private static ElgaAdministrativeGender convertFhirGenderToAdministrativeGender(AdministrativeGender gender) {
		switch (gender) {
		case MALE:
			return ElgaAdministrativeGender.MALE;
		case FEMALE:
			return ElgaAdministrativeGender.FEMALE;
		case OTHER:
			return ElgaAdministrativeGender.UNDIFFERENTIATED;
		default:
			return null;
		}
	}

	/**
	 * Gets the header record target.
	 *
	 * @param patient the patient
	 * @return the header record target
	 */
	public static HeaderRecordTarget getHeaderRecordTarget(Patient patient) {
		if (patient == null) {
			return null;
		}

		HeaderRecordTarget recordTarget = new HeaderRecordTarget();
		POCDMT000040PatientRole patientRole = recordTarget.getHl7PatientRole();

		if (patient.hasIdentifier()) {
			for (Identifier id : patient.getIdentifier()) {
				if (id != null) {
					patientRole.getId().add(FhirIdentifier.createHl7CdaR2Ii(id, null));
				}
			}
		}

		if (patient.hasAddress()) {
			for (Address ad : patient.getAddress()) {
				if (ad != null) {
					patientRole.getAddr().add(FhirAddress.createHl7CdaR2Ad(ad, null));
				}
			}
		}

		if (patient.hasTelecom()) {
			for (ContactPoint contact : patient.getTelecom()) {
				patientRole.getTelecom().add(FhirContactPoint.createHl7CdaR2Tel(contact, null));
			}
		}

		patientRole.setPatient(FhirPatientAt.getPOCDMT000040Patient(patient));
		recordTarget.setHl7PatientRole(patientRole);
		return recordTarget;
	}

	/**
	 * Gets the atcdabbr header record target E impfpass.
	 *
	 * @param patient the patient
	 * @return the atcdabbr header record target E impfpass
	 */
	public static AtcdabbrHeaderRecordTargetEImpfpass getAtcdabbrHeaderRecordTargetEImpfpass(Patient patient) {
		AtcdabbrHeaderRecordTargetEImpfpass recordTarget = new AtcdabbrHeaderRecordTargetEImpfpass();
		POCDMT000040PatientRole patientRole = recordTarget.getHl7PatientRole();

		if (patient == null) {
			return recordTarget;
		}

		if (patient.hasIdentifier()) {
			for (Identifier id : patient.getIdentifier()) {
				if (id != null) {
					patientRole.getId().add(FhirIdentifier.createHl7CdaR2Ii(id, NullFlavor.UNKNOWN));
				}
			}
		}

		if (patient.hasAddress()) {
			for (Address ad : patient.getAddress()) {
				if (ad != null) {
					patientRole.getAddr().add(FhirAddress.createHl7CdaR2Ad(ad, null));
				}
			}
		}

		if (patient.hasTelecom()) {
			for (ContactPoint contact : patient.getTelecom()) {
				patientRole.getTelecom().add(FhirContactPoint.createHl7CdaR2Tel(contact, null));
			}
		}

		patientRole.setPatient(getPOCDMT000040Patient(patient));
		recordTarget.setHl7PatientRole(patientRole);
		return recordTarget;
	}

	/**
	 * Gets the POCDMT 000040 patient.
	 *
	 * @param fhirPatient the fhir patient
	 * @return the POCDMT 000040 patient
	 */
	private static POCDMT000040Patient getPOCDMT000040Patient(Patient fhirPatient) {
		POCDMT000040Patient patient = new POCDMT000040Patient();
		patient.getClassCode().add("PSN");
		patient.setDeterminerCode(CdaUtil.DETERMINERCODE_INSTANCE);

		if (fhirPatient == null) {
			return patient;
		}

		if (fhirPatient.hasName()) {
			for (HumanName nam : fhirPatient.getName()) {
				if (nam != null) {
					patient.getName().add(FhirHumanName.createHl7CdaR2Pn(nam, null));
				}
			}
		}

		if (fhirPatient.hasGender()) {
			patient.setAdministrativeGenderCode(
					getGenderTag(convertFhirGenderToAdministrativeGender(fhirPatient.getGender())));
		} else {
			patient.getAdministrativeGenderCode().getNullFlavor().add("UNK");
		}

		if (fhirPatient.getBirthDate() != null) {
			TS birthTime = new TS();
			birthTime.setValue(DateUtil.formatDateOnly(fhirPatient.getBirthDate()));
			patient.setBirthTime(birthTime);
		}

		if (fhirPatient.hasContact()) {
			for (ContactComponent guardian : fhirPatient.getContact()) {
				if (guardian != null) {
					patient.getGuardian().add(getPOCDMT000040Guardian(guardian));
				}
			}
		}

		return patient;
	}

	/**
	 * Gets the POCDMT 000040 guardian.
	 *
	 * @param contactComponent the contact component
	 * @return the POCDMT 000040 guardian
	 */
	public static POCDMT000040Guardian getPOCDMT000040Guardian(ContactComponent contactComponent) {
		if (contactComponent == null) {
			return null;
		}

		ObjectFactory factory = new ObjectFactory();
		POCDMT000040Guardian guardian = factory.createPOCDMT000040Guardian();
		guardian.getClassCode().add("GUARD");

		if (contactComponent.hasAddress()) {
			guardian.getAddr().add(FhirAddress.createHl7CdaR2Ad(contactComponent.getAddress(), null));
		}

		if (contactComponent.hasTelecom()) {
			for (ContactPoint tel : contactComponent.getTelecom()) {
				if (tel != null) {
					guardian.getTelecom().add(FhirContactPoint.createHl7CdaR2Tel(tel, null));
				}
			}
		}

		if (contactComponent.hasOrganization()) {
			guardian.setGuardianOrganization(
					FhirOrganization.createHl7CdaR2Pocdmt000040Organization(contactComponent.getOrganizationTarget()));
		} else if (contactComponent.getName() != null) {
			POCDMT000040Person person = factory.createPOCDMT000040Person();
			person.setDeterminerCode(CdaUtil.DETERMINERCODE_INSTANCE);
			person.getClassCode().add("PSN");
			person.getName().add(FhirHumanName.createHl7CdaR2Pn(contactComponent.getName(), null));
			guardian.setGuardianPerson(person);
		}

		return guardian;
	}

	/**
	 * Gets the gender tag.
	 *
	 * @param genderEnum the gender enum
	 * @return the gender tag
	 */
	private static CE getGenderTag(ElgaAdministrativeGender genderEnum) {
		CE gender = new CE();

		if (genderEnum == null) {
			gender.getNullFlavor().add(NullFlavor.UNKNOWN_CODE);
			return gender;
		}

		gender.setCode(genderEnum.getCodeValue());
		gender.setCodeSystem(genderEnum.getCodeSystemId());
		gender.setCodeSystemName("HL7:AdministrativeGender");
		gender.setDisplayName(genderEnum.getDisplayName());
		return gender;
	}

	/**
	 * Gets the fhir patient.
	 *
	 * @param given the given
	 * @param family the family
	 * @param id the id
	 * @param gender the gender
	 * @param birthDate the birth date
	 * @return the fhir patient
	 */
	public static FhirPatient getFhirPatient(String given, String family, Identifier id,
			org.hl7.fhir.r4.model.Enumerations.AdministrativeGender gender, Date birthDate) {
		FhirPatient patient = new FhirPatient();

		if (family != null && !family.isEmpty()) {
			org.hl7.fhir.r4.model.HumanName name = new org.hl7.fhir.r4.model.HumanName();
			name.addGiven(given);
			name.setFamily(family);
			patient.addName(name);
		}

		if (id != null) {
			org.hl7.fhir.r4.model.Identifier patId = new org.hl7.fhir.r4.model.Identifier();
			patId.setValue(id.getValue());
			patId.setSystem(id.getSystem());
			patient.addIdentifier(patId);
		}

		patient.setGender(gender);

		patient.setBirthDate(birthDate);
		return patient;
	}
}
