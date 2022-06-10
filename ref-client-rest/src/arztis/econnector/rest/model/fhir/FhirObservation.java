/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest.model.fhir;

import java.util.ArrayList;
import java.util.List;

import org.hl7.fhir.r4.model.BooleanType;
import org.hl7.fhir.r4.model.CodeableConcept;
import org.hl7.fhir.r4.model.Coding;
import org.hl7.fhir.r4.model.DateTimeType;
import org.hl7.fhir.r4.model.IntegerType;
import org.hl7.fhir.r4.model.Observation;
import org.hl7.fhir.r4.model.Reference;
import org.hl7.fhir.r4.model.Resource;
import org.hl7.fhir.r4.model.StringType;
import org.hl7.fhir.r4.model.Type;
import org.hl7.fhir.r4.model.codesystems.ObservationCategory;
import org.hl7.fhir.r4.model.codesystems.V3ObservationInterpretation;
import org.husky.cda.elga.generated.artdecor.enums.ElgaObservationInterpretation;
import org.husky.common.hl7cdar2.ANY;
import org.husky.common.hl7cdar2.BL;
import org.husky.common.hl7cdar2.CD;
import org.husky.common.hl7cdar2.CE;
import org.husky.common.hl7cdar2.CV;
import org.husky.common.hl7cdar2.II;
import org.husky.common.hl7cdar2.INT;
import org.husky.common.hl7cdar2.IVLINT;
import org.husky.common.hl7cdar2.IVLPQ;
import org.husky.common.hl7cdar2.POCDMT000040Act;
import org.husky.common.hl7cdar2.POCDMT000040Author;
import org.husky.common.hl7cdar2.POCDMT000040Component4;
import org.husky.common.hl7cdar2.POCDMT000040EntryRelationship;
import org.husky.common.hl7cdar2.POCDMT000040Observation;
import org.husky.common.hl7cdar2.POCDMT000040Organizer;
import org.husky.common.hl7cdar2.POCDMT000040Reference;
import org.husky.common.hl7cdar2.POCDMT000040ReferenceRange;
import org.husky.common.hl7cdar2.PQ;
import org.husky.common.hl7cdar2.RTO;
import org.husky.common.hl7cdar2.RTOPQPQ;
import org.husky.common.hl7cdar2.RTOQTYQTY;
import org.husky.common.hl7cdar2.ST;
import org.husky.common.hl7cdar2.TS;
import org.husky.common.utils.DateUtil;

import ca.uhn.fhir.model.api.annotation.ResourceDef;

/**
 * This class is a subclass of {@link Observation}. Therefore it includes
 * measurements.</br>
 *
 * It contains functionalities for converting CDA R2 {@link POCDMT000040Act}
 * into HL7 FHIR {@link Observation}. This HL7 FHIR resource could be used to
 * represent laboratory reports or relevant diseases.
 *
 * @author Anna Jungwirth
 *
 */
@ResourceDef(name = "Observation", profile = "http://hl7.org/fhir/StructureDefinition/Observation")
public class FhirObservation extends Observation {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** The resources. */
	private List<Resource> resources;

	/**
	 * Default constructor.
	 */
	public FhirObservation() {

	}

	/**
	 * Constructor to create {@link Observation} from passed {@link POCDMT000040Act}.
	 *
	 * @param act  CDA R2 element to extract
	 * @param id   reference to other resources
	 * @param code of section
	 */
	public FhirObservation(POCDMT000040Act act, String id, CodeableConcept code) {
		resources = new ArrayList<>();
		fromPOCDMT000040Act(act, id, code);
	}

	/**
	 * all referenced resources of immunization entry.
	 *
	 * @return list of referenced resources
	 */
	public List<Resource> getResources() {
		return resources;
	}

	/**
	 * extracts information about antibody determination, risks or relevant diseases
	 * from passed {@link POCDMT000040Act}.
	 *
	 * @param act  element for extracting information
	 * @param id   resource ID
	 * @param code of section
	 */
	private void fromPOCDMT000040Act(POCDMT000040Act act, String id, CodeableConcept code) {
		if (act != null) {
			setId(id);

			if (act.getId() != null) {
				for (II ii : act.getId()) {
					if (ii != null) {
						addIdentifier(new FhirIdentifier(ii));
					}
				}
			}

			if (act.getStatusCode() != null && act.getStatusCode().getCode() != null) {
				if (act.getStatusCode().getCode().contains("active")) {
					setStatus(ObservationStatus.PRELIMINARY);
				} else if (act.getStatusCode().getCode().contains("completed")) {
					setStatus(ObservationStatus.FINAL);
				}
			}

			setEffective(new FhirPeriod(act.getEffectiveTime()));

			if (act.getAuthor() != null) {
				for (POCDMT000040Author author : act.getAuthor()) {
					if (author != null) {
						addPerformer(new Reference(String.format("PractitionerRole/%s-performer", id)));
						FhirPractitionerRole practitionerRole = new FhirPractitionerRole(author,
								String.format("%s-performer", id));
						resources.add(practitionerRole);
						resources.addAll(practitionerRole.getResources());
					}
				}
			}

			if (act.getReference() != null) {
				for (POCDMT000040Reference reference : act.getReference()) {
					if (reference != null) {
						addDerivedFrom(new Reference(String.format("DocumentReference/%s-document", id)));
						resources.add(new FhirDocumentReference(reference, String.format("%s-document", id)));
					}
				}
			}

			if (act.getEntryRelationship() != null && !act.getEntryRelationship().isEmpty()) {
				for (POCDMT000040EntryRelationship entryRel : act.getEntryRelationship()) {
					if (entryRel != null) {
						if (entryRel.getObservation() != null) {
							fromPOCDMT000040Observation(entryRel.getObservation());
						} else if (entryRel.getOrganizer() != null) {
							fromPOCDMT000040Organizer(entryRel.getOrganizer());
						}
					}
				}
			}

			setCode(code);
			addCategory(new CodeableConcept(new Coding(ObservationCategory.EXAM.getSystem(),
					ObservationCategory.EXAM.toCode(), ObservationCategory.EXAM.getDisplay())));
		}
	}

	/**
	 * extracts information about relevant diseases or risks from passed
	 * {@link POCDMT000040Observation}. Code of risk or disease is extracted.
	 * Furthermore, time interval in which the vaccination-relevant disease or risk
	 * was/is exsitent.
	 *
	 * @param observation element for extracting information
	 *
	 */
	private void fromPOCDMT000040Observation(POCDMT000040Observation observation) {
		if (observation != null) {
			if (observation.getValue() != null && !observation.getValue().isEmpty()) {
				setValue(extractValue(observation.getValue().get(0)));
			}

			if (observation.getEffectiveTime() != null) {
				setEffective(new FhirPeriod(observation.getEffectiveTime()));
			}
		}
	}

	/**
	 * extracts information about antibody determination from passed
	 * {@link POCDMT000040Organizer}. The report group code and the completion date
	 * are extracted. Furthermore, interpretation code, values and reference ranges
	 * are extracted.
	 *
	 * @param organizer element for extracting information
	 *
	 */
	private void fromPOCDMT000040Organizer(POCDMT000040Organizer organizer) {
		if (organizer != null && organizer.getComponent() != null) {
			for (POCDMT000040Component4 comp : organizer.getComponent()) {
				if (comp != null && comp.getObservation() != null) {
					ObservationComponentComponent observationComp = new ObservationComponentComponent();
					observationComp.setCode(new FhirCodeableConcept(comp.getObservation().getCode()));

					observationComp.setValue(extractValue(comp.getObservation().getValue().get(0)));

					extractInterpretation(comp.getObservation().getInterpretationCode(), observationComp);

					extractReferenceRange(comp.getObservation().getReferenceRange(), observationComp);

					addComponent(observationComp);

					if (comp.getObservation().getEffectiveTime() != null) {
						setEffective(new FhirPeriod(comp.getObservation().getEffectiveTime()));
					}
				}
			}
		}
	}

	/**
	 * extracts information about interpretation of antibody determination value
	 * from passed <code>interpratationCodes</code>.
	 *
	 * @param interpratationCodes list of {@link CE} for extracting information
	 * @param observationComp     resource to add information
	 *
	 */
	private void extractInterpretation(List<CE> interpratationCodes, ObservationComponentComponent observationComp) {
		if (interpratationCodes != null) {
			for (CE code : interpratationCodes) {
				CodeableConcept concept = extractInterpretation(code);

				if (concept != null) {
					observationComp.addInterpretation(concept);
				}
			}
		}
	}

	/**
	 * allocates HL7 FHIR {@link V3ObservationInterpretation} for passed
	 * {@link ElgaObservationInterpretation}. </br>
	 * <table border="1">
	 * <tr>
	 * <td><b>CDA R2</b></td>
	 * <td><b>HL7 FHIR</b></td>
	 * </tr>
	 * <tr>
	 * <td>POS</td>
	 * <td>POS</td>
	 * </tr>
	 * <tr>
	 * <td>NEG</td>
	 * <td>NEG</td>
	 * </tr>
	 * <tr>
	 * <td>IND</td>
	 * <td>IND</td>
	 * </tr>
	 * </table>
	 * </br>
	 *
	 * @param interpratationCode {@link CE} for extracting information
	 *
	 * @return created {@link CodeableConcept} with allocated values or null if no
	 *         value can be allocated
	 *
	 */
	private CodeableConcept extractInterpretation(CE interpratationCode) {
		if (interpratationCode != null) {
			switch (interpratationCode.getCode()) {
			case ElgaObservationInterpretation.POSITIVE_CODE:
				return new CodeableConcept(new Coding(V3ObservationInterpretation.POS.getSystem(),
						V3ObservationInterpretation.POS.name(), V3ObservationInterpretation.POS.getDisplay()));
			case ElgaObservationInterpretation.NEGATIVE_CODE:
				return new CodeableConcept(new Coding(V3ObservationInterpretation.NEG.getSystem(),
						V3ObservationInterpretation.NEG.name(), V3ObservationInterpretation.NEG.getDisplay()));
			case ElgaObservationInterpretation.INDETERMINATE_CODE:
				return new CodeableConcept(new Coding(V3ObservationInterpretation.IND.getSystem(),
						V3ObservationInterpretation.IND.name(), V3ObservationInterpretation.IND.getDisplay()));
			default:
				break;
			}
		}

		return null;
	}

	/**
	 * extracts information about reference range of antibody determination value
	 * from passed <code>referenceRanges</code>. The reference range can be
	 * specified as range or ratio. Furthermore, there is an interpretation code for
	 * each reference range.
	 *
	 * @param referenceRanges list of {@link POCDMT000040ReferenceRange} for
	 *                        extracting information
	 * @param observationComp resource to add information
	 */
	private void extractReferenceRange(List<POCDMT000040ReferenceRange> referenceRanges,
			ObservationComponentComponent observationComp) {
		if (referenceRanges != null) {
			for (POCDMT000040ReferenceRange referenceRange : referenceRanges) {
				ObservationReferenceRangeComponent referenceRangeComp = new ObservationReferenceRangeComponent();

				if (referenceRange.getObservationRange() != null) {
					if (referenceRange.getObservationRange().getInterpretationCode() != null) {
						referenceRangeComp.setType(
								extractInterpretation(referenceRange.getObservationRange().getInterpretationCode()));
					}

					if (referenceRange.getObservationRange().getValue() instanceof IVLPQ) {
						FhirRange range = new FhirRange((IVLPQ) referenceRange.getObservationRange().getValue());
						referenceRangeComp.setLow(range.getLow());
						referenceRangeComp.setHigh(range.getHigh());
					} else if (referenceRange.getObservationRange().getValue() instanceof RTO) {
						FhirRatio ratio = new FhirRatio((RTO) referenceRange.getObservationRange().getValue());
						referenceRangeComp.setText(String.format("%d%s%d", ratio.getNumerator().getValue(),
								ratio.getDenominator().getComparator().getDisplay(),
								ratio.getDenominator().getValue()));
					}
				}
				observationComp.addReferenceRange(referenceRangeComp);
			}
		}
	}

	/**
	 * extracts information from passed value {@link ANY}. This method identifies
	 * the data type of the passed value and creates an appropriate HL7 FHIR
	 * resource such as {@link FhirRange} or {@link DateTimeType}. </br>
	 *
	 * <table border="1">
	 * <tr>
	 * <td><b>CDA R2</b></td>
	 * <td><b>HL7 FHIR</b></td>
	 * </tr>
	 * <tr>
	 * <td>{@link PQ}</td>
	 * <td>{@link FhirQuantity}</td>
	 * </tr>
	 * <tr>
	 * <td>{@link BL}</td>
	 * <td>{@link BooleanType}</td>
	 * </tr>
	 * <tr>
	 * <td>{@link INT}</td>
	 * <td>{@link IntegerType}</td>
	 * </tr>
	 * <tr>
	 * <td>{@link INT}</td>
	 * <td>{@link IntegerType}</td>
	 * </tr>
	 * <tr>
	 * <td>{@link INT}</td>
	 * <td>{@link IntegerType}</td>
	 * </tr>
	 * <tr>
	 * <td>{@link INT}</td>
	 * <td>{@link IntegerType}</td>
	 * </tr>
	 * <tr>
	 * <td>{@link IVLINT}</td>
	 * <td>{@link FhirRange}</td>
	 * </tr>
	 * <tr>
	 * <td>{@link ST}</td>
	 * <td>{@link StringType}</td>
	 * </tr>
	 * <tr>
	 * <td>{@link CD}</td>
	 * <td>{@link FhirCodeableConcept}</td>
	 * </tr>
	 * <tr>
	 * <td>{@link CV}</td>
	 * <td>{@link FhirCodeableConcept}</td>
	 * </tr>
	 * <tr>
	 * <td>{@link TS}</td>
	 * <td>{@link DateTimeType}</td>
	 * </tr>
	 * <tr>
	 * <td>{@link RTO}</td>
	 * <td>{@link FhirRatio}</td>
	 * </tr>
	 * <tr>
	 * <td>{@link RTOQTYQTY}</td>
	 * <td>{@link FhirRatio}</td>
	 * </tr>
	 * <tr>
	 * <td>{@link RTOPQPQ}</td>
	 * <td>{@link FhirRatio}</td>
	 * </tr>
	 * </table>
	 * </br>
	 *
	 *
	 * @param value for extracting information
	 *
	 * @return created {@link Type}
	 */
	private Type extractValue(ANY value) {
		if (value instanceof PQ) {
			return new FhirQuantity((PQ) value);
		} else if (value instanceof IVLPQ) {
			return new FhirRange((IVLPQ) value);
		} else if (value instanceof BL) {
			return new BooleanType(((BL) value).isValue());
		} else if (value instanceof INT) {
			return new IntegerType(((INT) value).getValue().intValue());
		} else if (value instanceof IVLINT) {
			return new FhirRange((IVLINT) value);
		} else if (value instanceof ST) {
			return new StringType(((ST) value).getMergedXmlMixed());
		} else if (value instanceof CD) {
			return new FhirCodeableConcept((CD) value);
		} else if (value instanceof CV) {
			return new FhirCodeableConcept((CV) value);
		} else if (value instanceof TS) {
			return new DateTimeType(DateUtil.parseDateAndTime(((TS) value).getValue()));
		} else if (value instanceof RTO || value instanceof RTOQTYQTY) {
			return new FhirRatio((RTO) value);
		} else if (value instanceof RTOPQPQ) {
			return new FhirRatio((RTOPQPQ) value);
		}

		return null;
	}

}
