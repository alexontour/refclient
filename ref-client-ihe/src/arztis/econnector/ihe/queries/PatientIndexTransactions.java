package arztis.econnector.ihe.queries;

import java.util.ArrayList;
import java.util.List;

import org.ehealth_connector.communication.at.ConvenienceMasterPatientIndexV3At;
import org.ehealth_connector.communication.at.MasterPatientIndexQueryAt;
import org.ehealth_connector.communication.at.MasterPatientIndexQueryResponseAt;
import org.ehealth_connector.fhir.structures.gen.FhirPatient;
import org.hl7.fhir.dstu3.model.Address;
import org.hl7.fhir.dstu3.model.HumanName;
import org.hl7.fhir.dstu3.model.Identifier;
import org.openhealthtools.ihe.xua.XUAAssertion;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.ihe.utilities.IheServiceStubPool;

public class PatientIndexTransactions {

	private static final Logger LOGGER = LoggerFactory.getLogger(PatientIndexTransactions.class.getName());

	private PatientIndexTransactions() {
		throw new IllegalStateException("Utility class");
	}

	public static List<FhirPatient> queryPatientDemographics(FhirPatient fhirPatient, XUAAssertion assertion) {
		if (fhirPatient == null) {
			return new ArrayList<>();
		}

		MasterPatientIndexQueryAt query;
		try {
			query = new MasterPatientIndexQueryAt(
					IheServiceStubPool.getInstance().getAffinityDomainZpi().getPdqDestination());

			if (fhirPatient.getName() != null && !fhirPatient.getName().isEmpty()) {
				for (HumanName humanName : fhirPatient.getName()) {
					query.addPatientNameAt(true, humanName);
				}
			}

			if (fhirPatient.getIdentifier() != null && !fhirPatient.getIdentifier().isEmpty()) {
				for (Identifier identifier : fhirPatient.getIdentifier()) {
					query.addPatientIdentificatorAt(identifier);
				}
			}

			if (fhirPatient.getAddress() != null) {
				for (Address address : fhirPatient.getAddress()) {
					query.addPatientAddressAt(address);
				}
			}

			if (fhirPatient.getBirthDate() != null) {
				query.setPatientDateOfBirth(fhirPatient.getBirthDate());
			}

			if (fhirPatient.getGenderElement() != null && fhirPatient.getGenderElement().getValue() != null) {
				query.setPatientSexAt(fhirPatient.getGenderElement().getValue());
			}

			MasterPatientIndexQueryResponseAt response = ConvenienceMasterPatientIndexV3At.queryPatientDemographics(
					query, IheServiceStubPool.getInstance().getAffinityDomainZpi(), assertion);

			if (LOGGER.isInfoEnabled()) {
				LOGGER.info("Found {} patients.", response.getTotalNumbers());
			}

			return response.getFhirPatients();
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
		}

		return new ArrayList<>();
	}

}
