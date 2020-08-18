package arztis.econnector.rest.model.fhir;

import java.io.Serializable;
import java.util.ArrayList;

import javax.xml.bind.JAXBElement;
import javax.xml.namespace.QName;

import org.apache.commons.lang3.NotImplementedException;
import org.ehealth_connector.common.enums.EntityNameUse;
import org.ehealth_connector.common.enums.NullFlavor;
import org.ehealth_connector.common.hl7cdar2.EN;
import org.ehealth_connector.common.hl7cdar2.EnFamily;
import org.ehealth_connector.common.hl7cdar2.EnGiven;
import org.ehealth_connector.common.hl7cdar2.EnPrefix;
import org.ehealth_connector.common.hl7cdar2.EnSuffix;
import org.ehealth_connector.common.hl7cdar2.ON;
import org.ehealth_connector.common.hl7cdar2.PN;
import org.hl7.fhir.r4.model.HumanName;
import org.hl7.fhir.r4.model.StringType;

import arztis.econnector.ihe.utilities.CdaUtil;
import ca.uhn.fhir.model.api.annotation.DatatypeDef;

/**
 * This class is a subclass of {@link HumanName}. Therefore it expresses name of
 * a human. </br>
 *
 * It contains functionalities for converting CDA R2 {@link PN}, CDA R2
 * {@link EN} and CDA R2 {@link ON} into HL7 FHIR {@link HumanName} and vice
 * versa.
 *
 * @author Anna Jungwirth
 *
 */
@DatatypeDef(name = "HumanName")
public class FhirHumanName extends HumanName {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public FhirHumanName() {

	}

	/**
	 * create HL7 FHIR human name from CDA R2 name {@link PN}.
	 *
	 * @param pn name of CDA R2
	 */
	public FhirHumanName(PN pn) {
		fromPN(pn);
	}

	/**
	 * create HL7 FHIR human name from CDA R2 name {@link ON}.
	 *
	 * @param on name of CDA R2
	 */
	public FhirHumanName(ON on) {
		fromEN(on);
	}

	/**
	 * create HL7 FHIR human name from CDA R2 name {@link PN}.
	 *
	 * @param pn name of CDA R2
	 */
	private void fromPN(PN pn) {
		fromEN(pn);
	}

	/**
	 * create HL7 FHIR human name from passed CDA R2 name {@link EN}.
	 *
	 * @param hl7CdaR2Value name of CDA R2
	 */
	private void fromEN(org.ehealth_connector.common.hl7cdar2.EN hl7CdaR2Value) {

		if (hl7CdaR2Value != null) {
			if (!hl7CdaR2Value.getUse().isEmpty()) {
				setUse(getNameUse(EntityNameUse.getEnum(hl7CdaR2Value.getUse().get(0))));
			}

			if (!hl7CdaR2Value.getContent().isEmpty()) {
				for (Serializable element : hl7CdaR2Value.getContent()) {
					if (element instanceof JAXBElement) {
						JAXBElement<?> elem = (JAXBElement<?>) element;
						if (elem.getValue() instanceof EnFamily) {
							EnFamily obj = (EnFamily) elem.getValue();
							setFamily(obj.xmlContent);
						} else if (elem.getValue() instanceof EnGiven) {
							EnGiven obj = (EnGiven) elem.getValue();
							addGiven(obj.xmlContent);
						} else if (elem.getValue() instanceof EnPrefix) {
							EnPrefix obj = (EnPrefix) elem.getValue();
							addPrefix(obj.xmlContent);
						} else if (elem.getValue() instanceof EnSuffix) {
							EnSuffix obj = (EnSuffix) elem.getValue();
							addSuffix(obj.xmlContent);
						} else {
							throw new NotImplementedException(elem.getValue().getClass().getName());
						}
					}
				}
			} else {
				setText(hl7CdaR2Value.xmlContent);
			}
		}
	}

	/**
	 * Allocates HL7 FHIR {@link NameUse} for passed name use. </br>
	 *
	 * <table border="1">
	 * <tr>
	 * <td><b>CDA R2</b></td>
	 * <td><b>HL7 FHIR</b></td>
	 * </tr>
	 * <tr>
	 * <td>L</td>
	 * <td>official</td>
	 * </tr>
	 * <tr>
	 * <td>P</td>
	 * <td>anonymous</td>
	 * </tr>
	 * </table>
	 *
	 * @param entityNameUse usage of name
	 *
	 * @return allocated value or {@link NameUse.<code>USUAL</code>} if no value can
	 *         be allocated
	 */
	private NameUse getNameUse(EntityNameUse entityNameUse) {
		if (entityNameUse == null) {
			return null;
		}

		switch (entityNameUse) {
		case LEGAL:
			return NameUse.OFFICIAL;
		case PSEUDONYM:
			return NameUse.ANONYMOUS;
		default:
			return NameUse.USUAL;
		}
	}

	/**
	 * Allocates passed name use for HL7 FHIR {@link NameUse}. </br>
	 * 
	 * <table border="1">
	 * <tr>
	 * <td><b>CDA R2</b></td>
	 * <td><b>HL7 FHIR</b></td>
	 * </tr>
	 * <tr>
	 * <td>L</td>
	 * <td>official</td>
	 * </tr>
	 * <tr>
	 * <td>P</td>
	 * <td>anonymous</td>
	 * </tr>
	 * </table>
	 *
	 * @param use the use
	 * @return allocated value or null if no value can be allocated
	 */
	private static EntityNameUse getNameUse(NameUse use) {
		if (use != null) {
			switch (use) {
			case OFFICIAL:
				return EntityNameUse.LEGAL;
			case ANONYMOUS:
				return EntityNameUse.PSEUDONYM;
			default:
				return null;
			}
		}

		return null;
	}

	/**
	 * create CDA R2 {@link EN} from HL7 FHIR {@link HumanName}.
	 *
	 * @param name FHIR human name
	 * @param nf   null flavor, which should be used if name is null
	 * @return created CDA R2 name
	 */
	public static org.ehealth_connector.common.hl7cdar2.EN createHl7CdaR2En(HumanName name, NullFlavor nf) {
		org.ehealth_connector.common.hl7cdar2.EN retVal = new org.ehealth_connector.common.hl7cdar2.EN();
		String value;

		if (name == null) {
			if (retVal.nullFlavor == null) {
				retVal.nullFlavor = new ArrayList<String>();
			}

			if (nf != null) {
				retVal.nullFlavor.add(nf.getCodeValue());
			}

			return retVal;
		}

		value = name.getFamily();
		if (value != null) {
			EnFamily obj = new EnFamily();
			obj.xmlContent = value;
			retVal.getContent()
					.add(new JAXBElement<EnFamily>(new QName(CdaUtil.NAMESPACE_HL7_V3, "family"), EnFamily.class, obj));
		}

		if (name.hasGiven()) {
			for (StringType given : name.getGiven()) {
				if (given != null) {
					EnGiven obj = new EnGiven();
					obj.xmlContent = given.getValue();
					retVal.getContent()
							.add(new JAXBElement<EnGiven>(new QName(CdaUtil.NAMESPACE_HL7_V3, "given"), EnGiven.class, obj));
				}
			}
		}

		if (name.hasPrefix()) {
			for (StringType prefix : name.getPrefix()) {
				if (prefix != null) {
					EnPrefix obj = new EnPrefix();
					obj.xmlContent = prefix.getValue();
					retVal.getContent()
							.add(new JAXBElement<EnPrefix>(new QName(CdaUtil.NAMESPACE_HL7_V3, "prefix"), EnPrefix.class, obj));
				}
			}
		}

		if (name.hasSuffix()) {
			for (StringType suffix : name.getSuffix()) {
				if (suffix != null) {
					EnSuffix obj = new EnSuffix();
					obj.xmlContent = suffix.getValue();
					retVal.getContent()
							.add(new JAXBElement<EnSuffix>(new QName(CdaUtil.NAMESPACE_HL7_V3, "suffix"), EnSuffix.class, obj));
				}
			}
		}

		value = name.getText();
		if (value != null && retVal.getContent().isEmpty()) {
			retVal.xmlContent = value;
		}

		return retVal;
	}

	/**
	 * Creates HL7 CDA R2 {@link ON} from HL7 FHIR {@link HumanName} of organization.
	 *
	 * @param name of organization
	 *
	 * @return HL7 CDA R2 {@link ON} value
	 */
	public static org.ehealth_connector.common.hl7cdar2.ON createHl7CdaR2On(String name) {
		org.ehealth_connector.common.hl7cdar2.ON retVal = new org.ehealth_connector.common.hl7cdar2.ON();

		if (name != null && retVal.getContent().isEmpty()) {
			retVal.xmlContent = name;
		}

		return retVal;
	}

	/**
	 * Creates HL7 CDA R2 {@link PN} data type from FHIR human name {@link HumanName}.
	 *
	 * @param name FHIR name
	 * @param nf the nf
	 * @return HL7 CDA R2  {@link PN} value
	 */
	public static org.ehealth_connector.common.hl7cdar2.PN createHl7CdaR2Pn(HumanName name, NullFlavor nf) {
		org.ehealth_connector.common.hl7cdar2.PN retVal = new org.ehealth_connector.common.hl7cdar2.PN();
		String value;

		if (name == null) {
			if (retVal.nullFlavor == null) {
				retVal.nullFlavor = new ArrayList<String>();
			}

			if (nf != null) {
				retVal.nullFlavor.add(nf.getCodeValue());
			}

			return retVal;
		}

		value = name.getFamily();
		if (value != null) {
			EnFamily obj = new EnFamily();
			obj.xmlContent = value;
			retVal.getContent()
					.add(new JAXBElement<EnFamily>(new QName(CdaUtil.NAMESPACE_HL7_V3, "family"), EnFamily.class, obj));
		}

		if (name.hasGiven()) {
			for (StringType given : name.getGiven()) {
				if (given != null) {
					EnGiven obj = new EnGiven();
					obj.xmlContent = given.getValue();
					retVal.getContent()
							.add(new JAXBElement<EnGiven>(new QName(CdaUtil.NAMESPACE_HL7_V3, "given"), EnGiven.class, obj));
				}
			}
		}

		if (name.hasPrefix()) {
			for (StringType prefix : name.getPrefix()) {
				if (prefix != null) {
					EnPrefix obj = new EnPrefix();
					obj.xmlContent = prefix.getValue();
					obj.getQualifier().add("AC");
					retVal.getContent()
							.add(new JAXBElement<EnPrefix>(new QName(CdaUtil.NAMESPACE_HL7_V3, "prefix"), EnPrefix.class, obj));
				}
			}
		}

		if (name.hasSuffix()) {
			for (StringType suffix : name.getSuffix()) {
				if (suffix != null) {
					EnSuffix obj = new EnSuffix();
					obj.xmlContent = suffix.getValue();
					retVal.getContent()
							.add(new JAXBElement<EnSuffix>(new QName(CdaUtil.NAMESPACE_HL7_V3, "suffix"), EnSuffix.class, obj));
				}
			}
		}

		value = name.getText();
		if (value != null && retVal.getContent().isEmpty()) {
			retVal.xmlContent = value;
		}

		EntityNameUse usage = getNameUse(name.getUse());
		if (usage != null) {
			retVal.getUse().clear();
			retVal.getUse().add(usage.getCode().getCode());
		}

		return retVal;

	}

}
