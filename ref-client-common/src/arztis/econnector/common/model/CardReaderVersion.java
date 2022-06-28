/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.common.model;

/**
 * This class contains information about the version of a card reader.
 * 
 * @author Anna Jungwirth
 *
 */
public class CardReaderVersion {

	/** The url. */
	private String url;
	/** The version. */
	private String version;

	/**
	 * get url of the card reader
	 * 
	 * @return url of the card reader
	 */
	public String getUrl() {
		return url;
	}

	/**
	 * set url of the card reader
	 * 
	 * @param url
	 */
	public void setUrl(String url) {
		this.url = url;
	}

	/**
	 * get version of GINO-API
	 * 
	 * @return version of GINO-API
	 */
	public String getVersion() {
		return version;
	}

	/**
	 * set version of GINO-API
	 * 
	 * @param version
	 */
	public void setVersion(String version) {
		this.version = version;
	}

}
