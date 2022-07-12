/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.core.LoggerContext;
import org.eclipse.jetty.server.HttpConfiguration;
import org.husky.common.utils.Util;
import org.jasypt.util.text.BasicTextEncryptor;
import org.opensaml.core.config.InitializationException;
import org.opensaml.core.config.InitializationService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;

import arztis.econnector.common.utilities.BaseServiceStubPool;
import arztis.econnector.ihe.utilities.ConfigReader;
import arztis.econnector.ihe.utilities.IheConstants;
import arztis.econnector.ihe.utilities.IheServiceStubPool;
import arztis.econnector.rest.server.IJettyServer;
import arztis.econnector.rest.server.IpfApplication;

/**
 * Main class of ELGA reference client, it initialize different things like
 * 
 * <ul>
 * <li>LOGGING configuration</li>
 * <li>Application configuration</li>
 * <li>Configuration of embedded JETTY Server</li>
 * </ul>.
 *
 * @author Anna Jungwirth
 */
public class ElgaRefClient {

	/**
	 * Main method to start the WEB Server of the ELGA reference client.
	 *
	 * @param args at position 0 key store password encrypted with algorithm
	 *             PBEWithMD5AndDES
	 */
	public static void main(String[] args) {
		var app = new SpringApplication(IpfApplication.class);
		app.setWebApplicationType(WebApplicationType.NONE);

		var context = app.run(args);
		setLogFile();

		Logger logger = LoggerFactory.getLogger(ElgaRefClient.class.getName());
		logger.debug("Start main!");
		logger.info(org.apache.axis2.Version.getVersion());

		setConfigFile();
		createTempFolder(logger);

		BasicTextEncryptor passwordEncryptor = new BasicTextEncryptor();
		passwordEncryptor.setPassword(System.getenv("ELGA_REF_CLIENT_PASSWORD"));
		String encryptedKeystorePass = null;
		String keystorePass = null;
		if (args != null && args.length > 0) {
			encryptedKeystorePass = args[0];
			keystorePass = passwordEncryptor.decrypt(encryptedKeystorePass);
		}

		// keyStore
		System.setProperty("javax.net.ssl.keyStore", "keystore/cacerts1_keystore.jks");
		System.setProperty("javax.net.ssl.keyStorePassword", keystorePass);
		System.setProperty(IheConstants.SSL_TRUSTSTORE, "keystore/cacerts1_truststore.jks");
		System.setProperty(IheConstants.SSL_TRUSTSTORE_PASS_PACKAGE, keystorePass);

		logger.info("Truststore: {}", System.getProperty(IheConstants.SSL_TRUSTSTORE));

		ConfigReader config = ConfigReader.getInstance();
		try {
			IheServiceStubPool.getInstance(createServiceEndpointMap(config), keystorePass, context);
			BaseServiceStubPool.getInstance().setBaseService(IheServiceStubPool.getInstance().getBaseService());
			BaseServiceStubPool.getInstance().setAuthServiceStub(IheServiceStubPool.getInstance().getAuthServiceStub());
			BaseServiceStubPool.getInstance().setGinaService(IheServiceStubPool.getInstance().getGinaServiceStub());
			BaseServiceStubPool.getInstance().setPortAddressCrs(IheServiceStubPool.getInstance().getPortAddressCrs());
		} catch (Exception e1) {
			logger.error("Could not initialize the soap services", e1);
		}

		try {
			InitializationService.initialize();
		} catch (InitializationException e) {
			logger.error(e.getMessage(), e);
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
	 * The method sets the configuration file at resources/config_elga_ref_client.
	 */
	private static void setConfigFile() {
		ConfigReader.getInstance().setConfigFilePath("config_elga_ref_client");
	}

	/**
	 * creates temporary folder with name EConnectorTemp at TEMP directory.
	 *
	 * @param logger to log
	 */
	private static void createTempFolder(Logger logger) {
		try {
			String path = Util.getTempDirectory() + "/EConnectorTemp";
			File directory = new File(path);

			if (!directory.exists()) {
				directory.mkdir();
			}

			System.setProperty("java.io.tmpdir", path);
		} catch (Exception ex) {
			logger.error(ex.getMessage(), ex);
		}
	}

	/**
	 * Creates a map for needed endpoints to ELGA and GINA services. Name of service
	 * is used as key, while target endpoint from configuration file is used as
	 * value.
	 *
	 * @param config configuration details
	 *
	 * @return map of service name and service endpoints
	 */
	private static Map<String, String> createServiceEndpointMap(ConfigReader config) {
		Map<String, String> serviceEndpointMap = new HashMap<>();
		serviceEndpointMap.put(IheConstants.STS_SERVICE, config.getTargetEndpointSts());
		serviceEndpointMap.put(IheConstants.IDA_GDA_SERVICE, config.getTargetEndpointIdaGda());
		serviceEndpointMap.put(IheConstants.BASE_SERVICE, config.getTargetEndpointBase());
		serviceEndpointMap.put(IheConstants.AUTH_SERVICE, config.getTargetEndpointAuth());
		serviceEndpointMap.put(IheConstants.GINA_SERVICE, config.getTargetEndpointGina());
		serviceEndpointMap.put(IheConstants.CRS_SERVICE, config.getTargetEndpointCrs());
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

	/**
	 * set resources/log4j2.properties as configuration file of LOGGING. In this
	 * file log file path is defined and other logging properties.
	 */
	private static void setLogFile() {
		File propertiesFile = new File("resources/log4j2.properties");

		LoggerContext context = (org.apache.logging.log4j.core.LoggerContext) LogManager.getContext(false);
		context.setConfigLocation(propertiesFile.toURI());
	}
}
