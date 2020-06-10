package arztis.econnector.ihe.utilities;

import java.io.Serializable;

public class ElgaEHealthApplication implements Serializable {
	            
	private static final long serialVersionUID = 6635107243742722384L;
	private String name;
    private String id;
    private String homeCommunityId;
    
    public ElgaEHealthApplication(String name, String id, String homeCommunityId) {
    	if(name != null) {
    		this.name = name.trim();
    	}
    	
    	if(id != null) {
    		this.id = id.trim();
    	}
    	
    	if(homeCommunityId != null) {
    		this.homeCommunityId = homeCommunityId.trim();
    	}
    }
    
    public String getId() {
        return this.id;
    }
    
    public String getName() {
        return this.name;
    }
    
    public String getHomeCommunityId() {
        return this.homeCommunityId;
    }            
    
}
