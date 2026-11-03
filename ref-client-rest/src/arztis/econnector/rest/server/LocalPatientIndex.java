package arztis.econnector.rest.server;

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import java.util.Locale;
import org.hl7.fhir.r4.model.Bundle;
import org.hl7.fhir.r4.model.Patient;
import arztis.econnector.rest.utilities.FhirUtil;

/** Synthetic ZPI/PDQ service mock; never derives identities from submitted documents. */
public final class LocalPatientIndex implements ExternalPatientIndex {
    private final List<Patient> patients;
    public LocalPatientIndex() throws Exception {
        Bundle fixtures = FhirUtil.getFhirContext().newJsonParser().parseResource(Bundle.class,
            Files.readString(Path.of("resources", "mock", "zpi-patients.json")));
        patients = fixtures.getEntry().stream().map(e -> (Patient)e.getResource()).collect(java.util.stream.Collectors.toList());
    }
    private static String normalized(String value) { return value == null ? "" : value.strip().toLowerCase(Locale.ROOT); }
    public Bundle queryPatientDemographics(Patient criteria) {
        var name = criteria.getNameFirstRep();
        String family = normalized(name.getFamily()), given = normalized(name.getGivenAsSingleString());
        if (!criteria.hasIdentifier() && family.isEmpty() && given.isEmpty() && !criteria.hasBirthDate() && !criteria.hasGender()) {
            ActivityLog.event("MOCK", "WARN", "ZPI/PDQ-Mock · Patientensuche abgelehnt · Suchkriterium fehlt.");
            throw new IllegalArgumentException("Mindestens SVNR, Name, Geburtsdatum oder Geschlecht als Suchkriterium angeben.");
        }
        for (var id : criteria.getIdentifier()) if (!id.hasValue()) throw new IllegalArgumentException("Leere Patientenkennung ist kein Suchkriterium.");
        ActivityLog.event("MOCK", "INFO", "ZPI/PDQ-Mock · queryPatientDemographics gestartet · synthetischen Patientenindex abfragen.");
        Bundle result = new Bundle().setType(Bundle.BundleType.SEARCHSET);
        for (Patient patient : patients) {
            var pn = patient.getNameFirstRep();
            if (!family.isEmpty() && !normalized(pn.getFamily()).startsWith(family)) continue;
            if (!given.isEmpty() && !normalized(pn.getGivenAsSingleString()).startsWith(given)) continue;
            if (criteria.hasBirthDate() && !criteria.getBirthDateElement().getValueAsString().equals(patient.getBirthDateElement().getValueAsString())) continue;
            if (criteria.hasGender() && criteria.getGender() != patient.getGender()) continue;
            boolean identifiersMatch = criteria.getIdentifier().stream().allMatch(wanted -> patient.getIdentifier().stream().anyMatch(id ->
                wanted.getValue().equals(id.getValue()) && (!wanted.hasSystem() || wanted.getSystem().equals(id.getSystem()))));
            if (!identifiersMatch) continue;
            result.addEntry().setFullUrl("urn:uuid:" + patient.getIdElement().getIdPart()).setResource(patient.copy());
        }
        result.setTotal(result.getEntry().size());
        ActivityLog.event("MOCK", "INFO", "ZPI/PDQ-Mock · Patientensuche abgeschlossen · " + result.getTotal() + " Treffer · Demografie und Testkennungen zurückgegeben.");
        return result;
    }
}
