package arztis.econnector.ihe.queries.common;

public class InvalidCdaException extends Exception {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int code;
	private String message;

	public InvalidCdaException(int code, String message) {
		this.code = code;
		this.message = message;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
