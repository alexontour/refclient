package arztis.econnector.ihe.utilities;

import java.util.Arrays;
import java.util.List;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.regex.Pattern;

import arztis.econnector.common.utilities.HttpConstants;

public class ConfigReader {
	private static final String KEY_GINA_ADDRESS = "GINA-ADDRESS";
	private static final String KEY_TARGETENDPOINT_ETS = "TARGETENDPOINT_ETS";
	private static final String KEY_TARGETENDPOINT_KBS = "TARGETENDPOINT_KBS";
	private static final String KEY_TARGETENDPOINT_SEC_EMEDAT = "TARGETENDPOINT_SEC_EMEDAT";
	private static final String KEY_TARGETENDPOINT_EMEDAT = "TARGETENDPOINT_EMEDAT";
	private static final String KEY_TARGETENDPOINT_XDS_READ = "TARGETENDPOINT_XDS_READ";
	private static final String KEY_TARGETENDPOINT_XDS_WRITE = "TARGETENDPOINT_XDS_WRITE";
	private static final String KEY_TARGETENDPOINT_STS = "TARGETENDPOINT_STS";
	private static final String KEY_TARGETENDPOINT_BASE = "TARGETENDPOINT_BASE";
	private static final String KEY_TARGETENDPOINT_AUTH = "TARGETENDPOINT_AUTH";
	private static final String KEY_TARGETENDPOINT_GINA = "TARGETENDPOINT_GINA";
	private static final String KEY_TARGETENDPOINT_EMED = "TARGETENDPOINT_EMED";
	private static final String KEY_TARGETENDPOINT_GDAI = "TARGETENDPOINT_GDAI";
	private static final String KEY_TARGETENDPOINT_GINO_CARDREADER = "TARGETENDPOINT_GINO_CARDREADER";
	private static final String KEY_TARGETENDPOINT_ELGAPLUS_ETS_IMPF = "TARGETENDPOINT_ELGAPLUS_ETS_IMPF";
	private static final String KEY_TARGETENDPOINT_ELGAPLUS_EHEALTH_IMPF = "TARGETENDPOINT_ELGAPLUS_EHEALTH_IMPF";
	private static final String KEY_TARGETENDPOINT_ELGAPLUS_KBS_IMPF = "TARGETENDPOINT_ELGAPLUS_KBS_IMPF";
	private static final String KEY_TARGETENDPOINT_ELGAPLUS_ETS = "TARGETENDPOINT_ELGAPLUS_ETS";
	private static final String KEY_TARGETENDPOINT_ELGAPLUS_EHEALTH = "TARGETENDPOINT_ELGAPLUS_EHEALTH";
	private static final String KEY_TARGETENDPOINT_ELGAPLUS_SPIRIT_HPD = "TARGETENDPOINT_ELGAPLUS_SPIRIT_HPD";
	private static final String KEY_TARGETENDPOINT_ELGAPLUS_KBS = "TARGETENDPOINT_ELGAPLUS_KBS";
	private static final String KEY_TARGETENDPOINT_IDA_GDA = "TARGETENDPOINT_IDA_GDA";
	private static final String KEY_SERVER_PORT = "SERVER_PORT";
	private static final String KEY_TEMP_DELETION_TIME = "TEMP_DELETION_TIME";
	private static final String KEY_PRODUKT_ID = "PRODUKT_ID";
	private static final String KEY_PRODUKT_VERSION = "PRODUKT_VERSION";
	private static final String KEY_OID_ELGA_AREA = "OID_ELGA_AREA";
	private static final String KEY_TARGETENDPOINT_PDQ = "TARGETENDPOINT_PDQ";
	private static final String KEY_TARGETENDPOINT_PIX = "TARGETENDPOINT_PIX";
	private static final String KEY_ENABLE_PVN = "ENABLE_PVN";
	private static final String KEY_ENABLE_EIMMU = "ENABLE_EIMMU";
	private static final String KEY_PVN_ID = "PVN_ID";
	private static final String KEY_EIMMUN_ID = "EIMMUN_ID";
	private static final String KEY_HERSTELLER_ID = "HERSTELLER_ID";
	private static final String KEY_ONLY_CONTEXT = "ONLY_CONTEXT";

	private static final List<ElgaEHealthApplication> APPLICATIONS = Arrays.asList(
			new ElgaEHealthApplication("eImmunization", "103", "urn:oid:1.2.40.0.34.3.9.114"),
			new ElgaEHealthApplication("VO Testinstanz 152", "152", "urn:oid:1.1.2.1"),
			new ElgaEHealthApplication("VO Testinstanz 153", "153", "urn:oid:1.1.3.1"),
			new ElgaEHealthApplication("VO Testinstanz 150", "150", "urn:oid:1.2.40.0.34.99.10.1.12.1.990.11"),
			new ElgaEHealthApplication("VO Testinstanz 151", "151", "urn:oid:1.2.40.0.34.99.10.1.94.20.11"));

	private ResourceBundle bundle = null;
	private ElgaEHealthApplication pvnApplication;
	private ElgaEHealthApplication eImmunizationApplication;
	private Boolean configPathSet;
	private String targetEndpointKbs;
	private String targetEndpointEts;
	private String targetEndpointSts;
	private String targetEndpointIdaGda;
	private String targetEndpointBase;
	private String targetEndpointAuth;
	private String targetEndpointGina;
	private String targetEndpointXdsRead;
	private String targetEndpointXdsWrite;
	private String targetEndpointEmed;
	private String targetEndpointEmedAt;
	private String targetEndpointEmedAtSec;
	private String targetEndpointGdaI;
	private String targetEndpointPdq;
	private String targetEndpointPix;
	private String targetEndpointElgaPlusEts;
	private String targetEndpointElgaPlusKbs;
	private String targetEndpointElgaPlusXca;
	private String targetEndpointElgaPlusSpiritHpd;
	private String targetEndpointElgaPlusEtsEImmunization;
	private String targetEndpointElgaPlusXcaEImmunization;
	private String targetEndpointElgaPlusKbsEImmunization;
	private String ginaAddress;
	private String ginoEndpoint;
	private int serverPort;
	private String shutdownPath;
	private int tempDeletionTime;
	private int productId;
	private String productVersion;
	private String oidElgaAreaToSave;
	private Boolean enablePvnLogin;
	private Boolean enableEimmunLogin;
	private String pvnId;
	private String eImmunizationId;
	private String herstellerId;
	private Boolean onlyContext;

	private static ConfigReader oConfigReader = new ConfigReader();

	private ConfigReader() {
		serverPort = 8087;
		tempDeletionTime = 360;
	}

	public static ConfigReader getInstance() {
		return oConfigReader;
	}

	public void setConfigFilePath(String pPath) {
		bundle = ResourceBundle.getBundle(pPath);
		configPathSet = true;
	}

	public String getGinaAddress() {
		if (ginaAddress == null) {
			ginaAddress = getValueFromProperties(KEY_GINA_ADDRESS);
		}
		return ginaAddress.trim();
	}

	public String getTargetEndpointKbs() {
		if (targetEndpointKbs == null) {
			targetEndpointKbs = getValueFromProperties(KEY_TARGETENDPOINT_KBS);
		}

		return getEndpoint(targetEndpointKbs);
	}

	public String getTargetEndpointEts() {
		if (targetEndpointEts == null) {
			targetEndpointEts = getValueFromProperties(KEY_TARGETENDPOINT_ETS);
		}

		return getEndpoint(targetEndpointEts);
	}

	public String getTargetEndpointSts() {
		if (targetEndpointSts == null) {
			targetEndpointSts = getValueFromProperties(KEY_TARGETENDPOINT_STS);
		}

		return getEndpoint(targetEndpointSts);
	}

	public String getTargetEndpointIdaGda() {
		if (targetEndpointIdaGda == null) {
			targetEndpointIdaGda = getValueFromProperties(KEY_TARGETENDPOINT_IDA_GDA);
		}

		return getEndpoint(targetEndpointIdaGda);
	}

	public String getTargetEndpointBase() {
		if (targetEndpointBase == null) {
			targetEndpointBase = getValueFromProperties(KEY_TARGETENDPOINT_BASE);
		}

		return getEndpoint(targetEndpointBase);
	}

	public String getTargetEndpointGina() {
		if (targetEndpointGina == null) {
			targetEndpointGina = getValueFromProperties(KEY_TARGETENDPOINT_GINA);
		}

		return getEndpoint(targetEndpointGina);
	}

	public String getTargetEndpointAuth() {
		if (targetEndpointAuth == null) {
			targetEndpointAuth = getValueFromProperties(KEY_TARGETENDPOINT_AUTH);
		}

		return getEndpoint(targetEndpointAuth);
	}

	public String getTargetEndpointXdsRead() {
		if (targetEndpointXdsRead == null) {
			targetEndpointXdsRead = getValueFromProperties(KEY_TARGETENDPOINT_XDS_READ);
		}

		return getEndpoint(targetEndpointXdsRead);
	}

	public String getTargetEndpointXdsWrite() {
		if (targetEndpointXdsWrite == null) {
			targetEndpointXdsWrite = getValueFromProperties(KEY_TARGETENDPOINT_XDS_WRITE);
		}

		return getEndpoint(targetEndpointXdsWrite);
	}

	public String getTargetEndpointPdq() {
		if (targetEndpointPdq == null) {
			targetEndpointPdq = getValueFromProperties(KEY_TARGETENDPOINT_PDQ);
		}

		return getEndpoint(targetEndpointPdq);
	}

	public String getTargetEndpointPix() {
		if (targetEndpointPix == null) {
			targetEndpointPix = getValueFromProperties(KEY_TARGETENDPOINT_PIX);
		}

		return getEndpoint(targetEndpointPix);
	}

	public String getTargetEndpointEmed() {
		if (targetEndpointEmed == null) {
			targetEndpointEmed = getValueFromProperties(KEY_TARGETENDPOINT_EMED);
		}

		return getEndpoint(targetEndpointEmed);
	}

	public String getTargetEndpointEmedAt() {
		if (targetEndpointEmedAt == null) {
			targetEndpointEmedAt = getValueFromProperties(KEY_TARGETENDPOINT_EMEDAT);
		}

		return getEndpoint(targetEndpointEmedAt);
	}

	public String getTargetEndpointEmedAtSec() {
		if (targetEndpointEmedAtSec == null) {
			targetEndpointEmedAtSec = getValueFromProperties(KEY_TARGETENDPOINT_SEC_EMEDAT);
		}

		return getEndpoint(targetEndpointEmedAtSec);
	}

	public String getTargetEndpointGdaIndex() {
		if (targetEndpointGdaI == null) {
			targetEndpointGdaI = getValueFromProperties(KEY_TARGETENDPOINT_GDAI);
		}

		return getEndpoint(targetEndpointGdaI);
	}

	public String getTargetEndpointElgaPlusEts() {
		if (targetEndpointElgaPlusEts == null) {
			targetEndpointElgaPlusEts = getValueFromProperties(KEY_TARGETENDPOINT_ELGAPLUS_ETS);
		}

		return getEndpoint(targetEndpointElgaPlusEts);
	}

	public String getTargetEndpointElgaPlusKbs() {
		if (targetEndpointElgaPlusKbs == null) {
			targetEndpointElgaPlusKbs = getValueFromProperties(KEY_TARGETENDPOINT_ELGAPLUS_KBS);
		}

		return getEndpoint(targetEndpointElgaPlusKbs);
	}

	public String getTargetEndpointElgaPlusXCA() {
		if (targetEndpointElgaPlusXca == null) {
			targetEndpointElgaPlusXca = getValueFromProperties(KEY_TARGETENDPOINT_ELGAPLUS_EHEALTH);
		}

		return getEndpoint(targetEndpointElgaPlusXca);
	}

	public String getTargetEndpointElgaPlusEtsEImmunization() {
		if (targetEndpointElgaPlusEtsEImmunization == null) {
			targetEndpointElgaPlusEtsEImmunization = getValueFromProperties(KEY_TARGETENDPOINT_ELGAPLUS_ETS_IMPF);
		}

		return getEndpoint(targetEndpointElgaPlusEtsEImmunization);
	}

	public String getTargetEndpointElgaPlusKbsEImmunization() {
		if (targetEndpointElgaPlusKbsEImmunization == null) {
			targetEndpointElgaPlusKbsEImmunization = getValueFromProperties(KEY_TARGETENDPOINT_ELGAPLUS_KBS_IMPF);
		}

		return getEndpoint(targetEndpointElgaPlusKbsEImmunization);
	}

	public String getTargetEndpointElgaPlusXCAEImmunization() {
		if (targetEndpointElgaPlusXcaEImmunization == null) {
			targetEndpointElgaPlusXcaEImmunization = getValueFromProperties(KEY_TARGETENDPOINT_ELGAPLUS_EHEALTH_IMPF);
		}

		return getEndpoint(targetEndpointElgaPlusXcaEImmunization);
	}

	public String getTargetEndpointElgaPlusSpiritHpd() {
		if (targetEndpointElgaPlusSpiritHpd == null) {
			targetEndpointElgaPlusSpiritHpd = getValueFromProperties(KEY_TARGETENDPOINT_ELGAPLUS_SPIRIT_HPD);
		}

		return getEndpoint(targetEndpointElgaPlusSpiritHpd);
	}

	public String getGinoEndpoint() {
		if (ginoEndpoint == null) {
			ginoEndpoint = getValueFromProperties(KEY_TARGETENDPOINT_GINO_CARDREADER);
		}

		return HttpConstants.HTTPS_CALL + getGinaAddress().trim() + ginoEndpoint.trim();
	}

	public int getServerPort() {
		if (serverPort == 8087) {
			serverPort = Integer.valueOf(getValueFromProperties(KEY_SERVER_PORT));
		}

		return serverPort;
	}

	public int getTempDeletionTime() {
		if (tempDeletionTime == 360) {
			tempDeletionTime = Integer.valueOf(getValueFromProperties(KEY_TEMP_DELETION_TIME));
		}

		return tempDeletionTime;
	}

	public String getShutdownPath() {
		if (shutdownPath == null) {
			shutdownPath = getValueFromProperties(KEY_TEMP_DELETION_TIME);
		}

		return shutdownPath.trim();
	}

	public int getProductId() {
		if (productId == 0) {
			productId = Integer.valueOf(getValueFromProperties(KEY_PRODUKT_ID));
		}

		return productId;
	}

	public String getProductVersion() {
		if (productVersion == null) {
			productVersion = getValueFromProperties(KEY_PRODUKT_VERSION);
		}

		return productVersion.trim();
	}

	public String getHerstellerId() {
		if (herstellerId == null) {
			herstellerId = getValueFromProperties(KEY_HERSTELLER_ID);
		}

		return herstellerId.trim();
	}

	public String getOidElgaArea() {
		if (oidElgaAreaToSave == null) {
			oidElgaAreaToSave = getValueFromProperties(KEY_OID_ELGA_AREA);
		}

		return oidElgaAreaToSave.trim();
	}

	public boolean isConfigPathSet() {
		return configPathSet;
	}

	public boolean isPvnLoginEnabled() {
		if (enablePvnLogin == null) {
			enablePvnLogin = "true".equalsIgnoreCase(getValueFromProperties(KEY_ENABLE_PVN));
		}

		return enablePvnLogin;
	}

	public boolean isEImmunLoginEnabled() {
		if (enableEimmunLogin == null) {
			enableEimmunLogin = "true".equalsIgnoreCase(getValueFromProperties(KEY_ENABLE_EIMMU));
		}

		return enableEimmunLogin;
	}

	public boolean isOnlyContext() {
		if (onlyContext == null) {
			onlyContext = "true".equalsIgnoreCase(getValueFromProperties(KEY_ONLY_CONTEXT));
		}

		return onlyContext;
	}

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

	private String getEndpoint(String targetendpoint) {
		if (targetendpoint.contains(":") && targetendpoint.contains(".")) {
			return targetendpoint.trim();
		} else if (!targetendpoint.trim().isEmpty()) {
			return HttpConstants.HTTPS_CALL + getGinaAddress().trim() + targetendpoint.trim();
		}

		return "";
	}

	private String getValueFromProperties(String key) {
		try {
			return bundle.getString(key);
		} catch (MissingResourceException ex) {
			return "";
		}
	}

}
