package arztis.econnector.ihe.utilities;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.temporal.TemporalAdjusters;
import java.util.Date;

public class DateUtilAt extends org.ehealth_connector.common.utils.DateUtil {
	
    public static Date calcNextWeekDay(DayOfWeek weekDay) {
        LocalDate localDateNextWeekDay = LocalDate.now().with(TemporalAdjusters.next(weekDay));
        return Date.from(localDateNextWeekDay.atStartOfDay(ZoneId.systemDefault()).toInstant());
    }

}
