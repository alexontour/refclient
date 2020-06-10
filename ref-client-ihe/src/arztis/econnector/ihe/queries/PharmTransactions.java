package arztis.econnector.ihe.queries;

import java.rmi.RemoteException;

import org.apache.xmlbeans.XmlException;
import org.ehealth_connector.common.Identificator;
import org.ehealth_connector.common.at.enums.AvailabilityStatus;
import org.ehealth_connector.common.at.enums.TypeCode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityDocument;
import arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityHeaderType;
import arztis.econnector.ihe.generatedClasses.pharm.CommunityPharmacyManagerStub;
import arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument;
import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType;
import arztis.econnector.ihe.queries.common.IheQueryTransformer;
import arztis.econnector.ihe.queries.common.PharmQueryIds;
import arztis.econnector.ihe.utilities.IheServiceStubPool;

public class PharmTransactions {

	private static final Logger LOGGER = LoggerFactory.getLogger(PharmTransactions.class.getName());
	private static final String XML_FRAGMENT = "xml-fragment";
	private static final String SAML2_ASSERTION = "saml2:Assertion";

	/**
	 * This method queries the list of medication for one patient
	 *
	 * @param documentReference includes details to restrict search
	 * @param assertion         of registered user to use for authentication
	 * @param typeCode          type code to restrict search
	 * 
	 * @return if request was successful found medication list is returned in a FHIR
	 *         bundle, otherwise response with details about error is returned in a
	 *         FHIR bundle
	 * @throws XmlException
	 * @throws RemoteException
	 */
	public RegistryObjectListType findMedicationList(Identificator patientId, AvailabilityStatus status,
			AssertionType assertion, String typeCode) throws XmlException, RemoteException {
		SecurityDocument security = SecurityDocument.Factory.newInstance();

		SecurityHeaderType securityHeaderType = SecurityHeaderType.Factory
				.parse(assertion.xmlText().replace(XML_FRAGMENT, SAML2_ASSERTION));

		security.setSecurity(securityHeaderType);

		CommunityPharmacyManagerStub communityPharmacyManager = null;

		if (TypeCode.isImmunizationHistory(typeCode)) {
			communityPharmacyManager = IheServiceStubPool.getInstance()
					.getCommunityPharmacyManagerEhealthPlusEImmunizationStub();
		} else {
			communityPharmacyManager = IheServiceStubPool.getInstance().getCommunityPharmacyManagerService();
		}

		return communityPharmacyManager
				.queryPharmacyDocuments_Message(IheQueryTransformer.createAdhocQueryRequestDocument(
						PharmQueryIds.FIND_MEDICATION_LIST, patientId, status, null), security)
				.getAdhocQueryResponse().getRegistryObjectList();
	}

	/**
	 * This methods searches prescriptions for dispense of one Patient. The
	 * parameters of this method filter the request.
	 *
	 * @param documentReference restricts search of prescriptions
	 * @param pEmedIds          List<String>
	 *
	 * @return finded Prescriptions as AdhocQueryResponseDocument Object
	 * @throws XmlException 
	 * @throws RemoteException 
	 */

	public AdhocQueryResponseDocument findPrescriptionsForDispenses(Identificator patientId, AvailabilityStatus status,
			AssertionType samlTicket, boolean pForDispenses) throws RemoteException, XmlException {
		LOGGER.info("find prescriptions");
		return findMedications(patientId, status, samlTicket,
				IheServiceStubPool.getInstance().getCommunityPharmacyManagerService(),
				pForDispenses ? PharmQueryIds.FIND_PRESCRIPTIONS_FOR_DISPENSES : PharmQueryIds.FIND_PRESCRIPTIONS, null);
	}

	/**
	 * This methods searches update immunization states ("Update
	 * Immunisierungsstatus") of one Patient. The parameters of this method filter
	 * the request.
	 *
	 * @param pSearchParameter SearchParameter
	 * @param pEmedIds         List<String>
	 *
	 * @return found Update immunizations as {@link FhirBundle}
	 * @throws XmlException 
	 * @throws RemoteException 
	 */

	public AdhocQueryResponseDocument findMedicationAdministrations(Identificator patientId, AvailabilityStatus status,
			AssertionType samlTicket, String authorInstitutionId) throws RemoteException, XmlException {
		return findMedications(patientId, status, samlTicket,
				IheServiceStubPool.getInstance().getCommunityPharmacyManagerEhealthPlusEImmunizationStub(),
				PharmQueryIds.FIND_MEDICATION_ADMINISTRATIONS, authorInstitutionId);
	}

	private AdhocQueryResponseDocument findMedications(Identificator patientId, AvailabilityStatus status,
			AssertionType samlTicket, CommunityPharmacyManagerStub stub, PharmQueryIds queryId, String authorInstitutionId) throws XmlException, RemoteException {
		LOGGER.info("find medications");
		SecurityDocument security = SecurityDocument.Factory.newInstance();

		SecurityHeaderType securityHeaderType = SecurityHeaderType.Factory
				.parse(samlTicket.xmlText().replace(XML_FRAGMENT, SAML2_ASSERTION));

		security.setSecurity(securityHeaderType);

		LOGGER.info("send query pharmacy documents message");
		return stub.queryPharmacyDocuments_Message(
				IheQueryTransformer.createAdhocQueryRequestDocument(queryId, patientId, status, authorInstitutionId), security);

	}

}
