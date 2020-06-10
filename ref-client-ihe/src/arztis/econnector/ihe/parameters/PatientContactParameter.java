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
 * @author ET-Innovations
 *
 */
public class PatientContactParameter extends Parameter {

	private static final long serialVersionUID = 1L;
	private String cardReaderId;
	private Identifier patientId;
	private String tridPatientContact;
	private List<ElgaEHealthApplication> ehealthApps;
	
	/**
	 * Constructor to create parameter for list confirmed patient contacts
	 * 
	 * @param patientId ID of patient. It must be bpk ("bereichspezifisches Personenkennzeichen") or ssno.
	 */
	public PatientContactParameter(Identifier patientId) {
		this.patientId = patientId;
	}
	
	/**
	 * Constructor to create parameter for patient contact confirmation
	 * 
	 * @param patientId ID of patient. It must be bpk ("bereichspezifisches Personenkennzeichen") or ssno. 
	 * @param cardReaderId card reader id, if the confirmation should be confirmed by usage of eCard
	 * @param apps ELGA eHealth applications for which patient contact should be confirmed
	 */
	public PatientContactParameter(Identifier patientId, String cardReaderId, List<ElgaEHealthApplication> apps) {
		this.patientId = patientId;
		this.cardReaderId = cardReaderId;
		this.ehealthApps = apps;
	}
	
	/**
	 * Constructor to create parameter for cancelling patient contact
	 * 
	 * @param tridPatientContact ID of patient contact to cancel 
	 * 
	 */
	public PatientContactParameter(String tridPatientContact) {
		this.tridPatientContact = tridPatientContact;
	}

	/**
	 * ID of the card reader, in which the e-Card of the patient was inserted. This
	 * parameter is only needed if the patient contact should be confirmed by using
	 * the e-Card.
	 * 
	 * @return ID of the card reade
	 */
	public String getCardReaderId() {
		return cardReaderId;
	}

	/**
	 * ID of the patient for which the patient contact should be requested,
	 * cancelled or registered. If the patient contact should be registered by using
	 * the e-Card the social security number should be the patient id. If the
	 * patient contact should be registered by using the bPk, the bPk must be filled
	 * in the patient ID.
	 * 
	 * @return patient ID
	 */
	public Identifier getPatientId() {
		return patientId;
	}

	/**
	 * ID of the eHealth applications for which the patient contact should be
	 * requested, cancelled or registered. It is needed, if the patient contact
	 * endpoint is different for the eHealth applications than the default
	 * endpoints.
	 * 
	 * @return eHealth applications to register patient contact into
	 */
	public List<ElgaEHealthApplication> getEhealthApps() {
		return ehealthApps;
	}

	/**
	 * TRID of the patient contact. This parameter is required to cancel a specific
	 * patient contact.
	 * 
	 * @return TRID of the patient contact
	 */
	public String getTridPatientContact() {
		return tridPatientContact;
	}

	public void setPatientId(Identifier patientId) {
		this.patientId = patientId;
	}

	public void setTridPatientContact(String tridPatientContact) {
		this.tridPatientContact = tridPatientContact;
	}

	public void setEhealthApps(List<ElgaEHealthApplication> ehealthApps) {
		this.ehealthApps = ehealthApps;
	}

	public void setCardCardReaderId(String cardReaderId) {
		this.cardReaderId = cardReaderId;
	}

	/**
	 * This method creates a JSON with the details of this instance. <br/>
	 * The JSON will look as follows:
	 * 
	 * <code>
	 * {
	 * "patient": { 
	 * 		"root": "1.2.40.0.10.2.1.1.149", 
	 * 		"id": "GH:1chxEM68ODqCY2R2kEcELnd9peg=" 
	 *  }, 
	 * "tridPatientContact":"ca391baf-c15a-4074-8362-573f081dbc58" 
	 * }
	 * </code>
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
