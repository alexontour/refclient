package arztis.econnector.common.utilities;

/**
 * Constants for HTTP usage like
 * 	<li>media types</li>
 * 	<li>HTTP methods</li>
 * 
 * </br>
 * 
 * @author ET-Innovations
 *
 */
public class HttpConstants {
	
	private HttpConstants() {
		throw new UnsupportedOperationException();
	}
    
    public static final String HTTP_CONTENT_TYPE = "HTTP_CONTENT_TYPE";
    public static final String PROTOCOL_VERSION = "PROTOCOL";
    public static final String MEDIA_TYPE_X_WWW_FORM =
            "application/x-www-form-urlencoded";
    public static final String MEDIA_TYPE_TEXT_XML = "text/xml";
    public static final String MEDIA_TYPE_TEXT_HTML = "text/html";
    public static final String MEDIA_TYPE_MULTIPART_RELATED = "multipart/related";
    public static final String MEDIA_TYPE_MULTIPART_FORM_DATA = "multipart/form-data";
    public static final String MEDIA_TYPE_APPLICATION_XML = "application/xml";
    public static final String MEDIA_TYPE_APPLICATION_SOAP_XML = "application/soap+xml";
    public static final String MEDIA_TYPE_APPLICATION_ECHO_XML = "application/echo+xml";
    public static final String MEDIA_TYPE_APPLICATION_JSON = "application/json";
    public static final String CACHED_HTTP_STATE = "CACHED_HTTP_STATE";    
    public static final String MULTITHREAD_HTTP_CONNECTION_MANAGER = "MULTITHREAD_HTTP_CONNECTION_MANAGER";
    public static final String REUSE_HTTP_CLIENT = "REUSE_HTTP_CLIENT";
    public static final String CACHED_HTTP_CLIENT = "CACHED_HTTP_CLIENT";
    public static final String HEADER_PROTOCOL_11 = "HTTP/1.1";
    public static final String CHUNKED = "__CHUNKED__";
    public static final String SO_TIMEOUT = "SO_TIMEOUT";
    public static final String CONNECTION_TIMEOUT = "CONNECTION_TIMEOUT";
    
    public static final String POST_METHOD = "POST";
    public static final String GET_METHOD = "GET";
    public static final String DELETE_METHOD = "DELETE";
    public static final String PUT_METHOD = "PUT";
    public static final String HTTPS_CALL = "https://";
    public static final String HTTP_CALL = "http://";
     
}
