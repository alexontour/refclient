package arztis.econnector.common.model;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.json.JSONObject;

public class Card extends Document {
    private static final long serialVersionUID = 1L;
    
    private String type;
    private String number;
    private String cin;
    private String csn;
    private String givenName;
    private LocalDate birthDate;
    private SexCode sex;
    private String title;
    private String suffix;
    private String familyName;

    
    public String getCardType() {
        return type;
    }
    public void setCardType(String type) {
        this.type = type;
    }
    public String getNumber() {
        return number;
    }
    public void setNumber(String number) {
        this.number = number;
    }
    public String getCin() {
        return cin;
    }
    public void setCin(String cin) {
        this.cin = cin;
    }
    public String getCsn() {
        return csn;
    }
    public void setCsn(String csn) {
        this.csn = csn;
    }
    
    public String getGivenName() {
        return givenName;
    }
    public void setGivenName(String givenName) {
        this.givenName = givenName;
    }
    public String getFamilyName() {
        return familyName;
    }
    public void setFamilyName(String familyName) {
        this.familyName = familyName;
    }
    public LocalDate getBirthDate() {
        return birthDate;
    }
    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
    }
    public SexCode getSex() {
        return sex;
    }
    public void setSex(SexCode sex) {
        this.sex = sex;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getSuffix() {
        return suffix;
    }
    public void setSuffix(String suffix) {
        this.suffix = suffix;
    }
    @Override
    public JSONObject toJson() {
        JSONObject json = super.toJson();
        json.put("cardType", type);
        json.put("number", number);    
        json.put("cin", cin);
        json.put("csn", csn);
        json.put("givenName", givenName);
        json.put("familyName", familyName);
        json.put("prefix", title);
        json.put("suffix", suffix);
        
        if (birthDate != null) {
            json.put("birthDate", birthDate.format(DateTimeFormatter.ISO_DATE));
        }
        
        if (sex == SexCode.FEMALE) {
            json.put("sex", "f");
        } else if (sex == SexCode.MALE) {
            json.put("sex", "m");
        }
        
        return json;    
    }

}
