package arztis.econnector.rest.server;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.NoSuchFileException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.handler.AbstractHandler;
import org.hl7.fhir.r4.model.Bundle;
import org.hl7.fhir.r4.model.Immunization;
import org.hl7.fhir.r4.model.ResourceType;
import org.husky.cda.elga.xml.CdaDocumentUnmarshaller;
import org.json.JSONArray;
import org.json.JSONObject;
import arztis.econnector.rest.FhirElgaConnectionCaller;
import arztis.econnector.rest.model.eimpf.CompleteImmunizationState;
import arztis.econnector.rest.utilities.FhirUtil;
import arztis.econnector.rest.utilities.ImmunizationMapping;

/** Real FHIR/CDA application processing; only external document transport is replaced. */
public class EImpfHandler extends AbstractHandler {
    private final DemoLogin demoLogin = new DemoLogin();
    private final MockElgaTransfer transfers = new MockElgaTransfer();
    private final ExternalElgaDocumentStore elga;
    private final CdaRenderer renderer;
    private final ExternalPatientIndex patientIndex;
    public EImpfHandler() {
        try { elga = new LocalElgaDocumentStore(); renderer = new CdaRenderer(); patientIndex = new LocalPatientIndex(); }
        catch (Exception ex) { throw new IllegalStateException("ELGA mock storage or CDA stylesheet unavailable", ex); }
        ActivityLog.event("REFCLIENT", "INFO", "Referenzclient bereit · echte FHIR/CDA-Verarbeitung, externer ELGA-Mock aktiv.");
    }
    public void handle(String path, Request base, HttpServletRequest req, HttpServletResponse res) throws IOException {
        if (!path.startsWith("/api/") && !path.equals("/health")) return;
        base.setHandled(true);
        res.setHeader("Cache-Control", "no-store");
        res.setHeader("X-ELGA-Transport", "external-mock");
        if (path.equals("/api/eimpf/activity") && req.getMethod().equals("GET")) {
            try {
                long after = req.getParameter("after") == null ? 0 : Long.parseLong(req.getParameter("after"));
                if (after < 0) throw new IllegalArgumentException();
                json(res, 200, ActivityLog.read(after));
            } catch (IllegalArgumentException ex) { json(res, 400, error("Ungültiger Protokoll-Cursor.")); }
            return;
        }
        if (path.equals("/api/demo/session") && req.getMethod().equals("GET")) {
            json(res, 200, demoLogin.status(req, res));
            return;
        }
        boolean tracked = !path.equals("/health");
        long started = System.nanoTime();
        if (tracked) {
            res.setHeader("X-Request-ID", ActivityLog.begin());
            ActivityLog.event("REFCLIENT", "INFO", req.getMethod() + " " + path + " · Anfrage empfangen");
        }
        try {
            if (path.startsWith("/api/demo/")) {
                demoLogin.handle(path, req, res);
            } else if (path.equals("/health")) {
                json(res, 200, new JSONObject().put("status", "ok").put("mode", "external-mock").put("cda", "real-husky"));
            } else if (path.equals("/api/eimpf/patients/search") && req.getMethod().equals("POST")) {
                byte[] bytes = req.getInputStream().readNBytes(16385);
                if (bytes.length > 16384) { json(res, 413, error("Maximal 16 KB für eine Patientensuche.")); return; }
                var criteria = FhirUtil.getFhirContext().newJsonParser().parseResource(org.hl7.fhir.r4.model.Patient.class, new String(bytes, StandardCharsets.UTF_8));
                ActivityLog.event("REFCLIENT", "INFO", "Patientendemografie an externen ZPI/PDQ-Mock anfragen.");
                Bundle matches = patientIndex.queryPatientDemographics(criteria);
                ActivityLog.event("REFCLIENT", "INFO", "ZPI/PDQ-Ergebnis empfangen · " + matches.getTotal() + " Treffer.");
                json(res, 200, new JSONObject(FhirUtil.toJson(matches)));
            } else if (path.equals("/api/eimpf/cda/view") && req.getMethod().equals("POST")) {
                byte[] bytes = req.getInputStream().readNBytes(1048577);
                if (bytes.length > 1048576) { json(res, 413, error("Maximal 1 MB pro Dokument.")); return; }
                html(res, renderer.render(new String(bytes, StandardCharsets.UTF_8)));
            } else if (path.equals("/api/eimpf/vaccines") && req.getMethod().equals("GET")) {
                JSONArray vaccines = new JSONArray();
                ImmunizationMapping.getInstance().getVaccineMap().entrySet().stream().sorted(java.util.Map.Entry.comparingByKey()).forEach(e ->
                    vaccines.put(new JSONObject().put("code", e.getKey()).put("name", e.getValue().getName()).put("shortName", e.getValue().getShortName())));
                json(res, 200, vaccines);
            } else if ((path.equals("/api/v1/Composition") || path.equals("/api/eimpf/documents")) && req.getMethod().equals("POST")) {
                byte[] bytes = req.getInputStream().readNBytes(1048577);
                if (bytes.length > 1048576) { json(res, 413, error("Maximal 1 MB pro Dokument.")); return; }
                String body = new String(bytes, StandardCharsets.UTF_8);
                Bundle bundle = FhirUtil.getFhirContext().newJsonParser().parseResource(Bundle.class, body);
                validate(bundle);
                ActivityLog.event("REFCLIENT", "INFO", "FHIR-Dokument eingelesen und Eingaben geprüft.");
                var caller = FhirElgaConnectionCaller.getInstance();
                ActivityLog.event("REFCLIENT", "INFO", "FHIR → CDA · HUSKY-Erzeugung gestartet.");
                String xml = caller.getUpdateImmunizationEntryXml(caller.generateCda(FhirUtil.toJson(bundle), null));
                if (xml == null || xml.isBlank()) throw new IllegalStateException("CDA-Erzeugung fehlgeschlagen");
                ActivityLog.event("REFCLIENT", "INFO", "CDA erzeugt · " + xml.getBytes(StandardCharsets.UTF_8).length + " Bytes.");
                // Parse the actual generated CDA before publishing; no submitted JSON is used for display.
                JSONObject parsed = parse(xml);
                if (path.equals("/api/v1/Composition")) { xml(res, xml); return; }
                String id = elga.upload(xml);
                json(res, 201, new JSONObject().put("id", id).put("bundle", parsed).put("cdaUrl", "/api/eimpf/documents/" + id + "/cda"));
            } else if (path.equals("/api/eimpf/documents") && req.getMethod().equals("GET")) {
                JSONArray documents = new JSONArray();
                for (String id : elga.search()) documents.put(new JSONObject().put("id", id).put("bundle", parse(elga.retrieve(id))).put("cdaUrl", "/api/eimpf/documents/" + id + "/cda"));
                json(res, 200, documents);
            } else if (path.startsWith("/api/eimpf/documents/") && path.endsWith("/transfer")) {
                if (!req.getMethod().equals("GET") && !req.getMethod().equals("POST")) {
                    res.setHeader("Allow", "GET, POST");
                    json(res, 405, error("GET oder POST erforderlich."));
                    return;
                }
                String id = path.substring("/api/eimpf/documents/".length(), path.length() - "/transfer".length());
                // Only a stored, readable eImpf document can be transferred.
                parse(elga.retrieve(id));
                json(res, 200, req.getMethod().equals("POST") ? transfers.transfer(id) : transfers.status(id));
            } else if (path.startsWith("/api/eimpf/documents/") && req.getMethod().equals("GET")) {
                String suffix = path.substring("/api/eimpf/documents/".length());
                if (suffix.endsWith("/view")) {
                    html(res, renderer.render(elga.retrieve(suffix.substring(0, suffix.length() - 5))));
                } else if (suffix.endsWith("/cda")) {
                    String id = suffix.substring(0, suffix.length() - 4);
                    res.setHeader("Content-Disposition", "attachment; filename=\"eimpfpass-" + java.util.UUID.fromString(id) + ".xml\"");
                    xml(res, elga.retrieve(id));
                } else json(res, 200, parse(elga.retrieve(suffix)));
            } else json(res, 404, error("Endpunkt nicht vorhanden."));
        } catch (NoSuchFileException ex) { json(res, 404, error("Dokument nicht gefunden."));
        } catch (IllegalArgumentException | ca.uhn.fhir.parser.DataFormatException ex) {
            ActivityLog.event("REFCLIENT", "WARN", "Anfrage abgelehnt · ungültige Eingaben oder ungültiges CDA/FHIR.");
            json(res, 400, error(ex.getMessage()));
        } catch (Exception ex) {
            org.slf4j.LoggerFactory.getLogger(EImpfHandler.class).error("eImpfpass request failed", ex);
            json(res, 500, error("Verarbeitung des Impfdokuments fehlgeschlagen. Details im Containerlog."));
        } finally {
            if (tracked) {
                int code = res.getStatus();
                ActivityLog.event("REFCLIENT", code >= 500 ? "ERROR" : code >= 400 ? "WARN" : "INFO",
                    req.getMethod() + " " + path + " · HTTP " + code + " · " + (System.nanoTime() - started) / 1000000 + " ms");
                ActivityLog.end();
            }
        }
    }
    private JSONObject parse(String xml) throws Exception {
        ActivityLog.event("REFCLIENT", "INFO", "CDA → FHIR · gespeicherten Dokumentinhalt auslesen.");
        JSONObject result = new JSONObject(new CompleteImmunizationState(CdaDocumentUnmarshaller.unmarshall(xml)).toJson());
        ActivityLog.event("REFCLIENT", "INFO", "CDA → FHIR abgeschlossen.");
        return result;
    }
    private void validate(Bundle bundle) {
        if (!bundle.hasIdentifier() || !bundle.getIdentifier().hasSystem() || !bundle.getIdentifier().hasValue()) throw new IllegalArgumentException("Dokumentkennung fehlt.");
        if (bundle.getType() != Bundle.BundleType.DOCUMENT) throw new IllegalArgumentException("FHIR-Dokument-Bundle erforderlich.");
        java.util.Set<ResourceType> types = new java.util.HashSet<>();
        for (var entry : bundle.getEntry()) {
            if (!entry.hasResource()) continue;
            types.add(entry.getResource().getResourceType());
            if (entry.getResource() instanceof Immunization) {
                Immunization vaccine = (Immunization) entry.getResource();
                if (!vaccine.hasOccurrenceDateTimeType() || !vaccine.hasLotNumber() || !vaccine.hasVaccineCode()) throw new IllegalArgumentException("Impfdatum, Charge und Impfstoff sind erforderlich.");
                String code = vaccine.getVaccineCode().getCodingFirstRep().getCode();
                if (!ImmunizationMapping.getInstance().getVaccineMap().containsKey(code)) throw new IllegalArgumentException("Impfstoff ist nicht im mitgelieferten Katalog: " + code);
                if (!vaccine.hasProtocolApplied() || !vaccine.getProtocolAppliedFirstRep().hasAuthority()) throw new IllegalArgumentException("Impfschema und verantwortliche Person fehlen.");
            }
        }
        for (ResourceType type : new ResourceType[] { ResourceType.Composition, ResourceType.Patient, ResourceType.Practitioner, ResourceType.PractitionerRole, ResourceType.Organization, ResourceType.Immunization })
            if (!types.contains(type)) throw new IllegalArgumentException("Ressource fehlt: " + type);
    }
    private JSONObject error(String message) { return new JSONObject().put("resourceType", "OperationOutcome").put("issue", new JSONArray().put(new JSONObject().put("severity", "error").put("code", "processing").put("diagnostics", message == null ? "Ungültige Eingabe" : message))); }
    private void json(HttpServletResponse res, int status, Object value) throws IOException { res.setStatus(status); res.setContentType("application/json;charset=UTF-8"); res.getWriter().write(value.toString()); }
    private void xml(HttpServletResponse res, String value) throws IOException { res.setStatus(200); res.setContentType("application/xml;charset=UTF-8"); res.getWriter().write(value); }
    private void html(HttpServletResponse res, String value) throws IOException {
        ActivityLog.event("REFCLIENT", "INFO", "CDA → HTML · ELGA-Referenzstylesheet erfolgreich angewendet.");
        res.setStatus(200); res.setContentType("text/html;charset=UTF-8");
        res.setHeader("Content-Security-Policy", CdaRenderer.POLICY + "; sandbox allow-scripts allow-modals; frame-ancestors 'self'");
        res.getWriter().write(value);
    }
}
