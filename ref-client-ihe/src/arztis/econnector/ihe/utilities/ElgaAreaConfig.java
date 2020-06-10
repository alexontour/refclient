package arztis.econnector.ihe.utilities;

import java.util.HashMap;
import java.util.Map;

public class ElgaAreaConfig {
	
	private String oid;
	private boolean urnOidNeeded;
	private boolean differentContentTypeNeeded;
	private Map<String, String> contentTypes;
	
	public ElgaAreaConfig() {
		contentTypes = new HashMap<>();
	}
	
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public boolean isUrnOidNeeded() {
		return urnOidNeeded;
	}
	public void setUrnOidNeeded(boolean urnOidNeeded) {
		this.urnOidNeeded = urnOidNeeded;
	}
	public boolean isDifferentContentTypeNeeded() {
		return differentContentTypeNeeded;
	}
	public void setDifferentContentTypeNeeded(boolean differentContentTypeNeeded) {
		this.differentContentTypeNeeded = differentContentTypeNeeded;
	}
	
	public Map<String, String> getContentTypes(){
		return contentTypes;
	}
}
