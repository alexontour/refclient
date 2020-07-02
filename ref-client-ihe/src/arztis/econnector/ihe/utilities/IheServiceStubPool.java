package arztis.econnector.ihe.utilities;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Map;
import java.util.UUID;

import org.apache.axiom.om.OMAbstractFactory;
import org.apache.axiom.om.OMElement;
import org.apache.axiom.om.OMFactory;
import org.apache.axiom.om.OMNamespace;
import org.apache.axiom.soap.SOAPFactory;
import org.apache.axiom.soap.SOAPHeaderBlock;
import org.apache.axis2.AxisFault;
import org.apache.axis2.addressing.AddressingConstants;
import org.apache.axis2.addressing.EndpointReference;
import org.apache.axis2.context.ConfigurationContext;
import org.apache.axis2.context.ConfigurationContextFactory;
import org.apache.axis2.description.AxisModule;
import org.apache.axis2.engine.AxisConfiguration;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.MultiThreadedHttpConnectionManager;
import org.apache.commons.httpclient.params.HttpConnectionManagerParams;
import org.ehealth_connector.communication.AffinityDomain;
import org.ehealth_connector.communication.AtnaConfig.AtnaConfigMode;
import org.ehealth_connector.communication.Destination;
import org.ehealth_connector.communication.DocumentMetadata.DocumentMetadataExtractionMode;
import org.ehealth_connector.communication.SubmissionSetMetadata.SubmissionSetMetadataExtractionMode;
import org.ehealth_connector.communication.at.ConvenienceCommunicationAt;
import org.jasypt.util.password.StrongPasswordEncryptor;
import org.jasypt.util.text.BasicTextEncryptor;
import org.jasypt.util.text.StrongTextEncryptor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.GinaServiceStub;
import arztis.econnector.common.utilities.BaseServiceStubPool;
import arztis.econnector.common.utilities.HttpConstants;
import arztis.econnector.ihe.generatedClasses.at.chipkarte.client.sts.soap.StsServiceStub;
import arztis.econnector.ihe.generatedClasses.emedat.EmedAtServiceStub;
import arztis.econnector.ihe.generatedClasses.emedat.rst.EmedAtSecurityTokenStub;
import arztis.econnector.ihe.generatedClasses.ets.ETSServiceStub;
import arztis.econnector.ihe.generatedClasses.gdaiws.GdaIndexWsStub;
import arztis.econnector.ihe.generatedClasses.ihe.registry.IHERegistryServiceStub;
import arztis.econnector.ihe.generatedClasses.kbs.KBSServiceStub;
import arztis.econnector.ihe.generatedClasses.pharm.CommunityPharmacyManagerStub;

public class IheServiceStubPool extends BaseServiceStubPool {
	/**
	 * 
	 */
	private static final long serialVersionUID = 9172740153910371304L;
	private static final Logger LOGGER = LoggerFactory.getLogger(IheServiceStubPool.class.getName());
	private static final String NIST_KEY_STORE = "keystore/cacerts1_keystore.jks";
	private static final String NIST_TRUST_STORE = "keystore/cacerts1_truststore.jks";
	private static final String ADDRESSING = "addressing";
	private static final String ACTION = "Action";
	private static final String ACTION_QUERY_PHARMACY_DOCS = "urn:ihe:pharm:cmpd:2010:QueryPharmacyDocuments";
	private static final String ACTION_UPDATE_DOCUMENT_SET = "urn:ihe:iti:2010:UpdateDocumentSet";
	private static final String PATH_AXIS2_CONFIG = "resources/axis2.xml";
	private String portAddressEts = "";
	private String portAddressKbs = "";
	private String portAddressEmedAt = "";
	private String portAddressEmedAtSec = "";
	private String portAddressXds = "";
	private String portAddressXdsWrite = "";
	private String portAddressPharmacyManager = "";
	private String portAddressGdaI = "";
	private String portAddressPdq = "";
	private String portAddressPix = "";
	private String portAddressElgaPlusDocuments = "";
	private String portAddressElgaPlusEts = "";
	private String portAddressElgaPlusKbs = "";
	private String portAddressElgaPlusEtsEImmunization = "";
	private String portAddressElgaPlusDocumentsEImmunization = "";
	private String portAddressElgaPlusKbsEImmunization = "";
	private String portAddressIda = "";
	private static final String UUID_LITERAL = "uuid:";
	private static final String WS_TRUST_200512_RST_ISSUE = "http://docs.oasis-open.org/"
			+ "ws-sx/ws-trust/200512/RST/Issue";
	private String portAddressBase = "";
	private String portAddressAuth = "";
	private String portAddressGina = "";
	private String portAddressSts = "";
	private MultiThreadedHttpConnectionManager httpConnectionManager;
	private ConfigurationContext configurationContext;
	private HttpClient httpClient;
	private StsServiceStub stsServiceStub;
	private ETSServiceStub etsServiceStub;
	private KBSServiceStub kbsServiceStub;
	private KBSServiceStub kbsEhealthPlusEImmunizationServiceStub;
	private KBSServiceStub kbsEhealthPlusServiceStub;
	private EmedAtServiceStub emedAtServiceStub;
	private IHERegistryServiceStub iheRegistryDocumentsServiceStub;
	private IHERegistryServiceStub iheEmedRegistryServiceStub;
	private IHERegistryServiceStub iheEhealthPlusRegistryServiceStub;
	private IHERegistryServiceStub iheEhealthPlusEImmunizationRegistryServiceStub;
	private EmedAtSecurityTokenStub emedAtSecurityTokenStub;
	private CommunityPharmacyManagerStub communityPharmacyManagerStub;
	private CommunityPharmacyManagerStub communityPharmacyManagerEhealthPlusEImmunizationStub;
	private ConvenienceCommunicationAt xdsService;
	private ConvenienceCommunicationAt xdsEmedService;
	private ConvenienceCommunicationAt xdsWriteService;
	private ConvenienceCommunicationAt xdsEhealthPlusService;
	private ConvenienceCommunicationAt xdsEhealthPlusEImmunizationService;
	private AffinityDomain affinityDomainZpi;
	private GdaIndexWsStub gdaService;
	private ETSServiceStub idaElgaAreaServiceStub;
	private ETSServiceStub etsEhealthPlusServiceStub;
	private ETSServiceStub etsEhealthPlusEImmunizationServiceStub;
	private static IheServiceStubPool instance;
	private String keystorePass;

	private IheServiceStubPool(Map<String, String> mapServiceEndpoints, String keystorePass) {
		if (instance != null) {
			throw new RuntimeException("Use getInstance() method to get the single instance of IHE service stub pool");
		}

		portAddressEts = mapServiceEndpoints.get(IheConstants.ETS_SERVICE);
		portAddressKbs = mapServiceEndpoints.get(IheConstants.KBS_SERVICE);
		portAddressEmedAt = mapServiceEndpoints.get(IheConstants.EMED_AT_SERVICE);
		portAddressEmedAtSec = mapServiceEndpoints.get(IheConstants.EMED_AT_SEC_SERVICE);
		portAddressXds = mapServiceEndpoints.get(IheConstants.XCA_SERVICE);
		portAddressXdsWrite = mapServiceEndpoints.get(IheConstants.XDS_SERVICE);
		portAddressPharmacyManager = mapServiceEndpoints.get(IheConstants.PHARM_SERVICE);
		portAddressGdaI = mapServiceEndpoints.get(IheConstants.GDAI_SERVICE);
		portAddressPdq = mapServiceEndpoints.get(IheConstants.PDQ_SERVICE);
		portAddressPix = mapServiceEndpoints.get(IheConstants.PIX_SERVICE);
		portAddressElgaPlusDocuments = mapServiceEndpoints.get(IheConstants.ELGA_PLUS_XDS_SERVICE);
		portAddressElgaPlusEts = mapServiceEndpoints.get(IheConstants.ELGA_PLUS_ETS_SERVICE);
		portAddressElgaPlusKbs = mapServiceEndpoints.get(IheConstants.ELGA_PLUS_KBS_SERVICE);
		portAddressElgaPlusEtsEImmunization = mapServiceEndpoints
				.get(IheConstants.ELGA_PLUS_ETS_E_IMMUNIZATION_SERVICE);
		portAddressElgaPlusDocumentsEImmunization = mapServiceEndpoints
				.get(IheConstants.ELGA_PLUS_XDS_E_IMMUNIZATION_SERVICE);
		portAddressElgaPlusKbsEImmunization = mapServiceEndpoints
				.get(IheConstants.ELGA_PLUS_KBS_E_IMMUNIZATION_SERVICE);
		portAddressIda = mapServiceEndpoints.get(IheConstants.IDA_GDA_SERVICE);
		portAddressAuth = mapServiceEndpoints.get(IheConstants.AUTH_SERVICE);
		portAddressBase = mapServiceEndpoints.get(IheConstants.BASE_SERVICE);
		portAddressGina = mapServiceEndpoints.get(IheConstants.GINA_SERVICE);
		portAddressSts = mapServiceEndpoints.get(IheConstants.STS_SERVICE);
		this.keystorePass = keystorePass;

		httpConnectionManager = new MultiThreadedHttpConnectionManager();
		HttpConnectionManagerParams params = httpConnectionManager.getParams();
		params.setMaxTotalConnections(100);
		params.setDefaultMaxConnectionsPerHost(100);
		params.setConnectionTimeout(30000);
		params.setSoTimeout(60000);

		httpClient = new HttpClient(httpConnectionManager);

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created http connection manager with the following pooled connections : "
					+ httpConnectionManager.getConnectionsInPool());
		}

		try {
			System.setProperty("axis2.xml", PATH_AXIS2_CONFIG);
			addAddressingModule();
			initiateAllServices();
		} catch (Exception ex) {
			LOGGER.error(ex.getMessage(), ex);
		}
	}

	public synchronized static IheServiceStubPool getInstance(Map<String, String> mapServiceEndpoints, String encryptedKeystorePass) {
		if (instance == null) {
			if (mapServiceEndpoints == null) {
				throw new IllegalStateException(
						"Either serviceManagerTargetEndpoint or servicesVersionMap is not set. Cannot create instance");
			}

			instance = new IheServiceStubPool(mapServiceEndpoints, encryptedKeystorePass);
		}

		return instance;
	}

	public static IheServiceStubPool getInstance() {
		if (instance == null) {
			throw new IllegalStateException(
					"Either serviceManagerTargetEndpoint or servicesVersionMap is not set. Cannot create instance");
		}
		return instance;
	}

	public GdaIndexWsStub getGdaIndexService() {
		return gdaService;
	}

	public StsServiceStub getStsService() {
		return stsServiceStub;
	}

	public EmedAtServiceStub getEmedAtService() {
		return emedAtServiceStub;
	}

	public EmedAtSecurityTokenStub getEmedAtSecurityTokenService() {
		return emedAtSecurityTokenStub;
	}

	public IHERegistryServiceStub getIHERegistryService() {
		return iheRegistryDocumentsServiceStub;
	}

	public IHERegistryServiceStub getIHERegistryEmedService() {
		return iheEmedRegistryServiceStub;
	}

	public IHERegistryServiceStub getIHERegistryEhealthPlusService() {
		return iheEhealthPlusRegistryServiceStub;
	}

	public IHERegistryServiceStub getIHERegistryEhealthPlusEImmunizationService() {
		return iheEhealthPlusEImmunizationRegistryServiceStub;
	}

	public ConvenienceCommunicationAt getXdsService() {
		return xdsService;
	}

	public ConvenienceCommunicationAt getXdsWriteService() {
		return xdsWriteService;
	}

	public ConvenienceCommunicationAt getXdsEHealthPlusService() {
		return xdsEhealthPlusService;
	}

	public ConvenienceCommunicationAt getXdsEHealthPlusEImmunizationService() {
		return xdsEhealthPlusEImmunizationService;
	}

	public AffinityDomain getAffinityDomainZpi() {
		return affinityDomainZpi;
	}

	public ConvenienceCommunicationAt getXdsEmedService() {
		return xdsEmedService;
	}

	public CommunityPharmacyManagerStub getCommunityPharmacyManagerService() {
		return communityPharmacyManagerStub;
	}

	public CommunityPharmacyManagerStub getCommunityPharmacyManagerEhealthPlusEImmunizationStub() {
		return communityPharmacyManagerEhealthPlusEImmunizationStub;
	}

	private void addAddressingModule() {
		try {
			configurationContext = ConfigurationContextFactory.createConfigurationContextFromFileSystem(null,
					System.getProperty("axis2.xml"));
			AxisConfiguration axisConfiguration = configurationContext.getAxisConfiguration();

			AxisModule addressing = new AxisModule(ADDRESSING);
			addressing.setParent(axisConfiguration);
			addressing.setModuleClassLoader(getClass().getClassLoader());
		} catch (AxisFault e) {
			LOGGER.error(e.getFaultNode(), e);
		}
	}

	public void instantiateBaseService(String portAddressBase) {
		try {
			baseServiceStub = new BaseServiceStub(configurationContext, portAddressBase);
			baseServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.REUSE_HTTP_CLIENT, Boolean.TRUE);
			baseServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.CACHED_HTTP_CLIENT, httpClient);
			baseServiceStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	public void instantiateAuthService(String portAddressBase) {
		try {
			authServiceStub = new AuthServiceStub(configurationContext, portAddressBase);
			authServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.REUSE_HTTP_CLIENT, Boolean.TRUE);
			authServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.CACHED_HTTP_CLIENT, httpClient);
			authServiceStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	public void instantiateGinaService(String portAddressGina) {
		try {
			ginaServiceStub = new GinaServiceStub(configurationContext, portAddressGina);
			ginaServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.REUSE_HTTP_CLIENT, Boolean.TRUE);
			ginaServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.CACHED_HTTP_CLIENT, httpClient);
			ginaServiceStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	public void instantiateEtsService() {
		try {
			etsServiceStub = new ETSServiceStub(configurationContext, portAddressEts);
			setPropertiesToEtsService(WS_TRUST_200512_RST_ISSUE);
			etsServiceStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	public void instantiateEtsEhealthPlusService() {
		try {
			etsEhealthPlusServiceStub = new ETSServiceStub(configurationContext, portAddressElgaPlusEts);
			setPropertiesToEtsEhealthPlusService(WS_TRUST_200512_RST_ISSUE);
			etsEhealthPlusServiceStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	public void instantiateIdaElgaAreaService() {
		try {
			idaElgaAreaServiceStub = new ETSServiceStub(configurationContext, portAddressIda);
			setPropertiesToIdaElgaAreaService(WS_TRUST_200512_RST_ISSUE);
			idaElgaAreaServiceStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	public void instantiateEtsEhealthPlusEImmunizationService() {
		try {
			etsEhealthPlusEImmunizationServiceStub = new ETSServiceStub(configurationContext,
					portAddressElgaPlusEtsEImmunization);
			setPropertiesToEtsEhealthPlusEImmunizationService(WS_TRUST_200512_RST_ISSUE);
			etsEhealthPlusEImmunizationServiceStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	public void instantiateKbsService() {
		try {
			kbsServiceStub = new KBSServiceStub(configurationContext, portAddressKbs);
			setPropertiesToKbsService(WS_TRUST_200512_RST_ISSUE);
			kbsServiceStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	public void instantiateKbsEhealthPlusService() {
		try {
			kbsEhealthPlusServiceStub = new KBSServiceStub(configurationContext, portAddressElgaPlusKbs);
			setPropertiesToKbsEhealthPlusService(WS_TRUST_200512_RST_ISSUE);
			kbsEhealthPlusServiceStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	public void instantiateKbsEhealthPlusEImmunizationService() {
		try {
			kbsEhealthPlusEImmunizationServiceStub = new KBSServiceStub(configurationContext,
					portAddressElgaPlusKbsEImmunization);
			setPropertiesToKbsEhealthPlusEImmunizationService(WS_TRUST_200512_RST_ISSUE);
			kbsEhealthPlusEImmunizationServiceStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	public void instantiateEmedAtService() {
		try {
			emedAtServiceStub = new EmedAtServiceStub(configurationContext, portAddressEmedAt);
			setPropertiesToEMedAtService();
			emedAtServiceStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	public void instantiateIheRegistryDocumentService() {
		try {
			iheRegistryDocumentsServiceStub = new IHERegistryServiceStub(configurationContext, portAddressXdsWrite);
			setPropertiesToIheRegistryDocumentsService(ACTION_UPDATE_DOCUMENT_SET, portAddressXdsWrite,
					iheRegistryDocumentsServiceStub);
			iheRegistryDocumentsServiceStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	public void instantiateIheEmedRegistryDocumentService() {
		try {
			iheEmedRegistryServiceStub = new IHERegistryServiceStub(configurationContext, portAddressPharmacyManager);
			setPropertiesToIheRegistryDocumentsService(ACTION_UPDATE_DOCUMENT_SET, portAddressPharmacyManager,
					iheEmedRegistryServiceStub);
			iheEmedRegistryServiceStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	public void instantiateIheEhealthPlusRegistryDocumentService() {
		try {
			iheEhealthPlusRegistryServiceStub = new IHERegistryServiceStub(configurationContext,
					portAddressElgaPlusDocuments);
			setPropertiesToIheRegistryDocumentsService(ACTION_UPDATE_DOCUMENT_SET, portAddressElgaPlusDocuments,
					iheEhealthPlusRegistryServiceStub);
			iheEhealthPlusRegistryServiceStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	public void instantiateIheEhealthPlusEImmunizationRegistryDocumentService() {
		try {
			iheEhealthPlusEImmunizationRegistryServiceStub = new IHERegistryServiceStub(configurationContext,
					portAddressElgaPlusDocumentsEImmunization);
			setPropertiesToIheRegistryDocumentsService(ACTION_UPDATE_DOCUMENT_SET,
					portAddressElgaPlusDocumentsEImmunization, iheEhealthPlusEImmunizationRegistryServiceStub);
			iheEhealthPlusEImmunizationRegistryServiceStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	public void instantiateEmedAtSecurityTokenService() {
		try {
			emedAtSecurityTokenStub = new EmedAtSecurityTokenStub(configurationContext, portAddressEmedAtSec);
			setPropertiesToEMedAtSecurityTokenService();
			emedAtSecurityTokenStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	public void instantiateCommunityPharmacyManagerService() {
		try {
			communityPharmacyManagerStub = new CommunityPharmacyManagerStub(configurationContext,
					portAddressPharmacyManager);
			setPropertiesToCommunityPharmacyManagerService();
			communityPharmacyManagerStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	public void instantiateCommunityPharmacyManagerEhealthPlusEImmunizationService() {
		try {
			communityPharmacyManagerEhealthPlusEImmunizationStub = new CommunityPharmacyManagerStub(
					configurationContext, portAddressElgaPlusDocumentsEImmunization);
			setPropertiesToCommunityPharmacyManagerEhealthPlusEImmunizationService();
			communityPharmacyManagerEhealthPlusEImmunizationStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	public void instantiateStsService() {
		try {
			stsServiceStub = new StsServiceStub(configurationContext, portAddressSts);
			stsServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.REUSE_HTTP_CLIENT, Boolean.TRUE);
			stsServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.CACHED_HTTP_CLIENT, httpClient);
			stsServiceStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	public void instantiateGdaService() {
		try {
			gdaService = new GdaIndexWsStub(portAddressGdaI);
			gdaService._getServiceClient().getOptions().setProperty(HttpConstants.REUSE_HTTP_CLIENT, Boolean.TRUE);
			gdaService._getServiceClient().getOptions().setProperty(HttpConstants.CACHED_HTTP_CLIENT, httpClient);
			gdaService._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	@Override
	public boolean cleanupAll() {
		try {
			super.cleanupAll();
			stsServiceStub._getServiceClient().cleanup();
			etsServiceStub._getServiceClient().cleanup();
			kbsServiceStub._getServiceClient().cleanup();
			kbsEhealthPlusEImmunizationServiceStub._getServiceClient().cleanup();
			etsEhealthPlusEImmunizationServiceStub._getServiceClient().cleanup();
			etsEhealthPlusServiceStub._getServiceClient().cleanup();
			kbsEhealthPlusServiceStub._getServiceClient().cleanup();
			emedAtServiceStub._getServiceClient().cleanup();
			iheRegistryDocumentsServiceStub._getServiceClient().cleanup();
			iheEmedRegistryServiceStub._getServiceClient().cleanup();
			iheEhealthPlusRegistryServiceStub._getServiceClient().cleanup();
			iheEhealthPlusEImmunizationRegistryServiceStub._getServiceClient().cleanup();
			emedAtSecurityTokenStub._getServiceClient().cleanup();
			communityPharmacyManagerStub._getServiceClient().cleanup();
			gdaService._getServiceClient().cleanup();
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
			return false;
		}

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("cleaned up all services in the class");
		}
		return true;
	}

	public void initiateAllServices() throws URISyntaxException {
		affinityDomainZpi = createAffinityDomain("", "");

		initiateGinaServices();
		initiateBaseElgaServices();
		initiateEMedServices();
		initiateEImmunizationServices();
		initiateVirtualOrganizationServices();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created all service stubs");
		}
	}

	private void initiateBaseElgaServices() throws URISyntaxException {
		instantiateGdaService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created gda index stub {}", portAddressGdaI);
		}

		instantiateEtsService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created ets stub {}", portAddressEts);
		}

		instantiateIdaElgaAreaService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created ida stub for elga areas {}", portAddressIda);
		}

		instantiateKbsService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created kbs stub {}", portAddressKbs);
		}

		instantiateIheRegistryDocumentService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created ihe document registry stub {}", portAddressXdsWrite);
		}

		xdsService = new ConvenienceCommunicationAt(createAffinityDomain("", portAddressXds), AtnaConfigMode.SECURE,
				DocumentMetadataExtractionMode.DEFAULT_EXTRACTION,
				SubmissionSetMetadataExtractionMode.DEFAULT_EXTRACTION, PATH_AXIS2_CONFIG);

		xdsWriteService = new ConvenienceCommunicationAt(createAffinityDomain("", portAddressXdsWrite),
				AtnaConfigMode.SECURE, DocumentMetadataExtractionMode.DEFAULT_EXTRACTION,
				SubmissionSetMetadataExtractionMode.DEFAULT_EXTRACTION, PATH_AXIS2_CONFIG);
	}

	private void initiateGinaServices() {
		if (portAddressBase != null && !portAddressBase.isEmpty()) {
			instantiateBaseService(portAddressBase);

			if (LOGGER.isDebugEnabled()) {
				LOGGER.debug("created base stub {}", portAddressBase);
			}
		}

		if (portAddressAuth != null && !portAddressAuth.isEmpty()) {
			instantiateAuthService(portAddressAuth);

			if (LOGGER.isDebugEnabled()) {
				LOGGER.debug("created base stub {}", portAddressAuth);
			}
		}

		if (portAddressGina != null && !portAddressGina.isEmpty()) {
			instantiateGinaService(portAddressGina);

			if (LOGGER.isDebugEnabled()) {
				LOGGER.debug("created gina stub {}", portAddressGina);
			}
		}

		instantiateStsService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created sts stub {}", portAddressSts);
		}
	}

	private void initiateEMedServices() throws URISyntaxException {
		instantiateIheEmedRegistryDocumentService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created ihe document registry stub for emed {}", portAddressPharmacyManager);
		}

		instantiateEmedAtService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created emed at stub {}", portAddressEmedAt);
		}

		instantiateEmedAtSecurityTokenService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created emed at security token stub {}", portAddressEmedAtSec);
		}

		instantiateCommunityPharmacyManagerService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created community pharmacy manager stub {}", portAddressPharmacyManager);
		}

		xdsEmedService = new ConvenienceCommunicationAt(createAffinityDomain("", portAddressPharmacyManager),
				AtnaConfigMode.SECURE, DocumentMetadataExtractionMode.DEFAULT_EXTRACTION,
				SubmissionSetMetadataExtractionMode.DEFAULT_EXTRACTION, PATH_AXIS2_CONFIG);
	}

	private void initiateVirtualOrganizationServices() throws URISyntaxException {
		instantiateEtsEhealthPlusService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created ets stub for ehealth plus {}", portAddressElgaPlusEts);
		}

		instantiateKbsEhealthPlusService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created kbs ehealth plus stub {}", portAddressElgaPlusKbs);
		}

		instantiateIheEhealthPlusRegistryDocumentService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created ihe document registry stub for ehealth plus applications {}",
					portAddressElgaPlusDocuments);
		}

		xdsEhealthPlusService = new ConvenienceCommunicationAt(createAffinityDomain("", portAddressElgaPlusDocuments),
				AtnaConfigMode.SECURE, DocumentMetadataExtractionMode.DEFAULT_EXTRACTION,
				SubmissionSetMetadataExtractionMode.DEFAULT_EXTRACTION, PATH_AXIS2_CONFIG);
	}

	private void initiateEImmunizationServices() throws URISyntaxException {
		instantiateEtsEhealthPlusEImmunizationService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created ets stub for ehealth plus {}", portAddressElgaPlusEtsEImmunization);
		}

		instantiateKbsEhealthPlusEImmunizationService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created kbs ehealth plus eImmunization stub {}", portAddressElgaPlusKbsEImmunization);
		}

		instantiateIheEhealthPlusEImmunizationRegistryDocumentService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created ihe document registry stub for emed {}", portAddressElgaPlusDocumentsEImmunization);
		}

		instantiateCommunityPharmacyManagerEhealthPlusEImmunizationService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created community pharmacy manager ehealth plus eImmunization stub {}",
					portAddressElgaPlusDocumentsEImmunization);
		}

		xdsEhealthPlusEImmunizationService = new ConvenienceCommunicationAt(
				createAffinityDomain("", portAddressElgaPlusDocumentsEImmunization), AtnaConfigMode.SECURE,
				DocumentMetadataExtractionMode.DEFAULT_EXTRACTION,
				SubmissionSetMetadataExtractionMode.DEFAULT_EXTRACTION, PATH_AXIS2_CONFIG);

	}

	public ETSServiceStub getEtsService(String action) {
		if (action != null && !action.equalsIgnoreCase(etsServiceStub._getServiceClient().getOptions().getAction())) {
			etsServiceStub._getServiceClient().removeHeaders();
			setSoapHeadersEts(action, portAddressEts);
			etsServiceStub._getServiceClient().getOptions().setAction(action);
		}

		return etsServiceStub;
	}

	public ETSServiceStub getIdaGdaService(String action) {
		if (action != null
				&& !action.equalsIgnoreCase(idaElgaAreaServiceStub._getServiceClient().getOptions().getAction())) {
			idaElgaAreaServiceStub._getServiceClient().removeHeaders();
			setSoapHeadersIdaElgaAreas(action, portAddressIda);
			idaElgaAreaServiceStub._getServiceClient().getOptions().setAction(action);
		}

		return idaElgaAreaServiceStub;
	}

	public ETSServiceStub getEtsEhealthPlusService(String action) {
		if (action != null
				&& !action.equalsIgnoreCase(etsEhealthPlusServiceStub._getServiceClient().getOptions().getAction())) {
			etsEhealthPlusServiceStub._getServiceClient().removeHeaders();
			setSoapHeadersEtsEhealthPlus(action, portAddressElgaPlusEts);
			etsEhealthPlusServiceStub._getServiceClient().getOptions().setAction(action);
		} else {
			etsEhealthPlusServiceStub._getServiceClient().removeHeaders();
			setSoapHeadersEtsEhealthPlus(action, portAddressElgaPlusEts);
		}

		return etsEhealthPlusServiceStub;
	}

	public ETSServiceStub getEtsEhealthPlusEImmunizationService(String action) {
		if (action != null && !action.equalsIgnoreCase(
				etsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions().getAction())) {
			etsEhealthPlusEImmunizationServiceStub._getServiceClient().removeHeaders();
			setSoapHeadersEtsEhealthPlusEImmunization(action, portAddressElgaPlusEtsEImmunization);
			etsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions().setAction(action);
		} else {
			etsEhealthPlusEImmunizationServiceStub._getServiceClient().removeHeaders();
			setSoapHeadersEtsEhealthPlus(action, portAddressElgaPlusEtsEImmunization);
		}

		return etsEhealthPlusEImmunizationServiceStub;
	}

	public KBSServiceStub getKbsService(String action) {
		if (action != null && !action.equalsIgnoreCase(kbsServiceStub._getServiceClient().getOptions().getAction())) {
			kbsServiceStub._getServiceClient().removeHeaders();
			setSoapHeadersKbs(action, portAddressKbs);
			kbsServiceStub._getServiceClient().getOptions().setAction(action);
		}

		return kbsServiceStub;
	}

	public KBSServiceStub getKbsEhealthPlus(String action) {
		if (action != null
				&& !action.equalsIgnoreCase(kbsEhealthPlusServiceStub._getServiceClient().getOptions().getAction())) {
			kbsEhealthPlusServiceStub._getServiceClient().removeHeaders();
			setSoapHeadersKbsEhealthPlus(action, portAddressElgaPlusKbs);
			kbsEhealthPlusServiceStub._getServiceClient().getOptions().setAction(action);
		}

		return kbsEhealthPlusServiceStub;
	}

	public KBSServiceStub getKbsEhealthPlusEImmunizationService(String action) {
		if (action != null && !action.equalsIgnoreCase(
				kbsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions().getAction())) {
			kbsEhealthPlusEImmunizationServiceStub._getServiceClient().removeHeaders();
			setSoapHeadersKbsEhealthPlusEImmunization(action, portAddressElgaPlusKbsEImmunization);
			kbsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions().setAction(action);
		}

		return kbsEhealthPlusEImmunizationServiceStub;
	}

	private void setSoapHeadersEts(String action, String addressService) {
		etsServiceStub._getServiceClient().addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_ACTION, action));
		etsServiceStub._getServiceClient().addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, addressService));
		etsServiceStub._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));
	}

	private void setSoapHeadersEtsEhealthPlus(String action, String addressService) {
		etsEhealthPlusServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_ACTION, action));
		etsEhealthPlusServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, addressService));
		etsEhealthPlusServiceStub._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));
	}

	private void setSoapHeadersEtsEhealthPlusEImmunization(String action, String addressService) {
		etsEhealthPlusEImmunizationServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_ACTION, action));
		etsEhealthPlusEImmunizationServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, addressService));
		etsEhealthPlusEImmunizationServiceStub._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));
	}

	private void setSoapHeadersIdaElgaAreas(String action, String addressService) {
		idaElgaAreaServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_ACTION, action));
		idaElgaAreaServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, addressService));
		idaElgaAreaServiceStub._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));
	}

	private void setSoapHeadersKbs(String action, String addressService) {
		kbsServiceStub._getServiceClient().removeHeaders();
		kbsServiceStub._getServiceClient().addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_ACTION, action));
		kbsServiceStub._getServiceClient().addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, addressService));
		kbsServiceStub._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));
	}

	private void setSoapHeadersKbsEhealthPlus(String action, String addressService) {
		kbsEhealthPlusServiceStub._getServiceClient().removeHeaders();
		kbsEhealthPlusServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_ACTION, action));
		kbsEhealthPlusServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, addressService));
		kbsEhealthPlusServiceStub._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));
	}

	private void setSoapHeadersKbsEhealthPlusEImmunization(String action, String addressService) {
		kbsEhealthPlusEImmunizationServiceStub._getServiceClient().removeHeaders();
		kbsEhealthPlusEImmunizationServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_ACTION, action));
		kbsEhealthPlusEImmunizationServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, addressService));
		kbsEhealthPlusEImmunizationServiceStub._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));
	}

	private void setPropertiesToEtsService(String action) {
		setSoapHeadersEts(action, portAddressEts);
		EndpointReference targetEP = new EndpointReference(portAddressEts);
		etsServiceStub._getServiceClient().getOptions().setTo(targetEP);
		etsServiceStub._getServiceClient().getOptions().setProperty(AddressingConstants.WS_ADDRESSING_VERSION,
				AddressingConstants.Final.WSA_NAMESPACE);
		etsServiceStub._getServiceClient().getOptions().setProperty(AddressingConstants.INCLUDE_OPTIONAL_HEADERS,
				Boolean.TRUE);
		etsServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.REUSE_HTTP_CLIENT, Boolean.TRUE);
		etsServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.CACHED_HTTP_CLIENT, httpClient);
		etsServiceStub._getServiceClient().getOptions().setAction(action);
		etsServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.PROTOCOL_VERSION,
				HttpConstants.HEADER_PROTOCOL_11);
		etsServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.CHUNKED, Boolean.FALSE);
	}

	private void setPropertiesToEtsEhealthPlusService(String action) {
		setSoapHeadersEtsEhealthPlus(action, portAddressElgaPlusEts);
		EndpointReference targetEP = new EndpointReference(portAddressElgaPlusEts);
		etsEhealthPlusServiceStub._getServiceClient().getOptions().setTo(targetEP);
		etsEhealthPlusServiceStub._getServiceClient().getOptions()
				.setProperty(AddressingConstants.WS_ADDRESSING_VERSION, AddressingConstants.Final.WSA_NAMESPACE);
		etsEhealthPlusServiceStub._getServiceClient().getOptions()
				.setProperty(AddressingConstants.INCLUDE_OPTIONAL_HEADERS, Boolean.TRUE);
		etsEhealthPlusServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.REUSE_HTTP_CLIENT,
				Boolean.TRUE);
		etsEhealthPlusServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.CACHED_HTTP_CLIENT,
				httpClient);
		etsEhealthPlusServiceStub._getServiceClient().getOptions().setAction(action);
		etsEhealthPlusServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.PROTOCOL_VERSION,
				HttpConstants.HEADER_PROTOCOL_11);
		etsEhealthPlusServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.CHUNKED, Boolean.FALSE);
	}

	private void setPropertiesToIdaElgaAreaService(String action) {
		setSoapHeadersIdaElgaAreas(action, portAddressIda);
		idaElgaAreaServiceStub._getServiceClient().getOptions().setProperty(AddressingConstants.WS_ADDRESSING_VERSION,
				AddressingConstants.Final.WSA_NAMESPACE);
		idaElgaAreaServiceStub._getServiceClient().getOptions()
				.setProperty(AddressingConstants.INCLUDE_OPTIONAL_HEADERS, Boolean.TRUE);
		idaElgaAreaServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.REUSE_HTTP_CLIENT,
				Boolean.TRUE);
		idaElgaAreaServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.CACHED_HTTP_CLIENT,
				httpClient);
		idaElgaAreaServiceStub._getServiceClient().getOptions().setAction(action);
		idaElgaAreaServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.PROTOCOL_VERSION,
				HttpConstants.HEADER_PROTOCOL_11);
		idaElgaAreaServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.CHUNKED, Boolean.FALSE);
	}

	private void setPropertiesToEtsEhealthPlusEImmunizationService(String action) {
		setSoapHeadersEtsEhealthPlusEImmunization(action, portAddressElgaPlusEtsEImmunization);
		EndpointReference targetEP = new EndpointReference(portAddressElgaPlusEtsEImmunization);
		etsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions().setTo(targetEP);
		etsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions()
				.setProperty(AddressingConstants.WS_ADDRESSING_VERSION, AddressingConstants.Final.WSA_NAMESPACE);
		etsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions()
				.setProperty(AddressingConstants.INCLUDE_OPTIONAL_HEADERS, Boolean.TRUE);
		etsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions()
				.setProperty(HttpConstants.REUSE_HTTP_CLIENT, Boolean.TRUE);
		etsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions()
				.setProperty(HttpConstants.CACHED_HTTP_CLIENT, httpClient);
		etsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions().setAction(action);
		etsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions()
				.setProperty(HttpConstants.PROTOCOL_VERSION, HttpConstants.HEADER_PROTOCOL_11);
		etsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.CHUNKED,
				Boolean.FALSE);
	}

	private SOAPHeaderBlock getSOAPHeaderBlock(String name, String text) {
		OMFactory omFactory = OMAbstractFactory.getOMFactory();
		SOAPFactory soapFactory = OMAbstractFactory.getSOAP12Factory();
		OMNamespace wsaNamespace = omFactory.createOMNamespace(AddressingConstants.Final.WSA_NAMESPACE, ADDRESSING);
		SOAPHeaderBlock soapHeaderBlock = soapFactory.createSOAPHeaderBlock(name, wsaNamespace);
		soapHeaderBlock.setText(text);

		return soapHeaderBlock;
	}

	private SOAPHeaderBlock getContextSOAPHeaderBlock() {
		OMFactory omFactory = OMAbstractFactory.getOMFactory();
		SOAPFactory soapFactory = OMAbstractFactory.getSOAP12Factory();
		OMNamespace ectxNamespace = omFactory.createOMNamespace("http://elga.at/context/", "ectx");
		OMNamespace defaultNamespace = omFactory.createOMNamespace("http://docs.oasis-open.org/ws-caf/2005/10/wsctx",
				"");

		OMElement contextId = omFactory.createOMElement("context-identifier", defaultNamespace);
		contextId.setText("urn:oid:1.3.6.1.2.1.27.3024214");
		SOAPHeaderBlock soapHeaderBlock = soapFactory.createSOAPHeaderBlock("context", ectxNamespace);
		soapHeaderBlock.addChild(contextId);

		return soapHeaderBlock;
	}

	private void setPropertiesToKbsService(String action) {
		setSoapHeadersKbs(action, portAddressKbs);

		EndpointReference targetEP = new EndpointReference(portAddressKbs);
		kbsServiceStub._getServiceClient().getOptions().setTo(targetEP);
		kbsServiceStub._getServiceClient().getOptions().setProperty(AddressingConstants.WS_ADDRESSING_VERSION,
				AddressingConstants.Final.WSA_NAMESPACE);
		kbsServiceStub._getServiceClient().getOptions().setProperty(AddressingConstants.INCLUDE_OPTIONAL_HEADERS,
				Boolean.TRUE);
		kbsServiceStub._getServiceClient().getOptions().setAction(action);
		kbsServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.REUSE_HTTP_CLIENT, Boolean.TRUE);
		kbsServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.CACHED_HTTP_CLIENT, httpClient);

		kbsServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.PROTOCOL_VERSION,
				HttpConstants.HEADER_PROTOCOL_11);
		kbsServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.CHUNKED, Boolean.FALSE);
	}

	private void setPropertiesToKbsEhealthPlusService(String action) {
		setSoapHeadersKbs(action, portAddressElgaPlusKbs);

		EndpointReference targetEP = new EndpointReference(portAddressElgaPlusKbs);
		kbsEhealthPlusServiceStub._getServiceClient().getOptions().setTo(targetEP);
		kbsEhealthPlusServiceStub._getServiceClient().getOptions()
				.setProperty(AddressingConstants.WS_ADDRESSING_VERSION, AddressingConstants.Final.WSA_NAMESPACE);
		kbsEhealthPlusServiceStub._getServiceClient().getOptions()
				.setProperty(AddressingConstants.INCLUDE_OPTIONAL_HEADERS, Boolean.TRUE);
		kbsEhealthPlusServiceStub._getServiceClient().getOptions().setAction(action);
		kbsEhealthPlusServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.REUSE_HTTP_CLIENT,
				Boolean.TRUE);
		kbsEhealthPlusServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.CACHED_HTTP_CLIENT,
				httpClient);

		kbsEhealthPlusServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.PROTOCOL_VERSION,
				HttpConstants.HEADER_PROTOCOL_11);
		kbsEhealthPlusServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.CHUNKED, Boolean.FALSE);
	}

	private void setPropertiesToKbsEhealthPlusEImmunizationService(String action) {
		setSoapHeadersKbsEhealthPlusEImmunization(action, portAddressElgaPlusKbsEImmunization);

		EndpointReference targetEP = new EndpointReference(portAddressElgaPlusKbsEImmunization);
		kbsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions().setTo(targetEP);
		kbsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions()
				.setProperty(AddressingConstants.WS_ADDRESSING_VERSION, AddressingConstants.Final.WSA_NAMESPACE);
		kbsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions()
				.setProperty(AddressingConstants.INCLUDE_OPTIONAL_HEADERS, Boolean.TRUE);
		kbsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions().setAction(action);
		kbsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions()
				.setProperty(HttpConstants.REUSE_HTTP_CLIENT, Boolean.TRUE);
		kbsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions()
				.setProperty(HttpConstants.CACHED_HTTP_CLIENT, httpClient);

		kbsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions()
				.setProperty(HttpConstants.PROTOCOL_VERSION, HttpConstants.HEADER_PROTOCOL_11);
		kbsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.CHUNKED,
				Boolean.FALSE);
	}

	private void setPropertiesToEMedAtService() {
		emedAtServiceStub._getServiceClient().addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_ACTION,
				"http://ns.elga.gv.at/emedat/2014/1/eMedikation/generateDocumentId"));
		emedAtServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, portAddressEmedAt));
		emedAtServiceStub._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));

		EndpointReference targetEP = new EndpointReference(portAddressEmedAt);
		emedAtServiceStub._getServiceClient().getOptions().setTo(targetEP);
		emedAtServiceStub._getServiceClient().getOptions().setProperty(AddressingConstants.WS_ADDRESSING_VERSION,
				AddressingConstants.Final.WSA_NAMESPACE);
		emedAtServiceStub._getServiceClient().getOptions().setProperty(AddressingConstants.INCLUDE_OPTIONAL_HEADERS,
				Boolean.TRUE);
		emedAtServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.REUSE_HTTP_CLIENT, Boolean.TRUE);
		emedAtServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.CACHED_HTTP_CLIENT, httpClient);

		emedAtServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.PROTOCOL_VERSION,
				HttpConstants.HEADER_PROTOCOL_11);
		emedAtServiceStub._getServiceClient().getOptions().setProperty(HttpConstants.CHUNKED, Boolean.FALSE);

		emedAtServiceStub._getServiceClient().getOptions()
				.setAction("http://ns.elga.gv.at/emedat/2014/1/eMedikation/generateDocumentId");
	}

	private void setSoapHeadersIheRegistryDocumentsService(String action, String addressService,
			IHERegistryServiceStub service) {
		service._getServiceClient().addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_ACTION, action));
		service._getServiceClient().addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, addressService));
		service._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));
		service._getServiceClient().addHeader(getContextSOAPHeaderBlock());
	}

	private void setPropertiesToIheRegistryDocumentsService(String action, String targetEndpoint,
			IHERegistryServiceStub service) {
		setSoapHeadersIheRegistryDocumentsService(action, targetEndpoint, service);
		EndpointReference targetEP = new EndpointReference(targetEndpoint);
		service._getServiceClient().getOptions().setTo(targetEP);
		service._getServiceClient().getOptions().setProperty(AddressingConstants.WS_ADDRESSING_VERSION,
				AddressingConstants.Final.WSA_NAMESPACE);
		service._getServiceClient().getOptions().setProperty(AddressingConstants.INCLUDE_OPTIONAL_HEADERS,
				Boolean.TRUE);
		service._getServiceClient().getOptions().setProperty(HttpConstants.REUSE_HTTP_CLIENT, Boolean.TRUE);
		service._getServiceClient().getOptions().setProperty(HttpConstants.CACHED_HTTP_CLIENT, httpClient);
		service._getServiceClient().getOptions().setAction(action);
		service._getServiceClient().getOptions().setProperty(HttpConstants.CHUNKED, Boolean.FALSE);
		service._getServiceClient().getOptions().setProperty(HttpConstants.PROTOCOL_VERSION,
				HttpConstants.HEADER_PROTOCOL_11);
	}

	private void setPropertiesToEMedAtSecurityTokenService() {
		emedAtSecurityTokenStub._getServiceClient().addHeader(getSOAPHeaderBlock(ACTION, WS_TRUST_200512_RST_ISSUE));
		emedAtSecurityTokenStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, portAddressEmedAtSec));
		emedAtSecurityTokenStub._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));

		EndpointReference targetEP = new EndpointReference(portAddressEmedAtSec);
		emedAtSecurityTokenStub._getServiceClient().getOptions().setTo(targetEP);
		emedAtSecurityTokenStub._getServiceClient().getOptions().setProperty(AddressingConstants.WS_ADDRESSING_VERSION,
				AddressingConstants.Final.WSA_NAMESPACE);
		emedAtSecurityTokenStub._getServiceClient().getOptions()
				.setProperty(AddressingConstants.INCLUDE_OPTIONAL_HEADERS, Boolean.TRUE);
		emedAtSecurityTokenStub._getServiceClient().getOptions().setAction(WS_TRUST_200512_RST_ISSUE);
		emedAtSecurityTokenStub._getServiceClient().getOptions().setProperty(HttpConstants.REUSE_HTTP_CLIENT,
				Boolean.TRUE);
		emedAtSecurityTokenStub._getServiceClient().getOptions().setProperty(HttpConstants.CACHED_HTTP_CLIENT,
				httpClient);
		emedAtSecurityTokenStub._getServiceClient().getOptions().setProperty(HttpConstants.PROTOCOL_VERSION,
				HttpConstants.HEADER_PROTOCOL_11);
		emedAtSecurityTokenStub._getServiceClient().getOptions().setProperty(HttpConstants.CHUNKED, Boolean.FALSE);
	}

	/**
	 * This method adds the addressing header to the CommunityPharmacyManagerStub in
	 * the parameters. Moreover the addressing module gets engaged. The added header
	 * looks like
	 *
	 * <addressing:Action xmlns:addressing=
	 * "http://www.w3.org/2005/08/addressing">urn:ihe:pharm:cmpd:2010:QueryPharmacyDocuments</addressing:Action>
	 * <addressing:To xmlns:addressing=
	 * "http://www.w3.org/2005/08/addressing">https://10.196.3.66/elga-proxy/1/EMED/XDS/eMed</addressing:To>
	 * <addressing:MessageID xmlns:addressing=
	 * "http://www.w3.org/2005/08/addressing">uuid:50ffa47c-ae5f-4bec-8b4a-4c176ce6d9d6</addressing:MessageID>
	 *
	 * @param pharmManagerService CommunityPharmacyManagerStub
	 * @throws AxisFault
	 */
	private void setPropertiesToCommunityPharmacyManagerService() {
		communityPharmacyManagerStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(ACTION, ACTION_QUERY_PHARMACY_DOCS));
		communityPharmacyManagerStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, portAddressPharmacyManager));
		communityPharmacyManagerStub._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));

		EndpointReference targetEP = new EndpointReference(portAddressPharmacyManager);
		communityPharmacyManagerStub._getServiceClient().getOptions().setTo(targetEP);
		communityPharmacyManagerStub._getServiceClient().getOptions()
				.setProperty(AddressingConstants.WS_ADDRESSING_VERSION, AddressingConstants.Final.WSA_NAMESPACE);
		communityPharmacyManagerStub._getServiceClient().getOptions()
				.setProperty(AddressingConstants.INCLUDE_OPTIONAL_HEADERS, Boolean.TRUE);
		communityPharmacyManagerStub._getServiceClient().getOptions().setProperty(
				org.apache.axis2.Constants.Configuration.ENABLE_MTOM, org.apache.axis2.Constants.VALUE_FALSE);
		communityPharmacyManagerStub._getServiceClient().getOptions().setAction(ACTION_QUERY_PHARMACY_DOCS);
		communityPharmacyManagerStub._getServiceClient().getOptions().setProperty(HttpConstants.REUSE_HTTP_CLIENT,
				Boolean.TRUE);
		communityPharmacyManagerStub._getServiceClient().getOptions().setProperty(HttpConstants.CACHED_HTTP_CLIENT,
				httpClient);
		communityPharmacyManagerStub._getServiceClient().getOptions().setProperty(HttpConstants.PROTOCOL_VERSION,
				HttpConstants.HEADER_PROTOCOL_11);
		communityPharmacyManagerStub._getServiceClient().getOptions().setProperty(HttpConstants.CHUNKED, Boolean.FALSE);

	}

	private void setPropertiesToCommunityPharmacyManagerEhealthPlusEImmunizationService() {
		communityPharmacyManagerEhealthPlusEImmunizationStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(ACTION, ACTION_QUERY_PHARMACY_DOCS));
		communityPharmacyManagerEhealthPlusEImmunizationStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, portAddressElgaPlusDocumentsEImmunization));
		communityPharmacyManagerEhealthPlusEImmunizationStub._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));

		EndpointReference targetEP = new EndpointReference(portAddressElgaPlusDocumentsEImmunization);
		communityPharmacyManagerEhealthPlusEImmunizationStub._getServiceClient().getOptions().setTo(targetEP);
		communityPharmacyManagerEhealthPlusEImmunizationStub._getServiceClient().getOptions()
				.setProperty(AddressingConstants.WS_ADDRESSING_VERSION, AddressingConstants.Final.WSA_NAMESPACE);
		communityPharmacyManagerEhealthPlusEImmunizationStub._getServiceClient().getOptions()
				.setProperty(AddressingConstants.INCLUDE_OPTIONAL_HEADERS, Boolean.TRUE);
		communityPharmacyManagerEhealthPlusEImmunizationStub._getServiceClient().getOptions().setProperty(
				org.apache.axis2.Constants.Configuration.ENABLE_MTOM, org.apache.axis2.Constants.VALUE_FALSE);
		communityPharmacyManagerEhealthPlusEImmunizationStub._getServiceClient().getOptions()
				.setAction(ACTION_QUERY_PHARMACY_DOCS);
		communityPharmacyManagerEhealthPlusEImmunizationStub._getServiceClient().getOptions()
				.setProperty(HttpConstants.REUSE_HTTP_CLIENT, Boolean.TRUE);
		communityPharmacyManagerEhealthPlusEImmunizationStub._getServiceClient().getOptions()
				.setProperty(HttpConstants.CACHED_HTTP_CLIENT, httpClient);
		communityPharmacyManagerEhealthPlusEImmunizationStub._getServiceClient().getOptions()
				.setProperty(HttpConstants.PROTOCOL_VERSION, HttpConstants.HEADER_PROTOCOL_11);
		communityPharmacyManagerEhealthPlusEImmunizationStub._getServiceClient().getOptions()
				.setProperty(HttpConstants.CHUNKED, Boolean.FALSE);

	}

	private AffinityDomain createAffinityDomain(String organizationId, String endpoint) throws URISyntaxException {		
		Destination elgaDocumentRegistryAndRepository = new Destination(organizationId, new URI(endpoint),
				NIST_KEY_STORE, keystorePass, NIST_TRUST_STORE, keystorePass);
		Destination pix = new Destination(organizationId, new URI(portAddressPix), NIST_KEY_STORE,
				keystorePass, NIST_TRUST_STORE, keystorePass);
		Destination pdq = new Destination(organizationId, new URI(portAddressPdq), NIST_KEY_STORE,
				keystorePass, NIST_TRUST_STORE, keystorePass);

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug(
					"create connvenience communiaction for xds transactions {}, pix transactions {} and pdq transactions {}",
					endpoint, portAddressPix, portAddressPdq);
		}

		AffinityDomain affinityDomain = new AffinityDomain(pix, elgaDocumentRegistryAndRepository,
				elgaDocumentRegistryAndRepository);
		affinityDomain.setPdqDestination(pdq);
		return affinityDomain;
	}

}
