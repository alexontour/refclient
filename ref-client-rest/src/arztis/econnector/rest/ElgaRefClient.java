package arztis.econnector.rest;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.core.LoggerContext;
import org.eclipse.jetty.server.HttpConfiguration;
import org.ehealth_connector.common.utils.FileUtil;
import org.ehealth_connector.common.utils.Util;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.common.utilities.BaseServiceStubPool;
import arztis.econnector.ihe.utilities.ConfigReader;
import arztis.econnector.ihe.utilities.IheConstants;
import arztis.econnector.ihe.utilities.IheServiceStubPool;
import arztis.econnector.rest.server.IJettyServer;

/**
 * Main class of the ELGA reference client, it initialize different things like
 * 
 * <ul>
 * <li>LOGGING configuration</li>
 * <li>Application configuration</li>
 * <li>Configuration of embedded JETTY Server</li>
 * </ul>
 * 
 * @author ET-Innovations
 *
 */
public class ElgaRefClient {

	/**
	 * Main method to start the WEB Server of the ELGA reference client
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		setLogFile();
		setConfigFile();
		createTempFolder();

		Logger logger = LoggerFactory.getLogger(ElgaRefClient.class.getName());
		logger.debug("Start main!");
		logger.info(org.apache.axis2.Version.getVersion());

		// keyStore
		System.setProperty("javax.net.ssl.keyStore", "keystore/cacerts1_keystore.jks");
		System.setProperty("javax.net.ssl.keyStorePassword", IheConstants.KEY_STORE_PASS);
		System.setProperty(IheConstants.SSL_TRUSTSTORE, "keystore/cacerts1_truststore.jks");
		System.setProperty(IheConstants.SSL_TRUSTSTORE_PASS_PACKAGE, IheConstants.KEY_STORE_PASS);

		logger.info("Truststore: {}", System.getProperty(IheConstants.SSL_TRUSTSTORE));

		ConfigReader config = ConfigReader.getInstance();		
		try {
			IheServiceStubPool.getInstance(createServiceEndpointMap(config));
			BaseServiceStubPool.getInstance().setBaseService(IheServiceStubPool.getInstance().getBaseService());
			BaseServiceStubPool.getInstance().setAuthServiceStub(IheServiceStubPool.getInstance().getAuthServiceStub());
			BaseServiceStubPool.getInstance().setGinaService(IheServiceStubPool.getInstance().getGinaServiceStub());
		} catch (Exception e1) {
			logger.error("Could not initialize the soap services", e1);
		}
		
		try {
			HttpConfiguration http = new HttpConfiguration();
			http.setSecurePort(config.getServerPort());
			http.setSecureScheme("https");
			IJettyServer jettyServer = new IJettyServer(config.getServerPort(), http);

			jettyServer.start();
			logger.debug("Server started, listening on {}", config.getServerPort());
			logger.info("ssl keystore path: {}", System.getProperty(IheConstants.SSL_TRUSTSTORE));
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
	}

	/**
	 * The method sets the config file at a certain path or if the parameter is null
	 * or empty the default config file is used.
	 *
	 * @param pPath String path of the config file
	 */
	private static void setConfigFile() {
		ConfigReader.getInstance().setConfigFilePath("config_elga_ref_client");
	}

	private static void createTempFolder() {
		String path = Util.getTempDirectory() + FileUtil.getPlatformSpecificPathSeparator() + "EConnectorTemp";
		File directory = new File(path);
		if (!directory.exists()) {
			directory.mkdir();
		}

		System.setProperty("java.io.tmpdir", path);
	}

	private static Map<String, String> createServiceEndpointMap(ConfigReader config) {
		Map<String, String> serviceEndpointMap = new HashMap<>();
		serviceEndpointMap.put(IheConstants.STS_SERVICE, config.getTargetEndpointSts());
		serviceEndpointMap.put(IheConstants.IDA_GDA_SERVICE, config.getTargetEndpointIdaGda());
		serviceEndpointMap.put(IheConstants.BASE_SERVICE, config.getTargetEndpointBase());
		serviceEndpointMap.put(IheConstants.AUTH_SERVICE, config.getTargetEndpointAuth());
		serviceEndpointMap.put(IheConstants.GINA_SERVICE, config.getTargetEndpointGina());
		serviceEndpointMap.put(IheConstants.ETS_SERVICE, config.getTargetEndpointEts());
		serviceEndpointMap.put(IheConstants.ELGA_PLUS_ETS_SERVICE, config.getTargetEndpointElgaPlusEts());
		serviceEndpointMap.put(IheConstants.ELGA_PLUS_ETS_E_IMMUNIZATION_SERVICE,
				config.getTargetEndpointElgaPlusEtsEImmunization());
		serviceEndpointMap.put(IheConstants.KBS_SERVICE, config.getTargetEndpointKbs());
		serviceEndpointMap.put(IheConstants.ELGA_PLUS_KBS_E_IMMUNIZATION_SERVICE,
				config.getTargetEndpointElgaPlusKbsEImmunization());
		serviceEndpointMap.put(IheConstants.ELGA_PLUS_KBS_SERVICE, config.getTargetEndpointElgaPlusKbs());
		serviceEndpointMap.put(IheConstants.EMED_AT_SERVICE, config.getTargetEndpointEmedAt());
		serviceEndpointMap.put(IheConstants.EMED_AT_SEC_SERVICE, config.getTargetEndpointEmedAtSec());
		serviceEndpointMap.put(IheConstants.XDS_SERVICE, config.getTargetEndpointXdsWrite());
		serviceEndpointMap.put(IheConstants.XCA_SERVICE, config.getTargetEndpointXdsRead());
		serviceEndpointMap.put(IheConstants.ELGA_PLUS_XDS_SERVICE, config.getTargetEndpointElgaPlusXCA());
		serviceEndpointMap.put(IheConstants.ELGA_PLUS_XDS_E_IMMUNIZATION_SERVICE,
				config.getTargetEndpointElgaPlusXCAEImmunization());
		serviceEndpointMap.put(IheConstants.PDQ_SERVICE, config.getTargetEndpointPdq());
		serviceEndpointMap.put(IheConstants.PIX_SERVICE, config.getTargetEndpointPix());
		serviceEndpointMap.put(IheConstants.GDAI_SERVICE, config.getTargetEndpointGdaIndex());
		serviceEndpointMap.put(IheConstants.PHARM_SERVICE, config.getTargetEndpointEmed());

		return serviceEndpointMap;
	}

	private static void setLogFile() {
		File propertiesFile = new File("resources/log4j2.properties");

		LoggerContext context = (org.apache.logging.log4j.core.LoggerContext) LogManager.getContext(false);
		context.setConfigLocation(propertiesFile.toURI());
	}
}
