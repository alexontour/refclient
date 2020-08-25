/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.ihe.utilities;

import java.io.Serializable;

/**
 * This class contains details about ELGA eHealth application. ELGA eHealth
 * applications are for example virtual organizations or electronic immunization
 * record. </br>
 * This details include
 * <ul>
 * <li>name of eHealth application</li>
 * <li>ID of eHealth application</li>
 * <li>Home community ID of eHealth application</li>
 * </ul>
 *
 * @author Anna Jungwirth
 *
 */
public class ElgaEHealthApplication implements Serializable {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 6635107243742722384L;
	
	/** The name. */
	private String name;
	
	/** The id. */
	private String id;
	
	/** The home community id. */
	private String homeCommunityId;

	/**
	 * Constructor to create instance of {@link ElgaEHealthApplication} with all
	 * available information.
	 *
	 * @param name            of eHealth application e.g. PVN Tennengau
	 * @param id              of eHealth application
	 * @param homeCommunityId ID that identifies the community that owns the
	 *                        document
	 */
	public ElgaEHealthApplication(String name, String id, String homeCommunityId) {
		if (name != null) {
			this.name = name.trim();
		}

		if (id != null) {
			this.id = id.trim();
		}

		if (homeCommunityId != null) {
			this.homeCommunityId = homeCommunityId.trim();
		}
	}

	/**
	 * Gets the id.
	 *
	 * @return eHealth application ID
	 */
	public String getId() {
		return this.id;
	}

	/**
	 * Gets the name.
	 *
	 * @return name of eHealth application
	 */
	public String getName() {
		return this.name;
	}

	/**
	 * Gets the home community id.
	 *
	 * @return ID that identifies the community that owns the document
	 */
	public String getHomeCommunityId() {
		return this.homeCommunityId;
	}

}
