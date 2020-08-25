/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.ihe.utilities;

/**
 * Contains constants for ELGA requests like different OIDs.
 *
 * @author Anna Jungwirth
 */
public class IheConstants {

	/**
	 * Instantiates a new ihe constants.
	 */
	private IheConstants() {
		throw new IllegalStateException("Class for constants");
	}

    /** OID of social security number in eHealth context. */
    public static final String OID_SVNR = "1.2.40.0.10.1.4.3.1";

    /** OID of electronic medication (eMedikation) application. */
    public static final String OID_EMEDICATION_HOME_COMMUNITY = "1.2.40.0.34.3.9.107";

    /** OID of eMed-IDs. */
    public static final String OID_EMED_ID = "1.2.40.0.10.1.4.3.4.2.1";

    /** electronic medication (eMedikation) application ID. */
    public static final String OID_EMED_APPLIKATION = "1.2.40.0.34.6.7";

    /** OID of bPK (bereichsspezifisches Kennzeichen). */
    public static final String OID_BPK_IDENTIFICATION = "1.2.40.0.10.2.1.1.149";

    /** OID of electronic immunization (eImpfpass) application. */
    public static final String OID_EIMMUNIZATION_HOME_COMMUNITY = "1.2.40.0.34.3.9.114";

    /** Literal for success of ebXML response. */
    public static final String EBXML_SUCCESS_LITERAL = "Success";

    /** OID of ICPC2 code system. */
    public static final String ICPC2_CODE_SYSTEM = "1.2.40.0.34.5.175";

    /** code system name of ICPC2. */
    public static final String ICPC2_CODE_SYSTEM_NAME = "ICPC2";

    /** ISO date format pattern. */
    public static final String FORMAT_ISO_DATE = "yyyy-MM-dd";

    /** ISO date and time format pattern. */
    public static final String FORMAT_ISO_DATE_TIME = "yyyy-MM-dd'T'HH:mm:ss";

    /** property name for trust store. */
    public static final String SSL_TRUSTSTORE = "javax.net.ssl.trustStore";

    /** property name for trust store password. */
    public static final String SSL_TRUSTSTORE_PASS_PACKAGE = "javax.net.ssl.trustStorePassword";

    /** name of ETS service. */
    public static final String ETS_SERVICE = "ets";

    /** name of STS service. */
    public static final String STS_SERVICE = "sts";

    /** name of BASE service. */
    public static final String BASE_SERVICE = "base";

    /** name of GINA service. */
    public static final String GINA_SERVICE = "gina";

    /** name of AUTH service. */
    public static final String AUTH_SERVICE = "auth";

    /** name of KBS service. */
    public static final String KBS_SERVICE = "kbs";

    /** name of EMED-AT service. */
    public static final String EMED_AT_SERVICE = "emedAt";

    /** name of EMED-AT-SEC service. */
    public static final String EMED_AT_SEC_SERVICE = "emedAtSec";

    /** name of XDS service. */
    public static final String XDS_SERVICE = "xds";

    /** name of XCA service. */
    public static final String XCA_SERVICE = "xca";

    /** name of PHARM service. */
    public static final String PHARM_SERVICE = "pharm";

    /** name of GDA-I service. */
    public static final String GDAI_SERVICE = "gdai";

    /** name of PDQ service. */
    public static final String PDQ_SERVICE = "pdq";

    /** name of PIX service. */
    public static final String PIX_SERVICE = "pix";

    /** name of XDS service for virtual organizations. */
    public static final String ELGA_PLUS_XDS_SERVICE = "elgaPlusXds";

    /** name of ETS service for virtual organizations. */
    public static final String ELGA_PLUS_ETS_SERVICE = "elgaPlusEts";

    /** name of KBS service for virtual organizations. */
    public static final String ELGA_PLUS_KBS_SERVICE = "elgaPlusKbs";

    /** name of XDS service for electronic immunization. */
    public static final String ELGA_PLUS_XDS_E_IMMUNIZATION_SERVICE = "elgaPlusXdsEImmunization";

    /** name of ETS service for electronic immunization. */
    public static final String ELGA_PLUS_ETS_E_IMMUNIZATION_SERVICE = "elgaPlusEtsEImmunization";

    /** name of KBS service for electronic immunization. */
    public static final String ELGA_PLUS_KBS_E_IMMUNIZATION_SERVICE = "elgaPlusKbsEImmunization";

    /** name of GDA-I service. */
    public static final String IDA_GDA_SERVICE = "idaGda";

    /** code for requests to eBefund. */
    public static final int KIND_OF_REQUEST_ELGA_RECORDS = 0;

    /** code for requests to virtual organizations. */
    public static final int KIND_OF_REQUEST_VOS = 1;

    /** code for requests to electronic immunizations. */
    public static final int KIND_OF_REQUEST_IMMUNIZATION_RECORD = 2;

    /** code for requests to electronic medication. */
    public static final int KIND_OF_REQUEST_PRESCRIPTION = 3;

}
