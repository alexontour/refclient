package arztis.econnector.common.model;

import java.io.Serializable;

import org.json.JSONObject;

public class DocumentEntry implements Serializable {

    private static final long serialVersionUID = 3688756082868648593L;
    private String status;
    private long id;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public JSONObject toJson() {
        JSONObject jo = new JSONObject();
        jo.put("status", status);

        if (id != 0) {
            jo.put("id", id);
        }

        return jo;
    }
}
