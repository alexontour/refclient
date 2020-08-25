/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.common.utilities;

/**
 * Constants for HTTP usage like
 * <li>media types (text/xml, application/xml, text/html, ...)</li>
 * <li>HTTP methods (GET, POST, PUT, DELETE)</li>
 * <li>protocols</li>
 *
 *
 * @author Anna Jungwirth
 *
 */
public class HttpConstants {

	/**
	 * Instantiates a new http constants.
	 */
	private HttpConstants() {
		throw new UnsupportedOperationException();
	}

	/**
	 * property name of service client option to specify protocol version of e.g.
	 * HTTP
	 */
	public static final String PROTOCOL_VERSION = "PROTOCOL";

	/**
	 * property name of service client to set manager, which manages a set of HTTP
	 * connections for various hosts.
	 */
	public static final String MULTITHREAD_HTTP_CONNECTION_MANAGER = "MULTITHREAD_HTTP_CONNECTION_MANAGER";

	/**
	 * property name of service client to use single HTTP client instance per
	 * configuration.
	 */
	public static final String REUSE_HTTP_CLIENT = "REUSE_HTTP_CLIENT";

	/** property name of service client to add cached HTTP client. */
	public static final String CACHED_HTTP_CLIENT = "CACHED_HTTP_CLIENT";

	/**
	 * property name of service client to enable or disable chunked transfer
	 * encoding.
	 */
	public static final String CHUNKED = "__CHUNKED__";

	/** property name of service client to set certain socket timeout. */
	public static final String SO_TIMEOUT = "SO_TIMEOUT";

	/** property name of service client to set HTTP connection timeout. */
	public static final String CONNECTION_TIMEOUT = "CONNECTION_TIMEOUT";

	/**
	 * 1.1 version of HTTP
	 */
	public static final String HEADER_PROTOCOL_11 = "HTTP/1.1";

	/** content type text/xml. */
	public static final String MEDIA_TYPE_TEXT_XML = "text/xml";

	/** content type text/html. */
	public static final String MEDIA_TYPE_TEXT_HTML = "text/html";

	/** content type application/xml. */
	public static final String MEDIA_TYPE_APPLICATION_XML = "application/xml";

	/** content type application/json. */
	public static final String MEDIA_TYPE_APPLICATION_JSON = "application/json";

	/** HTTP POST method name. */
	public static final String POST_METHOD = "POST";

	/** HTTP GET method name. */
	public static final String GET_METHOD = "GET";

	/** HTTP DELETE method name. */
	public static final String DELETE_METHOD = "DELETE";

	/** HTTP PUT method name. */
	public static final String PUT_METHOD = "PUT";

	/** Hypertext Transfer Protocol Secure. */
	public static final String HTTPS_CALL = "https://";

	/** Hypertext Transfer Protocol. */
	public static final String HTTP_CALL = "http://";

}
