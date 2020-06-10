package arztis.econnector.rest;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.ihe.model.ConnectionData;

public class ConnectionDataHandler {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(ConnectionDataHandler.class.getName());
	
	private List<ConnectionData> connectionData;
	
	protected ConnectionDataHandler() {
		connectionData = new LinkedList<>();
	}

	private static class LazyHolder {
		static final ConnectionDataHandler INSTANCE = new ConnectionDataHandler();
	}

	/**
	 * This method returns the instance of the class (Singleton)
	 * 
	 * @return instance
	 */
	public static ConnectionDataHandler getInstance() {
		return LazyHolder.INSTANCE;
	}
	
	/**
	 * adds connData to a list of connection data. This list caches all registered
	 * users.
	 *
	 * @param connData Connection data of a single user, which is registered for
	 *                 ELGA and/or GINA
	 */
	public synchronized void addConnData(ConnectionData connData) {
		boolean bContainsUserToken = false;
		int indexOfConnDataWithUserToken = 0;

		if (connData != null) {
			for (int i = 0; i < connectionData.size(); i++) {
				if (connData.getUserJwtToken() != null && connectionData.get(i).getUserJwtToken().equals(connData.getUserJwtToken())) {
					indexOfConnDataWithUserToken = i;
					bContainsUserToken = true;
				}
			}

			if (!bContainsUserToken && connData.getUserJwtToken() != null && !connData.getUserJwtToken().isEmpty()) {
				connectionData.add(connData);
			} else if (connData.getUserJwtToken() != null) {
				connectionData.set(indexOfConnDataWithUserToken, connData);
			}
		}

		LOGGER.debug("List connection data {}", connectionData);
	}

	/**
	 * Deletes a certain connection data from the list of connection data through
	 * the user id
	 *
	 * @param jwt jwt of the user for which the connection data is to be deleted
	 */
	public synchronized void deleteConnData(String jwt) {
		List<ConnectionData> connDataToDelete = new ArrayList<>();
		for (ConnectionData connData : connectionData) {
			if (connData.getUserJwtToken().equals(jwt)) {
				if (LOGGER.isDebugEnabled()) {
					LOGGER.debug("delete the connection data {}", connData);
				}
				connDataToDelete.add(connData);
			}
		}

		connectionData.removeAll(connDataToDelete);
	}

	/**
	 * Method to overwrite one element of the list of connection data. If there is
	 * an object in the list with the same user id as the user id of the parameter,
	 * the connection data in the list is overwritten by the parameter.
	 *
	 * @param connData ConnectionData
	 */
	public synchronized void overwriteConnDataInList(ConnectionData connData) {
		for (ConnectionData oConnData : connectionData) {
			if (oConnData != null && oConnData.getUserJwtToken().equals(connData.getUserJwtToken())
					&& oConnData.getHcpAssertion() != null) {
				connectionData.set(connectionData.indexOf(oConnData), connData);
				if (LOGGER.isDebugEnabled()) {
					LOGGER.debug("overwrited the transaction: {} with {}", oConnData, connData);
				}
			}
		}
	}

	/**
	 * This method returns the connection data that has the same user id as
	 * specified in the parameter.
	 * 
	 * @param jwt token of user, for which the connection data is required
	 * 
	 * @return either the connection data or null if no connection data with the
	 *         respective user ID is available
	 */

	public ConnectionData getConnectionDataWithUserToken(String jwt) {
		for (int i = 0; i < connectionData.size(); i++) {
			if (connectionData.get(i).getUserJwtToken().equals(jwt)) {
				if (LOGGER.isDebugEnabled()) {
					LOGGER.debug("found connection data for: {}", jwt);
				}
				return connectionData.get(i);
			}
		}

		return null;
	}

}
