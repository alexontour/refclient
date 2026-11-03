package arztis.econnector.rest.server;

import java.io.IOException;
import java.time.Instant;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONObject;

/** Local identity simulation, instantiated only by the external-mock handler. */
public final class DemoLogin {
    private static final String COOKIE = "refclient_demo_session";
    private final Map<String, Instant> sessions = new HashMap<>();

    private String token(HttpServletRequest req) {
        if (req.getCookies() != null) for (Cookie cookie : req.getCookies())
            if (COOKIE.equals(cookie.getName())) return cookie.getValue();
        return "";
    }
    private void cookie(HttpServletRequest req, HttpServletResponse res, String value, int age) {
        res.addHeader("Set-Cookie", COOKIE + "=" + value + "; Path=/; HttpOnly; SameSite=Strict; Max-Age=" + age
            + (req.isSecure() ? "; Secure" : ""));
    }
    private void cleanup() {
        Instant now = Instant.now();
        sessions.entrySet().removeIf(entry -> {
            if (entry.getValue().isAfter(now)) return false;
            ActivityLog.event("REFCLIENT", "INFO", "PVP-Demo · Sitzung abgelaufen und entfernt.");
            return true;
        });
    }
    public synchronized JSONObject status(HttpServletRequest req, HttpServletResponse res) {
        cleanup();
        Instant expires = sessions.get(token(req));
        JSONObject result = new JSONObject().put("mode", "pvp-demo").put("authenticated", expires != null);
        if (expires != null) result.put("expiresAt", expires.toString()).put("user", new JSONObject()
            .put("id", "demo-anna").put("name", "Dr. Anna Demo").put("organization", "Landessanitätsdirektion Salzburg, Referat 20902, Abteilung 9 Gesundheit, Land Salzburg")
            .put("organizationId", "1.2.40.0.34.3.1.1177").put("role", "716").put("roleName", "Amtsärztin/Amtsarzt"));
        else if (!token(req).isEmpty()) cookie(req, res, "", 0);
        return result;
    }
    public synchronized void handle(String path, HttpServletRequest req, HttpServletResponse res) throws IOException {
        if (!path.equals("/api/demo/login") && !path.equals("/api/demo/logout")) { reply(res, 404, new JSONObject().put("error", "Endpunkt nicht vorhanden.")); return; }
        if (!req.getMethod().equals("POST")) { res.setHeader("Allow", "POST"); reply(res, 405, new JSONObject().put("error", "POST erforderlich.")); return; }
        // A custom same-origin header prevents cross-site form submissions; no CORS is enabled.
        if (!"1".equals(req.getHeader("X-Refclient-Demo"))) {
            ActivityLog.event("REFCLIENT", "WARN", "PVP-Demo · Anfrage abgelehnt · Demo-Anfrageheader fehlt.");
            reply(res, 403, new JSONObject().put("error", "Demo-Anfrageheader fehlt.")); return;
        }
        cleanup();
        if (path.equals("/api/demo/logout")) {
            if (sessions.remove(token(req)) != null) ActivityLog.event("REFCLIENT", "INFO", "PVP-Demo · Dr. Anna Demo abgemeldet · Sitzung widerrufen.");
            cookie(req, res, "", 0);
        } else {
            if (sessions.size() >= 500 && !sessions.containsKey(token(req))) { reply(res, 429, new JSONObject().put("error", "Zu viele Demo-Sitzungen. Später erneut versuchen.")); return; }
            sessions.remove(token(req));
            ActivityLog.event("REFCLIENT", "INFO", "PVP-Demo · Anmeldung gestartet · lokaler Demo-Identitätsdienst.");
            Instant issued = Instant.now();
            Instant expires = issued.plusSeconds(1800);
            String identity = assertion("Identity", "urn:refclient:demo:idp", "urn:refclient:demo:ets", null, issued, expires);
            String hcp = assertion("HCP", "urn:refclient:demo:ets", "urn:refclient:demo:context-service", identity, issued, expires);
            assertion("eImpf-Kontext", "urn:refclient:demo:context-service", "urn:refclient:demo:eimpf", hcp, issued, expires);
            String id = UUID.randomUUID().toString();
            sessions.put(id, expires);
            cookie(req, res, id, 1800);
            ActivityLog.event("REFCLIENT", "INFO", "PVP-Demo · Anmeldung erfolgreich · Sitzung für 30 Minuten erstellt.");
        }
        reply(res, 200, new JSONObject().put("mode", "pvp-demo").put("authenticated", path.equals("/api/demo/login")));
    }
    private String assertion(String kind, String issuer, String audience, String parent, Instant issued, Instant expires) {
        String id = "_demo-" + UUID.randomUUID();
        String parentXml = parent == null ? "" : "\n  <saml:Advice><saml:AssertionIDRef>" + parent + "</saml:AssertionIDRef></saml:Advice>";
        String xml = """
            <saml:Assertion xmlns:saml="urn:oasis:names:tc:SAML:2.0:assertion"
                ID="%s" Version="2.0" IssueInstant="%s">
              <!-- DEMO: synthetisch, unsigniert, keine echte PVP-/ELGA-Assertion. -->
              <saml:Issuer>%s</saml:Issuer>
              <saml:Subject>
                <saml:NameID>demo-anna</saml:NameID>
                <saml:SubjectConfirmation Method="urn:oasis:names:tc:SAML:2.0:cm:bearer">
                  <saml:SubjectConfirmationData NotOnOrAfter="%s" Recipient="%s"/>
                </saml:SubjectConfirmation>
              </saml:Subject>
              <saml:Conditions NotBefore="%s" NotOnOrAfter="%s">
                <saml:AudienceRestriction><saml:Audience>%s</saml:Audience></saml:AudienceRestriction>
              </saml:Conditions>%s
              <saml:AuthnStatement AuthnInstant="%s">
                <saml:AuthnContext><saml:AuthnContextClassRef>urn:refclient:demo:authentication</saml:AuthnContextClassRef></saml:AuthnContext>
              </saml:AuthnStatement>
              <saml:AttributeStatement>
                <saml:Attribute Name="urn:refclient:demo:assertion-kind"><saml:AttributeValue>%s</saml:AttributeValue></saml:Attribute>
                <saml:Attribute Name="urn:refclient:demo:display-name"><saml:AttributeValue>Dr. Anna Demo</saml:AttributeValue></saml:Attribute>
                <saml:Attribute Name="urn:oasis:names:tc:xspa:1.0:subject:organization"><saml:AttributeValue>Landessanitätsdirektion Salzburg, Referat 20902, Abteilung 9 Gesundheit, Land Salzburg</saml:AttributeValue></saml:Attribute>
                <saml:Attribute Name="urn:oasis:names:tc:xspa:1.0:subject:organization-id"><saml:AttributeValue>1.2.40.0.34.3.1.1177</saml:AttributeValue></saml:Attribute>
                <saml:Attribute Name="urn:oasis:names:tc:xacml:2.0:subject:role"><saml:AttributeValue>716</saml:AttributeValue></saml:Attribute>
              </saml:AttributeStatement>
            </saml:Assertion>
            """.formatted(id, issued, issuer, expires, audience, issued, expires, audience, parentXml, issued, kind);
        JSONObject details = new JSONObject().put("kind", kind).put("id", id).put("issuer", issuer)
            .put("audience", audience).put("issuedAt", issued.toString()).put("expiresAt", expires.toString())
            .put("synthetic", true).put("signed", false).put("xml", xml);
        if (parent != null) details.put("parentId", parent);
        ActivityLog.demoAssertion("PVP-Demo · " + kind + " Assertion simuliert · " + id + " · unsigniert · gültig bis " + expires, details);
        return id;
    }
    private void reply(HttpServletResponse res, int code, JSONObject body) throws IOException {
        res.setStatus(code); res.setContentType("application/json; charset=UTF-8"); res.getWriter().write(body.toString());
    }
}
