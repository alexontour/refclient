package arztis.econnector.rest.model.fhir;

import org.ehealth_connector.common.at.enums.AuthorRole;
import org.ehealth_connector.common.hl7cdar2.PN;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Person;
import org.hl7.fhir.r4.model.Address;
import org.hl7.fhir.r4.model.CodeableConcept;
import org.hl7.fhir.r4.model.Coding;
import org.hl7.fhir.r4.model.HumanName;
import org.hl7.fhir.r4.model.Identifier;
import org.hl7.fhir.r4.model.Practitioner;
import org.openhealthtools.ihe.common.hl7v2.XCN;
import org.openhealthtools.ihe.common.hl7v2.format.HL7V2MessageFormat;
import org.openhealthtools.ihe.common.hl7v2.format.MessageDelimiters;

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
 * best possible return values.
 * 
 * @author ET-Innovations
 *
 */
@ResourceDef(name = "Practitioner", profile = "http://hl7.org/fhir/StructureDefinition/Practitioner")
public class FhirPractitioner extends Practitioner {

	private static final long serialVersionUID = 1L;
	private long maxResults;

	/**
	 * Default constructor
	 */
	public FhirPractitioner() {

	}

	/**
	 * Creates fhir practitioner instance from document response (ITI-18)
	 * 
	 * @param author author or legal authenticator of document
	 * @param index  index of author or legal authenticator. It must be build of
	 *               {document response index} - {author index}
	 */
	public FhirPractitioner(XCN author, String index) {
		fromDocumentEntryResponse(author, index);
	}

	/**
	 * Creates fhir practitioner instance from extrinsic object (PHARM-1)
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
	 * Creates fhir practitioner instance with following parameters.
	 * 
	 * @param given      health care provider's given name
	 * @param family     health care provider's family name
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
	 * Constructor to create an instance of fhir practitioner of the return value of
	 * the GDA index search {@link GdaSearch}
	 * 
	 * @param gdaDesc response of GDA index search
	 */
	public FhirPractitioner(GdaDescriptor gdaDesc) {
		fromGdaDescriptor(gdaDesc);
	}

	/**
	 * Constructor to create an instance of fhir practitioner of HL7 CDA R2 person
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

	public long getMaxResults() {
		return this.maxResults;
	}

	/**
	 * Specifies whether the health care provider is active or not
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

	private void fromDocumentEntryResponse(XCN author, String index) {
		if (author == null) {
			return;
		}

		setId(index);
		addName(author.getGivenName(), author.getFamilyName(), author.getPrefix(), author.getSuffix());

		Identifier id = new Identifier();
		id.setValue(author.getIdNumber());
		id.setSystem(author.getAssigningAuthorityUniversalId());
		addIdentifier(id);
	}

	private void fromExtrinsicObject(SlotType1[] slots, String index) {
		if (slots == null) {
			return;
		}

		for (SlotType1 slot : slots) {
			if (slot != null && "legalAuthenticator".equalsIgnoreCase(slot.getName())) {
				XCN xcn = HL7V2MessageFormat.buildXCNFromMessageString(MetadataConverter.getStringFromSlot(slot),
						MessageDelimiters.COMPONENT, MessageDelimiters.SUBCOMPONENT);
				if (xcn != null) {
					fromDocumentEntryResponse(xcn, index);
				}
			}
		}
	}

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

	public static POCDMT000040Person getPOCDMT000040Person(Practitioner practitioner) {
		if (practitioner == null) {
			return new POCDMT000040Person();
		}

		POCDMT000040Person person = new POCDMT000040Person();
		if (practitioner.getName() != null) {
			person.getName().clear();

			for (HumanName nam : practitioner.getName()) {
				if (nam != null) {
					person.getName().add(FhirHumanName.createHl7CdaR2Pn(nam, null));
				}
			}
		}

		return person;
	}

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
