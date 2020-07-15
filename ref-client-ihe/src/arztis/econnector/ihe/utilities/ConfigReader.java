/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the Eclipse Public License v1.0.
 *
 */
package arztis.econnector.ihe.utilities;

import java.text.MessageFormat;
import java.util.Arrays;
import java.util.List;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.regex.Pattern;

import arztis.econnector.common.utilities.HttpConstants;

/**
 * Singleton which contains all basic configuration like
 *
 * <ul>
 * <li>service endpoints</li>
 * <li>GINA address</li>
 * <li>Server port</li>
 * <li>Enabling and disabling ELGA reference client functionalities</li>
 * </ul>.
 *
 * @author Anna Jungwirth
 */
public class ConfigReader {

	/** The Constant KEY_GINA_ADDRESS. */
	private static final String KEY_GINA_ADDRESS = "GINA-ADDRESS";

	/** The Constant KEY_TARGETENDPOINT_ETS. */
	private static final String KEY_TARGETENDPOINT_ETS = "TARGETENDPOINT_ETS";

	/** The Constant KEY_TARGETENDPOINT_KBS. */
	private static final String KEY_TARGETENDPOINT_KBS = "TARGETENDPOINT_KBS";

	/** The Constant KEY_TARGETENDPOINT_SEC_EMEDAT. */
	private static final String KEY_TARGETENDPOINT_SEC_EMEDAT = "TARGETENDPOINT_SEC_EMEDAT";

	/** The Constant KEY_TARGETENDPOINT_EMEDAT. */
	private static final String KEY_TARGETENDPOINT_EMEDAT = "TARGETENDPOINT_EMEDAT";

	/** The Constant KEY_TARGETENDPOINT_XDS_READ. */
	private static final String KEY_TARGETENDPOINT_XDS_READ = "TARGETENDPOINT_XDS_READ";

	/** The Constant KEY_TARGETENDPOINT_XDS_WRITE. */
	private static final String KEY_TARGETENDPOINT_XDS_WRITE = "TARGETENDPOINT_XDS_WRITE";

	/** The Constant KEY_TARGETENDPOINT_STS. */
	private static final String KEY_TARGETENDPOINT_STS = "TARGETENDPOINT_STS";

	/** The Constant KEY_TARGETENDPOINT_BASE. */
	private static final String KEY_TARGETENDPOINT_BASE = "TARGETENDPOINT_BASE";

	/** The Constant KEY_TARGETENDPOINT_AUTH. */
	private static final String KEY_TARGETENDPOINT_AUTH = "TARGETENDPOINT_AUTH";

	/** The Constant KEY_TARGETENDPOINT_GINA. */
	private static final String KEY_TARGETENDPOINT_GINA = "TARGETENDPOINT_GINA";

	/** The Constant KEY_TARGETENDPOINT_EMED. */
	private static final String KEY_TARGETENDPOINT_EMED = "TARGETENDPOINT_EMED";

	/** The Constant KEY_TARGETENDPOINT_GDAI. */
	private static final String KEY_TARGETENDPOINT_GDAI = "TARGETENDPOINT_GDAI";

	/** The Constant KEY_TARGETENDPOINT_GINO_CARDREADER. */
	private static final String KEY_TARGETENDPOINT_GINO_CARDREADER = "TARGETENDPOINT_GINO_CARDREADER";

	/** The Constant KEY_TARGETENDPOINT_ELGAPLUS_ETS_IMPF. */
	private static final String KEY_TARGETENDPOINT_ELGAPLUS_ETS_IMPF = "TARGETENDPOINT_ELGAPLUS_ETS_IMPF";

	/** The Constant KEY_TARGETENDPOINT_ELGAPLUS_EHEALTH_IMPF. */
	private static final String KEY_TARGETENDPOINT_ELGAPLUS_EHEALTH_IMPF = "TARGETENDPOINT_ELGAPLUS_EHEALTH_IMPF";

	/** The Constant KEY_TARGETENDPOINT_ELGAPLUS_KBS_IMPF. */
	private static final String KEY_TARGETENDPOINT_ELGAPLUS_KBS_IMPF = "TARGETENDPOINT_ELGAPLUS_KBS_IMPF";

	/** The Constant KEY_TARGETENDPOINT_ELGAPLUS_ETS. */
	private static final String KEY_TARGETENDPOINT_ELGAPLUS_ETS = "TARGETENDPOINT_ELGAPLUS_ETS";

	/** The Constant KEY_TARGETENDPOINT_ELGAPLUS_EHEALTH. */
	private static final String KEY_TARGETENDPOINT_ELGAPLUS_EHEALTH = "TARGETENDPOINT_ELGAPLUS_EHEALTH";

	/** The Constant KEY_TARGETENDPOINT_ELGAPLUS_KBS. */
	private static final String KEY_TARGETENDPOINT_ELGAPLUS_KBS = "TARGETENDPOINT_ELGAPLUS_KBS";

	/** The Constant KEY_TARGETENDPOINT_IDA_GDA. */
	private static final String KEY_TARGETENDPOINT_IDA_GDA = "TARGETENDPOINT_IDA_GDA";

	/** The Constant KEY_SERVER_PORT. */
	private static final String KEY_SERVER_PORT = "SERVER_PORT";

	/** The Constant KEY_PRODUKT_ID. */
	private static final String KEY_PRODUKT_ID = "PRODUKT_ID";

	/** The Constant KEY_PRODUKT_VERSION. */
	private static final String KEY_PRODUKT_VERSION = "PRODUKT_VERSION";

	/** The Constant KEY_OID_ELGA_AREA. */
	private static final String KEY_OID_ELGA_AREA = "OID_ELGA_AREA";

	/** The Constant KEY_VALIDATE_CDA. */
	private static final String KEY_VALIDATE_CDA = "VALIDATE_CDA";

	/** The Constant KEY_TARGETENDPOINT_PDQ. */
	private static final String KEY_TARGETENDPOINT_PDQ = "TARGETENDPOINT_PDQ";

	/** The Constant KEY_TARGETENDPOINT_PIX. */
	private static final String KEY_TARGETENDPOINT_PIX = "TARGETENDPOINT_PIX";

	/** The Constant KEY_ENABLE_PVN. */
	private static final String KEY_ENABLE_PVN = "ENABLE_PVN";

	/** The Constant KEY_ENABLE_EIMMU. */
	private static final String KEY_ENABLE_EIMMU = "ENABLE_EIMMU";

	/** The Constant KEY_PVN_ID. */
	private static final String KEY_PVN_ID = "PVN_ID";

	/** The Constant KEY_EIMMUN_ID. */
	private static final String KEY_EIMMUN_ID = "EIMMUN_ID";

	/** The Constant KEY_HERSTELLER_ID. */
	private static final String KEY_HERSTELLER_ID = "HERSTELLER_ID";

	/** The Constant KEY_ONLY_CONTEXT. */
	private static final String KEY_ONLY_CONTEXT = "ONLY_CONTEXT";

	/** The Constant SVC_E_CARD_IDA_TICKET. */
	private static final String SVC_E_CARD_IDA_TICKET = "SVC_E_CARD_IDA_TICKET";

	/** The Constant SVC_IDA_TICKET. */
	private static final String SVC_IDA_TICKET = "SVC_IDA_TICKET";

	/** The Constant APPLICATIONS. */
	private static final List<ElgaEHealthApplication> APPLICATIONS = Arrays.asList(
			new ElgaEHealthApplication("eImmunization", "103", "urn:oid:1.2.40.0.34.3.9.114"),
			new ElgaEHealthApplication("VO Testinstanz 152", "152", "urn:oid:1.1.2.1"),
			new ElgaEHealthApplication("VO Testinstanz 153", "153", "urn:oid:1.1.3.1"),
			new ElgaEHealthApplication("VO Testinstanz 150", "150", "urn:oid:1.2.40.0.34.99.10.1.12.1.990.11"),
			new ElgaEHealthApplication("VO Testinstanz 151", "151", "urn:oid:1.2.40.0.34.99.10.1.94.20.11"));

	/** The bundle. */
	private ResourceBundle bundle = null;

	/** The pvn application. */
	private ElgaEHealthApplication pvnApplication;

	/** The electronic immunization application. */
	private ElgaEHealthApplication eImmunizationApplication;

	/** The config path set. */
	private Boolean configPathSet;

	/** The target endpoint KBS. */
	private String targetEndpointKbs;

	/** The target endpoint ETS. */
	private String targetEndpointEts;

	/** The target endpoint STS. */
	private String targetEndpointSts;

	/** The target endpoint IDA gda. */
	private String targetEndpointIdaGda;

	/** The target endpoint BASE. */
	private String targetEndpointBase;

	/** The target endpoint AUTH. */
	private String targetEndpointAuth;

	/** The target endpoint GINA. */
	private String targetEndpointGina;

	/** The target endpoint XDS read. */
	private String targetEndpointXdsRead;

	/** The target endpoint XDS write. */
	private String targetEndpointXdsWrite;

	/** The target endpoint EMED. */
	private String targetEndpointEmed;

	/** The target endpoint EMED-AT. */
	private String targetEndpointEmedAt;

	/** The target endpoint EMED-AT SEC. */
	private String targetEndpointEmedAtSec;

	/** The target endpoint GDA-I. */
	private String targetEndpointGdaI;

	/** The target endpoint pdq. */
	private String targetEndpointPdq;

	/** The target endpoint pix. */
	private String targetEndpointPix;

	/** The target endpoint ELGA plus ETS. */
	private String targetEndpointElgaPlusEts;

	/** The target endpoint ELGA plus KBS. */
	private String targetEndpointElgaPlusKbs;

	/** The target endpoint ELGA plus xca. */
	private String targetEndpointElgaPlusXca;

	/** The target endpoint ELGA plus ETS electronic immunization. */
	private String targetEndpointElgaPlusEtsEImmunization;

	/** The target endpoint ELGA plus xca electronic immunization. */
	private String targetEndpointElgaPlusXcaEImmunization;

	/** The target endpoint ELGA plus KBS electronic immunization. */
	private String targetEndpointElgaPlusKbsEImmunization;

	/** The GINA address. */
	private String ginaAddress;

	/** The gino endpoint. */
	private String ginoEndpoint;

	/** The server port. */
	private int serverPort;

	/** The product id. */
	private int productId;

	/** The product version. */
	private String productVersion;

	/** The oid ELGA area to save. */
	private String oidElgaAreaToSave;

	/** The enable pvn login. */
	private Boolean enablePvnLogin;

	/** The enable eimmun login. */
	private Boolean enableEimmunLogin;

	/** The pvn id. */
	private String pvnId;

	/** The electronic immunization id. */
	private String eImmunizationId;

	/** The hersteller id. */
	private String herstellerId;

	/** The only context. */
	private Boolean onlyContext;

	/** The validate cda. */
	private Boolean validateCda;

	/** The e card IDA ticket. */
	private String eCardIdaTicket;

	/** The svc IDA ticket. */
	private String svcIdaTicket;

	/** The o config reader. */
	private static ConfigReader oConfigReader = new ConfigReader();

	/**
	 * Default constructor. This set 8087 as default server port.
	 */
	private ConfigReader() {
		serverPort = 8087;
	}

	/**
	 * Gets the single instance of ConfigReader.
	 *
	 * @return instance of {@link ConfigReader}
	 */
	public static ConfigReader getInstance() {
		return oConfigReader;
	}

	/**
	 * sets configuration file.
	 *
	 * @param path to configuration file to be read
	 */
	public void setConfigFilePath(String path) {
		bundle = ResourceBundle.getBundle(path);
		configPathSet = true;
	}

	/**
	 * Gets the GINA address.
	 *
	 * @return GINA address from configuration file
	 */
	public String getGinaAddress() {
		if (ginaAddress == null) {
			ginaAddress = getValueFromProperties(KEY_GINA_ADDRESS);
		}
		return ginaAddress.trim();
	}

	/**
	 * Gets the target endpoint KBS.
	 *
	 * @return target endpoint for patient contact confirmation from configuration
	 *         file
	 */
	public String getTargetEndpointKbs() {
		if (targetEndpointKbs == null) {
			targetEndpointKbs = getValueFromProperties(KEY_TARGETENDPOINT_KBS);
		}

		return getEndpoint(targetEndpointKbs);
	}

	/**
	 * Gets the target endpoint ETS.
	 *
	 * @return target endpoint for ELGA authentication from configuration file
	 */
	public String getTargetEndpointEts() {
		if (targetEndpointEts == null) {
			targetEndpointEts = getValueFromProperties(KEY_TARGETENDPOINT_ETS);
		}

		return getEndpoint(targetEndpointEts);
	}

	/**
	 * Gets the target endpoint STS.
	 *
	 * @return target endpoint for requesting IDA of SVC from configuration file
	 */
	public String getTargetEndpointSts() {
		if (targetEndpointSts == null) {
			targetEndpointSts = getValueFromProperties(KEY_TARGETENDPOINT_STS);
		}

		return getEndpoint(targetEndpointSts);
	}

	/**
	 * Gets the target endpoint IDA gda.
	 *
	 * @return target endpoint for requesting IDA of ELGA area from configuration
	 *         file
	 */
	public String getTargetEndpointIdaGda() {
		if (targetEndpointIdaGda == null) {
			targetEndpointIdaGda = getValueFromProperties(KEY_TARGETENDPOINT_IDA_GDA);
		}

		return getEndpoint(targetEndpointIdaGda);
	}

	/**
	 * Gets the target endpoint BASE.
	 *
	 * @return target endpoint for SVC SS12 BASE service from configuration file
	 */
	public String getTargetEndpointBase() {
		if (targetEndpointBase == null) {
			targetEndpointBase = getValueFromProperties(KEY_TARGETENDPOINT_BASE);
		}

		return getEndpoint(targetEndpointBase);
	}

	/**
	 * Gets the target endpoint GINA.
	 *
	 * @return target endpoint for SVC SS12 GINA service from configuration file
	 */
	public String getTargetEndpointGina() {
		if (targetEndpointGina == null) {
			targetEndpointGina = getValueFromProperties(KEY_TARGETENDPOINT_GINA);
		}

		return getEndpoint(targetEndpointGina);
	}

	/**
	 * Gets the target endpoint AUTH.
	 *
	 * @return target endpoint for SVC SS12 AUTH service from configuration file
	 */
	public String getTargetEndpointAuth() {
		if (targetEndpointAuth == null) {
			targetEndpointAuth = getValueFromProperties(KEY_TARGETENDPOINT_AUTH);
		}

		return getEndpoint(targetEndpointAuth);
	}

	/**
	 * Gets the target endpoint XDS read.
	 *
	 * @return target endpoint for requesting ELGA eBefunde from configuration file
	 */
	public String getTargetEndpointXdsRead() {
		if (targetEndpointXdsRead == null) {
			targetEndpointXdsRead = getValueFromProperties(KEY_TARGETENDPOINT_XDS_READ);
		}

		return getEndpoint(targetEndpointXdsRead);
	}

	/**
	 * Gets the target endpoint XDS write.
	 *
	 * @return target endpoint for providing ELGA eBefunde from configuration file
	 */
	public String getTargetEndpointXdsWrite() {
		if (targetEndpointXdsWrite == null) {
			targetEndpointXdsWrite = getValueFromProperties(KEY_TARGETENDPOINT_XDS_WRITE);
		}

		return getEndpoint(targetEndpointXdsWrite);
	}

	/**
	 * Gets the target endpoint pdq.
	 *
	 * @return target endpoint for requesting patient demographics from
	 *         configuration file
	 */
	public String getTargetEndpointPdq() {
		if (targetEndpointPdq == null) {
			targetEndpointPdq = getValueFromProperties(KEY_TARGETENDPOINT_PDQ);
		}

		return getEndpoint(targetEndpointPdq);
	}

	/**
	 * Gets the target endpoint pix.
	 *
	 * @return target endpoint for requesting patient index from configuration file
	 */
	public String getTargetEndpointPix() {
		if (targetEndpointPix == null) {
			targetEndpointPix = getValueFromProperties(KEY_TARGETENDPOINT_PIX);
		}

		return getEndpoint(targetEndpointPix);
	}

	/**
	 * Gets the target endpoint EMED.
	 *
	 * @return target endpoint for requesting pharmacy documents from configuration
	 *         file
	 */
	public String getTargetEndpointEmed() {
		if (targetEndpointEmed == null) {
			targetEndpointEmed = getValueFromProperties(KEY_TARGETENDPOINT_EMED);
		}

		return getEndpoint(targetEndpointEmed);
	}

	/**
	 * Gets the target endpoint EMED-AT.
	 *
	 * @return target endpoint for requesting EMED-ID from configuration file
	 */
	public String getTargetEndpointEmedAt() {
		if (targetEndpointEmedAt == null) {
			targetEndpointEmedAt = getValueFromProperties(KEY_TARGETENDPOINT_EMEDAT);
		}

		return getEndpoint(targetEndpointEmedAt);
	}

	/**
	 * Gets the target endpoint EMED-AT SEC.
	 *
	 * @return target endpoint for requesting EMED-ID assertion from configuration
	 *         file
	 */
	public String getTargetEndpointEmedAtSec() {
		if (targetEndpointEmedAtSec == null) {
			targetEndpointEmedAtSec = getValueFromProperties(KEY_TARGETENDPOINT_SEC_EMEDAT);
		}

		return getEndpoint(targetEndpointEmedAtSec);
	}

	/**
	 * Gets the target endpoint GDA-Index.
	 *
	 * @return target endpoint for requesting information about health care provider
	 *         from configuration file
	 */
	public String getTargetEndpointGdaIndex() {
		if (targetEndpointGdaI == null) {
			targetEndpointGdaI = getValueFromProperties(KEY_TARGETENDPOINT_GDAI);
		}

		return getEndpoint(targetEndpointGdaI);
	}

	/**
	 * Gets the target endpoint ELGA plus ETS.
	 *
	 * @return target endpoint for ELGA authentication in virtual organizations from
	 *         configuration file
	 */
	public String getTargetEndpointElgaPlusEts() {
		if (targetEndpointElgaPlusEts == null) {
			targetEndpointElgaPlusEts = getValueFromProperties(KEY_TARGETENDPOINT_ELGAPLUS_ETS);
		}

		return getEndpoint(targetEndpointElgaPlusEts);
	}

	/**
	 * Gets the target endpoint ELGA plus KBS.
	 *
	 * @return target endpoint for patient contact confirmation in virtual
	 *         organizations from configuration file
	 */
	public String getTargetEndpointElgaPlusKbs() {
		if (targetEndpointElgaPlusKbs == null) {
			targetEndpointElgaPlusKbs = getValueFromProperties(KEY_TARGETENDPOINT_ELGAPLUS_KBS);
		}

		return getEndpoint(targetEndpointElgaPlusKbs);
	}

	/**
	 * Gets the target endpoint ELGA plus XCA.
	 *
	 * @return target endpoint for requesting and providing documents in virtual
	 *         organizations from configuration file
	 */
	public String getTargetEndpointElgaPlusXCA() {
		if (targetEndpointElgaPlusXca == null) {
			targetEndpointElgaPlusXca = getValueFromProperties(KEY_TARGETENDPOINT_ELGAPLUS_EHEALTH);
		}

		return getEndpoint(targetEndpointElgaPlusXca);
	}

	/**
	 * Gets the target endpoint ELGA plus ETS electronic immunization.
	 *
	 * @return target endpoint for ELGA authentication for electronic immunization
	 *         record from configuration file
	 */
	public String getTargetEndpointElgaPlusEtsEImmunization() {
		if (targetEndpointElgaPlusEtsEImmunization == null) {
			targetEndpointElgaPlusEtsEImmunization = getValueFromProperties(KEY_TARGETENDPOINT_ELGAPLUS_ETS_IMPF);
		}

		return getEndpoint(targetEndpointElgaPlusEtsEImmunization);
	}

	/**
	 * Gets the target endpoint ELGA plus KBS electronic immunization.
	 *
	 * @return target endpoint for patient contact confirmation for electronic
	 *         immunization record from configuration file
	 */
	public String getTargetEndpointElgaPlusKbsEImmunization() {
		if (targetEndpointElgaPlusKbsEImmunization == null) {
			targetEndpointElgaPlusKbsEImmunization = getValueFromProperties(KEY_TARGETENDPOINT_ELGAPLUS_KBS_IMPF);
		}

		return getEndpoint(targetEndpointElgaPlusKbsEImmunization);
	}

	/**
	 * Gets the target endpoint ELGA plus XCA electronic immunization.
	 *
	 * @return target endpoint for requesting and providing electronic immunization
	 *         documents from configuration file
	 */
	public String getTargetEndpointElgaPlusXCAEImmunization() {
		if (targetEndpointElgaPlusXcaEImmunization == null) {
			targetEndpointElgaPlusXcaEImmunization = getValueFromProperties(KEY_TARGETENDPOINT_ELGAPLUS_EHEALTH_IMPF);
		}

		return getEndpoint(targetEndpointElgaPlusXcaEImmunization);
	}

	/**
	 * Gets the GINO endpoint.
	 *
	 * @return target endpoint for card reader requests from configuration file
	 */
	public String getGinoEndpoint() {
		if (ginoEndpoint == null) {
			ginoEndpoint = getValueFromProperties(KEY_TARGETENDPOINT_GINO_CARDREADER);
		}

		return HttpConstants.HTTPS_CALL + getGinaAddress().trim() + ginoEndpoint.trim();
	}

	/**
	 * Gets the server port.
	 *
	 * @return server port from configuration file
	 */
	public int getServerPort() {
		if (serverPort == 8087) {
			serverPort = Integer.valueOf(getValueFromProperties(KEY_SERVER_PORT));
		}

		return serverPort;
	}

	/**
	 * Gets the product id.
	 *
	 * @return product ID from configuration file. This parameter is needed for GINA
	 *         authentication.
	 */
	public int getProductId() {
		if (productId == 0) {
			productId = Integer.valueOf(getValueFromProperties(KEY_PRODUKT_ID));
		}

		return productId;
	}

	/**
	 * Gets the product version.
	 *
	 * @return product version from configuration file. This parameter is needed for
	 *         GINA authentication.
	 */
	public String getProductVersion() {
		if (productVersion == null) {
			productVersion = getValueFromProperties(KEY_PRODUKT_VERSION);
		}

		return productVersion.trim();
	}

	/**
	 * Gets the hersteller id.
	 *
	 * @return hersteller ID from configuration file. This parameter is needed for
	 *         GINA authentication.
	 */
	public String getHerstellerId() {
		if (herstellerId == null) {
			herstellerId = getValueFromProperties(KEY_HERSTELLER_ID);
		}

		return herstellerId.trim();
	}

	/**
	 * Gets the oid ELGA area.
	 *
	 * @return OID of ELGA area in which documents for eBefund application should be
	 *         stored.
	 */
	public String getOidElgaArea() {
		if (oidElgaAreaToSave == null) {
			oidElgaAreaToSave = getValueFromProperties(KEY_OID_ELGA_AREA);
		}

		return oidElgaAreaToSave.trim();
	}

	/**
	 * Checks if is validate cda.
	 *
	 * @return indicates whether CDA documents should be validated before sending
	 */
	public Boolean isValidateCda() {
		if (validateCda == null) {
			validateCda = "true".equalsIgnoreCase(getValueFromProperties(KEY_VALIDATE_CDA));
		}

		return validateCda;
	}

	/**
	 * Checks if is config path set.
	 *
	 * @return indicates whether a path to configuration file is set
	 */
	public boolean isConfigPathSet() {
		return configPathSet;
	}

	/**
	 * Checks if is pvn login enabled.
	 *
	 * @return indicates whether virtual organizations are enabled
	 */
	public boolean isPvnLoginEnabled() {
		if (enablePvnLogin == null) {
			enablePvnLogin = "true".equalsIgnoreCase(getValueFromProperties(KEY_ENABLE_PVN));
		}

		return enablePvnLogin;
	}

	/**
	 * Checks if is e immun login enabled.
	 *
	 * @return indicates whether requests to electronic immunization record are
	 *         enabled
	 */
	public boolean isEImmunLoginEnabled() {
		if (enableEimmunLogin == null) {
			enableEimmunLogin = "true".equalsIgnoreCase(getValueFromProperties(KEY_ENABLE_EIMMU));
		}

		return enableEimmunLogin;
	}

	/**
	 * Checks if is only context.
	 *
	 * @return indicates whether the context assertion should be used for all
	 *         executed queries
	 */
	public boolean isOnlyContext() {
		if (onlyContext == null) {
			onlyContext = "true".equalsIgnoreCase(getValueFromProperties(KEY_ONLY_CONTEXT));
		}

		return onlyContext;
	}

	/**
	 * Gets the pvn id.
	 *
	 * @return ID of virtual organization, which should be used, from configuration
	 *         file.
	 */
	public ElgaEHealthApplication getPvnId() {
		if (pvnId == null) {
			pvnId = getValueFromProperties(KEY_PVN_ID);
		}

		if (pvnApplication != null) {
			return pvnApplication;
		}

		pvnApplication = getApplication(pvnId);

		return pvnApplication;
	}

	/**
	 * Gets the electronic immunization id.
	 *
	 * @return ID of electronic immunization record from configuration file.
	 */
	public ElgaEHealthApplication getEImmunizationId() {
		if (eImmunizationId == null) {
			eImmunizationId = getValueFromProperties(KEY_EIMMUN_ID);
		}

		if (eImmunizationApplication != null) {
			return eImmunizationApplication;
		}

		eImmunizationApplication = getApplication(eImmunizationId);

		return eImmunizationApplication;

	}

	/**
	 * extracts {@link ElgaEHealthApplication} with passed ID.
	 *
	 * @param id to search for
	 * @return matching {@link ElgaEHealthApplication}. If no matching ID was found,
	 *         null is returned.
	 */
	private ElgaEHealthApplication getApplication(String id) {
		String appId = null;
		if (id != null && Pattern.matches("\\d{3}", id.trim())) {
			appId = id.trim();
		}

		for (ElgaEHealthApplication app : APPLICATIONS) {
			if (app != null && appId != null && appId.equalsIgnoreCase(app.getId())) {
				return app;
			}
		}

		return null;
	}

	/**
	 * formats passed target endpoint. If target endpoint contains IP address, it is
	 * returned as passed. If target endpoint does not contain IP address, target
	 * endpoint is formatted as follows "https://{GINA address}/{targetendpoint}
	 *
	 * @param targetendpoint to format
	 *
	 * @return formatted endpoint
	 */
	private String getEndpoint(String targetendpoint) {
		if (targetendpoint.contains(":") && targetendpoint.contains(".")) {
			return targetendpoint.trim();
		} else if (!targetendpoint.trim().isEmpty()) {
			return HttpConstants.HTTPS_CALL + getGinaAddress().trim() + targetendpoint.trim();
		}

		return "";
	}

	/**
	 * extracts value of configuration file for passed key.
	 *
	 * @param key to extract value
	 * @return extracted value
	 */
	private String getValueFromProperties(String key) {
		try {
			return bundle.getString(key);
		} catch (MissingResourceException ex) {
			return "";
		}
	}

	/**
	 * extracts eCard ticket from configuration file and added social security
	 * number and contact partner number to ticket.
	 *
	 * @param ssno social security number
	 * @param vpnr contract partner number
	 *
	 * @return SVC eCard ticket to request assertion for patient contact
	 *         confirmation with e-Card
	 */
	public String geteCardIdaTicket(String ssno, String vpnr) {
		if (eCardIdaTicket == null) {
			eCardIdaTicket = getValueFromProperties(SVC_E_CARD_IDA_TICKET);
		}

		return MessageFormat.format(eCardIdaTicket, vpnr, ssno);
	}

	/**
	 * extracts SVC ticket from configuration file and added contact partner number
	 * and name of user (real person) to ticket.
	 *
	 * @param vpnr  contract partner number
	 * @param gdama name of real person who wants to login for ELGA
	 *
	 * @return SVC ticket to request assertion for ELGA authentication with
	 *         Admin-Card
	 */
	public String getSvcIdaTicket(String vpnr, String gdama) {
		if (svcIdaTicket == null) {
			svcIdaTicket = getValueFromProperties(SVC_IDA_TICKET);
		}

		return MessageFormat.format(svcIdaTicket, vpnr, gdama);
	}

}
