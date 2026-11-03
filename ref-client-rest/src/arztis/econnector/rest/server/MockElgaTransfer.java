package arztis.econnector.rest.server;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.time.Instant;
import java.util.UUID;
import org.json.JSONObject;

/** Durable, idempotent transfer receipts. Never contacts external ELGA services. */
public final class MockElgaTransfer {
    private final Path directory = Path.of("data", "elga-transfer-receipts");

    public synchronized JSONObject status(String documentId) throws IOException {
        UUID.fromString(documentId);
        Path file = directory.resolve(documentId + ".json");
        return Files.exists(file)
            ? new JSONObject(Files.readString(file, StandardCharsets.UTF_8))
            : new JSONObject().put("mode", "external-mock").put("documentId", documentId)
                .put("status", "not-transferred");
    }

    public synchronized JSONObject transfer(String documentId) throws IOException {
        JSONObject receipt = status(documentId);
        if (receipt.has("receiptId")) {
            ActivityLog.event("MOCK", "INFO", "ELGA-Übertragung (Mock) · bereits simuliert · Dokument " + documentId);
            return receipt;
        }
        ActivityLog.event("MOCK", "INFO", "ELGA-Übertragung (Mock) · Annahme und Registrierung simulieren · Dokument " + documentId);
        receipt.put("status", "simulated-success").put("receiptId", UUID.randomUUID().toString())
            .put("transferredAt", Instant.now().toString())
            .put("message", "Übertragung an ELGA erfolgreich simuliert. Keine externe Übertragung.");
        Files.createDirectories(directory);
        Path temporary = Files.createTempFile(directory, "transfer-", ".tmp");
        try {
            Files.writeString(temporary, receipt.toString(), StandardCharsets.UTF_8);
            Files.move(temporary, directory.resolve(documentId + ".json"), StandardCopyOption.ATOMIC_MOVE);
        } finally {
            Files.deleteIfExists(temporary);
        }
        ActivityLog.event("MOCK", "INFO", "ELGA-Übertragung (Mock) · erfolgreich simuliert · Beleg " + receipt.getString("receiptId"));
        return receipt;
    }
}
