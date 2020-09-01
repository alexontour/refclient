/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
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

/**
 *
 * This class includes all needed transactions of IHE CMPD (Community Medication
 * Prescription and Dispense) integration profile. This profile describes the
 * process of planning, prescribing, validating, dispensing and administering
 * drugs in a domain. </br>
 * This profile includes PHARM-1 transaction to query pharmacy documents.
 * Furthermore this profile also contains transactions of IHE XDS profile. This
 * XDS transactions are available in {@link XdsTransactions}. XDS transactions
 * are needed to retrieve document set (ITI-43) and to provide and register
 * documents (ITI-41) </br>
 * This class contains PHARM-1 transaction. This transaction provides some
 * specilalized requests to find certain kind of document for specific purposes
 * like for prescription.
 *
 * <ul>
 * <li>FindMedicationTreatmentPlans</li>
 * <li>FindPrescriptions</li>
 * <li>FindDispenses</li>
 * <li>FindMedicationAdministrations</li>
 * <li>FindPrescriptionsForValidation</li>
 * <li>FindPrescriptionsForDispense</li>
 * </ul>
 *
 * In ELGA reference client, requests for finding prescriptions, for finding
 * prescriptions for dispense, finding medication treatment plans and for
 * finding medication administrations have been implemented. </br>
 *
 * @author Anna Jungwirth
 *
 */
public class PharmTransactions {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(PharmTransactions.class.getName());

	/** The Constant XML_FRAGMENT. */
	private static final String XML_FRAGMENT = "xml-fragment";

	/** The Constant SAML2_ASSERTION. */
	private static final String SAML2_ASSERTION = "saml2:Assertion";

	/**
	 * This method queries medication treatment plan for a given patient. In ELGA,
	 * this method can be used to query medication list or complete immunization
	 * status.
	 *
	 * @param patientId ID of patient to be queried
	 * @param status    restricts set of returned entries according to the
	 *                  availability status
	 * @param assertion assertion that authenticate health care provider who
	 *                  requests medciation treatment plan.
	 * @param typeCode  indicates whether medication list or complete immunization
	 *                  status should be queried. Values are available under
	 *                  <a href=
	 *                  "https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen">https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=ValueSet&loadName=HL7-at_XDS-Dokumentenklassen</a>
	 * @return if request was successful medication treatment plan is returned as
	 *         {@link RegistryObjectListType}
	 * @throws XmlException the xml exception
	 * @throws RemoteException the remote exception
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
	 * @param patientId the patient id
	 * @param status the status
	 * @param samlTicket the saml ticket
	 * @param forDispenses the for dispenses
	 * @return finded Prescriptions as AdhocQueryResponseDocument Object
	 * @throws RemoteException the remote exception
	 * @throws XmlException the xml exception
	 */

	/**
	 * This method queries all prescription documents for a given patient or only
	 * those that are ready for dispensing. In ELGA, this method can be used to
	 * query prescriptions.
	 *
	 * @param patientId    ID of patient to be queried
	 * @param status       restricts set of returned entries according to the
	 *                     availability status
	 * @param samlTicket   assertion that authenticate health care provider who
	 *                     requests prescriptions.
	 * @param forDispenses indicates whether all prescriptions or only prescriptions
	 *                     for dispenses should be queried.
	 * @return if request was successful metadata of found prescriptions are
	 *         returned as {@link AdhocQueryResponseDocument}
	 *
	 * @throws RemoteException
	 * @throws XmlException
	 */
	public AdhocQueryResponseDocument findPrescriptionsForDispenses(Identificator patientId, AvailabilityStatus status,
			AssertionType samlTicket, boolean forDispenses) throws RemoteException, XmlException {
		LOGGER.info("find prescriptions");
		return findMedications(patientId, status, samlTicket,
				IheServiceStubPool.getInstance().getCommunityPharmacyManagerService(),
				forDispenses ? PharmQueryIds.FIND_PRESCRIPTIONS_FOR_DISPENSES : PharmQueryIds.FIND_PRESCRIPTIONS, null);
	}

	/**
	 * This method queries medication administration documents for a given patient.
	 * In ELGA, this method can be used to query self-created immunization notes.
	 *
	 * @param patientId           ID of patient to be queried
	 * @param status              restricts set of returned entries according to the
	 *                            availability status
	 * @param samlTicket          assertion that authenticate health care provider
	 *                            who requests prescriptions.
	 * @param authorInstitutionId restricts set of returned entries according to the
	 *                            given OID of author
	 * @return if request was successful metadata of found medication administration
	 *         documents are returned as {@link AdhocQueryResponseDocument}
	 * @throws RemoteException the remote exception
	 * @throws XmlException the xml exception
	 */
	public AdhocQueryResponseDocument findMedicationAdministrations(Identificator patientId, AvailabilityStatus status,
			AssertionType samlTicket, String authorInstitutionId) throws RemoteException, XmlException {
		return findMedications(patientId, status, samlTicket,
				IheServiceStubPool.getInstance().getCommunityPharmacyManagerEhealthPlusEImmunizationStub(),
				PharmQueryIds.FIND_MEDICATION_ADMINISTRATIONS, authorInstitutionId);
	}

	/**
	 * Creates and send different PHARM-1 transactions according to passed
	 * parameters.
	 *
	 * @param patientId           ID of patient to be queried
	 * @param status              restricts set of returned entries according to the
	 *                            availability status
	 * @param samlTicket          assertion that authenticate health care provider
	 *                            who requests prescriptions.
	 * @param stub                service client which should be used to send
	 *                            request
	 * @param queryId             ID of provided stored query, which should be used
	 *                            {@link PharmQueryIds}
	 * @param authorInstitutionId restricts set of returned entries according to the
	 *                            given OID of author
	 * @return if request was successful metadata of found medication administration
	 *         documents are returned as {@link AdhocQueryResponseDocument}
	 * @throws XmlException the xml exception
	 * @throws RemoteException the remote exception
	 */
	private AdhocQueryResponseDocument findMedications(Identificator patientId, AvailabilityStatus status,
			AssertionType samlTicket, CommunityPharmacyManagerStub stub, PharmQueryIds queryId,
			String authorInstitutionId) throws XmlException, RemoteException {
		LOGGER.info("find medications");
		SecurityDocument security = SecurityDocument.Factory.newInstance();

		SecurityHeaderType securityHeaderType = SecurityHeaderType.Factory
				.parse(samlTicket.xmlText().replace(XML_FRAGMENT, SAML2_ASSERTION));

		security.setSecurity(securityHeaderType);

		LOGGER.info("send query pharmacy documents message");
		return stub.queryPharmacyDocuments_Message(
				IheQueryTransformer.createAdhocQueryRequestDocument(queryId, patientId, status, authorInstitutionId),
				security);

	}

}
