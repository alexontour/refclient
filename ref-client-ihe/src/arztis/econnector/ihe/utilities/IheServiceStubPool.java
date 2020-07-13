/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 *
 */
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

/**
 * This class serves as pool for all created <b>SOAP Services</b>, which are
 * needed for ELGA services. This is a subclass of {@link BaseServiceStubPool}.
 * Therefore all needed services could be created at program start. In this
 * service stub pool there are services for
 *
 * <ul>
 * <li>searching health care providers in GDA-I</li>
 * <li>requesting identity assertion (IDA) of SVC</li>
 * <li>requesting pharmacy documents</li>
 * <li>requesting eMed-ID</li>
 * <li>canceling documents</li>
 * <li>requesting documents</li>
 * <li>writing documents</li>
 * <li>searching patient demographics in ZPI</li>
 * </ul>
 *
 * @author Anna Jungwirth
 *
 */
public class IheServiceStubPool extends BaseServiceStubPool {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 9172740153910371304L;

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(IheServiceStubPool.class.getName());

	/** The Constant NIST_KEY_STORE. */
	private static final String NIST_KEY_STORE = "keystore/cacerts1_keystore.jks";

	/** The Constant NIST_TRUST_STORE. */
	private static final String NIST_TRUST_STORE = "keystore/cacerts1_truststore.jks";

	/** The Constant ADDRESSING. */
	private static final String ADDRESSING = "addressing";

	/** The Constant ACTION. */
	private static final String ACTION = "Action";

	/** The Constant ACTION_QUERY_PHARMACY_DOCS. */
	private static final String ACTION_QUERY_PHARMACY_DOCS = "urn:ihe:pharm:cmpd:2010:QueryPharmacyDocuments";

	/** The Constant ACTION_UPDATE_DOCUMENT_SET. */
	private static final String ACTION_UPDATE_DOCUMENT_SET = "urn:ihe:iti:2010:UpdateDocumentSet";

	/** The Constant PATH_AXIS2_CONFIG. */
	private static final String PATH_AXIS2_CONFIG = "resources/axis2.xml";

	/** The port address for ETS. */
	private String portAddressEts = "";

	/** The port address for KBS. */
	private String portAddressKbs = "";

	/** The port address for EMED-AT. */
	private String portAddressEmedAt = "";

	/** The port address for EMED-AT SEC. */
	private String portAddressEmedAtSec = "";

	/** The port address for XDS. */
	private String portAddressXds = "";

	/** The port address for XDS write. */
	private String portAddressXdsWrite = "";

	/** The port address for pharmacy manager. */
	private String portAddressPharmacyManager = "";

	/** The port address for GDA-I. */
	private String portAddressGdaI = "";

	/** The port address for PDQ. */
	private String portAddressPdq = "";

	/** The port address for PIX. */
	private String portAddressPix = "";

	/** The port address ELGA plus documents. */
	private String portAddressElgaPlusDocuments = "";

	/** The port address for ELGA plus ETS. */
	private String portAddressElgaPlusEts = "";

	/** The port address for ELGA plus KBS. */
	private String portAddressElgaPlusKbs = "";

	/** The port address for ELGA electronic immunization ETS. */
	private String portAddressElgaPlusEtsEImmunization = "";

	/** The port address ELGA electronic immunization documents. */
	private String portAddressElgaPlusDocumentsEImmunization = "";

	/** The port address ELGA electronic immunization KBS. */
	private String portAddressElgaPlusKbsEImmunization = "";

	/** The port address for IDA. */
	private String portAddressIda = "";

	/** The Constant UUID_LITERAL. */
	private static final String UUID_LITERAL = "uuid:";

	/** The Constant WS_TRUST_200512_RST_ISSUE. */
	private static final String WS_TRUST_200512_RST_ISSUE = "http://docs.oasis-open.org/"
			+ "ws-sx/ws-trust/200512/RST/Issue";

	/** The port address for BASE. */
	private String portAddressBase = "";

	/** The port address for AUTH. */
	private String portAddressAuth = "";

	/** The port address for GINA. */
	private String portAddressGina = "";

	/** The port address for STS. */
	private String portAddressSts = "";

	/** The http connection manager. */
	private MultiThreadedHttpConnectionManager httpConnectionManager;

	/** The configuration context. */
	private ConfigurationContext configurationContext;

	/** The http client. */
	private HttpClient httpClient;

	/** The STS service stub. */
	private StsServiceStub stsServiceStub;

	/** The ETS service stub. */
	private ETSServiceStub etsServiceStub;

	/** The KBS service stub. */
	private KBSServiceStub kbsServiceStub;

	/** The KBS ehealth plus electronic immunization service stub. */
	private KBSServiceStub kbsEhealthPlusEImmunizationServiceStub;

	/** The KBS ehealth plus service stub. */
	private KBSServiceStub kbsEhealthPlusServiceStub;

	/** The EMED-AT service stub. */
	private EmedAtServiceStub emedAtServiceStub;

	/** The IHE registry documents service stub. */
	private IHERegistryServiceStub iheRegistryDocumentsServiceStub;

	/** The IHE EMED registry service stub. */
	private IHERegistryServiceStub iheEmedRegistryServiceStub;

	/** The IHE ehealth plus registry service stub. */
	private IHERegistryServiceStub iheEhealthPlusRegistryServiceStub;

	/** The IHE ehealth plus electronic immunization registry service stub. */
	private IHERegistryServiceStub iheEhealthPlusEImmunizationRegistryServiceStub;

	/** The EMED at security token stub. */
	private EmedAtSecurityTokenStub emedAtSecurityTokenStub;

	/** The community pharmacy manager stub. */
	private CommunityPharmacyManagerStub communityPharmacyManagerStub;

	/** The community pharmacy manager ehealth plus electronic immunization stub. */
	private CommunityPharmacyManagerStub communityPharmacyManagerEhealthPlusEImmunizationStub;

	/** The XDS service. */
	private ConvenienceCommunicationAt xdsService;

	/** The XDS EMED service. */
	private ConvenienceCommunicationAt xdsEmedService;

	/** The XDS write service. */
	private ConvenienceCommunicationAt xdsWriteService;

	/** The XDS ehealth plus service. */
	private ConvenienceCommunicationAt xdsEhealthPlusService;

	/** The XDS ehealth plus electronic immunization service. */
	private ConvenienceCommunicationAt xdsEhealthPlusEImmunizationService;

	/** The affinity domain ZPI. */
	private AffinityDomain affinityDomainZpi;

	/** The gda service. */
	private GdaIndexWsStub gdaService;

	/** The IDA elga area service stub. */
	private ETSServiceStub idaElgaAreaServiceStub;

	/** The ETS ehealth plus service stub. */
	private ETSServiceStub etsEhealthPlusServiceStub;

	/** The ETS ehealth plus electronic immunization service stub. */
	private ETSServiceStub etsEhealthPlusEImmunizationServiceStub;

	/** The instance. */
	private static IheServiceStubPool instance;

	/** The keystore pass. */
	private String keystorePass;

	/**
	 * Constructor to create instance of {@link IheServiceStubPool} with passed
	 * target endpoints and initiating services. </br>
	 *
	 *
	 * @param mapServiceEndpoints map of service name and service target endpoints
	 * @param keystorePass        password for keystore
	 */
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

	/**
	 * This method creates a new instance for {@link IheServiceStubPool} if there is
	 * no instance available.
	 *
	 * @param mapServiceEndpoints   map of service name and service target endpoints
	 * @param encryptedKeystorePass password for keystore
	 *
	 * @return instance of {@link IheServiceStubPool}
	 */
	public synchronized static IheServiceStubPool getInstance(Map<String, String> mapServiceEndpoints,
			String encryptedKeystorePass) {
		if (instance == null) {
			if (mapServiceEndpoints == null) {
				throw new IllegalStateException(
						"Either serviceManagerTargetEndpoint or servicesVersionMap is not set. Cannot create instance");
			}

			instance = new IheServiceStubPool(mapServiceEndpoints, encryptedKeystorePass);
		}

		return instance;
	}

	/**
	 * This method returns an existing instance for {@link IheServiceStubPool} if
	 * there is no instance available an {@link IllegalStateException} is thrown.
	 *
	 * @return instance of {@link IheServiceStubPool}
	 */
	public static IheServiceStubPool getInstance() {
		if (instance == null) {
			throw new IllegalStateException(
					"Either serviceManagerTargetEndpoint or servicesVersionMap is not set. Cannot create instance");
		}
		return instance;
	}

	/**
	 * gets service stub to request health care provider in GDA-I.
	 *
	 * @return {@link GdaIndexWsStub}
	 */
	public GdaIndexWsStub getGdaIndexService() {
		return gdaService;
	}

	/**
	 * gets service stub to request identity assertion with Admin-Card or e-Card.
	 *
	 * @return {@link StsServiceStub}
	 */
	public StsServiceStub getStsService() {
		return stsServiceStub;
	}

	/**
	 * gets service stub to request ID for electronic medication (prescription).
	 *
	 * @return {@link EmedAtServiceStub}
	 */
	public EmedAtServiceStub getEmedAtService() {
		return emedAtServiceStub;
	}

	/**
	 * gets service stub to request eMed-Assertion, which is needed for requesting
	 * documents of electronic medication with eMed-ID of prescription.
	 *
	 * @return {@link EmedAtSecurityTokenStub}
	 */
	public EmedAtSecurityTokenStub getEmedAtSecurityTokenService() {
		return emedAtSecurityTokenStub;
	}

	/**
	 * gets service stub to canceling document in ELGA application eBefund.
	 *
	 * @return {@link IHERegistryServiceStub}
	 */
	public IHERegistryServiceStub getIHERegistryService() {
		return iheRegistryDocumentsServiceStub;
	}

	/**
	 * gets service stub to canceling document in ELGA application eMedikation.
	 *
	 * @return {@link IHERegistryServiceStub}
	 */
	public IHERegistryServiceStub getIHERegistryEmedService() {
		return iheEmedRegistryServiceStub;
	}

	/**
	 * gets service stub to canceling document in eHealth application virtual
	 * organizations.
	 *
	 * @return {@link IHERegistryServiceStub}
	 */
	public IHERegistryServiceStub getIHERegistryEhealthPlusService() {
		return iheEhealthPlusRegistryServiceStub;
	}

	/**
	 * gets service stub to canceling document in eHealth application eImpfpass.
	 *
	 * @return {@link IHERegistryServiceStub}
	 */
	public IHERegistryServiceStub getIHERegistryEhealthPlusEImmunizationService() {
		return iheEhealthPlusEImmunizationRegistryServiceStub;
	}

	/**
	 * gets service stub for requesting documents in ELGA application eBefund.
	 *
	 * @return {@link ConvenienceCommunicationAt}
	 */
	public ConvenienceCommunicationAt getXdsService() {
		return xdsService;
	}

	/**
	 * gets service stub for providing documents in ELGA application eBefund.
	 *
	 * @return {@link ConvenienceCommunicationAt}
	 */
	public ConvenienceCommunicationAt getXdsWriteService() {
		return xdsWriteService;
	}

	/**
	 * gets service stub for requesting and providing documents in eHealth
	 * application virtual organizations.
	 *
	 * @return {@link ConvenienceCommunicationAt}
	 */
	public ConvenienceCommunicationAt getXdsEHealthPlusService() {
		return xdsEhealthPlusService;
	}

	/**
	 * gets service stub for requesting and providing documents in eHealth
	 * application eImpfpass.
	 *
	 * @return {@link ConvenienceCommunicationAt}
	 */
	public ConvenienceCommunicationAt getXdsEHealthPlusEImmunizationService() {
		return xdsEhealthPlusEImmunizationService;
	}

	/**
	 * gets service stub for requesting patient demographics of ZPI.
	 *
	 * @return {@link AffinityDomain}
	 */
	public AffinityDomain getAffinityDomainZpi() {
		return affinityDomainZpi;
	}

	/**
	 * gets service stub for requesting and providing documents in ELGA application
	 * eMedikation.
	 *
	 * @return {@link ConvenienceCommunicationAt}
	 */
	public ConvenienceCommunicationAt getXdsEmedService() {
		return xdsEmedService;
	}

	/**
	 * gets service stub for querying document metadata in ELGA application
	 * eMedikation.
	 *
	 * @return {@link CommunityPharmacyManagerStub}
	 */
	public CommunityPharmacyManagerStub getCommunityPharmacyManagerService() {
		return communityPharmacyManagerStub;
	}

	/**
	 * gets service stub for querying document metadata in eHealth application
	 * eImpfpass.
	 *
	 * @return {@link CommunityPharmacyManagerStub}
	 */
	public CommunityPharmacyManagerStub getCommunityPharmacyManagerEhealthPlusEImmunizationStub() {
		return communityPharmacyManagerEhealthPlusEImmunizationStub;
	}

	/**
	 * adds addressing module for axis2.
	 */
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

	/**
	 * Instantiates base service with passed target endpoint. This method adds
	 * properties to reuse same HTTP client to base service.
	 *
	 * @param portAddressBase target endpoint for SVC SS12 BASE service
	 */
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

	/**
	 * Instantiates auth service with passed target endpoint. This method adds
	 * properties to reuse same HTTP client to auth service.
	 *
	 * @param portAddressBase target endpoint for SVC SS12 AUTH service
	 */
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

	/**
	 * Instantiates GINA service with passed target endpoint. This method adds
	 * properties to reuse same HTTP client to GINA service.
	 *
	 * @param portAddressGina target endpoint for SVC SS12 GINA service
	 */
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

	/**
	 * Instantiates ETS service client with target endpoint of instantiation. This
	 * method adds properties to reuse same HTTP client and enabling WS-addressing
	 * headers to ETS service.
	 *
	 */
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

	/**
	 * Instantiates ETS service client for virtual organization with target endpoint
	 * of instantiation. This method adds properties to reuse same HTTP client and
	 * enabling WS-addressing headers to ETS service.
	 *
	 */
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

	/**
	 * Instantiates ETS service client for IDA requests with target endpoint of
	 * instantiation. This method adds properties to reuse same HTTP client and
	 * enabling WS-addressing headers to ETS service.
	 *
	 */
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

	/**
	 * Instantiates ETS service client for electronic immunization with target
	 * endpoint of instantiation. This method adds properties to reuse same HTTP
	 * client and enabling WS-addressing headers to ETS service.
	 *
	 */
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

	/**
	 * Instantiates KBS service client with target endpoint of instantiation. This
	 * method adds properties to reuse same HTTP client and enabling WS-addressing
	 * headers to KBS service.
	 *
	 */
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

	/**
	 * Instantiates KBS service client for virtual organizations with target
	 * endpoint of instantiation. This method adds properties to reuse same HTTP
	 * client and enabling WS-addressing headers to KBS service.
	 *
	 */
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

	/**
	 * Instantiates KBS service client for electronic immunization record with
	 * target endpoint of instantiation. This method adds properties to reuse same
	 * HTTP client and enabling WS-addressing headers to KBS service.
	 *
	 */
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

	/**
	 * Instantiates EMED-AT service client with target endpoint of instantiation.
	 * This method adds properties to reuse same HTTP client and enabling
	 * WS-addressing headers to EMED-AT service.
	 *
	 */
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

	/**
	 * Instantiates IHE registry service client with target endpoint of
	 * instantiation. This method adds properties to reuse same HTTP client and
	 * enabling WS-addressing headers to IHE registry service.
	 *
	 */
	private void instantiateIheRegistryDocumentService() {
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

	/**
	 * Instantiates IHE registry service client for electronic medication with
	 * target endpoint of instantiation. This method adds properties to reuse same
	 * HTTP client and enabling WS-addressing headers to IHE registry service.
	 *
	 */
	private void instantiateIheEmedRegistryDocumentService() {
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

	/**
	 * Instantiates IHE registry service client for virtual organizations with
	 * target endpoint of instantiation. This method adds properties to reuse same
	 * HTTP client and enabling WS-addressing headers to IHE registry service.
	 *
	 */
	private void instantiateIheEhealthPlusRegistryDocumentService() {
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

	/**
	 * Instantiates IHE registry service client for electronic immunization record
	 * with target endpoint of instantiation. This method adds properties to reuse
	 * same HTTP client and enabling WS-addressing headers to IHE registry service.
	 *
	 */
	private void instantiateIheEhealthPlusEImmunizationRegistryDocumentService() {
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

	/**
	 * Instantiates EMED-AT Security service client for electronic immunization
	 * record with target endpoint of instantiation. This method adds properties to
	 * reuse same HTTP client and enabling WS-addressing headers to EMED-AT Security
	 * service.
	 *
	 */
	private void instantiateEmedAtSecurityTokenService() {
		try {
			emedAtSecurityTokenStub = new EmedAtSecurityTokenStub(configurationContext, portAddressEmedAtSec);
			setPropertiesToEMedAtSecurityTokenService();
			emedAtSecurityTokenStub._getServiceClient().getServiceContext()
					.setProperty(HttpConstants.MULTITHREAD_HTTP_CONNECTION_MANAGER, httpConnectionManager);
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
		}
	}

	/**
	 * Instantiates community pharmacy manager service client for electronic
	 * medication with target endpoint of instantiation. This method adds properties
	 * to reuse same HTTP client and enabling WS-addressing headers to community
	 * pharmacy manager service.
	 *
	 */
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

	/**
	 * Instantiates community pharmacy manager service client for electronic
	 * immunization record with target endpoint of instantiation. This method adds
	 * properties to reuse same HTTP client and enabling WS-addressing headers to
	 * community pharmacy manager service.
	 *
	 */
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

	/**
	 * Instantiates SVC SS12 STS service client with target endpoint of
	 * instantiation. This method adds properties to reuse same HTTP client to STS
	 * service.
	 *
	 */
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

	/**
	 * Instantiates GDA Index service client for electronic immunization record with
	 * target endpoint of instantiation. This method adds properties to reuse same
	 * HTTP client to GDA Index service.
	 *
	 */
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

	/**
	 * cleans up all available services.
	 *
	 * @return true, if cleanup was successful, otherwise false
	 */
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

	/**
	 * instantiates all defined service clients.
	 *
	 * @throws URISyntaxException the URI syntax exception
	 */
	private void initiateAllServices() throws URISyntaxException {
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

	/**
	 * instantiates all service clients for ELGA, which are needed for application eBefund.
	 *
	 * @throws URISyntaxException the URI syntax exception
	 */
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
			LOGGER.debug("created IDA stub for elga areas {}", portAddressIda);
		}

		instantiateKbsService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created KBS stub {}", portAddressKbs);
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

	/**
	 * instantiates all service clients for GINA.
	 */
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
			LOGGER.debug("created STS stub {}", portAddressSts);
		}
	}

	/**
	 * instantiates all service clients for ELGA, which are needed for application eMedikation.
	 *
	 * @throws URISyntaxException the URI syntax exception
	 */
	private void initiateEMedServices() throws URISyntaxException {
		instantiateIheEmedRegistryDocumentService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created ihe document registry stub for EMED {}", portAddressPharmacyManager);
		}

		instantiateEmedAtService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created EMED at stub {}", portAddressEmedAt);
		}

		instantiateEmedAtSecurityTokenService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created EMED at security token stub {}", portAddressEmedAtSec);
		}

		instantiateCommunityPharmacyManagerService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created community pharmacy manager stub {}", portAddressPharmacyManager);
		}

		xdsEmedService = new ConvenienceCommunicationAt(createAffinityDomain("", portAddressPharmacyManager),
				AtnaConfigMode.SECURE, DocumentMetadataExtractionMode.DEFAULT_EXTRACTION,
				SubmissionSetMetadataExtractionMode.DEFAULT_EXTRACTION, PATH_AXIS2_CONFIG);
	}

	/**
	 * instantiates all service clients for ELGA, which are needed for eHealth application virtual organizations.
	 *
	 * @throws URISyntaxException the URI syntax exception
	 */
	private void initiateVirtualOrganizationServices() throws URISyntaxException {
		instantiateEtsEhealthPlusService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created ets stub for ehealth plus {}", portAddressElgaPlusEts);
		}

		instantiateKbsEhealthPlusService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created KBS ehealth plus stub {}", portAddressElgaPlusKbs);
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

	/**
	 * instantiates all service clients for ELGA, which are needed for eHealth application eImpfpass.
	 *
	 * @throws URISyntaxException the URI syntax exception
	 */
	private void initiateEImmunizationServices() throws URISyntaxException {
		instantiateEtsEhealthPlusEImmunizationService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created ets stub for ehealth plus {}", portAddressElgaPlusEtsEImmunization);
		}

		instantiateKbsEhealthPlusEImmunizationService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created KBS ehealth plus eImmunization stub {}", portAddressElgaPlusKbsEImmunization);
		}

		instantiateIheEhealthPlusEImmunizationRegistryDocumentService();

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("created ihe document registry stub for EMED {}", portAddressElgaPlusDocumentsEImmunization);
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

	/**
	 * gets service stub for authentication in ELGA application eBefund and eMedikation.
	 * Passed action is set to service client header.
	 *
	 * @param action for service message
	 *
	 * @return {@link ETSServiceStub}
	 */
	public ETSServiceStub getEtsService(String action) {
		if (action != null && !action.equalsIgnoreCase(etsServiceStub._getServiceClient().getOptions().getAction())) {
			etsServiceStub._getServiceClient().removeHeaders();
			setSoapHeadersEts(action, portAddressEts);
			etsServiceStub._getServiceClient().getOptions().setAction(action);
		}

		return etsServiceStub;
	}

	/**
	 * gets service stub for requesting identity assertion from ELGA area
	 * Passed action is set to service client header.
	 *
	 * @param action for service message
	 *
	 * @return {@link ETSServiceStub}
	 */
	public ETSServiceStub getIdaGdaService(String action) {
		if (action != null
				&& !action.equalsIgnoreCase(idaElgaAreaServiceStub._getServiceClient().getOptions().getAction())) {
			idaElgaAreaServiceStub._getServiceClient().removeHeaders();
			setSoapHeadersIdaElgaAreas(action, portAddressIda);
			idaElgaAreaServiceStub._getServiceClient().getOptions().setAction(action);
		}

		return idaElgaAreaServiceStub;
	}

	/**
	 * gets service stub for authentication in eHealth application virtual organizations.
	 * Passed action is set to service client header.
	 *
	 * @param action for service message
	 *
	 * @return {@link ETSServiceStub}
	 */
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

	/**
	 * gets service stub for authentication in eHealth application eImpfpass.
	 * Passed action is set to service client header.
	 *
	 * @param action for service message
	 *
	 * @return {@link ETSServiceStub}
	 */
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

	/**
	 * gets service stub for confirming patient contact in ELGA application eMedikation and eBefund.
	 * Passed action is set to service client header.
	 *
	 * @param action for service message
	 *
	 * @return {@link KBSServiceStub}
	 */
	public KBSServiceStub getKbsService(String action) {
		if (action != null && !action.equalsIgnoreCase(kbsServiceStub._getServiceClient().getOptions().getAction())) {
			kbsServiceStub._getServiceClient().removeHeaders();
			setSoapHeadersKbs(action, portAddressKbs);
			kbsServiceStub._getServiceClient().getOptions().setAction(action);
		}

		return kbsServiceStub;
	}

	/**
	 * gets service stub for confirming patient contact in eHealth application virtual organizations.
	 * Passed action is set to service client header.
	 *
	 * @param action for service message
	 *
	 * @return {@link KBSServiceStub}
	 */
	public KBSServiceStub getKbsEhealthPlus(String action) {
		if (action != null
				&& !action.equalsIgnoreCase(kbsEhealthPlusServiceStub._getServiceClient().getOptions().getAction())) {
			kbsEhealthPlusServiceStub._getServiceClient().removeHeaders();
			setSoapHeadersKbsEhealthPlus(action, portAddressElgaPlusKbs);
			kbsEhealthPlusServiceStub._getServiceClient().getOptions().setAction(action);
		}

		return kbsEhealthPlusServiceStub;
	}

	/**
	 * gets service stub for confirming patient contact in eHealth application eImpfpass.
	 * Passed action is set to service client header.
	 *
	 * @param action for service message
	 *
	 * @return {@link KBSServiceStub}
	 */
	public KBSServiceStub getKbsEhealthPlusEImmunizationService(String action) {
		if (action != null && !action.equalsIgnoreCase(
				kbsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions().getAction())) {
			kbsEhealthPlusEImmunizationServiceStub._getServiceClient().removeHeaders();
			setSoapHeadersKbsEhealthPlusEImmunization(action, portAddressElgaPlusKbsEImmunization);
			kbsEhealthPlusEImmunizationServiceStub._getServiceClient().getOptions().setAction(action);
		}

		return kbsEhealthPlusEImmunizationServiceStub;
	}

	/**
	 * This method adds WS-Addressing headers to ETS service client. </br>
	 * The passed parameters are added to "Action" field and to "To" field. Moreover "MessageId" field is
	 * filled with random UUID.
	 *
	 * @param action for service message
	 * @param addressService target endpoint of service client
	 */
	private void setSoapHeadersEts(String action, String addressService) {
		etsServiceStub._getServiceClient().addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_ACTION, action));
		etsServiceStub._getServiceClient().addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, addressService));
		etsServiceStub._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));
	}

	/**
	 * This method adds WS-Addressing headers to ETS service client for virtual organizations. </br>
	 * The passed parameters are added to "Action" field and to "To" field. Moreover "MessageId" field is
	 * filled with random UUID.
	 *
	 * @param action for service message
	 * @param addressService target endpoint of service client
	 */
	private void setSoapHeadersEtsEhealthPlus(String action, String addressService) {
		etsEhealthPlusServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_ACTION, action));
		etsEhealthPlusServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, addressService));
		etsEhealthPlusServiceStub._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));
	}

	/**
	 * This method adds WS-Addressing headers to ETS service client for electronic immunization record. </br>
	 * The passed parameters are added to "Action" field and to "To" field. Moreover "MessageId" field is
	 * filled with random UUID.
	 *
	 * @param action for service message
	 * @param addressService target endpoint of service client
	 */
	private void setSoapHeadersEtsEhealthPlusEImmunization(String action, String addressService) {
		etsEhealthPlusEImmunizationServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_ACTION, action));
		etsEhealthPlusEImmunizationServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, addressService));
		etsEhealthPlusEImmunizationServiceStub._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));
	}

	/**
	 * This method adds WS-Addressing headers to ETS service client for requesting IDA of ELGA. </br>
	 * The passed parameters are added to "Action" field and to "To" field. Moreover "MessageId" field is
	 * filled with random UUID.
	 *
	 * @param action for service message
	 * @param addressService target endpoint of service client
	 */
	private void setSoapHeadersIdaElgaAreas(String action, String addressService) {
		idaElgaAreaServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_ACTION, action));
		idaElgaAreaServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, addressService));
		idaElgaAreaServiceStub._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));
	}

	/**
	 * This method adds WS-Addressing headers to KBS service client. </br>
	 * The passed parameters are added to "Action" field and to "To" field. Moreover "MessageId" field is
	 * filled with random UUID.
	 *
	 * @param action for service message
	 * @param addressService target endpoint of service client
	 */
	private void setSoapHeadersKbs(String action, String addressService) {
		kbsServiceStub._getServiceClient().removeHeaders();
		kbsServiceStub._getServiceClient().addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_ACTION, action));
		kbsServiceStub._getServiceClient().addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, addressService));
		kbsServiceStub._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));
	}

	/**
	 * This method adds WS-Addressing headers to KBS service client client for virtual organizations. </br>
	 * The passed parameters are added to "Action" field and to "To" field. Moreover "MessageId" field is
	 * filled with random UUID.
	 *
	 * @param action for service message
	 * @param addressService target endpoint of service client
	 */
	private void setSoapHeadersKbsEhealthPlus(String action, String addressService) {
		kbsEhealthPlusServiceStub._getServiceClient().removeHeaders();
		kbsEhealthPlusServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_ACTION, action));
		kbsEhealthPlusServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, addressService));
		kbsEhealthPlusServiceStub._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));
	}

	/**
	 * This method adds WS-Addressing headers to KBS service client for electronic immunization record. </br>
	 * The passed parameters are added to "Action" field and to "To" field. Moreover "MessageId" field is
	 * filled with random UUID.
	 *
	 * @param action for service message
	 * @param addressService target endpoint of service client
	 */
	private void setSoapHeadersKbsEhealthPlusEImmunization(String action, String addressService) {
		kbsEhealthPlusEImmunizationServiceStub._getServiceClient().removeHeaders();
		kbsEhealthPlusEImmunizationServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_ACTION, action));
		kbsEhealthPlusEImmunizationServiceStub._getServiceClient()
				.addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, addressService));
		kbsEhealthPlusEImmunizationServiceStub._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));
	}

	/**
	 * This method adds the addressing header to the ETS service client.
	 * Moreover the addressing module gets engaged. The passed action is set to addressing header field "Action".
	 * The added header looks as follows
	 *
	 * <pre>
	 *  {@code
	 *  <addressing:Action xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:Action>
	 *  <addressing:To xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:To>
	 *  <addressing:MessageID xmlns:addressing="http://www.w3.org/2005/08/addressing">uuid:50ffa47c-ae5f-4bec-8b4a-4c176ce6d9d6</addressing:MessageID>
	 * }
	 * </pre>
	 *
	 * </br>
	 *
	 * Furthermore used HTTP protocol version ist set to 1.1 and MTOM and CHUNKED
	 * are disabled. Moreover the reusage of HTTP client is enabled.
	 *
	 * @param action the new properties to ets service
	 */
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

	/**
	 * This method adds the addressing header to the ETS service client for virtual organizations.
	 * Moreover the addressing module gets engaged. The passed action is set to addressing header field "Action".
	 * The added header looks as follows
	 *
	 * <pre>
	 *  {@code
	 *  <addressing:Action xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:Action>
	 *  <addressing:To xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:To>
	 *  <addressing:MessageID xmlns:addressing="http://www.w3.org/2005/08/addressing">uuid:50ffa47c-ae5f-4bec-8b4a-4c176ce6d9d6</addressing:MessageID>
	 * }
	 * </pre>
	 *
	 * </br>
	 *
	 * Furthermore used HTTP protocol version ist set to 1.1 and MTOM and CHUNKED
	 * are disabled. Moreover the reusage of HTTP client is enabled.
	 *
	 * @param action the new properties to ets ehealth plus service
	 */
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

	/**
	 * This method adds the addressing header to the ETS service client for requesting IDA of ELGA.
	 * Moreover the addressing module gets engaged. The passed action is set to addressing header field "Action".
	 * The added header looks as follows
	 *
	 * <pre>
	 *  {@code
	 *  <addressing:Action xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:Action>
	 *  <addressing:To xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:To>
	 *  <addressing:MessageID xmlns:addressing="http://www.w3.org/2005/08/addressing">uuid:50ffa47c-ae5f-4bec-8b4a-4c176ce6d9d6</addressing:MessageID>
	 * }
	 * </pre>
	 *
	 * </br>
	 *
	 * Furthermore used HTTP protocol version ist set to 1.1 and MTOM and CHUNKED
	 * are disabled. Moreover the reusage of HTTP client is enabled.
	 *
	 * @param action the new properties to IDA elga area service
	 */
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

	/**
	 * This method adds the addressing header to the ETS service client for electronic immunization record.
	 * Moreover the addressing module gets engaged. The passed action is set to addressing header field "Action".
	 * The added header looks as follows
	 *
	 * <pre>
	 *  {@code
	 *  <addressing:Action xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:Action>
	 *  <addressing:To xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:To>
	 *  <addressing:MessageID xmlns:addressing="http://www.w3.org/2005/08/addressing">uuid:50ffa47c-ae5f-4bec-8b4a-4c176ce6d9d6</addressing:MessageID>
	 * }
	 * </pre>
	 *
	 * </br>
	 *
	 * Furthermore used HTTP protocol version ist set to 1.1 and MTOM and CHUNKED
	 * are disabled. Moreover the reusage of HTTP client is enabled.
	 *
	 * @param action the new properties to ets ehealth plus electronic immunization service
	 */
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

	/**
	 * Creates SOAP header element with passed name and text. The SOAP header for example could look as
	 * follows
	 *
	 * <pre>
	 *  {@code
	 *  <addressing:Action xmlns:addressing="http://www.w3.org/2005/08/addressing">urn:ihe:pharm:cmpd:2010:QueryPharmacyDocuments</addressing:Action>
	 *  }
	 * </pre>
	 *
	 * </br>
	 *
	 * @param name the name
	 * @param text the text
	 * @return created SOAP header
	 */
	private SOAPHeaderBlock getSOAPHeaderBlock(String name, String text) {
		OMFactory omFactory = OMAbstractFactory.getOMFactory();
		SOAPFactory soapFactory = OMAbstractFactory.getSOAP12Factory();
		OMNamespace wsaNamespace = omFactory.createOMNamespace(AddressingConstants.Final.WSA_NAMESPACE, ADDRESSING);
		SOAPHeaderBlock soapHeaderBlock = soapFactory.createSOAPHeaderBlock(name, wsaNamespace);
		soapHeaderBlock.setText(text);

		return soapHeaderBlock;
	}

	/**
	 * Creates context SOAP header element. The SOAP header for example could look as
	 * follows
	 *
	 * <pre>
	 *  {@code
	 *  <ectx:context xmlns="http://docs.oasis-open.org/ws-caf/2005/10/wsctx" xmlns:ectx="http://elga.at/context/">
	 *        <context-identifier>urn:oid:1.3.6.1.2.1.27.9354219</context-identifier>
     *  </ectx:context>
	 *  }
	 * </pre>
	 *
	 * </br>
	 *
	 * @return created context SOAP header
	 */
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

	/**
	 * This method adds the addressing header to the KBS service client.
	 * Moreover the addressing module gets engaged. The passed action is set to addressing header field "Action".
	 * The added header looks as follows
	 *
	 * <pre>
	 *  {@code
	 *  <addressing:Action xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:Action>
	 *  <addressing:To xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:To>
	 *  <addressing:MessageID xmlns:addressing="http://www.w3.org/2005/08/addressing">uuid:50ffa47c-ae5f-4bec-8b4a-4c176ce6d9d6</addressing:MessageID>
	 * }
	 * </pre>
	 *
	 * </br>
	 *
	 * Furthermore used HTTP protocol version ist set to 1.1 and MTOM and CHUNKED
	 * are disabled. Moreover the reusage of HTTP client is enabled.
	 *
	 * @param action the new properties to KBS service
	 */
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

	/**
	 * This method adds the addressing header to the KBS service client for virtual organizations.
	 * Moreover the addressing module gets engaged. The passed action is set to addressing header field "Action".
	 * The added header looks as follows
	 *
	 * <pre>
	 *  {@code
	 *  <addressing:Action xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:Action>
	 *  <addressing:To xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:To>
	 *  <addressing:MessageID xmlns:addressing="http://www.w3.org/2005/08/addressing">uuid:50ffa47c-ae5f-4bec-8b4a-4c176ce6d9d6</addressing:MessageID>
	 * }
	 * </pre>
	 *
	 * </br>
	 *
	 * Furthermore used HTTP protocol version ist set to 1.1 and MTOM and CHUNKED
	 * are disabled. Moreover the reusage of HTTP client is enabled.
	 *
	 * @param action the new properties to KBS ehealth plus service
	 */
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

	/**
	 * This method adds the addressing header to the KBS service client for electronic immunization record.
	 * Moreover the addressing module gets engaged. The passed action is set to addressing header field "Action".
	 * The added header looks as follows
	 *
	 * <pre>
	 *  {@code
	 *  <addressing:Action xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:Action>
	 *  <addressing:To xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:To>
	 *  <addressing:MessageID xmlns:addressing="http://www.w3.org/2005/08/addressing">uuid:50ffa47c-ae5f-4bec-8b4a-4c176ce6d9d6</addressing:MessageID>
	 * }
	 * </pre>
	 *
	 * </br>
	 *
	 * Furthermore used HTTP protocol version ist set to 1.1 and MTOM and CHUNKED
	 * are disabled. Moreover the reusage of HTTP client is enabled.
	 *
	 * @param action the new properties to KBS ehealth plus electronic immunization service
	 */
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

	/**
	 * This method adds the addressing header to the EMED-AT service client.
	 * Moreover the addressing module gets engaged. The added header looks as
	 * follows
	 *
	 * <pre>
	 *  {@code
	 *  <addressing:Action xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:Action>
	 *  <addressing:To xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:To>
	 *  <addressing:MessageID xmlns:addressing="http://www.w3.org/2005/08/addressing">uuid:50ffa47c-ae5f-4bec-8b4a-4c176ce6d9d6</addressing:MessageID>
	 * }
	 * </pre>
	 *
	 * </br>
	 *
	 * Furthermore used HTTP protocol version ist set to 1.1 and MTOM and CHUNKED
	 * are disabled. Moreover the reusage of HTTP client is enabled.
	 */
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

	/**
	 * This method adds WS-Addressing headers to IHE registry service clients. </br>
	 * The passed parameters are added to "Action" field and to "To" field. Moreover "MessageId" field is
	 * filled with random UUID.
	 *
	 * @param action for service message
	 * @param addressService target endpoint of service client
	 * @param service client to add headers
	 */
	private void setSoapHeadersIheRegistryDocumentsService(String action, String addressService,
			IHERegistryServiceStub service) {
		service._getServiceClient().addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_ACTION, action));
		service._getServiceClient().addHeader(getSOAPHeaderBlock(AddressingConstants.WSA_TO, addressService));
		service._getServiceClient().addHeader(
				getSOAPHeaderBlock(AddressingConstants.WSA_MESSAGE_ID, UUID_LITERAL + UUID.randomUUID().toString()));
		service._getServiceClient().addHeader(getContextSOAPHeaderBlock());
	}

	/**
	 * This method adds the addressing header to the IHE registry service client.
	 * Moreover the addressing module gets engaged. The added header looks as
	 * follows
	 *
	 * <pre>
	 *  {@code
	 *  <addressing:Action xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:Action>
	 *  <addressing:To xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:To>
	 *  <addressing:MessageID xmlns:addressing="http://www.w3.org/2005/08/addressing">uuid:50ffa47c-ae5f-4bec-8b4a-4c176ce6d9d6</addressing:MessageID>
	 * }
	 * </pre>
	 *
	 * </br>
	 *
	 * Furthermore used HTTP protocol version ist set to 1.1 and MTOM and CHUNKED
	 * are disabled. Moreover the reusage of HTTP client is enabled.
	 *
	 * @param action the action
	 * @param targetEndpoint the target endpoint
	 * @param service the service
	 */
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

	/**
	 * This method adds the addressing header to the EMED-AT security service client.
	 * Moreover the addressing module gets engaged. The added header looks as
	 * follows
	 *
	 * <pre>
	 *  {@code
	 *  <addressing:Action xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:Action>
	 *  <addressing:To xmlns:addressing="http://www.w3.org/2005/08/addressing"></addressing:To>
	 *  <addressing:MessageID xmlns:addressing="http://www.w3.org/2005/08/addressing">uuid:50ffa47c-ae5f-4bec-8b4a-4c176ce6d9d6</addressing:MessageID>
	 * }
	 * </pre>
	 *
	 * </br>
	 *
	 * Furthermore used HTTP protocol version ist set to 1.1 and MTOM and CHUNKED
	 * are disabled. Moreover the reusage of HTTP client is enabled.
	 */
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
	 * This method adds the addressing header to the CommunityPharmacyManagerStub.
	 * Moreover the addressing module gets engaged. The added header looks as
	 * follows
	 *
	 * <pre>
	 *  {@code
	 *  <addressing:Action xmlns:addressing="http://www.w3.org/2005/08/addressing">urn:ihe:pharm:cmpd:2010:QueryPharmacyDocuments</addressing:Action>
	 *  <addressing:To xmlns:addressing="http://www.w3.org/2005/08/addressing">https://IP-address/elga-proxy/1/EMED/XDS/eMed</addressing:To>
	 *  <addressing:MessageID xmlns:addressing="http://www.w3.org/2005/08/addressing">uuid:50ffa47c-ae5f-4bec-8b4a-4c176ce6d9d6</addressing:MessageID>
	 * }
	 * </pre>
	 *
	 * </br>
	 *
	 * Furthermore used HTTP protocol version ist set to 1.1 and MTOM and CHUNKED
	 * are disabled. Moreover the reusage of HTTP client is enabled.
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

	/**
	 * This method adds the addressing header to the CommunityPharmacyManagerStub for electronic immunization record.
	 * Moreover the addressing module gets engaged. The added header looks as
	 * follows
	 *
	 * <pre>
	 *  {@code
	 *  <addressing:Action xmlns:addressing="http://www.w3.org/2005/08/addressing">urn:ihe:pharm:cmpd:2010:QueryPharmacyDocuments</addressing:Action>
	 *  <addressing:To xmlns:addressing="http://www.w3.org/2005/08/addressing">https://IP-address/elga-proxy/1/EMED/XDS/eMed</addressing:To>
	 *  <addressing:MessageID xmlns:addressing="http://www.w3.org/2005/08/addressing">uuid:50ffa47c-ae5f-4bec-8b4a-4c176ce6d9d6</addressing:MessageID>
	 * }
	 * </pre>
	 *
	 * </br>
	 *
	 * Furthermore used HTTP protocol version ist set to 1.1 and MTOM and CHUNKED
	 * are disabled. Moreover the reusage of HTTP client is enabled.
	 */
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

	/**
	 * creates affinity domain for {@link ConvenienceCommunicationAt} service clients.
	 * Added domains for PDQ, PIX and XDS transactions.
	 *
	 * @param organizationId OID of planned author. It is no problem if this is empty
	 * @param endpoint URI of service client
	 * @return created {@link AffinityDomain}
	 * @throws URISyntaxException the URI syntax exception
	 */
	private AffinityDomain createAffinityDomain(String organizationId, String endpoint) throws URISyntaxException {
		Destination elgaDocumentRegistryAndRepository = new Destination(organizationId, new URI(endpoint),
				NIST_KEY_STORE, keystorePass, NIST_TRUST_STORE, keystorePass);
		Destination pix = new Destination(organizationId, new URI(portAddressPix), NIST_KEY_STORE, keystorePass,
				NIST_TRUST_STORE, keystorePass);
		Destination pdq = new Destination(organizationId, new URI(portAddressPdq), NIST_KEY_STORE, keystorePass,
				NIST_TRUST_STORE, keystorePass);

		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug(
					"create connvenience communiaction for XDS transactions {}, pix transactions {} and pdq transactions {}",
					endpoint, portAddressPix, portAddressPdq);
		}

		AffinityDomain affinityDomain = new AffinityDomain(pix, elgaDocumentRegistryAndRepository,
				elgaDocumentRegistryAndRepository);
		affinityDomain.setPdqDestination(pdq);
		return affinityDomain;
	}

}
