package arztis.econnector.ihe.utilities;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.Date;
import java.util.Locale;

import org.husky.common.hl7cdar2.TS;
import org.slf4j.LoggerFactory;

/**
 * 
 * This class contains utility functionalities to parse and format dates
 * 
 */
public class DateUtil {

	/** The Constant LOGGER. */
	private static final org.slf4j.Logger LOGGER = LoggerFactory.getLogger(DateUtil.class);

	/**
	 * Converts the given {@link ZonedDateTime} into a {@link Date}.
	 * 
	 * @param timestamp
	 * @return converted {@link Date}
	 */
	public static Date parseZonedDateTime(ZonedDateTime timestamp) {
		return Date.from(timestamp.toInstant());
	}

	/**
	 * Converts the given {@link Date} into a {@link ZonedDateTime}.
	 * 
	 * @param timestamp
	 * @return converted {@link ZonedDateTime}
	 */
	public static ZonedDateTime parseDate(Date timestamp) {
		return ZonedDateTime.ofInstant(timestamp.toInstant(), ZoneId.systemDefault());
	}

	/**
	 * Parses the given String into a timestamp. Expected format: dd.MM.yyyy HH:mm
	 * or dd.MM.yyyy HH:mm:ss
	 *
	 * @param dateSt date String
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
	 * Parses the given String into a timestamp. Expected format: yyyy
	 *
	 * @param value value
	 * @return java.util.Date
	 */
	public static Date parseDateyyyy(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
			return sdf.parse(value);
		} catch (final ParseException e) {
			LOGGER.error(e.getMessage(), e);
		}
		
		return null;
	}

	/**
	 * Parses the given String into a timestamp. Expected format: yyyyMM
	 *
	 * @param value value
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMM(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM");
			return sdf.parse(value);
		} catch (final ParseException e) {
			LOGGER.error(e.getMessage(), e);
		}
		
		return null;
	}

	/**
	 * Parses the given String into a timestamp. Expected format: yyyyMMdd
	 *
	 * @param value value
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMdd(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			return sdf.parse(value);
		} catch (final ParseException e) {
			LOGGER.error(e.getMessage(), e);
		}
		
		return null;
	}

	/**
	 * Parses the given String into a timestamp. Expected format: yyyy-MM-dd
	 *
	 * @param value value
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMdd2(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			return sdf.parse(value);
		} catch (final ParseException e) {
			LOGGER.error(e.getMessage(), e);
		}
		
		return null;
	}

	/**
	 * Parses the given String into a timestamp. Expected format: yyyyMMddHH
	 *
	 * @param value value
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMddHH(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHH");
			return sdf.parse(value);
		} catch (final ParseException e) {
			LOGGER.error(e.getMessage(), e);
		}
		
		return null;
	}

	/**
	 * Parses the given String into a timestamp. Expected format: yyyyMMddHHmm
	 *
	 * @param value value
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMddHHmm(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmm");
			return sdf.parse(value);
		} catch (final ParseException e) {
			LOGGER.error(e.getMessage(), e);
		}
		
		return null;
	}

	/**
	 * Parses the given String into a timestamp. Expected format: yyyyMMddHHmmss
	 *
	 * @param value value
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMddHHmmss(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			return sdf.parse(value);
		} catch (final ParseException e) {
			LOGGER.error(e.getMessage(), e);
		}
		
		return null;
	}

	/**
	 * Parses the given String into a timestamp. Expected format:
	 * yyyyMMddHHmmssSSSZZZZ
	 *
	 * @param value value
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMddHHmmssSSSZZZZ(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSSZZZZ");
			return sdf.parse(value);
		} catch (final ParseException e) {
			LOGGER.error(e.getMessage(), e);
		}
		
		return null;
	}

	/**
	 * Parses the given String into a timestamp. Expected format: yyyyMMddHHmmssZZZZ
	 *
	 * @param value value
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMddHHmmssZZZZ(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssZZZZ");
			return sdf.parse(value);
		} catch (final ParseException e) {
			LOGGER.error(e.getMessage(), e);
		}
		
		return null;
	}

	/**
	 * Parses the given String into a timestamp. Expected format: yyyyMMddHHmmZ
	 * 
	 * @param value value
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMddHHmmZ(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmZ");
			return sdf.parse(value);
		} catch (final ParseException e) {
			LOGGER.error(e.getMessage(), e);
		}
		
		return null;
	}

	/**
	 * Parses the given String into a timestamp. Expected format: yyyyMMddHHmmZZZZ
	 *
	 * @param value value
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMddHHmmZZZZ(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmZZZZ");
			return sdf.parse(value);
		} catch (final ParseException e) {
			LOGGER.error(e.getMessage(), e);
		}
		
		return null;
	}

	/**
	 * Parses the given String into a timestamp. Expected format: yyyyMMddHHZZZZ
	 *
	 * @param value value
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMddHHZZZZ(String value) {
		try {
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHZZZZ");
			return sdf.parse(value);
		} catch (final ParseException e) {
			LOGGER.error(e.getMessage(), e);
		}
		
		return null;
	}

	/**
	 * Parses the given String into a timestamp. Expected format:
	 * yyyy-MM-dd'T'HH:mm:ss
	 *
	 * @param value value
	 * @return java.util.Date
	 */
	public static Date parseDateyyyyMMddTHHmmss(String value) {
		try {
			// 2017-04-15T17:10:29
			final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
			return sdf.parse(value);
		} catch (final ParseException e) {
			LOGGER.error(e.getMessage(), e);
		}

		return null;
	}

	/**
	 * Parses the given String into a timestamp. Expected format:
	 * yyyy[MM[dd[HH[mm[ss[ZZZZ]]]]]]
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
	 * Formats the passed timestamp as String: yyyyMMdd
	 * 
	 * @param timestamp value
	 * @return the string
	 */
	public static String formatDateOnly(Date timestamp) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		return sdf.format(timestamp);
	}

	/**
	 * Parses the given HL7 CDA R2 TS into a timestamp
	 *
	 * @param value the value
	 * @return the date
	 */
	public static Date parseHl7Timestamp(TS value) {
		return parseHl7Timestamp(value.getValue());
	}

	/**
	 * Formats the given timestamp as String: yyyyMMddHHmmss
	 *
	 * @param value the value
	 * @return the string
	 */
	public static String formatDateTime(Date value) {
		final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		return sdf.format(value);
	}

	/**
	 * Formats the given timestamp as String: yyyyMMddHHmmssZ
	 *
	 * @param value the value
	 * @return the string
	 */
	public static String formatDateTimeTzon(Date value) {
		final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssZ", Locale.GERMANY);
		return sdf.format(value);
	}

}
