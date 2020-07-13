/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 *
 */
package arztis.econnector.rest.model.eimpf;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.ehealth_connector.common.Code;

/**
 * This class contains information about a vaccine.
 *
 * @author Anna Jungwirth
 *
 */
public class Vaccine implements Serializable {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** The code. */
	private Code code;

	/** The name. */
	private String name;

	/** The short name. */
	private String shortName;

	/** The approval number. */
	private String approvalNumber;

	/** The package size. */
	private int packageSize;

	/** The quantity type. */
	private Code quantityType;

	/** The target disease. */
	private List<Code> targetDisease;

	/** The ATC code. */
	private Code atc;

	/** The substances. */
	private List<Code> substances;

	/** The dosage form. */
	private Code dosageForm;

	/**
	 * Default constructor.
	 */
	public Vaccine() {
		substances = new ArrayList<>();
		targetDisease = new ArrayList<>();
	}

	/**
	 * Gets the code.
	 *
	 * @return Pharmaceutical Central Number (PZN) of vaccine
	 */
	public Code getCode() {
		return code;
	}

	/**
	 * Sets the code.
	 *
	 * @param code the new code
	 */
	public void setCode(Code code) {
		this.code = code;
	}

	/**
	 * Gets the name.
	 *
	 * @return name of vaccine like NIMENRIX IJLSG FSPR 0,5ML
	 */
	public String getName() {
		return name;
	}

	/**
	 * Sets the name.
	 *
	 * @param name the new name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * Gets the short name.
	 *
	 * @return short name of the medicinal speciality like NIMENRIX IJLSG FSPR 0,5ML
	 */
	public String getShortName() {
		return shortName;
	}

	/**
	 * Sets the short name.
	 *
	 * @param shortName the new short name
	 */
	public void setShortName(String shortName) {
		this.shortName = shortName;
	}

	/**
	 * Gets the approval number.
	 *
	 * @return approval number of vaccine like 1.2.40.0.34.4.17:EU/1/12/767/001-004
	 */
	public String getApprovalNumber() {
		return approvalNumber;
	}

	/**
	 * Sets the approval number.
	 *
	 * @param approvalNumber the new approval number
	 */
	public void setApprovalNumber(String approvalNumber) {
		this.approvalNumber = approvalNumber;
	}

	/**
	 * Gets the package size.
	 *
	 * @return size of vaccine package
	 */
	public int getPackageSize() {
		return packageSize;
	}

	/**
	 * Sets the package size.
	 *
	 * @param packageSize the new package size
	 */
	public void setPackageSize(int packageSize) {
		this.packageSize = packageSize;
	}

	/**
	 * Gets the quantity type.
	 *
	 * @return quantity type of vaccine like "Stück"
	 */
	public Code getQuantityType() {
		return quantityType;
	}

	/**
	 * Sets the quantity type.
	 *
	 * @param quantityType the new quantity type
	 */
	public void setQuantityType(Code quantityType) {
		this.quantityType = quantityType;
	}

	/**
	 * Gets the target disease.
	 *
	 * @return list of vaccine indications
	 */
	public List<Code> getTargetDisease() {
		return targetDisease;
	}

	/**
	 * Sets the target disease.
	 *
	 * @param targetDisease the new target disease
	 */
	public void setTargetDisease(List<Code> targetDisease) {
		this.targetDisease = targetDisease;
	}

	/**
	 * Adds the target disease.
	 *
	 * @param targetDisease the target disease
	 */
	public void addTargetDisease(Code targetDisease) {
		this.targetDisease.add(targetDisease);
	}

	/**
	 * Gets the atc.
	 *
	 * @return ATC code of vaccine
	 */
	public Code getAtc() {
		return atc;
	}

	/**
	 * Sets the atc.
	 *
	 * @param atc the new atc
	 */
	public void setAtc(Code atc) {
		this.atc = atc;
	}

	/**
	 * Gets the substance.
	 *
	 * @return list of substances of vaccine
	 */
	public List<Code> getSubstance() {
		return substances;
	}

	/**
	 * Sets the substance.
	 *
	 * @param substances the new substance
	 */
	public void setSubstance(List<Code> substances) {
		this.substances = substances;
	}

	/**
	 * Adds the substance.
	 *
	 * @param substance the substance
	 */
	public void addSubstance(Code substance) {
		this.substances.add(substance);
	}

	/**
	 * Gets the dosage form.
	 *
	 * @return method of application of vaccine, for example "intramuskuläre
	 *         Anwendung"
	 */
	public Code getDosageForm() {
		return dosageForm;
	}

	/**
	 * Sets the dosage form.
	 *
	 * @param dosageForm the new dosage form
	 */
	public void setDosageForm(Code dosageForm) {
		this.dosageForm = dosageForm;
	}
}
