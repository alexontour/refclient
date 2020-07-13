/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 *
 */
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

/**
 * This class contains all functionalities to request </br>
 *
 * <li>health care provider from GDA-Index</li>.
 *
 * @author Anna Jungwirth
 */
public class GdaSearch {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(GdaSearch.class.getName());

	/**
	 * Default Constructor.
	 */
	private GdaSearch() {
		throw new IllegalStateException("Utility class");
	}

	/**
	 * This method is used to search for individual entries from the GDA-I for
	 * personal or organisational data that describe a health care provider. The
	 * search is limited by passed parameters. If more than 200 health care
	 * providers are found, an error will be returned. The number of hits is limited
	 * to 200 by default.
	 *
	 * @param family    name of health care provider
	 * @param given     name of health care provider
	 * @param maxResult maximal number of hits
	 * @param active    status of health care provider
	 * @param role      of health care provider (Possible values are available under
	 *                  https://termpub.gesundheit.gv.at (ELGA_GDA_Aggregatrollen))
	 * @param address   of health care provider
	 * @return list of {@link ListResponse} filled with found health care providers
	 * @throws RemoteException the remote exception
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

	/**
	 * Adds address parameters like city, postal code and street name to passed
	 * {@link InstanceIdentifierPerson}.
	 *
	 * @param address                  of health care provider
	 * @param instanceIdentifierPerson the instance identifier person
	 */
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

	/**
	 * extracts index of first digit of passed address line.
	 *
	 * @param addressline the addressline
	 * @return index of first digit or -1 if no digit was found
	 */
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

	/**
	 * Adds passed name parameters like given and family to passed
	 * {@link InstanceIdentifierPerson}.
	 *
	 * @param family name
	 * @param given name
	 * @param instanceIdentifierPerson the instance identifier person
	 */
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
