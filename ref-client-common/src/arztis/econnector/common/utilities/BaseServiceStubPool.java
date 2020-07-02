package arztis.econnector.common.utilities;

import java.io.Serializable;

import org.apache.axis2.AxisFault;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.gina.soap.GinaServiceStub;

/**
 * serves as pool for all created <b>SOAP Services</b>. Therefore all Services
 * could be created at program start. In the basis service stub pool there are
 * services for the SVC <b>BASE Service</b> and <b>AUTH Service</b>.
 * 
 * @author ET-Innovations
 *
 */
public class BaseServiceStubPool implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final Logger LOGGER = LoggerFactory.getLogger(BaseServiceStubPool.class.getName());
	protected BaseServiceStub baseServiceStub;
	protected AuthServiceStub authServiceStub;
	protected GinaServiceStub ginaServiceStub;

	private static class LazyHolder {
		static final BaseServiceStubPool INSTANCE = new BaseServiceStubPool();
	}

	public static BaseServiceStubPool getInstance() {
		return LazyHolder.INSTANCE;
	}

	public BaseServiceStub getBaseService() {
		return baseServiceStub;
	}

	public AuthServiceStub getAuthServiceStub() {
		return authServiceStub;
	}
	
	public GinaServiceStub getGinaServiceStub() {
		return ginaServiceStub;
	}

	public void setBaseService(BaseServiceStub baseServiceStub) {
		this.baseServiceStub = baseServiceStub;
	}

	public void setAuthServiceStub(AuthServiceStub authServiceStub) {
		this.authServiceStub = authServiceStub;
	}
	
	public void setGinaService(GinaServiceStub ginaServiceStub) {
		this.ginaServiceStub = ginaServiceStub;
	}

	/**
	 * clean up all available services.
	 * 
	 * @return true, if the cleanup was successful, otherwise false
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
