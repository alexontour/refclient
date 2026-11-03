/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest.server;

import org.eclipse.jetty.server.HttpConfiguration;
import org.eclipse.jetty.server.HttpConnectionFactory;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.ServerConnector;
import org.eclipse.jetty.server.handler.HandlerCollection;
import org.eclipse.jetty.server.handler.ResourceHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * The Class IJettyServer.
 *
 * @author Tanja Reiterer
 */
public class IJettyServer extends Thread {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(IJettyServer.class.getName());

    /** The http port. */
    private int httpPort;

    /** The http config. */
    private HttpConfiguration httpConfig;

    /** The handler. */
    private RestHandler handler;

    /**
     * Instantiates a new Jetty server.
     *
     * @param httpPort the HTTP port
     * @param http the HTTP configuration
     */
    public IJettyServer(int httpPort, HttpConfiguration http){
        this.httpPort = httpPort;
        this.httpConfig = http;
        this.handler = "true".equalsIgnoreCase(System.getenv("ELGA_MOCK_EXTERNAL")) ? null : new RestHandler();
    }

    /**
     * Run method. Adds HTTP configuration and starts {@link Server}
     */
    @Override
    public void run() {
        Server server = new Server();

        ServerConnector httpConnector = null;
        if (httpConfig != null) {
            httpConnector = new ServerConnector(server, new HttpConnectionFactory(httpConfig));
            httpConnector.setPort(httpPort);
        }

        ResourceHandler ui = new ResourceHandler();
        ui.setResourceBase("ui");
        ui.setDirectoriesListed(false);
        ui.setWelcomeFiles(new String[] { "index.html" });
        HandlerCollection handlerCollection = new HandlerCollection(
            "true".equalsIgnoreCase(System.getenv("ELGA_MOCK_EXTERNAL")) ? new EImpfHandler() : handler, ui);

        try {
            if (httpConnector != null) {
                server.addConnector(httpConnector);
            }

            server.setHandler(handlerCollection);
            server.start();
            server.join();
        } catch (Exception e) {
        	LOGGER.error(e.getMessage(), e);
			Thread.currentThread().interrupt();
        } finally {
            if (httpConnector != null) {
                httpConnector.close();
            }
        }
    }

}
