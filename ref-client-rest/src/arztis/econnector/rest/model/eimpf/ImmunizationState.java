package arztis.econnector.rest.model.eimpf;

import java.util.List;

import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrHeaderDocumentReplacementRelatedDocument;
import org.ehealth_connector.cda.at.elga.v2019.elgaimpf.AtcdabbrHeaderDocumentationOfServiceEventEImpfpass;
import org.ehealth_connector.cda.at.elga.v2019.enums.ElgaEventCodeList;
import org.ehealth_connector.common.hl7cdar2.CE;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040StructuredBody;
import org.ehealth_connector.common.utils.DateUtil;
import org.hl7.fhir.r4.model.Coding;
import org.hl7.fhir.r4.model.Composition;
import org.hl7.fhir.r4.model.Immunization;
import org.hl7.fhir.r4.model.ResourceType;

import arztis.econnector.ihe.utilities.CdaUtil;
import arztis.econnector.rest.model.fhir.FhirCoding;
import arztis.econnector.rest.model.fhir.FhirIdentifier;
import arztis.econnector.rest.model.fhir.FhirImmunization;

public class ImmunizationState extends Composition {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static AtcdabbrHeaderDocumentationOfServiceEventEImpfpass getAtcdabbrHeaderDocumentationOfServiceEvent(
			Composition composition) {
		if (composition == null) {
			return null;
		}

		AtcdabbrHeaderDocumentationOfServiceEventEImpfpass documentationOfServiceEvent = new AtcdabbrHeaderDocumentationOfServiceEventEImpfpass();

		CE eventCode = FhirCoding.createHl7CdaR2Ce(new Coding(ElgaEventCodeList.IMMUNIZATION_RECORD.getCodeSystemId(),
				ElgaEventCodeList.IMMUNIZATION_RECORD.getCodeValue(),
				ElgaEventCodeList.IMMUNIZATION_RECORD.getDisplayName()), null);
		eventCode.setCodeSystemName("SNOMED CT");
		documentationOfServiceEvent.getServiceEvent().setCode(eventCode);

		if (composition.hasEvent() && composition.getEventFirstRep().hasPeriod()) {
			if (composition.getEventFirstRep().getPeriod().getStart() != null
					&& composition.getEventFirstRep().getPeriod().getEnd() != null) {
				documentationOfServiceEvent.getServiceEvent()
						.setEffectiveTime(CdaUtil.createIntervalEffectiveTime(
								DateUtil.formatDateOnly(composition.getEventFirstRep().getPeriod().getStart()),
								DateUtil.formatDateOnly(composition.getEventFirstRep().getPeriod().getEnd())));
			} else if (composition.getEventFirstRep().getPeriod().getStart() != null) {
				documentationOfServiceEvent.getServiceEvent().setEffectiveTime(CdaUtil.createIntervalEffectiveTime(
						DateUtil.formatDateTime(composition.getEventFirstRep().getPeriod().getStart()), null));
			} else if (composition.getEventFirstRep().getPeriod().getEnd() != null) {
				documentationOfServiceEvent.getServiceEvent().setEffectiveTime(CdaUtil.createIntervalEffectiveTime(null,
						DateUtil.formatDateTime(composition.getEventFirstRep().getPeriod().getEnd())));
			}
		}

		return documentationOfServiceEvent;
	}

	public static AtcdabbrHeaderDocumentReplacementRelatedDocument getAtcdabbrHeaderDocumentReplacementRelatedDocument(
			Composition composition) {
		AtcdabbrHeaderDocumentReplacementRelatedDocument relatedDocument = new AtcdabbrHeaderDocumentReplacementRelatedDocument();

		if (composition.hasRelatesTo()) {
			for (CompositionRelatesToComponent relatesTo : composition.getRelatesTo()) {
				if (relatesTo.hasTargetIdentifier()) {
					relatedDocument.getHl7ParentDocument().getId()
							.add(FhirIdentifier.createHl7CdaR2Ii(relatesTo.getTargetIdentifier(), null));
				}
			}
		}

		return relatedDocument;
	}

	public static POCDMT000040StructuredBody getHl7CdaR2Pocdmt000040StructuredBodyImmunizationState(
			Composition composition, List<Immunization> immunizations) {
		POCDMT000040StructuredBody structuredBody = new POCDMT000040StructuredBody();
		structuredBody.getClassCode().add("DOCBODY");
		structuredBody.getMoodCode().add("EVN");

		if (composition != null && composition.hasSection()) {
			for (SectionComponent section : composition.getSection()) {
				if (section != null && section.hasEntry()
						&& section.getEntryFirstRep().getType().equalsIgnoreCase(ResourceType.Immunization.name())) {
					structuredBody.getComponent().add(CdaUtil.createComp3WithCompleteSection(
							FhirImmunization.getAtcdabbrSectionImpfungenKodiert(immunizations)));
				}
			}
		}

		return structuredBody;
	}
}
