package arztis.econnector.ihe.parameters;

import arztis.econnector.common.model.Parameter;

/**
 * This class is used to pass details to request an IDA of an ELGA area. This
 * IDA could be used to register in ELGA. This method is only possible
 * for hospitals as health care provider.
 * 
 * @author ET-Innovations
 *
 */
public class RequestIdaParameter extends Parameter {

	private static final long serialVersionUID = 1L;
	private String subjectId;
	private String organizationId;
	private String organizationName;

	public RequestIdaParameter(String subjectId, String organizationId, String organizationName) {
		this.subjectId = subjectId;
		this.organizationId = organizationId;
		this.organizationName = organizationName;
	}

	public String getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}

	public String getOrganizationId() {
		return organizationId;
	}

	public void setOrganizationId(String organizationId) {
		this.organizationId = organizationId;
	}

	public String getOrganizationName() {
		return organizationName;
	}

	public void setOrganizationName(String organizationName) {
		this.organizationName = organizationName;
	}

}
