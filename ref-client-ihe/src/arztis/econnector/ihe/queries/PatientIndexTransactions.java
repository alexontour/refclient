/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.ihe.queries;

import java.util.ArrayList;
import java.util.List;

import org.hl7.fhir.r4.model.Address;
import org.hl7.fhir.r4.model.HumanName;
import org.hl7.fhir.r4.model.Identifier;
import org.husky.common.enums.AdministrativeGender;
import org.husky.communication.ConvenienceMasterPatientIndexV3;
import org.husky.communication.MasterPatientIndexQuery;
import org.husky.communication.MasterPatientIndexQueryResponse;
import org.husky.communication.mpi.impl.pdq.V3PdqQueryResponse;
import org.husky.fhir.structures.gen.FhirPatient;
import org.husky.xua.core.SecurityHeaderElement;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import arztis.econnector.ihe.utilities.IheServiceStubPool;

/**
 * This class contains all functionalities to request </br>
 *
 * <li>patient demographic information from ZPI (central patient index)</li>
 *
 * This class includes all needed transactions of IHE PDQ integration profile.
 *
 * @author Anna Jungwirth
 *
 */
@Component
public class PatientIndexTransactions {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(PatientIndexTransactions.class.getName());

	/**
	 * Default constructor.
	 */
	public PatientIndexTransactions() {
		super();
	}

	/**
	 * This method is used to search for individual entries from the ZPI for
	 * personal data that describe a patient. The search is limited by passed
	 * parameters. This request is part of IHE PDQ integration profile.
	 *
	 * @param fhirPatient object with details to search
	 * @param assertion   assertion that authenticate health care provider who
	 *                    requests patient information
	 *
	 * @return list of found {@link FhirPatient}
	 */
	public List<FhirPatient> queryPatientDemographics(FhirPatient fhirPatient, SecurityHeaderElement assertion) {
		if (fhirPatient == null) {
			return new ArrayList<>();
		}

		MasterPatientIndexQuery query;
		try {
			ConvenienceMasterPatientIndexV3 connection = IheServiceStubPool.getInstance().getPdqService();

			query = new MasterPatientIndexQuery(
					IheServiceStubPool.getInstance().getAffinityDomainZpi().getPdqDestination());

			if (fhirPatient.getName() != null && !fhirPatient.getName().isEmpty()) {
				for (HumanName humanName : fhirPatient.getName()) {
					query.addPatientName(true, humanName);
				}
			}

			if (fhirPatient.getIdentifier() != null && !fhirPatient.getIdentifier().isEmpty()) {
				for (Identifier identifier : fhirPatient.getIdentifier()) {
					query.addPatientIdentificator(identifier);
				}
			}

			if (fhirPatient.getAddress() != null) {
				for (Address address : fhirPatient.getAddress()) {
					query.addPatientAddress(address);
				}
			}

			if (fhirPatient.getBirthDate() != null) {
				query.setPatientDateOfBirth(fhirPatient.getBirthDate());
			}

			if (fhirPatient.getGenderElement() != null && fhirPatient.getGenderElement().getValue() != null) {
				query.setPatientSex(AdministrativeGender.valueOf(fhirPatient.getGenderElement().getValueAsString()));
			}

			MasterPatientIndexQueryResponse response = connection.queryPatientDemographics(query,
					IheServiceStubPool.getInstance().getAffinityDomainZpi(), assertion, null);

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Found {} patients.", response.getTotalNumbers());
			}

			V3PdqQueryResponse mpiQueryResponse = (V3PdqQueryResponse) response.getMpiQueryResponse();

			for (FhirPatient patient : mpiQueryResponse.getPatients()) {
				patient.setActive(true);
			}

			return mpiQueryResponse.getPatients();
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
		}

		return new ArrayList<>();
	}

}
