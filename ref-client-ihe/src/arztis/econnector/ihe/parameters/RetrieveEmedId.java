package arztis.econnector.ihe.parameters;

import org.ehealth_connector.common.Identificator;

import arztis.econnector.common.model.Parameter;

public class RetrieveEmedId extends Parameter {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Identificator ssno;
    boolean dataMatrixRequired;

    public Identificator getSsno() {
        return ssno;
    }

    public void setSsno(Identificator ssno) {
        this.ssno = ssno;
    }

    public boolean isDataMatrixRequired() {
        return dataMatrixRequired;
    }

    public void setDataMatrixRequired(boolean dataMatrixRequired) {
        this.dataMatrixRequired = dataMatrixRequired;
    }

}
