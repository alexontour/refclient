package arztis.econnector.common.model;

import java.io.Serializable;

import org.json.JSONObject;

public class Message implements Serializable {

	private static final long serialVersionUID = 6150700944833087224L;
	private String text;
	private MessageTypes type;
	private int requestStatus;
	private String originalErrorCode;

	public Message() {

	}

	public Message(String text) {
		this.text = text;
	}

	public Message(int requestStatus) {
		this.requestStatus = requestStatus;
	}

	public Message(String text, MessageTypes type, int requestStatus) {
		this.text = text;
		this.type = type;
		this.requestStatus = requestStatus;
	}

	public Message(String text, MessageTypes type, int requestStatus, String originalErrorCode) {
		this(text, type, requestStatus);
		this.originalErrorCode = originalErrorCode;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public MessageTypes getType() {
		return type;
	}

	public void setType(MessageTypes type) {
		this.type = type;
	}

	public String getOriginalErrorCode() {
		return originalErrorCode;
	}

	public void setOriginalErrorCode(String originalErrorCode) {
		this.originalErrorCode = originalErrorCode;
	}

	public int getRequestStatus() {
		return requestStatus;
	}

	public void setRequestStatus(int status) {
		this.requestStatus = status;
	}

	public JSONObject toJson() {
		JSONObject jo = new JSONObject();
		jo.put("message", text);
		jo.put("type", type);

		if (originalErrorCode != null && !originalErrorCode.isEmpty()) {
			jo.put("code", originalErrorCode);
		} else {
			jo.put("code", requestStatus + "");
		}

		return jo;
	}
}
