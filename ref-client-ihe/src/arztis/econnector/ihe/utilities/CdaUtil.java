package arztis.econnector.ihe.utilities;

import java.util.ArrayList;
import java.util.Date;

import javax.xml.XMLConstants;
import javax.xml.bind.JAXBElement;
import javax.xml.namespace.QName;

import org.ehealth_connector.cda.at.elga.v2019.Einnahmedauer;
import org.ehealth_connector.common.enums.NullFlavor;
import org.ehealth_connector.common.hl7cdar2.ED;
import org.ehealth_connector.common.hl7cdar2.IVLTS;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Component3;
import org.ehealth_connector.common.hl7cdar2.POCDMT000040Section;
import org.ehealth_connector.common.hl7cdar2.SC;
import org.ehealth_connector.common.hl7cdar2.ST;
import org.ehealth_connector.common.hl7cdar2.SXCMTS;
import org.ehealth_connector.common.hl7cdar2.TEL;
import org.ehealth_connector.common.hl7cdar2.TS;
import org.ehealth_connector.common.utils.DateUtil;

public class CdaUtil {
	
	private CdaUtil() {
		throw new IllegalStateException("Utility class");
	}

	// constants for CDA
	public static final String NAMESPACE_HL7_V3 = "urn:hl7-org:v3";
	public static final String DETERMINERCODE_INSTANCE = "INSTANCE";

	public static TS createEffectiveTimePoint(Date date) {
		TS time = new TS();
		if (date == null) {
			time.getNullFlavor().add(NullFlavor.UNKNOWN_CODE);
		} else {
			time.setValue(DateUtil.formatDateTimeTzon(date));
		}

		return time;
	}

	public static IVLTS createEffectiveTimePointIVLTS(Date date) {
		IVLTS time = new IVLTS();
		if (date == null) {
			time.getNullFlavor().add(NullFlavor.UNKNOWN_CODE);
		} else {
			time.setValue(DateUtil.formatDateTimeTzon(date));
		}

		return time;
	}

	public static TS createEffectiveDate(Date date) {
		TS time = new TS();
		if (date == null) {
			time.getNullFlavor().add(NullFlavor.UNKNOWN_CODE);
		} else {
			time.setValue(DateUtil.formatDateOnly(date));
		}

		return time;
	}

	public static Date fromTS(TS ts) {
		Date date = null;
		if (ts != null) {
			date = DateUtil.parseHl7Timestamp(ts.getValue());
		}

		return date;
	}

	public static Date fromSXCMTS(SXCMTS sxcmts) {
		Date date = null;
		if (sxcmts != null) {
			date = DateUtil.parseHl7Timestamp(sxcmts.getValue());
		}

		return date;
	}

	public static SXCMTS createEffectiveTimePointSXCMTS(Date date) {
		SXCMTS time = new SXCMTS();
		if (date == null) {
			time.getNullFlavor().add(NullFlavor.UNKNOWN_CODE);
		} else {
			time.setValue(DateUtil.formatDateTimeTzon(date));
		}

		return time;
	}
	
	public static SXCMTS createEffectiveTimeSXCMTS(Date date) {
		SXCMTS time = new SXCMTS();
		if (date == null) {
			time.getNullFlavor().add(NullFlavor.UNKNOWN_CODE);
		} else {
			time.setValue(DateUtil.formatDateOnly(date));
		}

		return time;
	}

	public static Einnahmedauer createIntervalEffectiveTime(String low, String high) {
		Einnahmedauer takeInDuration = new Einnahmedauer();
		takeInDuration.getRest()
				.add(createTsElement(new QName(NAMESPACE_HL7_V3, "low", XMLConstants.DEFAULT_NS_PREFIX), low));
		takeInDuration.getRest()
				.add(createTsElement(new QName(NAMESPACE_HL7_V3, "high", XMLConstants.DEFAULT_NS_PREFIX), high));

		return takeInDuration;
	}

	public static IVLTS createLowElementIntervalEffectiveTime(String low) {
		IVLTS effectiveTime = new IVLTS();
		effectiveTime.getRest()
				.add(createTsElement(new QName(NAMESPACE_HL7_V3, "low", XMLConstants.DEFAULT_NS_PREFIX), low));
		return effectiveTime;
	}

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
	
	public static SC createSC(String value) {
		SC sc = new SC();
		sc.xmlContent = value;
		return sc;
	}

	public static ST createTitle(String text) {
		return createTitleNullFlavor(text, null);
	}

	public static ST createTitleNullFlavor(String text, String nullFlavor) {
		ST title = new ST();
		if (text != null) {
			title.xmlContent = text;
		} else {
			title.getNullFlavor().add(nullFlavor);
		}

		return title;
	}

	public static ED createReference(String reference) {
		ED ed = new ED();
		TEL ref = new TEL();
		ref.setValue(reference);
		ed.setReference(ref);
		return ed;
	}

	public static POCDMT000040Component3 createComp3WithCompleteSection(POCDMT000040Section section) {
		POCDMT000040Component3 comp3 = new POCDMT000040Component3();
		comp3.setSection(section);
		return comp3;
	}

}
