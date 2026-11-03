package arztis.econnector.rest.server;

import java.time.Instant;
import java.util.ArrayDeque;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONObject;

/** Bounded live activity feed, independent of document data and diagnostic log files. */
public final class ActivityLog {
    private static final String RUN = UUID.randomUUID().toString();
    private static final ArrayDeque<JSONObject> EVENTS = new ArrayDeque<>();
    private static final ThreadLocal<String> REQUEST = new ThreadLocal<>();
    private static long sequence;
    private ActivityLog() {}
    public static String begin() { String id = UUID.randomUUID().toString(); REQUEST.set(id); return id; }
    public static void end() { REQUEST.remove(); }
    public static synchronized void event(String component, String level, String message) {
        event(component, level, message, null);
    }
    /** Only synthetic demo assertions may be attached to the public activity feed. */
    public static synchronized void demoAssertion(String message, JSONObject assertion) {
        event("REFCLIENT", "INFO", message, assertion);
    }
    private static void event(String component, String level, String message, JSONObject assertion) {
        JSONObject entry = new JSONObject().put("id", ++sequence).put("time", Instant.now().toString())
            .put("component", component).put("level", level).put("message", message)
            .put("requestId", REQUEST.get() == null ? "" : REQUEST.get());
        if (assertion != null) entry.put("assertion", assertion);
        EVENTS.addLast(entry);
        while (EVENTS.size() > 500) EVENTS.removeFirst();
    }
    public static synchronized JSONObject read(long after) {
        JSONArray events = new JSONArray();
        for (JSONObject event : EVENTS) if (event.getLong("id") > after) events.put(event);
        return new JSONObject().put("runId", RUN).put("lastId", sequence)
            .put("firstId", EVENTS.isEmpty() ? sequence + 1 : EVENTS.getFirst().getLong("id")).put("events", events);
    }
}
