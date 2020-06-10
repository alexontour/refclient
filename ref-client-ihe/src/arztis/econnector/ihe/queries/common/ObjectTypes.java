package arztis.econnector.ihe.queries.common;

public enum ObjectTypes {

    CLASSIFICATION("urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:Classification"),
    ASSOCIATION("urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:Association"),
    EXTERNAL_IDENTIFIER("urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:ExternalIdentifier"),
    STABLE_DOCUMENT("urn:uuid:7edca82f-054d-47f2-a032-9b2a5b5186c1"),
    ON_DEMAND_DOCUMENT("urn:uuid:34268e47-fdf5-41a6-ba33-82133c465248"),
    REGSITRY_PACKAGE("urn:oasis:names:tc:ebxml-regrep:ObjectType:RegistryObject:RegistryPackage");

    private String code;

    private ObjectTypes(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

}
