package arztis.econnector.common.utilities;

import java.io.Serializable;

import org.apache.axis2.AxisFault;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.GinaServiceStub;

/**
 * This class serves as pool for all created <b>SOAP Services</b>. This is a
 * base class. Therefore all services can be set up at program start. </br>
 * In the basis service stub pool there are services for the SVC
 *
 * <ul>
 * <li>AUTH Service</li>
 * <li>BASE Service</li>
 * <li>GINA Service</li>
 * </ul>
 *
 * @author Anna Jungwirth
 *
 */
public class BaseServiceStubPool implements Serializable {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(BaseServiceStubPool.class.getName());

	/** The base service stub. */
	protected BaseServiceStub baseServiceStub;

	/** The auth service stub. */
	protected AuthServiceStub authServiceStub;

	/** The gina service stub. */
	protected GinaServiceStub ginaServiceStub;

	/**
	 * The Class LazyHolder.
	 */
	private static class LazyHolder {

		/** The Constant INSTANCE. */
		static final BaseServiceStubPool INSTANCE = new BaseServiceStubPool();
	}

	/**
	 * Gets the single instance of BaseServiceStubPool.
	 *
	 * @return instance of {@link BaseServiceStubPool}
	 */
	public static BaseServiceStubPool getInstance() {
		return LazyHolder.INSTANCE;
	}

	/**
	 * Service client to get messages of e-Card system, requesting contracts and
	 * handling moving of contracting partner.
	 *
	 * @return BASE service stub
	 */
	public BaseServiceStub getBaseService() {
		return baseServiceStub;
	}

	/**
	 * Sets the base service.
	 *
	 * @param baseServiceStub the new base service
	 */
	public void setBaseService(BaseServiceStub baseServiceStub) {
		this.baseServiceStub = baseServiceStub;
	}

	/**
	 * Service client to build and remove GINA dialogs.
	 *
	 * @return AUTH service stub
	 */
	public AuthServiceStub getAuthServiceStub() {
		return authServiceStub;
	}

	/**
	 * Sets the auth service stub.
	 *
	 * @param authServiceStub the new auth service stub
	 */
	public void setAuthServiceStub(AuthServiceStub authServiceStub) {
		this.authServiceStub = authServiceStub;
	}

	/**
	 * Service client to interact with card readers, request free dialogs and get
	 * information about GINA.
	 *
	 * @return GINA service stub
	 */
	public GinaServiceStub getGinaServiceStub() {
		return ginaServiceStub;
	}

	/**
	 * Sets the gina service.
	 *
	 * @param ginaServiceStub the new gina service
	 */
	public void setGinaService(GinaServiceStub ginaServiceStub) {
		this.ginaServiceStub = ginaServiceStub;
	}

	/**
	 * Cleans up all available services.
	 *
	 * @return true, if cleanup was successful, otherwise false
	 */
	public boolean cleanupAll() {
		try {
			baseServiceStub._getServiceClient().cleanup();
			authServiceStub._getServiceClient().cleanup();
			ginaServiceStub._getServiceClient().cleanup();
		} catch (AxisFault e) {
			LOGGER.error(e.getMessage(), e);
			return false;
		}

		return true;
	}

}
