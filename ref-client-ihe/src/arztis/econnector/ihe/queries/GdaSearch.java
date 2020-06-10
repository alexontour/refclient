package arztis.econnector.ihe.queries;

import java.math.BigInteger;
import java.rmi.RemoteException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.hl7.fhir.r4.model.Address;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.ihe.generatedClasses.gdaiws.GdaIndexWsStub.GdaIndexRequestPerson;
import arztis.econnector.ihe.generatedClasses.gdaiws.GdaIndexWsStub.GdaIndexResponseList;
import arztis.econnector.ihe.generatedClasses.gdaiws.GdaIndexWsStub.Gdastat;
import arztis.econnector.ihe.generatedClasses.gdaiws.GdaIndexWsStub.InstanceIdentifierPerson;
import arztis.econnector.ihe.generatedClasses.gdaiws.GdaIndexWsStub.ListResponse;
import arztis.econnector.ihe.utilities.IheServiceStubPool;

public class GdaSearch {

	private static final Logger LOGGER = LoggerFactory.getLogger(GdaSearch.class.getName());

	private GdaSearch() {
		throw new IllegalStateException("Utility class");
	}

	/**
	 * This method searches a gda in the gda index with the given parameter.
	 *
	 * @param practitioner details about the health care provider to search for
	 * 
	 * @return list of found health care providers
	 * @throws RemoteException
	 */
	public static ListResponse[] searchGdas(String family, String given, int maxResult, boolean active, String role,
			Address address) throws RemoteException {
		GdaIndexRequestPerson gdaIndexRequestPerson = new GdaIndexRequestPerson();
		InstanceIdentifierPerson instanceIdentifierPerson = new InstanceIdentifierPerson();

		setNameForSearch(family, given, instanceIdentifierPerson);
		setAddressForSearch(address, instanceIdentifierPerson);

		if (role != null) {
			instanceIdentifierPerson.setRolecode(role);
		}

		if (maxResult < 200) {
			instanceIdentifierPerson.setMaxResults(BigInteger.valueOf(maxResult));
		} else {
			instanceIdentifierPerson.setMaxResults(BigInteger.valueOf(200));
		}

		if (active) {
			instanceIdentifierPerson.setGdaStatus(Gdastat.aktiv);
		} else {
			instanceIdentifierPerson.setGdaStatus(Gdastat.inaktiv);
		}

		gdaIndexRequestPerson.setHcIdentifierPerson(instanceIdentifierPerson);

		GdaIndexResponseList gdaIndexResponseListDocument = IheServiceStubPool.getInstance().getGdaIndexService()
				.gdaIndexPersonenSuche(gdaIndexRequestPerson);

		return gdaIndexResponseListDocument.getGda();
	}

	private static void setAddressForSearch(Address address, InstanceIdentifierPerson instanceIdentifierPerson) {
		if (address != null) {
			if (address.getCity() != null) {
				instanceIdentifierPerson.setCity(address.getCity());
			}

			if (address.getPostalCode() != null) {
				instanceIdentifierPerson.setPostcode(address.getPostalCode());
			}

			if (address.getLine() != null && !address.getLine().isEmpty() && address.getLine().get(0) != null
					&& address.getLine().get(0).getValue() != null) {
				String addressLine = address.getLine().get(0).getValue();

				int indexOfFirstNumber = getIndexOfFirstDigit(addressLine);

				if (indexOfFirstNumber != -1) {
					instanceIdentifierPerson.setStreetName(addressLine.substring(0, indexOfFirstNumber - 1).trim());
					instanceIdentifierPerson.setStreetNumber(addressLine.substring(indexOfFirstNumber - 1).trim());
				}
			}
		}
	}

	private static int getIndexOfFirstDigit(String addressline) {
		try {
			Matcher matcher = Pattern.compile("\\d+").matcher(addressline);
			matcher.find();
			return Integer.valueOf(matcher.group());
		} catch (Exception ex) {
			LOGGER.error(ex.getMessage(), ex);
			return -1;
		}
	}

	private static void setNameForSearch(String family, String given,
			InstanceIdentifierPerson instanceIdentifierPerson) {

		if (family != null && !family.isEmpty()) {
			instanceIdentifierPerson.setSurname(family);
		}

		if (given != null && !given.isEmpty()) {
			instanceIdentifierPerson.setFirstname(given);
		}
	}
}
