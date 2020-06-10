package arztis.econnector.common.model;

import java.io.Serializable;

public abstract class Parameter implements Serializable {

    private static final long serialVersionUID = 2156092287485623593L;
    private long id;
    private int version;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

	public int getVersion() {
		return version;
	}

	public void setVersion(int version) {
		this.version = version;
	}

}
