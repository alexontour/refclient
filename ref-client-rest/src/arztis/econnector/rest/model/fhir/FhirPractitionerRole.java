package arztis.econnector.rest.model.fhir;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.ehealth_connector.cda.at.elga.v2019.AssignedEntityElements;
import org.ehealth_connector.cda.at.elga.v2019.HeaderAuthor;
import org.ehealth_connector.cda.at.elga.v2019.HeaderLegalAuthenticator;
import org.ehealth_connector.cda.at.elga.v2019.cdalab.LaboratoryPerformer2;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrHeaderAuthor;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrHeaderDataEnterer;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrOtherAuthorBodyEImpfpass;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrOtherPerformerBodyLaboratory;
import org.ehealth_connector.cda.at.elga.v2019.ps.AuthorBodyPs;
import org.ehealth_connector.common.Address;
import org.ehealth_connector.common.Code;
import org.ehealth_connector.common.Identificator;
import org.ehealth_connector.common.Telecom;
import org.ehealth_connector.common.at.enums.AuthorRole;
import org.ehealth_connector.common.at.enums.AuthorSpeciality;
import org.ehealth_connector.common.basetypes.AddressBaseType;
import org.ehealth_connector.common.enums.NullFlavor;
import org.ehealth_connector.common.hl7cdar2.AD;
import org.ehealth_connector.common.hl7cdar2.II;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040AssignedAuthor;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040AssignedEntity;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040AssociatedEntity;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Author;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040LegalAuthenticator;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Organization;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Participant1;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Performer2;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Person;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040ResponsibleParty;
import org.ehealth_connector.common.hl7cdar2.ParticipationPhysicalPerformer;
import org.ehealth_connector.common.hl7cdar2.TEL;
import org.ehealth_connector.common.hl7cdar2.TS;
import org.hl7.fhir.r4.model.Address.AddressUse;
import org.hl7.fhir.r4.model.CodeableConcept;
import org.hl7.fhir.r4.model.Coding;
import org.hl7.fhir.r4.model.ContactPoint;
import org.hl7.fhir.r4.model.Identifier;
import org.hl7.fhir.r4.model.PractitionerRole;
import org.hl7.fhir.r4.model.Reference;
import org.hl7.fhir.r4.model.Resource;
import org.openhealthtools.ihe.xds.metadata.impl.AuthorTypeImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.ihe.utilities.CdaUtil;
import arztis.econnector.rest.utilities.FhirUtil;
import ca.uhn.fhir.model.api.annotation.ResourceDef;

/**
 * This class is used to pass details to represent authors and legal
 * authenticators in ELGA documents. The class attributes restrict the search.
 * 
 * @author ET-Innovations
 *
 */
@ResourceDef(name = "PractitionerRole", profile = "http://hl7.org/fhir/StructureDefinition/PractitionerRole")
public class FhirPractitionerRole extends PractitionerRole {

	private static final long serialVersionUID = 1L;
	private static final Logger LOGGER = LoggerFactory.getLogger(FhirPractitionerRole.class.getName());
	private static final String ORGANIZATION_REF = "Organization/%s";
	private static final String PRACTITIONER_REF = "Practitioner/%s";
	private List<Resource> resources;

	/**
	 * Default constructor
	 */
	public FhirPractitionerRole() {

	}

	/**
	 * Constructor to create practitioner role of author
	 *
	 * @param speciality speciality of author
	 * @param role       role of author
	 * @param index      index of author to create. It must be build of {document
	 *                   response index} - {author index}
	 */
	public FhirPractitionerRole(AuthorSpeciality speciality, AuthorRole role, String index) {
		setId(index);

		if (speciality != null) {
			addSpecialty(new CodeableConcept(
					new Coding(speciality.getCodeSystemOid(), speciality.getCodeValue(), speciality.getDisplayName())));
		}

		if (role != null) {
			addCode(new CodeableConcept(
					new Coding(role.getCodeSystemId(), role.getCodeValue(), role.getDisplayName())));
		}

		setOrganization(new Reference(String.format(ORGANIZATION_REF, index)));
		setPractitioner(new Reference(String.format(PRACTITIONER_REF, index)));
	}

	/**
	 * Default constructor to create practitioner role from authors in document
	 * response (ITI-18)
	 * 
	 * @param author author of document
	 * @param index  index of author to create. It must be build of {document
	 *               response index} - {author index}
	 */
	public FhirPractitionerRole(AuthorTypeImpl author, String index) {
		fromDocumentEntryResponse(author, index);
	}

	/**
	 * Constructor to create practitioner role of HL7 CDA V2 author
	 * 
	 * @param author HL7 CDA V2 author
	 * @param id     of resource to reference to
	 */
	public FhirPractitionerRole(POCDMT000040Author author, String id) {
		resources = new ArrayList<>();
		fromPOCDMT000040Author(author, id);
	}

	/**
	 * Constructor to create practitioner role of HL7 CDA V2 legal authenticator
	 * 
	 * @param authenticator HL7 CDA V2 legal authenticator
	 * @param id            of resource to reference to
	 */
	public FhirPractitionerRole(POCDMT000040LegalAuthenticator authenticator, String id) {
		resources = new ArrayList<>();
		fromPOCDMT000040LegalAuthenticator(authenticator, id);
	}

	/**
	 * Constructor to create an instance of fhir practitioner role of HL7 CDA R2
	 * performer 2
	 * 
	 * @param person HL7 CDA R2 performer 2
	 * @param id     resource id to reference to
	 */
	public FhirPractitionerRole(POCDMT000040Performer2 performer, String id) {
		fromPOCDMT000040Performer2(performer, id);
	}

	public List<Resource> getResources() {
		return resources;
	}

	/**
	 * creates JSON of this practitioner role instance like specified in
	 * http://hl7.org/fhir/R4/practitionerrole.html
	 * 
	 * @return JSON string
	 */
	public String toJson() {
		return FhirUtil.getFhirContext().newJsonParser().encodeResourceToString(this);
	}

	private void fromDocumentEntryResponse(AuthorTypeImpl author, String index) {
		if (author == null) {
			return;
		}

		setId(String.valueOf(index));
		addSpeciality(author);
		addRole(author);

		Reference organizationReference = new Reference(String.format(ORGANIZATION_REF, index));
		setOrganization(organizationReference);

		Reference practitionerReference = new Reference(String.format(PRACTITIONER_REF, index));
		setPractitioner(practitionerReference);
	}

	private void addSpeciality(AuthorTypeImpl authorTypeImpl) {
		try {
			if (authorTypeImpl.getAuthorSpeciality() != null && !authorTypeImpl.getAuthorSpeciality().isEmpty()
					&& authorTypeImpl.getAuthorSpeciality().get(0) instanceof String) {
				AuthorSpeciality authorSpeciality = AuthorSpeciality
						.getEnum((String) authorTypeImpl.getAuthorSpeciality().get(0));

				if (authorSpeciality != null) {
					addSpecialty(new CodeableConcept(new Coding(authorSpeciality.getCodeSystemOid(),
							authorSpeciality.getCodeValue(), authorSpeciality.getDisplayName())));
				}
			}
		} catch (Exception ex) {
			LOGGER.error(ex.getMessage(), ex);
		}
	}

	private void addRole(AuthorTypeImpl authorTypeImpl) {
		try {
			if (authorTypeImpl.getAuthorRole() != null && !authorTypeImpl.getAuthorRole().isEmpty()
					&& authorTypeImpl.getAuthorRole().get(0) instanceof String) {
				addCode(new CodeableConcept(new Coding(null, (String) authorTypeImpl.getAuthorRole().get(0), null)));
			}
		} catch (Exception ex) {
			LOGGER.error(ex.getMessage(), ex);
		}
	}

	private void fromPOCDMT000040Author(POCDMT000040Author hl7CdaR2Value, String id) {
		if (hl7CdaR2Value == null || hl7CdaR2Value.getAssignedAuthor() == null) {
			return;
		}

		setId(id);

		if (hl7CdaR2Value.getAssignedAuthor().getId() != null) {
			this.identifier = new ArrayList<>();
			for (II identifier : hl7CdaR2Value.getAssignedAuthor().getId()) {
				this.identifier.add(new FhirIdentifier(identifier));
			}
		}

		if (hl7CdaR2Value.getAssignedAuthor().getAssignedPerson() != null
				&& hl7CdaR2Value.getAssignedAuthor().getRepresentedOrganization() != null) {
			setOrganization(new Reference(String.format(ORGANIZATION_REF, id)));
			resources.add(new FhirOrganization(hl7CdaR2Value.getAssignedAuthor().getRepresentedOrganization(), id));

			setPractitioner(new Reference(String.format(PRACTITIONER_REF, id)));
			resources.add(new FhirPractitioner(hl7CdaR2Value.getAssignedAuthor().getAssignedPerson(), id));
		}

		if (hl7CdaR2Value.getAssignedAuthor().getCode() != null) {
			addCode(new FhirCodeableConcept(hl7CdaR2Value.getAssignedAuthor().getCode()));
		}

		if (hl7CdaR2Value.getAssignedAuthor().getTelecom() != null) {
			this.telecom = new ArrayList<>();
			for (TEL tel : hl7CdaR2Value.getAssignedAuthor().getTelecom()) {
				addTelecom(new FhirContactPoint(tel));
			}
		}
	}

	private void fromPOCDMT000040LegalAuthenticator(POCDMT000040LegalAuthenticator hl7CdaR2Value, String id) {
		if (hl7CdaR2Value == null || hl7CdaR2Value.getAssignedEntity() == null) {
			return;
		}

		setId(id);

		if (hl7CdaR2Value.getAssignedEntity().getId() != null) {
			this.identifier = new ArrayList<>();
			for (II identifier : hl7CdaR2Value.getAssignedEntity().getId()) {
				this.identifier.add(new FhirIdentifier(identifier));
			}
		}

		if (hl7CdaR2Value.getAssignedEntity().getCode() != null) {
			addCode(new FhirCodeableConcept(hl7CdaR2Value.getAssignedEntity().getCode()));
		}

		if (hl7CdaR2Value.getAssignedEntity().getTelecom() != null) {
			for (TEL tel : hl7CdaR2Value.getAssignedEntity().getTelecom()) {
				addTelecom(new FhirContactPoint(tel));
			}
		}

		if (hl7CdaR2Value.getSignatureCode() != null) {
			addSpecialty(new FhirCodeableConcept(hl7CdaR2Value.getSignatureCode()));
		}

		setPractitioner(new Reference(String.format(PRACTITIONER_REF, id)));
		resources.add(new FhirPractitioner(hl7CdaR2Value.getAssignedEntity().getAssignedPerson(), id));

		if (hl7CdaR2Value.getAssignedEntity().getAssignedPerson() != null
				&& hl7CdaR2Value.getAssignedEntity().getRepresentedOrganization() != null) {
			setOrganization(new Reference(String.format(ORGANIZATION_REF, id)));
			resources.add(new FhirOrganization(hl7CdaR2Value.getAssignedEntity().getRepresentedOrganization(), id));
		}

	}

	private void fromPOCDMT000040Performer2(POCDMT000040Performer2 performer, String id) {
		setId(id);

		if (performer == null || performer.getAssignedEntity() == null) {
			return;
		}

		if (performer.getAssignedEntity().getId() != null) {
			for (II ii : performer.getAssignedEntity().getId()) {
				if (ii != null) {
					addIdentifier(new FhirIdentifier(ii));
				}
			}
		}

		if (performer.getAssignedEntity().getTelecom() != null) {
			for (TEL tel : performer.getAssignedEntity().getTelecom()) {
				if (tel != null) {
					addTelecom(new FhirContactPoint(tel));
				}
			}
		}

		if (performer.getAssignedEntity().getRepresentedOrganization() != null) {
			setOrganizationTarget(new FhirOrganization(performer.getAssignedEntity().getRepresentedOrganization(),
					"immunization-performer"));
		}

		FhirPractitioner practitioner = new FhirPractitioner(performer.getAssignedEntity().getAssignedPerson(),
				"immunization-performer");

		if (performer.getAssignedEntity().getAddr() != null) {
			for (AD ad : performer.getAssignedEntity().getAddr()) {
				if (ad != null) {
					practitioner.addAddress(new FhirAddress(ad));
				}
			}
		}

		setPractitionerTarget(practitioner);

	}

	public static POCDMT000040Author getHeaderAuthor(Date timeAuthor, PractitionerRole practitioner) {
		return getPOCDMT000040Author(new HeaderAuthor(), timeAuthor, practitioner);
	}

	public static POCDMT000040Author getAtcdabbrHeaderAuthor(Date timeAuthor, PractitionerRole practitioner) {
		return getPOCDMT000040Author(new AtcdabbrHeaderAuthor(), timeAuthor, practitioner);
	}

	public static POCDMT000040Author getAuthorBodyPs(Date authTime, PractitionerRole practitioner) {
		return getPOCDMT000040Author(new AuthorBodyPs(), authTime, practitioner);
	}
	
	public static POCDMT000040Author getAuthorBodyEImpf(Date authTime, PractitionerRole practitioner) {
		return getPOCDMT000040Author(new AtcdabbrOtherAuthorBodyEImpfpass(), authTime, practitioner);
	}

	private static POCDMT000040Author getPOCDMT000040Author(POCDMT000040Author author, Date timeAuthor,
			PractitionerRole practitioner) {
		if (author == null) {
			author = new POCDMT000040Author();
		}

		author.setTime(CdaUtil.createEffectiveTimePoint(timeAuthor));

		if (practitioner.hasCode()) {
			author.setFunctionCode(FhirCodeableConcept.createHl7CdaR2Ce(practitioner.getCodeFirstRep(), null, null));
		}
		
		author.setAssignedAuthor(getHl7CdaR2Pocdmt000040AssignedAuthor(author.getAssignedAuthor(), practitioner));
		return author;
	}

	public static HeaderLegalAuthenticator getHeaderLegalAuthenticator(Date timeLegalAuthen,
			PractitionerRole practitioner) {
		HeaderLegalAuthenticator legalAuthenticator = new HeaderLegalAuthenticator();
		legalAuthenticator.setHl7Time(CdaUtil.createEffectiveTimePoint(timeLegalAuthen));
		legalAuthenticator.setAssignedEntity(
				FhirUtil.createAssignedEntity(new POCDMT000040AssignedEntity(), practitioner.getPractitionerTarget(),
						practitioner.getOrganizationTarget(), practitioner.getIdentifier()));
		return legalAuthenticator;
	}

	protected POCDMT000040AssociatedEntity getHl7CdaR2Pocdmt000040AssociatedEntity() {
		POCDMT000040AssociatedEntity associatedEntity = new POCDMT000040AssociatedEntity();

		if (this.identifier != null && !identifier.isEmpty()) {
			for (Identifier id : getIdentifier()) {
				if (id != null) {
					associatedEntity.getId().add(FhirIdentifier.createHl7CdaR2Ii(id, null));
				}
			}
		}

		if (hasPractitioner()) {
			if (getPractitionerTarget().hasAddress()) {
				for (org.hl7.fhir.r4.model.Address address : getPractitionerTarget().getAddress()) {
					if (address != null) {
						associatedEntity.getAddr().add(FhirAddress.createHl7CdaR2Ad(address, null));
					}
				}
			}

			if (getPractitionerTarget().getName() != null) {
				associatedEntity.setAssociatedPerson(FhirPractitioner
						.getHl7CdaR2Pocdmt000040Person(getPractitionerTarget(), new POCDMT000040Person()));
			} else {
				POCDMT000040Person person = new POCDMT000040Person();
				person.getNullFlavor().add("UNK");
				associatedEntity.setAssociatedPerson(person);
			}
		}

		if (hasTelecom()) {
			for (ContactPoint telecom : getTelecom()) {
				if (telecom != null) {
					associatedEntity.getTelecom().add(FhirContactPoint.createHl7CdaR2Tel(telecom, null));
				}
			}
		}

		if (hasOrganization()) {
			associatedEntity.setScopingOrganization(
					FhirOrganization.createHl7CdaR2Pocdmt000040Organization(getOrganizationTarget()));
		}

		return associatedEntity;
	}

	public static AtcdabbrOtherPerformerBodyLaboratory getAtcdabbrOtherPerformerBodyLaboratory(Date finishingLabTest,
			PractitionerRole practitionerRole) {
		AtcdabbrOtherPerformerBodyLaboratory lab = new AtcdabbrOtherPerformerBodyLaboratory();
		lab.setHl7Time(CdaUtil.createEffectiveTimePointIVLTS(finishingLabTest));

		POCDMT000040AssignedEntity assignedEntity = lab.getAssignedEntity();
		assignedEntity.getId()
				.add(FhirIdentifier.createHl7CdaR2Ii(practitionerRole.getIdentifierFirstRep(), NullFlavor.UNKNOWN));

		assignedEntity.setCode(
				FhirCodeableConcept.createHl7CdaR2Ce(practitionerRole.getCodeFirstRep(), NullFlavor.UNKNOWN, null));

		if (practitionerRole.getPractitionerTarget() != null) {
			if (practitionerRole.getPractitionerTarget().hasAddress()) {
				for (org.hl7.fhir.r4.model.Address address : practitionerRole.getPractitionerTarget().getAddress()) {
					if (address != null) {
						assignedEntity.getAddr().add(FhirAddress.createHl7CdaR2Ad(address, NullFlavor.UNKNOWN));
					}
				}
			} else {
				Address address = new Address(new AddressBaseType());
				address.setNullFlavor(NullFlavor.UNKNOWN);
				assignedEntity.getAddr().add(address.getHl7CdaR2Ad());
			}

			assignedEntity.setAssignedPerson(FhirPractitioner
					.getHl7CdaR2Pocdmt000040Person(practitionerRole.getPractitionerTarget(), new POCDMT000040Person()));
		}

		if (practitionerRole.hasTelecom()) {
			for (ContactPoint tel : practitionerRole.getTelecom()) {
				if (tel != null) {
					assignedEntity.getTelecom().add(FhirContactPoint.createHl7CdaR2Tel(tel, null));
				}
			}
		}

		if (practitionerRole.getOrganizationTarget() != null
				&& practitionerRole.getOrganizationTarget().getName() != null
				&& !practitionerRole.getOrganizationTarget().getName().isEmpty()) {
			assignedEntity.setRepresentedOrganization(
					FhirOrganization.createHl7CdaR2Pocdmt000040Organization(practitionerRole.getOrganizationTarget()));
		}

		lab.setHl7AssignedEntity(assignedEntity);

		return lab;
	}

	public LaboratoryPerformer2 getLaboratoryPerformer2(Date finishingLabTest) {
		LaboratoryPerformer2 lab = new LaboratoryPerformer2();
		lab.setHl7Time(CdaUtil.createEffectiveTimePointIVLTS(finishingLabTest));

		POCDMT000040AssignedEntity assignedEntity = new POCDMT000040AssignedEntity();
		assignedEntity.getId().add(FhirIdentifier.createHl7CdaR2Ii(getIdentifierFirstRep(), NullFlavor.NOINFORMATION));

		Code code = new Code();
		code.setCode("E");
		code.setCodeSystem("2.16.840.1.113883.2.16.1.4.9");
		code.setCodeSystemName("HL7.at.Laborkennzeichnung");
		code.setDisplayName("EXTERN");
		assignedEntity.setCode(code.getHl7CdaR2Ce());

		if (hasPractitioner()) {
			if (getPractitionerTarget().hasAddress()) {
				for (org.hl7.fhir.r4.model.Address add : getPractitionerTarget().getAddress()) {
					if (add != null) {
						assignedEntity.getAddr().add(FhirAddress.createHl7CdaR2Ad(add, null));
					}
				}
			}

			assignedEntity.setAssignedPerson(FhirPractitioner.getPOCDMT000040Person(getPractitionerTarget()));
		} else if (hasOrganization() && getOrganizationTarget().getName() != null
				&& !getOrganizationTarget().getName().isEmpty()) {
			assignedEntity.setRepresentedOrganization(
					FhirOrganization.createHl7CdaR2Pocdmt000040Organization(getOrganizationTarget()));
		}

		for (ContactPoint tel : telecom) {
			if (tel != null) {
				assignedEntity.getTelecom().add(FhirContactPoint.createHl7CdaR2Tel(tel, null));
			}
		}

		lab.setHl7AssignedEntity(assignedEntity);

		return lab;
	}

	public POCDMT000040Performer2 getPOCDMT000040Performer2() {
		POCDMT000040Performer2 performer = new POCDMT000040Performer2();
		performer.setTypeCode(ParticipationPhysicalPerformer.PRF);

		AssignedEntityElements elements = new AssignedEntityElements();

		if (this.identifier != null && !this.identifier.isEmpty()) {
			for (Identifier id : identifier) {
				elements.getId().add(FhirIdentifier.createHl7CdaR2Ii(id, NullFlavor.UNKNOWN));
			}
		} else {
			Identificator id = new Identificator();
			id.setNullFlavor(NullFlavor.UNKNOWN);
			elements.getId().add(id.getHl7CdaR2Ii());
		}

		if (telecom != null && !telecom.isEmpty()) {
			for (ContactPoint tel : telecom) {
				if (tel != null) {
					elements.getTelecom().add(FhirContactPoint.createHl7CdaR2Tel(tel, NullFlavor.UNKNOWN));
				}
			}
		} else {
			Telecom tel = new Telecom();
			tel.setNullFlavor(NullFlavor.UNKNOWN);
			elements.getTelecom().add(tel.getHl7CdaR2Tel());
		}

		if (hasOrganization() && getOrganizationTarget().getName() != null
				&& !getOrganizationTarget().getName().isEmpty()) {
			elements.setRepresentedOrganization(
					FhirOrganization.createHl7CdaR2Pocdmt000040Organization(getOrganizationTarget()));
		}

		if (hasPractitioner()) {
			if (getPractitionerTarget().getAddress() != null && !getPractitionerTarget().getAddress().isEmpty()
					&& getPractitionerTarget().getAddressFirstRep() != null) {
				elements.getAddr().add(
						FhirAddress.createHl7CdaR2Ad(getPractitionerTarget().getAddressFirstRep(), NullFlavor.UNKNOWN));
			} else {
				Address address = new Address(new AddressBaseType());
				address.setNullFlavor(NullFlavor.UNKNOWN);
				elements.getAddr().add(address.getHl7CdaR2Ad());
			}

			elements.setAssignedPerson(FhirPractitioner.getPOCDMT000040Person(getPractitionerTarget()));
		}

		performer.setAssignedEntity(elements);

		return performer;
	}

	public static POCDMT000040ResponsibleParty getPOCDMT000040ResponsibleParty(PractitionerRole practitioner) {
		POCDMT000040ResponsibleParty responsibleParty = new POCDMT000040ResponsibleParty();
		POCDMT000040AssignedEntity assignedEntity = new POCDMT000040AssignedEntity();
		assignedEntity.setClassCode("ASSIGNED");

		if (!practitioner.hasIdentifier()) {
			Identificator niId = new Identificator();
			niId.setNullFlavor(NullFlavor.NOINFORMATION);
			assignedEntity.getId().add(niId.getHl7CdaR2Ii());
		} else {
			for (Identifier id : practitioner.getIdentifier()) {
				if (id != null) {
					assignedEntity.getId().add(FhirIdentifier.createHl7CdaR2Ii(id, NullFlavor.UNKNOWN));
				} else {
					Identificator unkId = new Identificator();
					unkId.setNullFlavor(NullFlavor.UNKNOWN);
					assignedEntity.getId().add(unkId.getHl7CdaR2Ii());
				}
			}
		}

		if (practitioner.getPractitionerTarget() != null) {
			if (practitioner.getPractitionerTarget().getAddress() != null
					&& !practitioner.getPractitionerTarget().getAddress().isEmpty()) {
				assignedEntity.getAddr().clear();
				assignedEntity.getAddr().add(FhirAddress.createHl7CdaR2Ad(
						practitioner.getPractitionerTarget().getAddressFirstRep(), NullFlavor.UNKNOWN));
			}

			assignedEntity
					.setAssignedPerson(FhirPractitioner.getPOCDMT000040Person(practitioner.getPractitionerTarget()));
		}

		if (practitioner.hasTelecom()) {
			for (ContactPoint tel : practitioner.getTelecom()) {
				if (tel != null) {
					assignedEntity.getTelecom().add(FhirContactPoint.createHl7CdaR2Tel(tel, null));
				}
			}
		}

		if (practitioner.getOrganizationTarget() != null) {
			assignedEntity.setRepresentedOrganization(
					FhirOrganization.createHl7CdaR2Pocdmt000040Organization(practitioner.getOrganizationTarget()));
		}

		responsibleParty.setAssignedEntity(assignedEntity);

		return responsibleParty;
	}

	public AtcdabbrHeaderDataEnterer getHeaderDataEnterer() {
		AtcdabbrHeaderDataEnterer dataEnterer = new AtcdabbrHeaderDataEnterer();
		POCDMT000040AssignedEntity assignedEntity = new POCDMT000040AssignedEntity();

		if (identifier != null && !identifier.isEmpty()) {
			for (Identifier id : getIdentifier()) {
				if (id != null) {
					assignedEntity.getId().add(FhirIdentifier.createHl7CdaR2Ii(id, NullFlavor.UNKNOWN));
				} else {
					Identificator unkId = new Identificator();
					unkId.setNullFlavor(NullFlavor.UNKNOWN);
				}
			}
		}

		if (hasPractitioner()) {
			if (getPractitionerTarget().getAddress() != null && !getPractitionerTarget().getAddress().isEmpty()) {
				for (org.hl7.fhir.r4.model.Address address : getPractitionerTarget().getAddress()) {
					assignedEntity.getAddr().add(FhirAddress.createHl7CdaR2Ad(address, NullFlavor.UNKNOWN));
				}
			}

			assignedEntity.setAssignedPerson(FhirPractitioner.getHl7CdaR2Pocdmt000040Person(getPractitionerTarget(),
					assignedEntity.getAssignedPerson()));
		}

		if (telecom != null && !telecom.isEmpty()) {
			for (ContactPoint telecom : telecom) {
				if (telecom != null) {
					assignedEntity.getTelecom().add(FhirContactPoint.createHl7CdaR2Tel(telecom, null));
				}
			}
		}

		if (hasOrganization()) {
			assignedEntity.setRepresentedOrganization(
					FhirOrganization.createHl7CdaR2Pocdmt000040Organization(getOrganizationTarget()));
		}

		dataEnterer.setAssignedEntity(assignedEntity);

		return dataEnterer;
	}

	public static POCDMT000040AssignedAuthor getHl7CdaR2Pocdmt000040AssignedAuthor(
			POCDMT000040AssignedAuthor assignedAuthor, PractitionerRole practitioner) {

		if (practitioner.hasOrganization()) {
			POCDMT000040Organization representedOrganization = FhirOrganization
					.createHl7CdaR2Pocdmt000040Organization(practitioner.getOrganizationTarget());
			representedOrganization.setClassCode("ORG");
			representedOrganization.setDeterminerCode(CdaUtil.DETERMINERCODE_INSTANCE);
			assignedAuthor.setRepresentedOrganization(representedOrganization);
		}

		if (practitioner.hasIdentifier()) {
			for (Identifier id : practitioner.getIdentifier()) {
				if (id != null) {
					assignedAuthor.getId().add(FhirIdentifier.createHl7CdaR2Ii(id, null));
				}
			}
		} else {
			assignedAuthor.getId().add(FhirIdentifier.createHl7CdaR2Ii(null, NullFlavor.NOINFORMATION));
		}

		if (practitioner.hasTelecom()) {
			for (ContactPoint telecom : practitioner.getTelecom()) {
				if (telecom != null) {
					assignedAuthor.getTelecom().add(FhirContactPoint.createHl7CdaR2Tel(telecom, null));
				}
			}
		}

		if (practitioner.getPractitionerTarget() != null) {
			if (practitioner.getPractitionerTarget().hasTelecom()) {
				for (ContactPoint tel : practitioner.getPractitionerTarget().getTelecom()) {
					if (tel != null) {
						assignedAuthor.getTelecom().add(FhirContactPoint.createHl7CdaR2Tel(tel, null));
					}
				}
			}

			if (practitioner.getPractitionerTarget().hasAddress()) {
				for (org.hl7.fhir.r4.model.Address address : practitioner.getPractitionerTarget().getAddress()) {
					if (address != null) {
						assignedAuthor.getAddr().add(FhirAddress.createHl7CdaR2Ad(address, null));
					}
				}
			}

			if (practitioner.getPractitionerTarget().getName() != null) {
				assignedAuthor.setAssignedPerson(FhirPractitioner.getHl7CdaR2Pocdmt000040Person(
						practitioner.getPractitionerTarget(), assignedAuthor.getAssignedPerson()));
			}
		}

		if (practitioner.hasSpecialty()) {
			assignedAuthor
					.setCode(FhirCodeableConcept.createHl7CdaR2Ce(practitioner.getSpecialtyFirstRep(), null, null));
		}

		return assignedAuthor;
	}

	public static POCDMT000040AssignedEntity getHl7CdaR2Pocdmt000040AssignedEntity(
			POCDMT000040AssignedEntity assignedEntity, PractitionerRole practitioner, AddressUse defaultAddressUse) {
		if (assignedEntity == null || practitioner == null) {
			return assignedEntity;
		}

		if (practitioner.hasIdentifier()) {
			for (Identifier id : practitioner.getIdentifier()) {
				if (id != null) {
					assignedEntity.getId().add(FhirIdentifier.createHl7CdaR2Ii(id, null));
				}
			}
		} else {
			assignedEntity.getId().add(FhirIdentifier.createHl7CdaR2Ii(null, NullFlavor.NOINFORMATION));
		}

		assignedEntity.setCode(
				FhirCodeableConcept.createHl7CdaR2Ce(practitioner.getCodeFirstRep(), NullFlavor.UNKNOWN, null));

		if (practitioner.hasOrganization()) {
			practitioner.getOrganizationTarget().getAddressFirstRep().setUse(defaultAddressUse);
			assignedEntity.setRepresentedOrganization(
					FhirOrganization.createHl7CdaR2Pocdmt000040Organization(practitioner.getOrganizationTarget()));
		}

		if (practitioner.hasPractitioner()) {
			if (practitioner.getPractitionerTarget().hasTelecom()) {
				for (ContactPoint tel : practitioner.getPractitionerTarget().getTelecom()) {
					if (tel != null) {
						assignedEntity.getTelecom().add(FhirContactPoint.createHl7CdaR2Tel(tel, null));
					}
				}
			}

			if (practitioner.getPractitionerTarget().hasAddress()) {
				for (org.hl7.fhir.r4.model.Address address : practitioner.getPractitionerTarget().getAddress()) {
					if (address != null) {						
						assignedEntity.getAddr().add(FhirAddress.createHl7CdaR2Ad(address, null));
					}
				}
			}

			assignedEntity.setAssignedPerson(FhirPractitioner.getHl7CdaR2Pocdmt000040Person(
					practitioner.getPractitionerTarget(), assignedEntity.getAssignedPerson()));
		}

		return assignedEntity;
	}

	public POCDMT000040Participant1 getHeaderOrderingProvider(Date timeAuthor) {
		POCDMT000040Participant1 participant = new POCDMT000040Participant1();
		participant.getTypeCode().add("REF");
		participant.setTime(CdaUtil.createEffectiveTimePointIVLTS(timeAuthor));

		participant.setAssociatedEntity(getHl7CdaR2Pocdmt000040AssociatedEntity());
		return participant;
	}

	public static AtcdabbrOtherAuthorBodyEImpfpass getAtcdabbrOtherAuthorBodyEImpfpass(Date timeAuthor,
			PractitionerRole practitioner) {
		AtcdabbrOtherAuthorBodyEImpfpass author = new AtcdabbrOtherAuthorBodyEImpfpass();

		if (practitioner == null) {
			return author;
		}

		if (timeAuthor != null) {
			author.setTime(CdaUtil.createEffectiveTimePoint(timeAuthor));
		} else {
			TS timestamp = new TS();
			timestamp.nullFlavor = new ArrayList<>();
			timestamp.getNullFlavor().add(NullFlavor.UNKNOWN_CODE);
			author.setTime(timestamp);
		}

		author.setAssignedAuthor(getHl7CdaR2Pocdmt000040AssignedAuthor(author.getAssignedAuthor(), practitioner));
		return author;
	}
}
