/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 * 
 */
package arztis.econnector.rest.model.fhir;

import org.ehealth_connector.common.hl7cdar2.AD;
import org.ehealth_connector.common.hl7cdar2.II;
import org.ehealth_connector.common.hl7cdar2.ON;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040AssignedCustodian;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Custodian;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040CustodianOrganization;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Organization;
import org.ehealth_connector.common.hl7cdar2.TEL;
import org.hl7.fhir.r4.model.ContactPoint;
import org.hl7.fhir.r4.model.Identifier;
import org.hl7.fhir.r4.model.Organization;
import org.openhealthtools.ihe.common.hl7v2.XON;
import org.openhealthtools.ihe.xds.metadata.impl.AuthorTypeImpl;

import arztis.econnector.ihe.utilities.CdaUtil;
import arztis.econnector.rest.utilities.FhirUtil;
import ca.uhn.fhir.model.api.annotation.ResourceDef;

/**
 * This class is a subclass of {@link Organization}. Therefore it represents a
 * group of people formed with the aim of achieving some action.</br>
 *
 * It contains functionalities for converting CDA R2
 * {@link POCDMT000040Organization} into HL7 FHIR {@link Organization} and vice
 * versa.
 *
 * @author Anna Jungwirth
 *
 */
@ResourceDef(name = "Organization", profile = "http://hl7.org/fhir/StructureDefinition/Organization")
public class FhirOrganization extends Organization {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public FhirOrganization() {

	}

	/**
	 * Constructor to create organization for practitioner in document response
	 * (ITI-18).
	 *
	 * @param author author of document
	 * @param index  index of author to create. It must be build of {document
	 *               response index} - {author index}
	 */
	public FhirOrganization(AuthorTypeImpl author, String index) {
		fromDocumentEntryResponse(author, index);
	}

	/**
	 * Constructor to create organization for practitioner of HL7v2 XON element.
	 * This is included in response of PHARM-1 as author institution
	 *
	 * @param xon   xon element
	 * @param index index of author to create. It must be build of {document
	 *              response index} - {author index}
	 */
	public FhirOrganization(XON xon, String index) {
		fromXon(xon, index);
	}

	/**
	 * Constructor to create organization for custodian of HL7 CDA R2 custodian
	 * organization. This is included in CDA header.
	 *
	 * @param organization custodian organization
	 * @param index        index of custodian
	 */
	public FhirOrganization(POCDMT000040CustodianOrganization organization, String index) {
		fromPOCDMT000040CustodianOrganization(organization, index);
	}

	/**
	 * Constructor to create organization with name.
	 *
	 * @param name of institution
	 */
	public FhirOrganization(String name) {
		setName(name);
	}

	/**
	 * Constructor to create organization of HL7 CDA V2 Organization.
	 *
	 * @param organization HL7 CDA V2 Organization
	 * @param id           of resource to reference to
	 */
	public FhirOrganization(POCDMT000040Organization organization, String id) {
		fromPOCDMT000040Organization(organization, id);
	}

	/**
	 * creates JSON of this organization instance like specified in
	 * http://hl7.org/fhir/R4/organization.html
	 *
	 * @return JSON string
	 */
	public String toJson() {
		return FhirUtil.getFhirContext().newJsonParser().encodeResourceToString(this);
	}

	/**
	 * Creates HL7 FHIR {@link Organization} instance from passed
	 * {@link AuthorTypeImpl}. Passed <code>index</code> is used as resource ID.
	 * Name and identifier are added to organization.
	 *
	 * @param authorTypeImpl organization details
	 * @param index          index of organization. It must be build of {document
	 *                       response index} - {organization index}
	 */
	private void fromDocumentEntryResponse(AuthorTypeImpl authorTypeImpl, String index) {
		if (authorTypeImpl == null) {
			return;
		}

		setId(index);

		if (authorTypeImpl.getAuthorInstitution() != null && !authorTypeImpl.getAuthorInstitution().isEmpty()
				&& (authorTypeImpl.getAuthorInstitution().get(0) instanceof XON)) {
			XON xon = ((XON) authorTypeImpl.getAuthorInstitution().get(0));

			if (xon != null) {
				fromXon(xon, index);
			}
		}
	}

	/**
	 * Creates HL7 FHIR {@link Organization} instance from passed {@link XON}.
	 * Passed <code>index</code> is used as resource ID. Name and identifier are
	 * added to organization.
	 *
	 * @param institution the institution
	 * @param index          index of organization. It must be build of {document
	 *                       response index} - {organization index}
	 */
	private void fromXon(XON institution, String index) {
		if (institution == null) {
			return;
		}

		setId(index);
		setName(institution.getOrganizationName());

		Identifier identifier = new Identifier();
		identifier.setSystem(institution.getAssigningAuthorityUniversalId());
		identifier.setValue(institution.getIdNumber());
		addIdentifier(identifier);
	}

	/**
	 * Creates {@link Organization} of passed HL7 CDA R2
	 * {@link POCDMT000040Organization}. </br>
	 * This method adds passed <code>id</code> as resource ID. And it appends
	 * extracted names, addresses, identifiers and contact details of passed
	 * {@link POCDMT000040Organization}.
	 *
	 * @param hl7CdaR2Value to be extracted
	 * @param id            resource id to reference to
	 */
	private void fromPOCDMT000040Organization(POCDMT000040Organization hl7CdaR2Value, String id) {
		if (hl7CdaR2Value == null) {
			return;
		}

		setId(id);

		for (AD item : hl7CdaR2Value.getAddr()) {
			addAddress(new FhirAddress(item));
		}

		for (II item : hl7CdaR2Value.getId()) {
			addIdentifier(new FhirIdentifier(item));
		}

		for (ON item : hl7CdaR2Value.getName()) {
			setName(item.xmlContent);
		}

		for (TEL item : hl7CdaR2Value.getTelecom()) {
			addTelecom(new FhirContactPoint(item));
		}
	}

	/**
	 * Creates {@link POCDMT000040CustodianOrganization} of passed HL7 CDA R2
	 * {@link POCDMT000040Organization}. </br>
	 * This method adds passed <code>id</code> as resource ID. And it appends
	 * extracted name, address, identifiers and contact details of passed
	 * {@link POCDMT000040CustodianOrganization}.
	 *
	 * @param hl7CdaR2Value to be extracted
	 * @param id            resource id to reference to
	 */
	private void fromPOCDMT000040CustodianOrganization(POCDMT000040CustodianOrganization hl7CdaR2Value, String id) {
		if (hl7CdaR2Value == null) {
			return;
		}

		setId(id);
		addAddress(new FhirAddress(hl7CdaR2Value.getAddr()));

		for (II item : hl7CdaR2Value.getId()) {
			addIdentifier(new FhirIdentifier(item));
		}

		setName(hl7CdaR2Value.getName().xmlContent);
		addTelecom(new FhirContactPoint(hl7CdaR2Value.getTelecom()));
	}

	/**
	 * Creates {@link POCDMT000040Organization} of passed {@link Organization}.
	 * </br>
	 * This method extracts name, addresses, identifiers and contact details of
	 * passed {@link Organization}.
	 *
	 * @param org to be extracted
	 *
	 * @return created {@link POCDMT000040Organization}
	 *
	 */
	public static org.ehealth_connector.common.hl7cdar2.POCDMT000040Organization createHl7CdaR2Pocdmt000040Organization(
			Organization org) {

		org.ehealth_connector.common.hl7cdar2.POCDMT000040Organization retVal = new POCDMT000040Organization();

		if (org != null) {
			for (org.hl7.fhir.r4.model.Address item : org.getAddress()) {
				if (item != null)
					retVal.getAddr().add(FhirAddress.createHl7CdaR2Ad(item, null));
			}

			for (Identifier item : org.getIdentifier()) {
				if (item != null)
					retVal.getId().add(FhirIdentifier.createHl7CdaR2Ii(item, null));
			}

			if (org.getName() != null) {
				retVal.getName().add(FhirHumanName.createHl7CdaR2On(org.getName()));
			}

			for (ContactPoint item : org.getTelecom()) {
				if (item != null)
					retVal.getTelecom().add(FhirContactPoint.createHl7CdaR2Tel(item, null));
			}
		}

		return retVal;

	}

	/**
	 * Creates {@link POCDMT000040CustodianOrganization} of passed
	 * {@link Organization}. </br>
	 * This method extracts name, address, identifiers and contact details of passed
	 * {@link Organization}.
	 *
	 * @param org to be extracted
	 *
	 * @return created {@link POCDMT000040CustodianOrganization}
	 *
	 */
	public static POCDMT000040CustodianOrganization createHl7CdaR2POCDMT000040CustodianOrganization(Organization org) {

		POCDMT000040CustodianOrganization retVal = new POCDMT000040CustodianOrganization();

		if (org != null) {
			if (org.hasAddress()) {
				retVal.setAddr(FhirAddress.createHl7CdaR2Ad(org.getAddressFirstRep(), null));
			}

			for (Identifier item : org.getIdentifier()) {
				if (item != null)
					retVal.getId().add(FhirIdentifier.createHl7CdaR2Ii(item, null));
			}

			if (org.getName() != null) {
				retVal.setName(FhirHumanName.createHl7CdaR2On(org.getName()));
			}

			if (org.hasTelecom()) {
				retVal.setTelecom(FhirContactPoint.createHl7CdaR2Tel(org.getTelecomFirstRep(), null));
			}
		}

		return retVal;

	}

	/**
	 * Creates the header custodian.
	 *
	 * @param org the org
	 * @return the POCDMT 000040 custodian
	 */
	public static POCDMT000040Custodian createHeaderCustodian(Organization org) {
		POCDMT000040Custodian cust = new POCDMT000040Custodian();
		cust.getTypeCode().add("CST");
		cust.setAssignedCustodian(new POCDMT000040AssignedCustodian());
		cust.getAssignedCustodian().setClassCode("ASSIGNED");
		cust.getAssignedCustodian()
				.setRepresentedCustodianOrganization(createHl7CdaR2POCDMT000040CustodianOrganization(org));
		cust.getAssignedCustodian().getRepresentedCustodianOrganization().setClassCode("ORG");
		cust.getAssignedCustodian().getRepresentedCustodianOrganization()
				.setDeterminerCode(CdaUtil.DETERMINERCODE_INSTANCE);
		return cust;
	}

}
