/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the Eclipse Public License v1.0.
 * 
 */
package arztis.econnector.rest.model.fhir;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.ehealth_connector.cda.at.elga.v2019.HeaderAuthor;
import org.ehealth_connector.cda.at.elga.v2019.HeaderLegalAuthenticator;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrHeaderAuthor;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrOtherAuthorBodyEImpfpass;
import org.ehealth_connector.cda.at.elga.v2019.ps.AuthorBodyPs;
import org.ehealth_connector.common.at.enums.AuthorRole;
import org.ehealth_connector.common.at.enums.AuthorSpeciality;
import org.ehealth_connector.common.enums.NullFlavor;
import org.ehealth_connector.common.hl7cdar2.AD;
import org.ehealth_connector.common.hl7cdar2.II;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040AssignedAuthor;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040AssignedEntity;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Author;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040LegalAuthenticator;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Organization;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Performer2;
import org.ehealth_connector.common.hl7cdar2.TEL;
import org.hl7.fhir.r4.model.Address.AddressUse;
import org.hl7.fhir.r4.model.CodeableConcept;
import org.hl7.fhir.r4.model.Coding;
import org.hl7.fhir.r4.model.ContactPoint;
import org.hl7.fhir.r4.model.Identifier;
import org.hl7.fhir.r4.model.Organization;
import org.hl7.fhir.r4.model.Practitioner;
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
 * </br>
 * Furthermore, it can be used to generate CDA R2 document elements.
 *
 * @author Anna Jungwirth
 *
 */
@ResourceDef(name = "PractitionerRole", profile = "http://hl7.org/fhir/StructureDefinition/PractitionerRole")
public class FhirPractitionerRole extends PractitionerRole {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;
	
	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(FhirPractitionerRole.class.getName());
	
	/** The Constant ORGANIZATION_REF. */
	private static final String ORGANIZATION_REF = "Organization/%s";
	
	/** The Constant PRACTITIONER_REF. */
	private static final String PRACTITIONER_REF = "Practitioner/%s";
	
	/** The resources. */
	private List<Resource> resources;

	/**
	 * Default constructor.
	 */
	public FhirPractitionerRole() {

	}

	/**
	 * Constructor to create {@link PractitionerRole} of passed details.
	 *
	 * @param speciality subject of author
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
	 * Constructor to create practitioner role from authors in document response
	 * (ITI-18).
	 *
	 * @param author author of document
	 * @param index  index of author to create. It must be build of {document
	 *               response index} - {author index}
	 */
	public FhirPractitionerRole(AuthorTypeImpl author, String index) {
		fromDocumentEntryResponse(author, index);
	}

	/**
	 * Constructor to create practitioner role of HL7 CDA R2
	 * {@link POCDMT000040Author}.
	 *
	 * @param author HL7 CDA V2 author
	 * @param id     of resource to reference to
	 */
	public FhirPractitionerRole(POCDMT000040Author author, String id) {
		resources = new ArrayList<>();
		fromPOCDMT000040Author(author, id);
	}

	/**
	 * Constructor to create practitioner role of HL7 CDA R2
	 * {@link POCDMT000040LegalAuthenticator}.
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
	 * performer 2.
	 *
	 * @param performer the performer
	 * @param id     resource id to reference to
	 */
	public FhirPractitionerRole(POCDMT000040Performer2 performer, String id) {
		fromPOCDMT000040Performer2(performer, id);
	}

	/**
	 * Gets the resources.
	 *
	 * @return collection of referenced resources
	 */
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

	/**
	 * Creates practitioner role from authors in document response (ITI-18). In
	 * document response author are of type {@link AuthorTypeImpl}. </br>
	 * This method extracts role and subject of author. Moreover, it resolves
	 * references of {@link Organization} and {@link Practitioner} resource.
	 *
	 * @param author of document
	 * @param index  index of author to create. It must be build of {document
	 *               response index} - {author index}
	 */
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

	/**
	 * Extracts subject of passed {@link AuthorTypeImpl}. This method checks if
	 * extracted code is available in {@link AuthorSpeciality}.
	 *
	 * @param authorTypeImpl author of document
	 */
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

	/**
	 * Extracts role of passed {@link AuthorTypeImpl}. This method adds extracted
	 * value as code.
	 *
	 * @param authorTypeImpl author of document
	 */
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

	/**
	 * Creates {@link PractitionerRole} of passed HL7 CDA R2
	 * {@link POCDMT000040Author}. </br>
	 * Adds passed <code>id</code> as resource ID. Includes references and resources
	 * for organization and person. Moreover code and contact details are entered.
	 *
	 * @param hl7CdaR2Value HL7 CDA R2 author
	 * @param id            of resource to reference to
	 */
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

	/**
	 * Creates {@link PractitionerRole} of passed HL7 CDA R2
	 * {@link POCDMT000040LegalAuthenticator}. </br>
	 * Adds passed <code>id</code> as resource ID. Includes references and resources
	 * for organization and person. Moreover code and contact details are entered.
	 * This method also includes signature code of legal authenticator.
	 *
	 * @param hl7CdaR2Value legal authenticator
	 * @param id            of resource to reference to
	 */
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

	/**
	 * Creates {@link PractitionerRole} of passed HL7 CDA R2
	 * {@link POCDMT000040Performer2}. </br>
	 * Adds passed <code>id</code> as resource ID. Includes references and resources
	 * for organization and person. Moreover code and contact details are entered.
	 *
	 * @param performer HL7 CDA R2 performer 2
	 * @param id        resource id to reference to
	 */
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

	/**
	 * Creates {@link HeaderAuthor} of passed {@link PractitionerRole}. </br>
	 * Adds details with method {@link #getPOCDMT000040Author}. This method can be
	 * used to create author for CDA R2 header. There are various attributes and
	 * parameters that are set for different author elements in the CDA document.
	 *
	 * @param timeAuthor   date on which the document was written
	 * @param practitioner to be extracted
	 *
	 * @return {@link POCDMT000040Author} with added details.
	 *
	 */
	public static POCDMT000040Author getHeaderAuthor(Date timeAuthor, PractitionerRole practitioner) {
		return getPOCDMT000040Author(new HeaderAuthor(), timeAuthor, practitioner);
	}

	/**
	 * Creates {@link AtcdabbrHeaderAuthor} of passed {@link PractitionerRole}.
	 * </br>
	 * Adds details with method {@link #getPOCDMT000040Author}. This method can be
	 * used to create author for CDA R2 header in electronic immunization documents.
	 * There are various attributes and parameters that are set for different author
	 * elements in the CDA document.
	 *
	 * @param timeAuthor   date on which the document was written
	 * @param practitioner to be extracted
	 *
	 * @return {@link POCDMT000040Author} with added details.
	 *
	 */
	public static POCDMT000040Author getAtcdabbrHeaderAuthor(Date timeAuthor, PractitionerRole practitioner) {
		return getPOCDMT000040Author(new AtcdabbrHeaderAuthor(), timeAuthor, practitioner);
	}

	/**
	 * Creates {@link AuthorBodyPs} of passed {@link PractitionerRole}. </br>
	 * Adds details with method {@link #getPOCDMT000040Author}. This method can be
	 * used to create author for CDA R2 body. There are various attributes and
	 * parameters that are set for different author elements in the CDA document.
	 *
	 * @param authTime     date on which the document was written
	 * @param practitioner to be extracted
	 *
	 * @return {@link POCDMT000040Author} with added details.
	 *
	 */
	public static POCDMT000040Author getAuthorBodyPs(Date authTime, PractitionerRole practitioner) {
		return getPOCDMT000040Author(new AuthorBodyPs(), authTime, practitioner);
	}

	/**
	 * Creates {@link AtcdabbrOtherAuthorBodyEImpfpass} of passed
	 * {@link PractitionerRole}. </br>
	 * Adds details with method {@link #getPOCDMT000040Author}. This method can be
	 * used to create author for CDA R2 body in electronic immunization states.
	 * There are various attributes and parameters that are set for different author
	 * elements in the CDA document.
	 *
	 * @param authTime     date on which the document was written
	 * @param practitioner to be extracted
	 *
	 * @return {@link POCDMT000040Author} with added details.
	 *
	 */
	public static POCDMT000040Author getAuthorBodyEImpf(Date authTime, PractitionerRole practitioner) {
		return getPOCDMT000040Author(new AtcdabbrOtherAuthorBodyEImpfpass(), authTime, practitioner);
	}

	/**
	 * Adds extracted details of passed {@link PractitionerRole} to passed
	 * {@link POCDMT000040Author}. </br>
	 * Adds function code of author from {@link #getCodeFirstRep()}. And added
	 * assigned author with method {@link #getHl7CdaR2Pocdmt000040AssignedAuthor()}
	 *
	 * @param author       to add details
	 * @param timeAuthor   date on which the document was written
	 * @param practitioner to be extracted
	 *
	 * @return {@link POCDMT000040Author} with added details.
	 *
	 */
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

	/**
	 * Creates {@link HeaderLegalAuthenticator} of passed {@link PractitionerRole}.
	 * </br>
	 * Adds details for {@link POCDMT000040AssignedEntity}.
	 *
	 * @param timeLegalAuthen date on which the document was signed
	 * @param practitioner    to be extracted
	 *
	 * @return created {@link HeaderLegalAuthenticator}
	 *
	 */
	public static HeaderLegalAuthenticator getHeaderLegalAuthenticator(Date timeLegalAuthen,
			PractitionerRole practitioner) {
		HeaderLegalAuthenticator legalAuthenticator = new HeaderLegalAuthenticator();
		legalAuthenticator.setHl7Time(CdaUtil.createEffectiveTimePoint(timeLegalAuthen));
		legalAuthenticator.setAssignedEntity(
				FhirUtil.createAssignedEntity(new POCDMT000040AssignedEntity(), practitioner.getPractitionerTarget(),
						practitioner.getOrganizationTarget(), practitioner.getIdentifier()));
		return legalAuthenticator;
	}

	/**
	 * Adds extracted details of passed {@link PractitionerRole} to passed
	 * {@link POCDMT000040AssignedAuthor}. </br>
	 * This method adds identifiers, contacts details and addresses of author.
	 * Furthermore, it appends code and organization of author.
	 *
	 * @param assignedAuthor to add details
	 * @param practitioner   to be extracted
	 *
	 * @return {@link POCDMT000040AssignedAuthor} with added details.
	 *
	 */
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

	/**
	 * Adds extracted details of passed {@link PractitionerRole} to passed
	 * {@link POCDMT000040AssignedEntity}. </br>
	 * This method adds identifiers and details about person like addresses of
	 * performer. Furthermore, it appends code and organization of performer.
	 *
	 * @param assignedEntity    to add details
	 * @param practitioner      to be extracted
	 * @param defaultAddressUse default value for address use of organization
	 *
	 * @return {@link POCDMT000040AssignedEntity} with added details.
	 *
	 */
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
}
