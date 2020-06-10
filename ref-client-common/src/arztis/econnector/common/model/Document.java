package arztis.econnector.common.model;

import java.io.Serializable;

import org.json.JSONObject;

public class Document implements Serializable {
    private static final long serialVersionUID = 7770910685371575276L;
    private String id;
    private String version;
    private String type;
    private String userId;
    private String url;
    private DocumentEntry documentEntry;

    public DocumentEntry getDocumentEntry() {
        return documentEntry;
    }

    public void setDocumentEntry(DocumentEntry documentEntry) {
        this.documentEntry = documentEntry;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUrl() {
        return this.url;
    }

    public JSONObject toJson() {
        JSONObject jo = new JSONObject();
        if (id != null && !id.isEmpty()) {
            jo.put("id", id);
        }

        if (version != null && !version.isEmpty()) {
            jo.put("version", version);
        }

        if (documentEntry != null) {
            jo.put("type", type);
            jo.put("document", documentEntry.toJson());
        }

        if (url != null) {
            jo.put("url", url);
        }

        return jo;
    }
}
