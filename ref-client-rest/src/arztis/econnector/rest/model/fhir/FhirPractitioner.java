/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest.model.fhir;

import org.hl7.fhir.r4.model.Address;
import org.hl7.fhir.r4.model.CodeableConcept;
import org.hl7.fhir.r4.model.Coding;
import org.hl7.fhir.r4.model.HumanName;
import org.hl7.fhir.r4.model.Identifier;
import org.hl7.fhir.r4.model.Practitioner;
import org.husky.common.at.enums.AuthorRole;
import org.husky.common.hl7cdar2.PN;
import org.husky.common.hl7cdar2.POCDMT000040Person;
import org.openehealth.ipf.commons.ihe.xds.core.metadata.Person;

import arztis.econnector.ihe.generatedClasses.gdaiws.GdaIndexWsStub.GdaAddress;
import arztis.econnector.ihe.generatedClasses.gdaiws.GdaIndexWsStub.GdaDescriptor;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotType1;
import arztis.econnector.ihe.queries.GdaSearch;
import arztis.econnector.ihe.utilities.CdaUtil;
import arztis.econnector.ihe.utilities.MetadataConverter;
import arztis.econnector.rest.utilities.FhirUtil;
import ca.uhn.fhir.model.api.annotation.ResourceDef;

/**
 * This class is used to pass details to query health care providers (GDA),
 * which can use ELGA. The class attributes restrict the search. It is important
 * to restrict the search of health care providers as much as possible to enable
 * best possible return values. </br>
 * Furthermore it can be used to create parts of CDA R2 document.
 *
 * @author Anna Jungwirth
 *
 */
@ResourceDef(name = "Practitioner", profile = "http://hl7.org/fhir/StructureDefinition/Practitioner")
public class FhirPractitioner extends Practitioner {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;
	
	/** The max results. */
	private long maxResults;

	/**
	 * Default constructor.
	 */
	public FhirPractitioner() {

	}

	/**
	 * Creates HL7 FHIR {@link Practitioner} instance from document response
	 * (ITI-18).
	 *
	 * @param author author or legal authenticator of document
	 * @param index  index of author or legal authenticator. It must be build of
	 *               {document response index} - {author index}
	 */
	public FhirPractitioner(Person author, String index) {
		fromDocumentEntryResponse(author, index);
	}

	/**
	 * Creates HL7 FHIR {@link Practitioner} instance from extrinsic object
	 * (PHARM-1).
	 *
	 * @param extrinsicObject response from PHARM-1
	 * @param index           index of author or legal authenticator. It must be
	 *                        build of {document response index} - {author index}
	 */
	public FhirPractitioner(ExtrinsicObjectType extrinsicObject, String index) {
		if (extrinsicObject != null) {
			fromExtrinsicObject(extrinsicObject.getSlotArray(), index);
		}
	}

	/**
	 * Creates HL7 FHIR {@link Practitioner} instance with following parameters.
	 *
	 * @param family     health care provider's family name
	 * @param given      health care provider's given name
	 * @param role       health care provider's role
	 * @param maxResults maxResults max results, which should be returned by search
	 * @param active     specifies whether the health care provider is active or not
	 */
	public FhirPractitioner(String family, String given, String role, long maxResults, boolean active) {
		addName(given, family, null, null);
		setRole(role);
		setMaxResults(maxResults);
		setActive(active);
	}

	/**
	 * Constructor to create an instance of HL7 FHIR {@link Practitioner} of the
	 * return value of the GDA index search {@link GdaSearch}.
	 *
	 * @param gdaDesc response of GDA index search
	 */
	public FhirPractitioner(GdaDescriptor gdaDesc) {
		fromGdaDescriptor(gdaDesc);
	}

	/**
	 * Constructor to create an instance of HL7 FHIR {@link Practitioner} of HL7 CDA
	 * R2 person.
	 *
	 * @param person HL7 CDA R2 person
	 * @param id     resource id to reference to
	 */
	public FhirPractitioner(POCDMT000040Person person, String id) {
		fromPOCDMT000040Person(person, id);
	}

	/**
	 * The details about the person to search. Details like given and family name
	 * will be used to search for the health care provider.
	 *
	 * @param given  health care provider's given name
	 * @param family health care provider's family name
	 * @param prefix health care provider's title before the name. It isn't used to
	 *               restrict search
	 * @param suffix health care provider's title after the name. It isn't used to
	 *               restrict search
	 */
	public void addName(String given, String family, String prefix, String suffix) {
		HumanName name = new HumanName();
		name.addGiven(given);
		name.setFamily(family);
		name.addPrefix(prefix);
		name.addSuffix(suffix);
		addName(name);
	}

	/**
	 * The role of the health care provider to search. Possible values are available
	 * under https://termpub.gesundheit.gv.at (ELGA_GDA_Aggregatrollen)
	 *
	 * @param role health care provider's role
	 */
	public void setRole(String role) {
		AuthorRole authorRole = AuthorRole.getEnum(role);

		if (authorRole != null) {
			PractitionerQualificationComponent qualification = new PractitionerQualificationComponent();
			CodeableConcept code = new CodeableConcept();
			Coding coding = new Coding();
			coding.setCode(authorRole.getCodeValue());
			coding.setSystem(authorRole.getCodeSystemId());
			code.addCoding(coding);
			qualification.setCode(code);
			addQualification(qualification);
		}
	}

	/**
	 * The max results, which should be returned. If this is to small for all
	 * returned health care provider information an exception will be thrown.
	 *
	 * @param maxResults max results, which should be returned
	 */
	public void setMaxResults(long maxResults) {
		this.maxResults = maxResults;
	}

	/**
	 * Gets the max results.
	 *
	 * @return the max results
	 */
	public long getMaxResults() {
		return this.maxResults;
	}

	/**
	 * Specifies whether the health care provider is active or not.
	 *
	 * @param statusActive true, if the health care provider is active, otherwise
	 *                     false
	 */
	public void setStatusActive(boolean statusActive) {
		setActive(statusActive);
	}

	/**
	 * The address of the health care provider.
	 *
	 * @param addressline addressline of health care provider's address
	 * @param city        city of health care provider's address
	 * @param postalcode  postal code of health care provider's address
	 * @param country     country of health care provider's address
	 * @param state       state of health care provider's address
	 */
	public void addAddress(String addressline, String city, String postalcode, String country, String state) {
		Address address = new Address();
		address.setCountry(country);
		address.setCity(city);
		address.setPostalCode(postalcode);
		address.setState(state);
		address.addLine(addressline);
		addAddress(address);
	}

	/**
	 * creates JSON of this practitioner instance like specified in
	 * http://hl7.org/fhir/R4/practitioner.html
	 *
	 * @return JSON string
	 */
	public String toJson() {
		return FhirUtil.toJson(this);
	}

	/**
	 * Creates HL7 FHIR {@link Practitioner} instance from passed {@link XCN}.
	 * Passed <code>index</code> is used as resource ID. Name and identifier are
	 * added to practitioner.
	 *
	 * @param author person formatted as HL7 v2 data type {@link XCN}
	 * @param index  index of author or legal authenticator. It must be build of
	 *               {document response index} - {author index}
	 */
	private void fromDocumentEntryResponse(Person author, String index) {
		if (author == null) {
			return;
		}

		setId(index);
		addName(author.getName().getGivenName(), author.getName().getFamilyName(), author.getName().getPrefix(),
				author.getName().getSuffix());

		Identifier id = new Identifier();
		id.setValue(author.getId().getId());

		if (author.getId().getAssigningAuthority() != null) {
			id.setSystem(author.getId().getAssigningAuthority().getUniversalId());
		}
		addIdentifier(id);
	}

	/**
	 * Creates HL7 FHIR {@link Practitioner} instance from passed {@link SlotType1}.
	 * This method extracts legal authenticator from passed <code>slots</code>
	 *
	 * @param slots array of {@link SlotType1}
	 * @param index index of legal authenticator. It must be build of {document
	 *              response index} - {author index}
	 */
	private void fromExtrinsicObject(SlotType1[] slots, String index) {
		if (slots == null) {
			return;
		}

		for (SlotType1 slot : slots) {
			if (slot != null && "legalAuthenticator".equalsIgnoreCase(slot.getName())) {
				Person xcn = Person.parse(MetadataConverter.getStringFromSlot(slot), Person.class);
				if (xcn != null) {
					fromDocumentEntryResponse(xcn, index);
				}
			}
		}
	}

	/**
	 * Creates HL7 FHIR {@link Practitioner} instance from passed
	 * {@link GdaDescriptor}. This method extracts name, role, identifiers and
	 * addresses of passed {@link GdaDescriptor}.
	 *
	 * @param gdaDesc to be extracted
	 */
	public void fromGdaDescriptor(GdaDescriptor gdaDesc) {
		if (gdaDesc == null) {
			return;
		}

		addName(gdaDesc.getFirstname(), gdaDesc.getSurname(), gdaDesc.getTitle(), null);

		if (gdaDesc.getElgaRoles() != null && gdaDesc.getElgaRoles().length > 0 && gdaDesc.getElgaRoles()[0] != null
				&& gdaDesc.getElgaRoles()[0].getId() != null) {
			setRole(gdaDesc.getElgaRoles()[0].getId());
		}

		if (gdaDesc.getGdaId() != null && gdaDesc.getGdaId().getOidIssuingAuthority() != null) {
			Identifier identifier = new Identifier();
			identifier.setValue(gdaDesc.getGdaId().getId());
			identifier.setSystem(gdaDesc.getGdaId().getOidIssuingAuthority());
			addIdentifier(identifier);
		}

		if (gdaDesc.getAddresses() != null && gdaDesc.getAddresses().length > 0) {
			for (GdaAddress gdaAddress : gdaDesc.getAddresses()) {
				if (gdaAddress != null) {
					String addressline = String.format("%s %s", gdaAddress.getStreetName(),
							gdaAddress.getStreetNumber());
					addAddress(addressline, gdaAddress.getCity(), gdaAddress.getZip(), gdaAddress.getCountry(),
							gdaAddress.getState());
				}
			}
		}
	}

	/**
	 * Creates {@link Practitioner} of passed HL7 CDA R2 {@link POCDMT000040Person}.
	 * </br>
	 * This method adds passed <code>id</code> as resource ID. And it appends
	 * extracted names of passed {@link POCDMT000040Person}.
	 *
	 * @param person to be extracted
	 * @param id     resource id to reference to
	 */
	private void fromPOCDMT000040Person(POCDMT000040Person person, String id) {
		setId(id);
		if (person != null && person.getName() != null) {
			for (PN pn : person.getName()) {
				if (pn != null) {
					addName(new FhirHumanName(pn));
				}
			}
		}
	}

	/**
	 * Creates {@link POCDMT000040Person} of passed {@link Practitioner}. </br>
	 * This method extracts names of passed {@link Practitioner} and added to passed
	 * {@link POCDMT000040Person}. If {@code person} is null a new instance of
	 * {@link POCDMT000040Person} is created.
	 *
	 * @param practitioner to be extracted
	 * @param person       CDA R2 element to add
	 *
	 * @return {@link POCDMT000040Person} with added details.
	 *
	 */
	public static POCDMT000040Person getHl7CdaR2Pocdmt000040Person(Practitioner practitioner,
			POCDMT000040Person person) {
		if (practitioner == null) {
			return person;
		}

		if (person == null) {
			person = new POCDMT000040Person();
		}

		if (practitioner.hasName()) {
			for (HumanName nam : practitioner.getName()) {
				if (nam != null) {
					person.getName().add(FhirHumanName.createHl7CdaR2Pn(nam, null));
				}
			}

			if (person.getClassCode() != null && person.getClassCode().isEmpty()) {
				person.getClassCode().add("PSN");
			}
			person.setDeterminerCode(CdaUtil.DETERMINERCODE_INSTANCE);
		}
		return person;
	}

}
