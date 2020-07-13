/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 *
 */
package arztis.econnector.common.model;

/**
 * This class includes all data, which are needed to request card data of
 * inserted card in card reader.
 *
 * @author Anna Jungwirth
 */
public class CardTokenParameter extends Parameter {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** The card reader id. */
	private String cardReaderId;

	/** The ssno. */
	private String ssno;

	/** The vpnr. */
	private String vpnr;

	/** The password. */
	private String password;

	/**
	 * Gets the card reader id.
	 *
	 * @return ID of card reader
	 */
	public String getCardReaderId() {
		return cardReaderId;
	}

	/**
	 * ID of card reader where needed card is inserted.
	 *
	 * @param cardReaderId ID of card reader
	 */
	public void setCardReaderId(String cardReaderId) {
		this.cardReaderId = cardReaderId;
	}

	/**
	 * Gets the ssno.
	 *
	 * @return social security number of patient
	 */
	public String getSsno() {
		return ssno;
	}

	/**
	 * Social security number of patient if an e-Card is expected to be inserted in
	 * card reader.
	 *
	 * @param ssno the new ssno
	 */
	public void setSsno(String ssno) {
		this.ssno = ssno;
	}

	/**
	 * Gets the vpnr.
	 *
	 * @return contract partner number of surgery or physician
	 */
	public String getVpnr() {
		return vpnr;
	}

	/**
	 * Contract partner number if an Admin-Card is expected to be inserted in card
	 * reader.
	 *
	 * @param vpnr contract partner number of surgery or physician
	 */
	public void setVpnr(String vpnr) {
		this.vpnr = vpnr;
	}

	/**
	 * Gets the password.
	 *
	 * @return PIN for Admin-Card
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * PIN for Admin-Card if an o-Card is expected to be inserted in card reader.
	 *
	 * @param password PIN for Admin-Card
	 */
	public void setPassword(String password) {
		this.password = password;
	}
}
