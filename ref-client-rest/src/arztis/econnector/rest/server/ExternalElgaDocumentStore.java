package arztis.econnector.rest.server;

import java.io.IOException;
import java.util.List;

/** Boundary replacing the remote ELGA document repository in local operation. */
public interface ExternalElgaDocumentStore {
    String upload(String cda) throws IOException;
    String retrieve(String id) throws IOException;
    List<String> search() throws IOException;
}
