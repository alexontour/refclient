/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.common.model;

import java.util.List;

public class CardReader {

	private String id;
	private String checkIp;
	private String type;
	private String group;
	private List<CardReaderVersion> cardReaderVersion;
	private boolean reachable;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCheckIp() {
		return checkIp;
	}

	public void setCheckIp(String checkIp) {
		this.checkIp = checkIp;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getGroup() {
		return group;
	}

	public void setGroup(String group) {
		this.group = group;
	}

	public List<CardReaderVersion> getCardReaderVersion() {
		return cardReaderVersion;
	}

	public void setCardReaderVersion(List<CardReaderVersion> cardReaderVersion) {
		this.cardReaderVersion = cardReaderVersion;
	}

	public boolean isReachable() {
		return reachable;
	}

	public void setReachable(boolean reachable) {
		this.reachable = reachable;
	}
}
