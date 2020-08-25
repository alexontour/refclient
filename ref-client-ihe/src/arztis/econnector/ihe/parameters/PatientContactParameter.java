/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.ihe.parameters;

import java.util.List;

import org.hl7.fhir.r4.model.Identifier;
import org.json.JSONObject;

import arztis.econnector.common.model.Parameter;
import arztis.econnector.ihe.utilities.ElgaEHealthApplication;

/**
 * This class is used to pass details about patient contacts in ELGA. It can be
 * used for
 *
 * <ul>
 * <li>confirm patient contact</li>
 * <li>query patient contacts</li>
 * <li>cancel patient contact</li>
 * </ul>
 *
 * @author Anna Jungwirth
 *
 */
public class PatientContactParameter extends Parameter {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** The card reader id. */
	private String cardReaderId;

	/** The patient id. */
	private Identifier patientId;

	/** The TRID of patient contact. */
	private String tridPatientContact;

	/** The ehealth apps. */
	private List<ElgaEHealthApplication> ehealthApps;

	/**
	 * Constructor to create parameters for the listing of confirmed patient
	 * contacts.
	 *
	 * @param patientId ID of patient. It must be bpk ("bereichspezifisches
	 *                  Personenkennzeichen") or social security number.
	 */
	public PatientContactParameter(Identifier patientId) {
		this.patientId = patientId;
	}

	/**
	 * Constructor to create parameters for the confirmation of patient contact.
	 *
	 * @param patientId    ID of patient. It must be bpk ("bereichspezifisches
	 *                     Personenkennzeichen") or social security number.
	 * @param cardReaderId card reader ID, if confirmation is to be executed by
	 *                     using an e-Card
	 * @param apps         ELGA eHealth applications for which patient contact
	 *                     should be confirmed
	 */
	public PatientContactParameter(Identifier patientId, String cardReaderId, List<ElgaEHealthApplication> apps) {
		this.patientId = patientId;
		this.cardReaderId = cardReaderId;
		this.ehealthApps = apps;
	}

	/**
	 * Constructor to create parameters for cancellation of patient contact.
	 *
	 * @param tridPatientContact ID of patient contact
	 */
	public PatientContactParameter(String tridPatientContact) {
		this.tridPatientContact = tridPatientContact;
	}

	/**
	 * ID of card reader, in which patient e-Card has been inserted. This parameter
	 * is only needed if patient contact should be confirmed by using an e-Card.
	 *
	 * @return ID of card reader
	 */
	public String getCardReaderId() {
		return cardReaderId;
	}

	/**
	 * Sets the card card reader id.
	 *
	 * @param cardReaderId the new card card reader id
	 */
	public void setCardCardReaderId(String cardReaderId) {
		this.cardReaderId = cardReaderId;
	}

	/**
	 * ID of patient for whom patient contact should be listed, cancelled or
	 * registered. If patient contact is to be confirmed by using an e-Card, social
	 * security number should be the patient id. If patient contact is to be
	 * confirmed by using the bPk, the bPk should be the patient ID.
	 *
	 * @return ID of patient (bpk or social security number of patient)
	 */
	public Identifier getPatientId() {
		return patientId;
	}

	/**
	 * Sets the patient id.
	 *
	 * @param patientId the new patient id
	 */
	public void setPatientId(Identifier patientId) {
		this.patientId = patientId;
	}

	/**
	 * ID of eHealth applications for which patient contact should be listed,
	 * cancelled or registered. It is needed if patient contact endpoints of eHealth
	 * applications differ from default endpoints.
	 *
	 * @return eHealth applications to confirm patient contact into
	 */
	public List<ElgaEHealthApplication> getEhealthApps() {
		return ehealthApps;
	}

	/**
	 * Sets the ehealth apps.
	 *
	 * @param ehealthApps the new ehealth apps
	 */
	public void setEhealthApps(List<ElgaEHealthApplication> ehealthApps) {
		this.ehealthApps = ehealthApps;
	}

	/**
	 * TRID of patient contact. This parameter is required to cancel a specific
	 * patient contact.
	 *
	 * @return TRID of the patient contact
	 */
	public String getTridPatientContact() {
		return tridPatientContact;
	}

	/**
	 * Sets the trid patient contact.
	 *
	 * @param tridPatientContact the new trid patient contact
	 */
	public void setTridPatientContact(String tridPatientContact) {
		this.tridPatientContact = tridPatientContact;
	}

	/**
	 * This method creates a JSON with details of this instance. <br/>
	 * The JSON will look as follows:
	 *
	 * <pre>
	 * {@code
	 * {
	 * "patient": {
	 *   "root": "1.2.40.0.10.2.1.1.149",
	 *   "id": "GH:1chxEM68ODqCY2R2kEcELnd9peg="
	 * },
	 * "tridPatientContact":"ca391baf-c15a-4074-8362-573f081dbc58"
	 * }
	 * }
	 * </pre>
	 *
	 * @return JSON of patient contact
	 */
	public JSONObject toJson() {
		JSONObject jo = new JSONObject();

		if (patientId != null) {
			JSONObject joIdentifier = new JSONObject();
			joIdentifier.put("system", patientId.getSystem());
			joIdentifier.put("value", patientId.getValue());
			jo.put("patient", joIdentifier);
		}

		jo.put("tridPatientContact", tridPatientContact);
		return jo;
	}
}
