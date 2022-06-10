/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.ihe.utilities;

import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.Date;

import javax.xml.XMLConstants;
import javax.xml.bind.JAXBElement;
import javax.xml.namespace.QName;

import org.husky.cda.elga.generated.artdecor.emed.Einnahmedauer;
import org.husky.common.enums.NullFlavor;
import org.husky.common.hl7cdar2.ED;
import org.husky.common.hl7cdar2.IVLTS;
import org.husky.common.hl7cdar2.POCDMT000040Component3;
import org.husky.common.hl7cdar2.POCDMT000040Section;
import org.husky.common.hl7cdar2.SC;
import org.husky.common.hl7cdar2.ST;
import org.husky.common.hl7cdar2.SXCMTS;
import org.husky.common.hl7cdar2.TEL;
import org.husky.common.hl7cdar2.TS;
import org.husky.common.utils.DateUtil;
import org.openehealth.ipf.commons.ihe.core.HL7DTM;

import ca.uhn.hl7v2.model.DataTypeException;

/**
 * This class contains utility functionalities to generate CDA documents.
 *
 *@author Anna Jungwirth
 *
 */
public class CdaUtil {

	/**
	 * Default constructor.
	 */
	private CdaUtil() {
		throw new IllegalStateException("Utility class");
	}

	/** HL7v3 namespace. */
	public static final String NAMESPACE_HL7_V3 = "urn:hl7-org:v3";

	/** determiner code value instance. */
	public static final String DETERMINERCODE_INSTANCE = "INSTANCE";

	/**
	 * creates CDA R2 element {@link TS} from passed {@link Date}. TS is a simple
	 * time element. If null is passed as {@link Date} the null flavor "UNK" is
	 * added. This method formats passed date with time and time zone. </br>
	 * In XML it looks as follows:
	 *
	 * <pre>
	 * {@code
	 *  <effectiveTime value="20200421110000+0100"/>
	 * }
	 * </pre>
	 *
	 * @param date value to set
	 *
	 * @return created {@link TS} element
	 */
	public static TS createEffectiveTimePoint(Date date) {
		TS time = new TS();
		if (date == null) {
			time.getNullFlavor().add(NullFlavor.UNKNOWN_CODE);
		} else {
			time.setValue(DateUtil.formatDateTimeTzon(date));
		}

		return time;
	}

	/**
	 * creates CDA R2 element {@link IVLTS} from passed {@link Date}. IVLTS is an
	 * element for time intervals. If null is passed as {@link Date} the null flavor
	 * "UNK" is added. In XML it looks as follows:
	 *
	 * <pre>
	 * {@code
	 *  <effectiveTime value="20200421110000+0100"/>
	 * }
	 * </pre>
	 *
	 * @param date value to set
	 *
	 * @return created {@link TS} element
	 */
	public static IVLTS createEffectiveTimePointIVLTS(Date date) {
		IVLTS time = new IVLTS();
		if (date == null) {
			time.getNullFlavor().add(NullFlavor.UNKNOWN_CODE);
		} else {
			time.setValue(DateUtil.formatDateTimeTzon(date));
		}

		return time;
	}

	/**
	 * creates CDA R2 element {@link TS} from passed {@link Date}. TS is a simple
	 * date element. If null is passed as {@link Date} the null flavor "UNK" is
	 * added. This method formats passed only date. </br>
	 * In XML it looks as follows:
	 *
	 * <pre>
	 * {@code
	 *  <effectiveTime value="20200421"/>
	 * }
	 * </pre>
	 *
	 * @param date value to set
	 *
	 * @return created {@link TS} element
	 */
	public static TS createEffectiveDate(Date date) {
		TS time = new TS();
		if (date == null) {
			time.getNullFlavor().add(NullFlavor.UNKNOWN_CODE);
		} else {
			time.setValue(DateUtil.formatDateOnly(date));
		}

		return time;
	}

	/**
	 * extracts {@link ZonedDateTime} from CDA R2 {@link TS} element. TS is a simple
	 * date element. This method parse HL7 time stamps to {@link ZonedDateTime}
	 * </br>
	 * XML to extract looks as follows:
	 *
	 * <pre>
	 * {@code
	 *  <effectiveTime value="20200421"/>
	 * }
	 * </pre>
	 *
	 * @param ts element to extract
	 *
	 * @return created {@link ZonedDateTime}
	 * @throws DataTypeException
	 */
	public static ZonedDateTime fromTS(TS ts) throws DataTypeException {
		ZonedDateTime date = null;
		if (ts != null) {
			date = HL7DTM.toZonedDateTime(ts.getValue());
		}

		return date;
	}

	/**
	 * extracts {@link ZonedDateTime} from CDA R2 {@link SXCMTS} element. SXCMTS is
	 * a date element. This method parse HL7 time stamps to {@link ZonedDateTime}
	 * </br>
	 * XML to extract looks as follows:
	 *
	 * <pre>
	 * {@code
	 *  <hl7:effectiveTime value="20190817121500+0200"/>
	 * }
	 * </pre>
	 *
	 * @param sxcmts element to extract
	 *
	 * @return created {@link ZonedDateTime}
	 * @throws DataTypeException
	 */
	public static ZonedDateTime fromSXCMTS(SXCMTS sxcmts) throws DataTypeException {
		ZonedDateTime date = null;
		if (sxcmts != null) {
			date = HL7DTM.toZonedDateTime(sxcmts.getValue());
		}

		return date;
	}

	/**
	 * creates CDA R2 element {@link SXCMTS} from passed {@link ZonedDateTime}.
	 * SXCMTS is a time element. If null is passed as {@link ZonedDateTime} the null
	 * flavor "UNK" is added. This method formats passed date with time and time
	 * zone. </br>
	 * In XML it looks as follows:
	 *
	 * <pre>
	 * {@code
	 *  <effectiveTime value="20200421110000+0100"/>
	 * }
	 * </pre>
	 *
	 * @param date value to set
	 *
	 * @return created {@link SXCMTS} element
	 */
	public static SXCMTS createEffectiveTimePointSXCMTS(ZonedDateTime date) {
		SXCMTS time = new SXCMTS();
		if (date == null) {
			time.getNullFlavor().add(NullFlavor.UNKNOWN_CODE);
		} else {
			time.setValue(HL7DTM.toSimpleString(date));
		}

		return time;
	}

	/**
	 * creates CDA R2 element {@link SXCMTS} from passed {@link Date}. SXCMTS is
	 * date element. If null is passed as {@link Date} the null flavor "UNK" is
	 * added. This method formats passed only date. </br>
	 * In XML it looks as follows:
	 *
	 * <pre>
	 * {@code
	 *  <effectiveTime value="20200421"/>
	 * }
	 * </pre>
	 *
	 * @param date value to set
	 *
	 * @return created {@link SXCMTS} element
	 */
	public static SXCMTS createEffectiveTimeSXCMTS(Date date, boolean withTime) {
		SXCMTS time = new SXCMTS();
		if (date == null) {
			time.getNullFlavor().add(NullFlavor.UNKNOWN_CODE);
		} else if(withTime) {
			time.setValue(DateUtil.formatDateTimeTzon(date));			
		} else {
			time.setValue(DateUtil.formatDateOnly(date));
		}

		return time;
	}

	/**
	 * creates CDA R2 element {@link Einnahmedauer} from passed {@link Date}.
	 * Einnahmedauer is a subclass of IVLTS, therefore it is an element for time
	 * intervals. If null is passed the null flavor "UNK" is added for low or high
	 * element. </br>
	 *
	 * In XML it looks as follows:
	 *
	 * <pre>
	 * {@code
	 *
	 * 	<effectiveTime>
	 *     <low value="20200420171400+0100"/>
	 *     <high value="20200421101500+0100"/>
	 *  </effectiveTime>
	 * }
	 * </pre>
	 *
	 * @param low  date value for low element. Value must be in format yyyyMMdd or
	 *             yyyyMMddHHmmssZ
	 * @param high date value for high element. Value must be in format yyyyMMdd or
	 *             yyyyMMddHHmmssZ
	 *
	 * @return created {@link Einnahmedauer} element
	 */
	public static Einnahmedauer createIntervalEffectiveTime(String low, String high) {
		Einnahmedauer takeInDuration = new Einnahmedauer();
		takeInDuration.getRest()
				.add(createTsElement(new QName(NAMESPACE_HL7_V3, "low", XMLConstants.DEFAULT_NS_PREFIX), low));
		takeInDuration.getRest()
				.add(createTsElement(new QName(NAMESPACE_HL7_V3, "high", XMLConstants.DEFAULT_NS_PREFIX), high));

		return takeInDuration;
	}

	/**
	 * creates {@link JAXBElement} with included {@link TS} element. If null is
	 * passed as value, null flavor UNK is added to the created element.
	 *
	 * In XML it looks as follows:
	 *
	 * <pre>
	 * {@code
	 *     <low value="20200420171400+0100"/>
	 * }
	 * </pre>
	 *
	 * @param tagName name of element e.g. low or high
	 * @param value   element value
	 *
	 * @return created {@link JAXBElement}
	 */
	public static JAXBElement<TS> createTsElement(QName tagName, String value) {
		TS ts = new TS();
		if (value == null) {
			ts.nullFlavor = new ArrayList<>();
			ts.nullFlavor.add("UNK");
		} else {
			ts.setValue(value);
		}
		return new JAXBElement<>(tagName, TS.class, ts);
	}

	/**
	 * creates CDA R2 element {@link SC} from passed value. SC is a element for text
	 * values. </br>
	 * In XML it looks as follows:
	 *
	 * <pre>
	 * {@code
	 *  <manufacturerModelName>Good Health System</manufacturerModelName>
	 * }
	 * </pre>
	 *
	 * @param value the value
	 * @return created {@link SC} element
	 */
	public static SC createSC(String value) {
		SC sc = new SC();
		sc.setXmlMixed(value);
		return sc;
	}

	/**
	 * creates CDA R2 element {@link ST} from passed value. ST is a element for text
	 * values. It is used for titles, for example. </br>
	 * In XML it looks as follows:
	 *
	 * <pre>
	 * {@code
	 *  <title>ELGA Laborbefund</title>
	 * }
	 * </pre>
	 *
	 * @param text content to add
	 *
	 * @return created {@link ST} element
	 */
	public static ST createTitle(String text) {
		return createTitleNullFlavor(text, null);
	}

	/**
	 * creates CDA R2 element {@link ST} from passed value. ST is a element for text
	 * values. This method adds passed null flavor if passed text is null. It is
	 * used for titles, for example. </br>
	 * In XML it looks as follows:
	 *
	 * <pre>
	 * {@code
	 *  <title nullFlavor="NI"/>
	 * }
	 * </pre>
	 *
	 * @param text       content to add
	 * @param nullFlavor null flavor to add if text is null
	 *
	 * @return created {@link ST} element
	 */
	public static ST createTitleNullFlavor(String text, String nullFlavor) {
		ST title = new ST();
		if (text != null) {
			title.setXmlMixed(text);
		} else {
			title.getNullFlavor().add(nullFlavor);
		}

		return title;
	}

	/**
	 * creates CDA R2 element {@link ED} from passed value. ED is an element for
	 * encapsulated data like multimedia objects. It is used for references to human
	 * readable parts, for example. </br>
	 * In XML it looks as follows:
	 *
	 * <pre>
	 * {@code
	 *  <reference value="#SpecimenComment01"/>
	 * }
	 * </pre>
	 *
	 * @param reference value to add
	 *
	 * @return created {@link ED} element
	 */
	public static ED createReference(String reference) {
		ED ed = new ED();
		TEL ref = new TEL();
		ref.setValue(reference);
		ed.setReference(ref);
		return ed;
	}

	/**
	 * creates CDA R2 element {@link POCDMT000040Component3} with passed value. This
	 * method adds passed {@link POCDMT000040Section} to created component </br>
	 *
	 * @param section to include
	 *
	 * @return created {@link POCDMT000040Component3} element
	 */
	public static POCDMT000040Component3 createComp3WithCompleteSection(POCDMT000040Section section) {
		POCDMT000040Component3 comp3 = new POCDMT000040Component3();
		comp3.setSection(section);
		return comp3;
	}

}
