package arztis.econnector.rest.server;

import org.hl7.fhir.r4.model.Bundle;
import org.hl7.fhir.r4.model.Patient;

/** Boundary for the external ZPI/PDQ patient demographic query. */
public interface ExternalPatientIndex {
    Bundle queryPatientDemographics(Patient criteria);
}
