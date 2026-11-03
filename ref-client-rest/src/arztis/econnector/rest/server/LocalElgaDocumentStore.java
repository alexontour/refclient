package arztis.econnector.rest.server;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

/** Mock of external ELGA upload/search/retrieve; stores actual generated CDA only. */
public class LocalElgaDocumentStore implements ExternalElgaDocumentStore {
    private final Path directory = Path.of("data", "elga-documents");
    public LocalElgaDocumentStore() throws IOException { Files.createDirectories(directory); }
    public String upload(String cda) throws IOException {
        ActivityLog.event("MOCK", "INFO", "ELGA Upload · CDA in lokaler Dokumentablage speichern.");
        String id = UUID.randomUUID().toString();
        Path temporary = Files.createTempFile(directory, "upload-", ".tmp");
        try {
            Files.writeString(temporary, cda, StandardCharsets.UTF_8);
            Files.move(temporary, directory.resolve(id + ".xml"), StandardCopyOption.ATOMIC_MOVE);
        } catch (IOException | RuntimeException ex) { ActivityLog.event("MOCK", "ERROR", "ELGA Upload fehlgeschlagen."); throw ex;
        } finally { Files.deleteIfExists(temporary); }
        ActivityLog.event("MOCK", "INFO", "ELGA Upload erfolgreich · Dokument " + id);
        return id;
    }
    public String retrieve(String id) throws IOException {
        ActivityLog.event("MOCK", "INFO", "ELGA-Dokumentmock · CDA-Abruf aus lokaler Ablage · Dokument " + id + " · keine ZPI-Abfrage.");
        try {
        UUID.fromString(id);
        String xml = Files.readString(directory.resolve(id + ".xml"), StandardCharsets.UTF_8);
        ActivityLog.event("MOCK", "INFO", "ELGA-Dokumentmock · CDA-Abruf erfolgreich · Dokument " + id + " · " + xml.getBytes(StandardCharsets.UTF_8).length + " Bytes.");
        return xml;
        } catch (IOException | RuntimeException ex) { ActivityLog.event("MOCK", "ERROR", "ELGA-Dokumentmock · CDA-Abruf fehlgeschlagen · Dokument " + id); throw ex; }
    }
    public List<String> search() throws IOException {
        ActivityLog.event("MOCK", "INFO", "ELGA Suche · lokale Dokumentablage abfragen.");
        try (var files = Files.list(directory)) {
            List<String> ids = files.map(p -> p.getFileName().toString()).filter(n -> n.endsWith(".xml"))
                .sorted().map(n -> n.substring(0, n.length() - 4)).collect(Collectors.toList());
            ActivityLog.event("MOCK", "INFO", "ELGA Suche erfolgreich · " + ids.size() + " Dokument(e).");
            return ids;
        } catch (IOException | RuntimeException ex) { ActivityLog.event("MOCK", "ERROR", "ELGA Suche fehlgeschlagen."); throw ex; }
    }
}
