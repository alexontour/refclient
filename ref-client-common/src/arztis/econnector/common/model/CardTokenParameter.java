package arztis.econnector.common.model;

public class CardTokenParameter extends Parameter {

    private static final long serialVersionUID = 1L;
    private String cardReaderId;
    private String ssno;
    private String vpnr;
    private String password;

    public String getCardReaderId() {
        return cardReaderId;
    }

    public void setCardReaderId(String cardReaderId) {
        this.cardReaderId = cardReaderId;
    }

    public String getSsno() {
        return ssno;
    }

    public void setSsno(String ssno) {
        this.ssno = ssno;
    }

    public String getVpnr() {
        return vpnr;
    }

    public void setVpnr(String vpnr) {
        this.vpnr = vpnr;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
