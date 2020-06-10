package arztis.econnector.ihe.utilities;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.common.base.Strings;

import arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotType1;

public class MetadataConverter {
	private static final Logger LOGGER = LoggerFactory.getLogger(MetadataConverter.class.getName());
	private static final String DATE_TIME_PATTERN = "yyyyMMddHHmmss";
	private static final String DATE_PATTERN = "yyyyMMdd";

	private MetadataConverter() {
		throw new IllegalStateException("utility class");
	}
	
	public static Date convertDateTime(SlotType1 slot) {
		SimpleDateFormat dateTimeFormat = new SimpleDateFormat(MetadataConverter.DATE_TIME_PATTERN);
		SimpleDateFormat dateFormat = new SimpleDateFormat(MetadataConverter.DATE_PATTERN);
		String time = getStringFromSlot(slot);

		if (time != null) {
			try {
				if (time.length() == 14) {
					dateTimeFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
					return dateTimeFormat.parse(time);
				} else if (time.length() == 8) {
					return dateFormat.parse(time);
				}
			} catch (ParseException e) {
				LOGGER.error(e.getMessage());
			}
		}

		return null;
	}
	
	public static String getStringFromSlot(SlotType1 slot) {
		if (slot != null && slot.getValueList() != null && slot.getValueList().sizeOfValueArray() >= 1) {
			return slot.getValueList().getValueArray(0);
		}

		return null;
	}

	public static List<String> getListOfStringsFromSlot(SlotType1 slot) {
		if (slot != null && slot.getValueList() != null && slot.getValueList().getValueArray() != null) {
			return Arrays.asList(slot.getValueList().getValueArray());
		}
		return new ArrayList<>();
	}
	
	public static Date extractHl7v2Pid7(String value) {
		SimpleDateFormat dateTimeFormat = new SimpleDateFormat(DATE_TIME_PATTERN);
		SimpleDateFormat dateFormat = new SimpleDateFormat(DATE_PATTERN);

		try {
			if (!Strings.isNullOrEmpty(value)) {
				if (value.length() == 14) {
					return dateTimeFormat.parse(value);
				} else if (value.length() == 8) {
					return dateFormat.parse(value);
				}
			}
		} catch (DateTimeParseException | ParseException ex) {
			LOGGER.error(ex.getMessage());
		}
		
		return null;
	}

}
