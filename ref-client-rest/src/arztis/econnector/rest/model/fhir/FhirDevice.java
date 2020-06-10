package arztis.econnector.rest.model.fhir;

import java.util.ArrayList;

import org.ehealth_connector.common.hl7cdar2.EntityClassDevice;
import org.ehealth_connector.common.hl7cdar2.II;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040AssignedAuthor;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Author;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040AuthoringDevice;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Organization;
import org.hl7.fhir.r4.model.ContactPoint;
import org.hl7.fhir.r4.model.Device;
import org.hl7.fhir.r4.model.Identifier;
import org.hl7.fhir.r4.model.Reference;

import arztis.econnector.ihe.utilities.CdaUtil;
import ca.uhn.fhir.model.api.annotation.ResourceDef;

@ResourceDef(name="Device", profile="http://hl7.org/fhir/StructureDefinition/Device")
public class FhirDevice extends Device {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * Default constructor
	 */
	public FhirDevice() {
		
	}
	
	/**
	 * Constructor to create an instance of fhir device of HL7 CDA R2 author
	 * 
	 * @param device HL7 CDA R2 device
	 * @param id resource id to reference to
	 */
	public FhirDevice(POCDMT000040Author device, String id) {
		fromPOCDMT000040Author(device, id);
	}
	
	private void fromPOCDMT000040Author(POCDMT000040Author hl7CdaR2Value, String id) {
		if (hl7CdaR2Value == null || hl7CdaR2Value.getAssignedAuthor() == null) {
			return;
		}

		setId(id);

		if (hl7CdaR2Value.getAssignedAuthor().getId() != null) {
			this.identifier = new ArrayList<>();
			for (II identifier : hl7CdaR2Value.getAssignedAuthor().getId()) {
				this.identifier.add(new FhirIdentifier(identifier));
			}
		}

		if (hl7CdaR2Value.getAssignedAuthor().getRepresentedOrganization() != null) {
			setOwner(new Reference(String.format("Organization/%s", id)));

		}

		if (hl7CdaR2Value.getAssignedAuthor().getAssignedAuthoringDevice() != null) {
			DeviceDeviceNameComponent deviceName = new DeviceDeviceNameComponent();
			deviceName.setName(hl7CdaR2Value.getAssignedAuthor().getAssignedAuthoringDevice().getSoftwareName().xmlContent);
			deviceName.setType(DeviceNameType.MANUFACTURERNAME);
			addDeviceName(deviceName);
			setModelNumber(hl7CdaR2Value.getAssignedAuthor().getAssignedAuthoringDevice().getManufacturerModelName().xmlContent);
		}
	}

	public static POCDMT000040AuthoringDevice getAtcdabbrOtherDeviceCompilation(Device fhirDevice) {
		POCDMT000040AuthoringDevice device = new POCDMT000040AuthoringDevice();
		device.setClassCode(EntityClassDevice.DEV);
		device.setDeterminerCode(CdaUtil.DETERMINERCODE_INSTANCE);
		device.setCode(FhirCodeableConcept.createHl7CdaR2Ce(fhirDevice.getType(), null, null));
		device.setManufacturerModelName(CdaUtil.createSC(fhirDevice.getModelNumber()));

		if (fhirDevice.hasDeviceName()) {
			device.setSoftwareName(CdaUtil.createSC(fhirDevice.getDeviceNameFirstRep().getName()));
		}

		return device;
	}

	public static POCDMT000040AssignedAuthor getHl7CdaR2Pocdmt000040AssignedAuthor(
			POCDMT000040AssignedAuthor assignedAuthor, Device device) {

		if (device.hasOwner()) {
			POCDMT000040Organization representedOrganization = FhirOrganization
					.createHl7CdaR2Pocdmt000040Organization(device.getOwnerTarget());
			representedOrganization.setClassCode("ORG");
			representedOrganization.setDeterminerCode(CdaUtil.DETERMINERCODE_INSTANCE);
			assignedAuthor.setRepresentedOrganization(representedOrganization);
		}

		if (device.hasIdentifier()) {
			for (Identifier id : device.getIdentifier()) {
				if (id != null) {
					assignedAuthor.getId().add(FhirIdentifier.createHl7CdaR2Ii(id, null));
				}
			}
		}

		if (device.hasContact()) {
			for (ContactPoint tel : device.getContact()) {
				if (tel != null) {
					assignedAuthor.getTelecom().add(FhirContactPoint.createHl7CdaR2Tel(tel, null));
				}
			}
		}

		assignedAuthor.setAssignedAuthoringDevice(getAtcdabbrOtherDeviceCompilation(device));

		return assignedAuthor;
	}
}
