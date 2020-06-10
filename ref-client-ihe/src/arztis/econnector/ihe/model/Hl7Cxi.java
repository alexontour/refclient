package arztis.econnector.ihe.model;

import java.io.Serializable;

import org.ehealth_connector.common.Identificator;
import org.json.JSONObject;

public class Hl7Cxi implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Identificator identificator;
	private String homeCommunityId;

	public Hl7Cxi(String id, String oid, String homeCommunityId) {
		identificator = new Identificator(oid, id);
		this.homeCommunityId = homeCommunityId;
	}

	public Identificator getIdentificator() {
		return identificator;
	}

	public void setIdentificator(Identificator identificator) {
		this.identificator = identificator;
	}

	public String getHomeCommunityId() {
		return homeCommunityId;
	}

	public void setHomeCommunityId(String homeCommunityId) {
		this.homeCommunityId = homeCommunityId;
	}

	public JSONObject toJson() {
		JSONObject jo = new JSONObject();

		if (identificator != null) {
			JSONObject joId = new JSONObject();
			joId.put("value", identificator.getExtension());
			joId.put("system", identificator.getRoot());
			jo.put("id", joId);
		}

		jo.put("homeCommunityId", homeCommunityId);

		return jo;
	}
}
