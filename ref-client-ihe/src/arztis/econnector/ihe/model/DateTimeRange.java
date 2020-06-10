package arztis.econnector.ihe.model;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class DateTimeRange implements Serializable {

    private static final long serialVersionUID = 1L;
    private static final Logger LOGGER = LoggerFactory.getLogger(DateTimeRange.class.getName());
    private Date from;
    private Date to;
    private DateTimeRangeName name;
    private final SimpleDateFormat isoDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSXXX");

    public DateTimeRange() {
    }

    public DateTimeRange(Date from, Date to, DateTimeRangeName name) {
        this.from = from;
        this.to = to;
        this.name = name;
    }

    public Date getFrom() {
        return from;
    }

    public void setFrom(Date fromTime) {
        this.from = fromTime;
    }

    public void setFrom(String fromTimeString) {
        try {
            this.from = isoDateFormat.parse(fromTimeString);
        } catch (ParseException e) {
            LOGGER.error(e.getMessage());
        }
    }

    public Date getTo() {
        return to;
    }

    public void setTo(Date toTime) {
        this.to = toTime;
    }

    public void setTo(String toTimeString) {
        try {
            this.to = isoDateFormat.parse(toTimeString);
        } catch (ParseException e) {
            LOGGER.error(e.getMessage());
        }
    }

    public DateTimeRangeName getName() {
        return name;
    }

    public void setName(DateTimeRangeName name) {
        this.name = name;
    }

    public JSONObject toJson() {
        isoDateFormat.setTimeZone(TimeZone.getDefault());
        JSONObject jo = new JSONObject();

        if (from != null) {
            jo.put("from", isoDateFormat.format(from));
        }

        if (to != null) {
            jo.put("to", isoDateFormat.format(to));
        }

        jo.put("name", name);

        return jo;
    }
}
