/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest.model.eimpf;

import java.util.Map;

import org.hl7.fhir.r4.model.Coding;
import org.hl7.fhir.r4.model.Composition;
import org.hl7.fhir.r4.model.Immunization;
import org.hl7.fhir.r4.model.PractitionerRole;
import org.hl7.fhir.r4.model.ResourceType;
import org.husky.cda.elga.generated.artdecor.AtcdabbrHeaderDocumentReplacementRelatedDocument;
import org.husky.cda.elga.generated.artdecor.AtcdabbrHeaderDocumentationOfServiceEventEImpfpass;
import org.husky.cda.elga.generated.artdecor.enums.ElgaEventCodeList;
import org.husky.common.hl7cdar2.CE;
import org.husky.common.hl7cdar2.POCDMT000040StructuredBody;

import arztis.econnector.ihe.utilities.CdaUtil;
import arztis.econnector.ihe.utilities.DateUtil;
import arztis.econnector.rest.model.fhir.FhirCoding;
import arztis.econnector.rest.model.fhir.FhirIdentifier;
import arztis.econnector.rest.model.fhir.FhirImmunization;

/**
 * This class is a subclass of {@link Composition}. Therefore it defines the
 * structure and narrative content necessary for an immmunization state. </br>
 * There are functionalities to generate CDA document elements of
 * {@link Composition} resource.
 *
 * @author Anna Jungwirth
 *
 */
public class ImmunizationState extends Composition {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/**
	 * Generates service event for immunization states with information of passed
	 * {@link Composition}. </br>
	 * Code of service event is always set to
	 * {@link ElgaEventCodeList.<code>IMMUNIZATION_RECORD</code>} (41000179103 -
	 * Immunization record (record artifact)). Period of health service event is
	 * extracted from passed {@link Composition}.
	 *
	 * @param composition with information about service event.
	 * @return created service event for immunization states.
	 *         {@link AtcdabbrHeaderDocumentationOfServiceEventEImpfpass}
	 */
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

	/**
	 * Generates related documents for immunization states with information of
	 * passed {@link Composition}. </br>
	 * Code of service event is always set to Identifier of related document is
	 * extracted from passed {@link Composition}. Type of relationship is always set
	 * to RPLC (replaces).
	 *
	 * @param composition with information about related document.
	 * @return created related document for immunization states.
	 *         {@link AtcdabbrHeaderDocumentReplacementRelatedDocument}
	 */
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

	/**
	 * Generates structured body for immunization states with information of passed
	 * immunizations. </br>
	 * This method adds immunization section to structured body. All other sections
	 * are currently not supported. Passed immunizations are added to created
	 * section as entries.
	 *
	 * @param composition   to add sections
	 * @param immunizations map of immunizations and their author
	 *
	 * @return created {@link POCDMT000040StructuredBody} for immunization states.
	 *
	 */
	public static POCDMT000040StructuredBody getHl7CdaR2Pocdmt000040StructuredBodyImmunizationState(
			Composition composition, Map<Immunization, PractitionerRole> immunizations) {
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
