package arztis.econnector.ihe.queries.common;

public enum PharmQueryIds {

    FIND_MEDICATION_TREATMENT_PLANS("urn:uuid:c85f5ade-81c1-44b6-8f7c-48b9cd6b9489", "FindMedicationTreatmentPlans"),
    FIND_PRESCRIPTIONS("urn:uuid:0e6095c5-dc3d-47d9-a219-047064086d92", "FindPrescriptions"),
    FIND_DISPENSES("urn:uuid:ac79c7c7-f21b-4c88-ab81-57e4889e8758", "FindDispenses"),
    FIND_MEDICATION_ADMINISTRATIONS("urn:uuid:fdbe8fb8-7b5c-4470-9383-8abc7135f462", "FindMedicationAdministrations"),
    FIND_PRESCRIPTIONS_FOR_VALIDATION("urn:uuid:c1a43b20-0254-102e-8469-a6af440562e8",
            "FindPrescriptionsForValidation"),
    FIND_PRESCRIPTIONS_FOR_DISPENSES("urn:uuid:c875eb9c-0254-102e-8469-a6af440562e8", "FindPrescriptionsForDispense"),
    FIND_MEDICATION_LIST("urn:uuid:80ebbd83-53c1-4453-9860-349585962af6", "FindMedicationList");

    private String value;
    private String name;

    PharmQueryIds(String value, String name) {
        this.value = value;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public String getValue() {
        return value;
    }

}
