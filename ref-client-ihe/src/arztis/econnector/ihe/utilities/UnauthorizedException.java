package arztis.econnector.ihe.utilities;

public class UnauthorizedException extends Exception {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public UnauthorizedException(String errorMessage) {
        super(errorMessage);
    }
}
