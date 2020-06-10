package arztis.econnector.rest.model.eimpf;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.ehealth_connector.common.Code;

public class Vaccine implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Code code;
	private String name;
	private String shortName;
	private String approvalNumber;
	private int packageSize;
	private Code quantityType;
	private List<Code> targetDisease;
	private Code atc;
	private Code applicationType;
	private List<Code> substances;
	private Code dosageForm;

	public Vaccine() {
		substances = new ArrayList<>();
		targetDisease = new ArrayList<>();
	}

	public Code getCode() {
		return code;
	}

	public void setCode(Code code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getShortName() {
		return shortName;
	}

	public void setShortName(String shortName) {
		this.shortName = shortName;
	}

	public String getApprovalNumber() {
		return approvalNumber;
	}

	public void setApprovalNumber(String approvalNumber) {
		this.approvalNumber = approvalNumber;
	}

	public int getPackageSize() {
		return packageSize;
	}

	public void setPackageSize(int packageSize) {
		this.packageSize = packageSize;
	}

	public Code getQuantityType() {
		return quantityType;
	}

	public void setQuantityType(Code quantityType) {
		this.quantityType = quantityType;
	}

	public List<Code> getTargetDisease() {
		return targetDisease;
	}

	public void setTargetDisease(List<Code> targetDisease) {
		this.targetDisease = targetDisease;
	}

	public void addTargetDisease(Code targetDisease) {
		this.targetDisease.add(targetDisease);
	}

	public Code getAtc() {
		return atc;
	}

	public void setAtc(Code atc) {
		this.atc = atc;
	}

	public Code getApplicationType() {
		return applicationType;
	}

	public void setApplicationType(Code applicationType) {
		this.applicationType = applicationType;
	}

	public List<Code> getSubstance() {
		return substances;
	}

	public void setSubstance(List<Code> substances) {
		this.substances = substances;
	}

	public void addSubstance(Code substance) {
		this.substances.add(substance);
	}

	public Code getDosageForm() {
		return dosageForm;
	}

	public void setDosageForm(Code dosageForm) {
		this.dosageForm = dosageForm;
	}
}
