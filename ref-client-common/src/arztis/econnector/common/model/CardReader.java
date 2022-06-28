/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.common.model;

import java.util.List;

/**
 * This class contains information about a card reader.
 * 
 * @author Anna Jungwirth
 *
 */
public class CardReader {

	/** The id. */
	private String id;
	/** The checkIp. */
	private String checkIp;
	/** The type. */
	private String type;
	/** The group. */
	private String group;
	/** The cardReaderVersion. */
	private List<CardReaderVersion> cardReaderVersion;
	/** The reachable. */
	private boolean reachable;

	public String getId() {
		return id;
	}

	/**
	 * set identifier of the card reader
	 * 
	 * @param id
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * get IP address of the card reader, which can be used to check connectivity
	 * 
	 * @return IP address
	 */
	public String getCheckIp() {
		return checkIp;
	}

	/**
	 * set IP address of the card reader, which can be used to check connectivity
	 * 
	 * @param checkIp
	 */
	public void setCheckIp(String checkIp) {
		this.checkIp = checkIp;
	}

	/**
	 * get type of the card reader
	 * 
	 * @return type
	 */
	public String getType() {
		return type;
	}

	/**
	 * set type of the card reader
	 * 
	 * @param type
	 */
	public void setType(String type) {
		this.type = type;
	}

	/**
	 * get card reader group
	 * 
	 * @return card reader group
	 */
	public String getGroup() {
		return group;
	}

	/**
	 * set group of the card reader
	 * 
	 * @param group
	 */
	public void setGroup(String group) {
		this.group = group;
	}

	/**
	 * get list of card reader versions containing the url of the card reader.
	 * 
	 * @return list of card reader versions
	 */
	public List<CardReaderVersion> getCardReaderVersion() {
		return cardReaderVersion;
	}

	/**
	 * set list of card reader versions containing the url of the card reader.
	 * 
	 * @param cardReaderVersion
	 */
	public void setCardReaderVersion(List<CardReaderVersion> cardReaderVersion) {
		this.cardReaderVersion = cardReaderVersion;
	}

	/**
	 * get indicator whether the card reader is reachable
	 * 
	 * @return indicator whether the card reader is reachable
	 */
	public boolean isReachable() {
		return reachable;
	}

	/**
	 * set indicator whether the card reader is reachable
	 * 
	 * @param reachable
	 */
	public void setReachable(boolean reachable) {
		this.reachable = reachable;
	}
}
