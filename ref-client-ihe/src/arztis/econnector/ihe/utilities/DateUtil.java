package arztis.econnector.ihe.utilities;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.Date;

import org.husky.common.hl7cdar2.TS;
import org.slf4j.LoggerFactory;

/**
 * @author anna
 *
 */
public class DateUtil {

	/** The Constant LOGGER. */
	private static final org.slf4j.Logger LOGGER = LoggerFactory.getLogger(DateUtil.class);

	public static Date parseZonedDateTime(ZonedDateTime timestamp) {
		return Date.from(timestamp.toInstant());
	}

	public static ZonedDateTime parseDate(Date timestamp) {
		return ZonedDateTime.ofInstant(timestamp.toInstant(), ZoneId.systemDefault());
	}

	public static String formatDateOnly(Date timestamp) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		return sdf.format(timestamp);
	}

	/**
	 * <div class="en">Parses the given String into a timestamp. Expected format:
	 * dd.MM.yyyy HH:mm or dd.MM.yyyy HH:mm:ss</div>
	 *
	 * <div class="de">Parst den angegebenen String in einen Zeitstempel. Erwartetes
	 * Format: dd.MM.yyyy HH:mm oder dd.MM.yyyy HH:mm:ss</div>
	 *
	 * @param dateSt <br>
	 *               <div class="de"> date String</div>
	 * @return the date
	 */
	public static Date parseDateAndTime(String dateSt) {
		try {
			SimpleDateFormat sdf;
			if (dateSt.length() > 16)
				sdf = new SimpleDateFormat("dd.MM.yyyy HH:mm:ss");
			else
				sdf = new SimpleDateFormat("dd.MM.yyyy HH:mm");

			return sdf.parse(dateSt);
		} catch (final ParseException e) {
			// convert to RuntimeException
			throw new IllegalArgumentException(e);
		}
	}

	/**
	 * <div class="en">Parses the given String into a timestamp. Expected format:
	 * yyyy</div>
	 *
	 * <div class="de">Parst den angegebenen String in einen Zeitstempel. Erwartetes
	 * Format: yyyy</div>
	 *
	 * @param value <br>
	 *              <div class="de">value</div>
	 * @return java.util.Date
	 */
	public static Date parseDateyyyy(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
			return sdf.parse(value);
		} catch (final ParseException e) {
			throw new IllegalArgumentException("Cannot parse date, value=[" + value + "]. Expected format is yyyy.", e);
		}
	}

	/**
	 * <div class="en">Parses the given String into a timestamp. Expected format:
	 * yyyyMM</div>
	 *
	 * <div class="de">Parst den angegebenen String in einen Zeitstempel. Erwartetes
	 * Format: yyyyMM</div>
	 *
	 * @param value <br>
	 *              <div class="de">value</div>
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMM(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM");
			return sdf.parse(value);
		} catch (final ParseException e) {
			throw new IllegalArgumentException("Cannot parse date, value=[" + value + "]. Expected format is yyyyMM.",
					e);
		}
	}

	/**
	 * <div class="en">Parses the given String into a timestamp. Expected format:
	 * yyyyMMdd</div>
	 *
	 * <div class="de">Parst den angegebenen String in einen Zeitstempel. Erwartetes
	 * Format: yyyyMMdd</div>
	 *
	 * @param value <br>
	 *              <div class="de">value</div>
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMdd(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			return sdf.parse(value);
		} catch (final ParseException e) {
			throw new IllegalArgumentException("Cannot parse date, value=[" + value + "]. Expected format is yyyyMMdd.",
					e);
		}
	}

	/**
	 * <div class="en">Parses the given String into a timestamp. Expected format:
	 * yyyy-MM-dd</div>
	 *
	 * <div class="de">Parst den angegebenen String in einen Zeitstempel. Erwartetes
	 * Format: yyyy-MM-dd</div>
	 *
	 * @param value <br>
	 *              <div class="de">value</div>
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMdd2(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			return sdf.parse(value);
		} catch (final ParseException e) {
			throw new IllegalArgumentException(
					"Cannot parse date, value=[" + value + "]. Expected format is yyyy-MM-dd.", e);
		}
	}

	/**
	 * <div class="en">Parses the given String into a timestamp. Expected format:
	 * yyyyMMddHH</div>
	 *
	 * <div class="de">Parst den angegebenen String in einen Zeitstempel. Erwartetes
	 * Format: yyyyMMddHH</div>
	 *
	 * @param value <br>
	 *              <div class="de"> value</div>
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMddHH(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHH");
			return sdf.parse(value);
		} catch (final ParseException e) {
			throw new IllegalArgumentException(
					"Cannot parse date, value=[" + value + "]. Expected format is yyyyMMddHH.", e);
		}
	}

	/**
	 * <div class="en">Parses the given String into a timestamp. Expected format:
	 * yyyyMMddHHmm</div>
	 *
	 * <div class="de">Parst den angegebenen String in einen Zeitstempel. Erwartetes
	 * Format: yyyyMMddHHmm</div>
	 *
	 * @param value <br>
	 *              <div class="de"> value</div>
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMddHHmm(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmm");
			return sdf.parse(value);
		} catch (final ParseException e) {
			throw new IllegalArgumentException(
					"Cannot parse date, value=[" + value + "]. Expected format is yyyyMMddHHmm.", e);
		}
	}

	/**
	 * <div class="en">Parses the given String into a timestamp. Expected format:
	 * yyyyMMddHHmmss</div>
	 *
	 * <div class="de">Parst den angegebenen String in einen Zeitstempel. Erwartetes
	 * Format: yyyyMMddHHmmss</div>
	 *
	 * @param value <br>
	 *              <div class="de"> value</div>
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMddHHmmss(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			return sdf.parse(value);
		} catch (final ParseException e) {
			throw new IllegalArgumentException(
					"Cannot parse date, value=[" + value + "]. Expected format is yyyyMMddHHmmss.", e);
		}
	}

	/**
	 * <div class="en">Parses the given String into a timestamp. Expected format:
	 * yyyyMMddHHmmssSSSZZZZ</div>
	 *
	 * <div class="de">Parst den angegebenen String in einen Zeitstempel. Erwartetes
	 * Format: yyyyMMddHHmmssSSSZZZZ</div>
	 *
	 * @param value <br>
	 *              <div class="de"> value</div>
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMddHHmmssSSSZZZZ(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSSZZZZ");
			return sdf.parse(value);
		} catch (final ParseException e) {
			throw new IllegalArgumentException(
					"Cannot parse date, value=[" + value + "]. Expected format is yyyyMMddHHmmssSSSZZZZ.", e);
		}
	}

	/**
	 * <div class="en">Parses the given String into a timestamp. Expected format:
	 * yyyyMMddHHmmssZZZZ</div>
	 *
	 * <div class="de">Parst den angegebenen String in einen Zeitstempel. Erwartetes
	 * Format: yyyyMMddHHmmssZZZZ</div>
	 *
	 * @param value <br>
	 *              <div class="de"> value</div>
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMddHHmmssZZZZ(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssZZZZ");
			return sdf.parse(value);
		} catch (final ParseException e) {
			throw new IllegalArgumentException(
					"Cannot parse date, value=[" + value + "]. Expected format is yyyyMMddHHmmssZZZZ.", e);
		}
	}

	/**
	 * <div class="en">Parses the given String into a timestamp. Expected format:
	 * yyyyMMddHHmmZ</div>
	 *
	 * <div class="de">Parst den angegebenen String in einen Zeitstempel. Erwartetes
	 * Format: yyyyMMddHHmmZ</div>
	 *
	 * @param value <br>
	 *              <div class="de"> value</div>
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMddHHmmZ(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmZ");
			return sdf.parse(value);
		} catch (final ParseException e) {
			throw new IllegalArgumentException("Cannot parse date, value=[" + value + "]. Expected format is yyyyMMdd.",
					e);
		}
	}

	/**
	 * <div class="en">Parses the given String into a timestamp. Expected format:
	 * yyyyMMddHHmmZZZZ</div>
	 *
	 * <div class="de">Parst den angegebenen String in einen Zeitstempel. Erwartetes
	 * Format: yyyyMMddHHmmZZZZ</div>
	 *
	 * @param value <br>
	 *              <div class="de"> value</div>
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMddHHmmZZZZ(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmZZZZ");
			return sdf.parse(value);
		} catch (final ParseException e) {
			throw new IllegalArgumentException(
					"Cannot parse date, value=[" + value + "]. Expected format is yyyyMMddHHmmZZZZ.", e);
		}
	}

	/**
	 * <div class="en">Parses the given String into a timestamp. Expected format:
	 * yyyyMMddHHZZZZ</div>
	 *
	 * <div class="de">Parst den angegebenen String in einen Zeitstempel. Erwartetes
	 * Format: yyyyMMddHHZZZZ</div>
	 *
	 * @param value <br>
	 *              <div class="de"> value</div>
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMddHHZZZZ(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHZZZZ");
			return sdf.parse(value);
		} catch (final ParseException e) {
			throw new IllegalArgumentException(
					"Cannot parse date, value=[" + value + "]. Expected format is yyyyMMddHHZZZZ.", e);
		}
	}

	/**
	 * <div class="en">Parses the given String into a timestamp. Expected format:
	 * yyyy-MM-dd'T'HH:mm:ss</div>
	 *
	 * <div class="de">Parst den angegebenen String in einen Zeitstempel. Erwartetes
	 * Format: yyyy-MM-dd'T'HH:mm:ss</div>
	 *
	 * @param value <br>
	 *              <div class="de"> value</div>
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMddTHHmmss(String value) {
		try {
			// 2017-04-15T17:10:29
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
			return sdf.parse(value);
		} catch (final ParseException e) {
			throw new IllegalArgumentException(
					"Cannot parse date, value=[" + value + "]. Expected format is yyyy-MM-ddTHH:mm:ss.", e);
		}
	}

	/**
	 * <div class="en">Parses the given String into a timestamp. Expected format:
	 * yyyy[MM[dd[HH[mm[ss[ZZZZ]]]]]]</div>
	 *
	 * <div class="de">Parst den angegebenen String in einen Zeitstempel. Erwartetes
	 * Format: yyyy[MM[dd[HH[mm[ss[ZZZZ]]]]]]</div>
	 *
	 * @param value the value
	 * @return the date
	 */
	public static Date parseHl7Timestamp(String value) {
		Date retVal = null;
		if (value != null) {
			if (value.contains("+")) {
				if (value.length() == 19)
					retVal = parseDateyyyyMMddHHmmssZZZZ(value);
				else if (value.length() == 17)
					retVal = parseDateyyyyMMddHHmmZZZZ(value);
				else if (value.length() == 15)
					retVal = parseDateyyyyMMddHHZZZZ(value);
			} else {
				if (value.length() == 14)
					retVal = parseDateyyyyMMddHHmmss(value);
				else if (value.length() == 12)
					retVal = parseDateyyyyMMddHHmm(value);
				else if (value.length() == 10)
					retVal = parseDateyyyyMMddHH(value);
				else if (value.length() == 8)
					retVal = parseDateyyyyMMdd(value);
				else if (value.length() == 6)
					retVal = parseDateyyyyMM(value);
				else if (value.length() == 4)
					retVal = parseDateyyyy(value);
			}
		}
		return retVal;
	}

	/**
	 * <div class="en">Parses the given HL7 CDA R2 TS into a timestamp</div>
	 *
	 * <div class="de">Parst den angegebenen HL7 CDA R2 TS in einen
	 * Zeitstempel./div>
	 *
	 * @param value the value
	 * @return the date
	 */
	public static Date parseHl7Timestamp(TS value) {
		return parseHl7Timestamp(value.getValue());
	}

	/**
	 * <div class="en">Formats the given timestamp as String: yyyyMMddHHmmss</div>
	 *
	 * <div class="de">Formatiert den angegebenen Zeitstempel als String:
	 * yyyyMMddHHmmss</div>
	 *
	 * @param value the value
	 * @return the string
	 */
	public static String formatDateTime(Date value) {
		final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		return sdf.format(value);
	}

}
