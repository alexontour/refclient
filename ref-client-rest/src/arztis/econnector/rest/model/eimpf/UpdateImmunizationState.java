/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 * 
 */
package arztis.econnector.rest.model.eimpf;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.EimpfDocumentUpdateImmunisierungsstatus;
import org.ehealth_connector.common.Identificator;
import org.ehealth_connector.common.at.enums.ConfidentialityCode;
import org.ehealth_connector.common.hl7cdar2.CE;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Component2;
import org.hl7.fhir.r4.model.Bundle;
import org.hl7.fhir.r4.model.Bundle.BundleEntryComponent;
import org.hl7.fhir.r4.model.Coding;
import org.hl7.fhir.r4.model.Composition;
import org.hl7.fhir.r4.model.Composition.CompositionAttestationMode;
import org.hl7.fhir.r4.model.Composition.CompositionAttesterComponent;
import org.hl7.fhir.r4.model.Composition.DocumentConfidentiality;
import org.hl7.fhir.r4.model.Immunization;
import org.hl7.fhir.r4.model.Immunization.ImmunizationPerformerComponent;
import org.hl7.fhir.r4.model.Organization;
import org.hl7.fhir.r4.model.Patient;
import org.hl7.fhir.r4.model.Practitioner;
import org.hl7.fhir.r4.model.PractitionerRole;
import org.hl7.fhir.r4.model.Reference;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.ihe.utilities.CdaUtil;
import arztis.econnector.rest.model.fhir.FhirCoding;
import arztis.econnector.rest.model.fhir.FhirIdentifier;
import arztis.econnector.rest.model.fhir.FhirOrganization;
import arztis.econnector.rest.model.fhir.FhirPatientAt;
import arztis.econnector.rest.model.fhir.FhirPractitionerRole;

/**
 * This class provides functionalities to generate CDA R2 document ("Update
 * Immunisierungsstatus") from HL7 FHIR resources. All resources for
 * immunization state are in a {@link Bundle}. </br>
 *
 *
 * Details of how {@link Bundle} must be structured to generate a update
 * immunization state can be found under the following link <a href=
 * "https://git.et-innovations.org/java/elga-refclient/blob/master/docs/API/v1/Composition.md">https://git.et-innovations.org/java/elga-refclient/blob/master/docs/API/v1/Composition.md</a>
 *
 * @author Anna Jungwirth
 *
 */
public class UpdateImmunizationState {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(UpdateImmunizationState.class.getName());

	/** The authors. */
	private List<PractitionerRole> authors;
	
	/** The legal authenticator. */
	private PractitionerRole legalAuthenticator;

	/**
	 * map of organization with its ID. It is used to resolve references to
	 * {@link Organization} resource
	 */
	private Map<String, Organization> organizations;

	/**
	 * map of practitioners (authors or legal authenticator) with its ID. It is used
	 * to resolve references to {@link PractitionerRole} resource
	 */
	private Map<String, PractitionerRole> practitionerRoles;

	/**
	 * map of practitioners (authors or legal authenticator) with its ID. It is used
	 * to resolve references to {@link Practitioner} resource
	 */
	private Map<String, Practitioner> practitioners;

	/**
	 * map of immunization with its author. It is used to generate immunization
	 * entries with their author
	 */
	private Map<Immunization, PractitionerRole> immunizations;
	
	/** The composition. */
	private Composition composition;
	
	/** The custodian. */
	private Organization custodian;
	
	/** The patient. */
	private Patient patient;

	/**
	 * A container for collection of resources to generate update immunization
	 * state. Value is assigned during instantiation.
	 */
	private Bundle bundle;

	/**
	 * Constructor to generate CDA document ("Update Immunisierungsstatus") from
	 * passed {@link Bundle} resource.
	 *
	 * @param bundle contains information to generate CDA document
	 */
	public UpdateImmunizationState(Bundle bundle) {
		this.bundle = bundle;
		authors = new ArrayList<>();
		organizations = new HashMap<>();
		practitionerRoles = new HashMap<>();
		practitioners = new HashMap<>();
		immunizations = new HashMap<>();
	}

	/**
	 * Generates CDA document {@link EimpfDocumentUpdateImmunisierungsstatus}.
	 * Information to fill CDA document is extracted from {@link #bundle}
	 *
	 * @return generated CDA document
	 */
	public EimpfDocumentUpdateImmunisierungsstatus getUpdateImmunizationState() {
		EimpfDocumentUpdateImmunisierungsstatus cda = new EimpfDocumentUpdateImmunisierungsstatus();
		extractPassedResources();

		if (composition != null) {
			assignRessources();

			addHeader(cda, authors, composition, patient, legalAuthenticator, custodian);

			POCDMT000040Component2 comp2 = new POCDMT000040Component2();
			comp2.setStructuredBody(ImmunizationState
					.getHl7CdaR2Pocdmt000040StructuredBodyImmunizationState(composition, immunizations));
			cda.setHl7Component(comp2);
		}

		return cda;
	}

	/**
	 * extracts references of {@link #composition} and resolves it. Assigns, for
	 * example, a value from {@link #practitionerRoles} to
	 * {@link #legalAuthenticator} using given reference in {@link #composition} as
	 * key.
	 *
	 */
	private void assignRessources() {
		if (composition.hasAttester()) {
			for (CompositionAttesterComponent attesterComp : composition.getAttester()) {
				if (attesterComp != null && CompositionAttestationMode.LEGAL.equals(attesterComp.getMode())
						&& attesterComp.hasParty() && attesterComp.getParty().getReference() != null) {
					legalAuthenticator = practitionerRoles.get(attesterComp.getParty().getReference());
				}
			}
		}

		if (composition.hasAuthor()) {
			for (Reference authorRef : composition.getAuthor()) {
				if (authorRef != null) {
					authors.add(practitionerRoles.get(authorRef.getReference()));
				}
			}
		}

		if (composition.hasCustodian()) {
			custodian = organizations.get(composition.getCustodian().getReference());
		}

		for (Entry<Immunization, PractitionerRole> immunization : immunizations.entrySet()) {
			if (immunization != null && immunization.getKey() != null) {

				if (immunization.getKey().hasPerformer()) {
					for (ImmunizationPerformerComponent performer : immunization.getKey().getPerformer()) {
						if (performer != null && performer.hasActor()) {
							performer.setActorTarget(practitionerRoles.get(performer.getActor().getReference()));
						}
					}
				}

				if (immunization.getKey().hasProtocolApplied()
						&& immunization.getKey().getProtocolAppliedFirstRep().hasAuthority()) {
					immunization.setValue(practitionerRoles
							.get(immunization.getKey().getProtocolAppliedFirstRep().getAuthority().getReference()));
				}
			}
		}

	}

	/**
	 * extracts resources of {@link #bundle} and assigns it to local variables like
	 * {@link #practitioners}. Following types of resources are extracted:
	 *
	 * <ul>
	 * <li>composition</li>
	 * <li>patient</li>
	 * <li>practitioner</li>
	 * <li>practitioner role</li>
	 * <li>organization</li>
	 * <li>immunization</li>
	 * </ul>
	 */
	private void extractPassedResources() {
		if (bundle.hasEntry()) {
			for (BundleEntryComponent compEntry : bundle.getEntry()) {
				if (compEntry != null && compEntry.hasResource()) {
					switch (compEntry.getResource().getResourceType()) {
					case Composition:
						composition = (Composition) compEntry.getResource();
						break;
					case Patient:
						patient = (Patient) compEntry.getResource();
						break;
					case Practitioner:
						Practitioner practitioner = (Practitioner) compEntry.getResource();
						practitioners.put(practitioner.getId(), practitioner);
						break;
					case PractitionerRole:
						PractitionerRole practitionerRole = (PractitionerRole) compEntry.getResource();
						practitionerRoles.put(practitionerRole.getId(), practitionerRole);
						break;
					case Organization:
						Organization organization = (Organization) compEntry.getResource();
						organizations.put(organization.getId(), organization);
						break;
					case Immunization:
						Immunization immunization = (Immunization) compEntry.getResource();
						immunizations.put(immunization, null);
						break;
					default:
						LOGGER.info("Resourcen vom Typ {} werden nicht berücksichtigt",
								compEntry.getResource().getResourceType());
						break;
					}
				}
			}
		}
	}

	/**
	 * adds header information to passed
	 * {@link EimpfDocumentUpdateImmunisierungsstatus}. </br>
	 * This method extracts information from passed {@link Composition} and added to
	 * CDA document as header elements. Authors, patient, custodian and legal
	 * authenticator are passed separately, as these are independent resources.
	 *
	 * @param cda                CDA document to add information
	 * @param authors            of document
	 * @param composition        includes different header information like creation
	 *                           time
	 * @param patient            for whom document is written
	 * @param legalAuthenticator of document
	 * @param custodian          of document
	 */
	private void addHeader(EimpfDocumentUpdateImmunisierungsstatus cda, List<PractitionerRole> authors,
			Composition composition, Patient patient, PractitionerRole legalAuthenticator, Organization custodian) {
		if (composition == null) {
			return;
		}

		if (authors != null && !authors.isEmpty()) {
			for (PractitionerRole author : authors) {
				author.setPractitionerTarget(practitioners.get(author.getPractitioner().getReference()));
				author.setOrganizationTarget(organizations.get(author.getOrganization().getReference()));
				cda.addHl7Author(FhirPractitionerRole.getAtcdabbrHeaderAuthor(null, author));
			}
		}

		cda.setHl7Id(FhirIdentifier.createHl7CdaR2Ii(bundle.getIdentifier(), null));

		if (composition.getIdentifier() == null || composition.getIdentifier().getSystem() == null) {
			composition.setIdentifier(bundle.getIdentifier());
		}

		cda.setVersion(
				new Identificator(composition.getIdentifier().getSystem(), composition.getIdentifier().getValue()), 1);

		cda.setTitle(CdaUtil.createTitle(composition.getTitle()));
		cda.setEffectiveTime(CdaUtil.createEffectiveTimePoint(composition.getDate()));
		cda.setConfidentialityCode(getConfidentialityCode(composition));

		cda.setHl7RealmCode(FhirCoding.createHl7CdaR2Cs(new Coding(null, "AT", null), null));

		if (composition.getLanguage() == null) {
			composition.setLanguage("de-AT");
		}

		cda.setHl7LanguageCode(FhirCoding.createHl7CdaR2Cs(new Coding(null, composition.getLanguage(), null), null));

		if (patient != null) {
			cda.setHl7RecordTarget(FhirPatientAt.getAtcdabbrHeaderRecordTargetEImpfpass(patient));

		}

		if (legalAuthenticator != null && composition.hasAttester()) {
			for (CompositionAttesterComponent attester : composition.getAttester()) {
				if (attester != null && attester.getMode() != null
						&& CompositionAttestationMode.LEGAL.equals(attester.getMode())) {
					cda.setHl7LegalAuthenticator(
							FhirPractitionerRole.getHeaderLegalAuthenticator(attester.getTime(), legalAuthenticator));
				}
			}
		}

		cda.setHl7Custodian(FhirOrganization.createHeaderCustodian(custodian));

		cda.getDocumentationOf().add(ImmunizationState.getAtcdabbrHeaderDocumentationOfServiceEvent(composition));

		if (composition.hasRelatesTo()) {
			cda.getRelatedDocument()
					.add(ImmunizationState.getAtcdabbrHeaderDocumentReplacementRelatedDocument(composition));
		}

	}

	/**
	 * extracts confidentiality code of passed {@link Composition} and generated CDA
	 * R2 {@link CE} element. If there is no information on confidentiality in composition,
	 * {@link ConfidentialityCode.<code>NORMAL</code>} is set as default value.
	 *
	 * @param composition resource to be extracted
	 *
	 * @return created confidentiality code.
	 */
	private CE getConfidentialityCode(Composition composition) {
		CE confCode = new CE();
		if (composition != null && composition.hasConfidentiality()) {
			DocumentConfidentiality confidentiality = composition.getConfidentiality();
			confCode.setCode(confidentiality.getDefinition());
			confCode.setCodeSystem(confidentiality.getSystem());
			confCode.setDisplayName(confidentiality.getDisplay());
		} else {
			org.ehealth_connector.common.mdht.Code code = ConfidentialityCode.NORMAL.getCode();
			confCode.setCode(code.getCode());
			confCode.setCodeSystem(code.getCodeSystem());
			confCode.setDisplayName(code.getDisplayName());
		}
		confCode.setCodeSystemName("HL7:Confidentiality");
		return confCode;
	}

}
