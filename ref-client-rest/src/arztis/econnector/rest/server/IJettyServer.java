package arztis.econnector.rest.server;

import org.eclipse.jetty.server.HttpConfiguration;
import org.eclipse.jetty.server.HttpConnectionFactory;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.ServerConnector;
import org.eclipse.jetty.server.handler.HandlerCollection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class IJettyServer extends Thread {
	private static final Logger LOGGER = LoggerFactory.getLogger(IJettyServer.class.getName());
    private int httpPort;
    private HttpConfiguration httpConfig;
    private RestHandler handler;

    public IJettyServer(int httpPort, HttpConfiguration http){
        this.httpPort = httpPort;
        this.httpConfig = http;
        this.handler = new RestHandler();
    }

    @Override
    public void run() {
        Server server = new Server();

        ServerConnector httpConnector = null;
        if (httpConfig != null) {
            httpConnector = new ServerConnector(server, new HttpConnectionFactory(httpConfig));
            httpConnector.setPort(httpPort);
        }

        HandlerCollection handlerCollection = new HandlerCollection(handler);

        try {
            if (httpConnector != null) {
                server.addConnector(httpConnector);
            }

            server.setHandler(handlerCollection);
            server.start();
            server.join();
        } catch (Exception e) {
        	LOGGER.error(e.getMessage(), e);
        } finally {
            if (httpConnector != null) {
                httpConnector.close();
            }
        }
    }

}
