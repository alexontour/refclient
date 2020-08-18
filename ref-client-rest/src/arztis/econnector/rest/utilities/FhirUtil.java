package arztis.econnector.rest.utilities;

import java.util.List;

import org.ehealth_connector.common.enums.NullFlavor;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040AssignedEntity;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Organization;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Person;
import org.hl7.fhir.instance.model.api.IBaseResource;
import org.hl7.fhir.r4.model.Address;
import org.hl7.fhir.r4.model.CodeableConcept;
import org.hl7.fhir.r4.model.Coding;
import org.hl7.fhir.r4.model.ContactPoint;
import org.hl7.fhir.r4.model.Identifier;
import org.hl7.fhir.r4.model.Organization;
import org.hl7.fhir.r4.model.Practitioner;

import arztis.econnector.ihe.utilities.CdaUtil;
import arztis.econnector.rest.model.fhir.FhirAddress;
import arztis.econnector.rest.model.fhir.FhirContactPoint;
import arztis.econnector.rest.model.fhir.FhirIdentifier;
import arztis.econnector.rest.model.fhir.FhirOrganization;
import arztis.econnector.rest.model.fhir.FhirPractitioner;
import ca.uhn.fhir.context.FhirContext;
import ca.uhn.fhir.context.FhirVersionEnum;

/**
 * This class contains utilities to extract information from FHIR resources and
 * create FHIR resources from CDA R2 elements.
 *
 * @author Anna Jungwirth
 *
 */
public class FhirUtil {

	/** {@link FhirContext} with version R4. */
	private static FhirContext context;

	/** {@link FhirContext} with version DSTU3. */
	private static FhirContext contextDstu3;

	/**
	 * Default constructor.
	 */
	private FhirUtil() {
		throw new IllegalStateException("Utility class");
	}

	/**
	 * returns a FhirContext with version R4. If {@link #context} is null a new
	 * {@link FhirContext} is created.
	 *
	 * @return {@link FhirContext}
	 */
	public static FhirContext getFhirContext() {
		if (context == null) {
			context = new FhirContext(FhirVersionEnum.R4);
		}

		return context;
	}

	/**
	 * returns a FhirContext with version DSTU3. If {@link #context} is null a new
	 * {@link FhirContext} is created.
	 *
	 * @return {@link FhirContext}
	 */
	public static FhirContext getFhirContextDstu3() {
		if (contextDstu3 == null) {
			contextDstu3 = new FhirContext(FhirVersionEnum.DSTU3);
		}

		return contextDstu3;
	}

	/**
	 * creates JSON of passed {@link IBaseResource}.
	 *
	 * @param fhirResource to get JSON from
	 *
	 * @return created JSON
	 */
	public static String toJson(IBaseResource fhirResource) {
		return getFhirContext().newJsonParser().setPrettyPrint(true).encodeResourceToString(fhirResource);
	}

	/**
	 * extracts {@link Identifier} from passed <code>idToken</code>. Token in HL7
	 * FHIR are formatted as described in <a href=
	 * "https://www.hl7.org/fhir/search.html#token">https://www.hl7.org/fhir/search.html#token</a>.
	 *
	 * @param idToken token to be extracted in format {ID}|{system} or {ID} only
	 *
	 * @return extracted {@link Identifier}
	 */
	public static Identifier extractIdentifierFromTokenType(String idToken) {
		if (idToken == null || idToken.isEmpty()) {
			return null;
		}

		Identifier id = new Identifier();
		if (idToken.indexOf('|') != -1) {
			String[] tokenParts = idToken.split("\\|");
			id.setSystem(tokenParts[0]);
			id.setValue(tokenParts[1]);
		} else {
			id.setValue(idToken);
		}

		return id;
	}

	/**
	 * extracts {@link org.hl7.fhir.dstu3.model.Identifier} from passed
	 * <code>idToken</code>. Token in HL7 FHIR are formatted as described in
	 * <a href=
	 * "https://www.hl7.org/fhir/search.html#token">https://www.hl7.org/fhir/search.html#token</a>.
	 *
	 * @param idToken token to be extracted in format {ID}|{system} or {ID} only
	 *
	 * @return extracted {@link org.hl7.fhir.dstu3.model.Identifier}
	 */
	public static org.hl7.fhir.dstu3.model.Identifier extractIdentifierDstu3FromTokenType(String idToken) {
		Identifier id = extractIdentifierFromTokenType(idToken);

		if (id != null) {
			org.hl7.fhir.dstu3.model.Identifier dstu3Id = new org.hl7.fhir.dstu3.model.Identifier();
			dstu3Id.setValue(id.getValue());
			dstu3Id.setSystem(id.getSystem());
			return dstu3Id;
		}

		return null;
	}

	/**
	 * extracts {@link CodeableConcept} from passed <code>codeToken</code>. Token in
	 * HL7 FHIR are formatted as described in <a href=
	 * "https://www.hl7.org/fhir/search.html#token">https://www.hl7.org/fhir/search.html#token</a>.
	 *
	 * @param codeToken token to be extracted in format {code}|{system} or {code}
	 *                  only
	 *
	 * @return extracted {@link CodeableConcept}
	 */
	public static CodeableConcept extractCodeFromTokenType(String codeToken) {
		if (codeToken == null) {
			return null;
		}

		CodeableConcept code = new CodeableConcept();
		Coding coding = new Coding();
		if (codeToken.indexOf('|') != -1) {
			String[] tokenParts = codeToken.split("\\|");
			coding.setSystem(tokenParts[0]);
			coding.setCode(tokenParts[1]);
		} else {
			coding.setCode(codeToken);
		}

		code.addCoding(coding);
		return code;
	}

	/**
	 * extracts resource ID from passed <code>reference</code>. The item after last
	 * slash is used as resource ID
	 *
	 * @param reference to be extracted
	 *
	 * @return extracted resource ID
	 */
	public static String extractResourceIdOfReference(String reference) {
		if (reference != null && !reference.isEmpty() && reference.contains("/")) {
			return reference.substring(reference.indexOf('/') + 1);
		}

		return reference;
	}

	/**
	 * Adds details to passed {@link POCDMT000040AssignedEntity} of passed
	 * resources.
	 *
	 * @param assignedEntity to add details
	 * @param practitioner   details about person of entity
	 * @param org            details about organization of entity
	 * @param ids            identifiers of entity
	 *
	 * @return {@link POCDMT000040AssignedEntity} with added details
	 */
	public static POCDMT000040AssignedEntity createAssignedEntity(POCDMT000040AssignedEntity assignedEntity,
			Practitioner practitioner, Organization org, List<Identifier> ids) {
		if (assignedEntity == null) {
			assignedEntity = new POCDMT000040AssignedEntity();
		}

		assignedEntity.setClassCode("ASSIGNED");

		if (ids != null && !ids.isEmpty()) {
			for (Identifier id : ids) {
				if (id != null) {
					assignedEntity.getId().add(FhirIdentifier.createHl7CdaR2Ii(id, null));
				}
			}
		} else {
			assignedEntity.getId().add(FhirIdentifier.createHl7CdaR2Ii(null, NullFlavor.NOINFORMATION));
		}

		if (practitioner != null) {
			if (practitioner.hasAddress()) {
				for (Address address : practitioner.getAddress()) {
					if (address != null) {
						assignedEntity.getAddr().add(FhirAddress.createHl7CdaR2Ad(address, null));
					}
				}
			}

			if (practitioner.hasTelecom()) {
				for (ContactPoint contact : practitioner.getTelecom()) {
					if (contact != null) {
						assignedEntity.getTelecom().add(FhirContactPoint.createHl7CdaR2Tel(contact, null));
					}
				}
			}

			POCDMT000040Person person = new POCDMT000040Person();
			person.getClassCode().add("PSN");
			person.setDeterminerCode("INSTANCE");
			assignedEntity.setAssignedPerson(FhirPractitioner.getHl7CdaR2Pocdmt000040Person(practitioner, person));
		}

		if (org != null) {
			POCDMT000040Organization legalAuthenOrg = FhirOrganization.createHl7CdaR2Pocdmt000040Organization(org);
			legalAuthenOrg.setClassCode("ORG");
			legalAuthenOrg.setDeterminerCode(CdaUtil.DETERMINERCODE_INSTANCE);
			assignedEntity.setRepresentedOrganization(legalAuthenOrg);
		}

		return assignedEntity;
	}
}
