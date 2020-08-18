package arztis.econnector.common.model;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.json.JSONObject;

/**
 * This class includes all data, which can be extracted of e-Card or Admin-Card
 * with GINO REST request.
 *
 * @author Anna Jungwirth
 *
 */
public class Card implements Serializable {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** The type. */
	private String type;

	/** The number. */
	private String number;

	/** The cin. */
	private String cin;

	/** The csn. */
	private String csn;

	/** The given name. */
	private String givenName;

	/** The birth date. */
	private LocalDate birthDate;

	/** The sex. */
	private SexCode sex;

	/** The title. */
	private String title;

	/** The suffix. */
	private String suffix;

	/** The family name. */
	private String familyName;

	/**
	 * Gets the card type.
	 *
	 * @return type of card
	 */
	public String getCardType() {
		return type;
	}

	/**
	 * type of card. There are two different types: <b>e-Card</b> and <b>o-Card</b>
	 *
	 * @param type of card
	 */
	public void setCardType(String type) {
		this.type = type;
	}

	/**
	 * Gets the number.
	 *
	 * @return number of card
	 */
	public String getNumber() {
		return number;
	}

	/**
	 * number of card. For an e-Card, number is social security number of patient
	 * and for an Admin-Card, number is contract partner number of surgery.
	 *
	 * @param number of card
	 */
	public void setNumber(String number) {
		this.number = number;
	}

	/**
	 * Gets the cin.
	 *
	 * @return card identification number
	 */
	public String getCin() {
		return cin;
	}

	/**
	 * Unique ID of card in system for e-Cards.
	 *
	 * @param cin card identification number
	 */
	public void setCin(String cin) {
		this.cin = cin;
	}

	/**
	 * Gets the csn.
	 *
	 * @return sequence number of card per owner
	 */
	public String getCsn() {
		return csn;
	}

	/**
	 * Sequence number of card per owner.
	 *
	 * @param csn Sequence number of card
	 */
	public void setCsn(String csn) {
		this.csn = csn;
	}

	/**
	 * Gets the given name.
	 *
	 * @return given name of owner
	 */
	public String getGivenName() {
		return givenName;
	}

	/**
	 * Given name of card owner.
	 *
	 * @param givenName the new given name
	 */
	public void setGivenName(String givenName) {
		this.givenName = givenName;
	}

	/**
	 * Gets the family name.
	 *
	 * @return family name of owner
	 */
	public String getFamilyName() {
		return familyName;
	}

	/**
	 * family name of card owner.
	 *
	 * @param familyName the new family name
	 */
	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}

	/**
	 * Gets the birth date.
	 *
	 * @return birth date of owner
	 */
	public LocalDate getBirthDate() {
		return birthDate;
	}

	/**
	 * birth date of card owner.
	 *
	 * @param birthDate the new birth date
	 */
	public void setBirthDate(LocalDate birthDate) {
		this.birthDate = birthDate;
	}

	/**
	 * Gets the sex.
	 *
	 * @return gender of owner
	 */
	public SexCode getSex() {
		return sex;
	}

	/**
	 * gender of card owner. There are three possible code values <b>male</b>,
	 * <b>female</b> and <b>unknown</b> at the moment.
	 *
	 * @param sex the new sex
	 */
	public void setSex(SexCode sex) {
		this.sex = sex;
	}

	/**
	 * Gets the title.
	 *
	 * @return prefix of card owner like Dr.
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * title of card owner before name.
	 *
	 * @param title prefix
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * Gets the suffix.
	 *
	 * @return suffix of card owner
	 */
	public String getSuffix() {
		return suffix;
	}

	/**
	 * title of card owner after name.
	 *
	 * @param suffix the new suffix
	 */
	public void setSuffix(String suffix) {
		this.suffix = suffix;
	}

	/**
	 * generates JSON for this class in following format:
	 *
	 * <pre>
	 * {@code
	 *     "cardType":"e-card",
	 *     "number": "1001210995",
	 *     "cin": "12345678901234567890",
	 *     "csn": "2",
	 *     "givenName":"Max",
	 *     "familyName": "Musterpatient",
	 *     "prefix": "Dipl-Ing.",
	 *     "suffix": "MSc",
	 *     "birthDate": "1995-09-21",
	 *     "sex": "m"
	 * }
	 * </pre>
	 *
	 * @return the JSON object
	 */
	public JSONObject toJson() {
		JSONObject json = new JSONObject();
		json.put("cardType", type);
		json.put("number", number);
		json.put("cin", cin);
		json.put("csn", csn);
		json.put("givenName", givenName);
		json.put("familyName", familyName);
		json.put("prefix", title);
		json.put("suffix", suffix);

		if (birthDate != null) {
			json.put("birthDate", birthDate.format(DateTimeFormatter.ISO_DATE));
		}

		if (sex == SexCode.FEMALE) {
			json.put("sex", "f");
		} else if (sex == SexCode.MALE) {
			json.put("sex", "m");
		}

		return json;
	}

}
