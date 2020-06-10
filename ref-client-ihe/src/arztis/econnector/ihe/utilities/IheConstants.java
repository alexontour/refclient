package arztis.econnector.ihe.utilities;

public class IheConstants {
	
	private IheConstants() {
		throw new IllegalStateException("Class for constants");
	}
	
    // elga metadata
    public static final String LITERAL_APPROVED = "approved";
    public static final String LITERAL_DEPRECATED = "deprecated";

    // version eMed Id
    public static final String VERSION_EMEDID = "12";

    // oids for Identificator in ELGA
    public static final String OID_SVNR = "1.2.40.0.10.1.4.3.1";
    public static final String OID_EMEDICATION_HOME_COMMUNITY = "1.2.40.0.34.3.9.107";
    public static final String OID_EMED_ID = "1.2.40.0.10.1.4.3.4.2.1";
    public static final String OID_EMED_APPLIKATION = "1.2.40.0.34.6.7";
    public static final String OID_BPK_IDENTIFICATION = "1.2.40.0.10.2.1.1.149";
    public static final String OID_EIMMUNIZATION_HOME_COMMUNITY = "1.2.40.0.34.3.9.114";

    public static final String EBXML_SUCCESS_LITERAL = "Success";
    
    //special error codes 
    public static final int ERROR_CODE_NOT_REGISTERED_FOR_VIRTUAL_ORGANIZATION = 21;
    
    //icpc2 coding systems data
    public static final String ICPC2_CODE_SYSTEM = "1.2.40.0.34.5.175";
    public static final String ICPC2_CODE_SYSTEM_NAME = "ICPC2";
    
    public static final String FORMAT_ISO_DATE = "yyyy-MM-dd";
    public static final String FORMAT_ISO_DATE_TIME = "yyyy-MM-dd'T'HH:mm:ss";
  
    // Constants for the truststore
    public static final String SSL_TRUSTSTORE = "javax.net.ssl.trustStore";
    public static final String SSL_TRUSTSTORE_PASS_PACKAGE = "javax.net.ssl.trustStorePassword";

    // Constants for the keystore
    public static final String KEY_STORE_PASS = "changeit";
    
    public static final String ETS_SERVICE = "ets";
    public static final String STS_SERVICE = "sts";
    public static final String BASE_SERVICE = "base";
    public static final String GINA_SERVICE = "gina";
    public static final String AUTH_SERVICE = "auth";
    public static final String KBS_SERVICE = "kbs";
    public static final String EMED_AT_SERVICE = "emedAt";
    public static final String EMED_AT_SEC_SERVICE = "emedAtSec";
    public static final String XDS_SERVICE = "xds";
    public static final String XCA_SERVICE = "xca";
    public static final String PHARM_SERVICE = "pharm";
    public static final String GDAI_SERVICE = "gdai";
    public static final String PDQ_SERVICE = "pdq";
    public static final String PIX_SERVICE = "pix";
    public static final String ELGA_PLUS_XDS_SERVICE = "elgaPlusXds";
    public static final String ELGA_PLUS_ETS_SERVICE = "elgaPlusEts";
    public static final String ELGA_PLUS_KBS_SERVICE = "elgaPlusKbs";
    public static final String ELGA_PLUS_XDS_E_IMMUNIZATION_SERVICE = "elgaPlusXdsEImmunization";
    public static final String ELGA_PLUS_ETS_E_IMMUNIZATION_SERVICE = "elgaPlusEtsEImmunization";
    public static final String ELGA_PLUS_KBS_E_IMMUNIZATION_SERVICE = "elgaPlusKbsEImmunization";
    public static final String IDA_GDA_SERVICE = "idaGda";
    
    //kind of requests
    public static final int KIND_OF_REQUEST_ELGA_RECORDS = 0;
    public static final int KIND_OF_REQUEST_VOS = 1;
    public static final int KIND_OF_REQUEST_IMMUNIZATION_RECORD = 2;
    public static final int KIND_OF_REQUEST_PRESCRIPTION = 3;

}
