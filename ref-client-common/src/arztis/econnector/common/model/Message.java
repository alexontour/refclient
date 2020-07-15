/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the Eclipse Public License v1.0.
 *
 */
package arztis.econnector.common.model;

import java.io.Serializable;

import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

/**
 * This class includes information of a message.
 *
 * @author Anna Jungwirth
 */
public class Message implements Serializable {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 6150700944833087224L;

	/** The text. */
	private String text;

	/** The type. */
	private MessageTypes type;

	/** The request status. */
	private int requestStatus;

	/** The original error code. */
	private String originalErrorCode;

	/**
	 * Default constructor.
	 */
	public Message() {

	}

	/**
	 * Constructor to set text for a message.
	 *
	 * @param text message text
	 */
	public Message(String text) {
		this.text = text;
	}

	/**
	 * Constructor to set HTTP request status for a message.
	 *
	 * @param requestStatus request status
	 */
	public Message(int requestStatus) {
		this.requestStatus = requestStatus;
	}

	/**
	 * Constructor to set text for message, message type and HTTP request status.
	 *
	 * @param text          text for message
	 * @param type          message type {@link MessageTypes}
	 * @param requestStatus HTTP request status {@link HttpServletResponse}
	 */
	public Message(String text, MessageTypes type, int requestStatus) {
		this.text = text;
		this.type = type;
		this.requestStatus = requestStatus;
	}

	/**
	 * Constructor to set text for message, message type, HTTP request status and an
	 * original error code of another service.
	 *
	 * @param text              text for message
	 * @param type              message type {@link MessageTypes}
	 * @param requestStatus     HTTP request status {@link HttpServletResponse}
	 * @param originalErrorCode original error code of other service
	 */
	public Message(String text, MessageTypes type, int requestStatus, String originalErrorCode) {
		this(text, type, requestStatus);
		this.originalErrorCode = originalErrorCode;
	}

	/**
	 * Gets the text.
	 *
	 * @return message text
	 */
	public String getText() {
		return text;
	}

	/**
	 * Sets text to message.
	 *
	 * @param text the new text
	 */
	public void setText(String text) {
		this.text = text;
	}

	/**
	 * Gets the type.
	 *
	 * @return message type
	 */
	public MessageTypes getType() {
		return type;
	}

	/**
	 * Type of message could be error or success.
	 *
	 * @param type the new type
	 */
	public void setType(MessageTypes type) {
		this.type = type;
	}

	/**
	 * Gets the original error code.
	 *
	 * @return original error code
	 */
	public String getOriginalErrorCode() {
		return originalErrorCode;
	}

	/**
	 * Sets original error code e.g. of e-Card system or ELGA
	 *
	 * @param originalErrorCode error code of other system
	 */
	public void setOriginalErrorCode(String originalErrorCode) {
		this.originalErrorCode = originalErrorCode;
	}

	/**
	 * Gets the request status.
	 *
	 * @return HTTP request status
	 */
	public int getRequestStatus() {
		return requestStatus;
	}

	/**
	 * Sets HTTP request status ({@link HttpServletResponse}).
	 *
	 * @param status of request
	 */
	public void setRequestStatus(int status) {
		this.requestStatus = status;
	}

	/**
	 * Generates {@link JSONObject} for this class in following format:
	 *
	 * <pre>
	 * {@code
	 *     "message":"Der User wurde nicht registriert.",
	 *     "type": "ERROR",
	 *     "code": "402"
	 * }
	 * </pre>
	 *
	 * @return the generated {@link JSONObject}
	 */
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
