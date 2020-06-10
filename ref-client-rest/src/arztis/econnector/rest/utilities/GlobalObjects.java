package arztis.econnector.rest.utilities;

import javax.servlet.http.HttpServletResponse;

import arztis.econnector.common.model.Message;
import arztis.econnector.common.model.MessageTypes;
import arztis.econnector.common.utilities.MessageUtil;

public class GlobalObjects {

    public static final Message MESSAGE_UNREGISTERED_USER = new Message(
            MessageUtil.getMessageFromProperties("USER_NOT_REGISTERED", null), MessageTypes.ERROR,
            HttpServletResponse.SC_UNAUTHORIZED);
	


	private GlobalObjects() {
		throw new IllegalStateException("class for global objects");
	}
}
