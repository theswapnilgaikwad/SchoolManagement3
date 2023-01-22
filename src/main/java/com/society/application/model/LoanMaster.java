package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class LoanMaster {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String type;
	private String loanName;
	private String loanType;
	private String emiCollection;
	private String roiType;
	private String emiType;
	private String minAge;
	private String maxAge;
	private String minAmount;
	private String maxAmount;
	private String planStatus;
	private String minTerm;
	private String maxTerm;
	private String roi;
	private String securityType;
	private String processingFee;
	private String legalAmt;
	private String gst;
	private String insuranceAmt;
	private String valuerFees;
	private String gracePeriodDays;
	private String penaltyType;
	private String penalty;
	private String createdDate;
	private String createdBy;
	private String updatedDate;
	private String updatedBy;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getLoanName() {
		return loanName;
	}

	public void setLoanName(String loanName) {
		this.loanName = loanName;
	}

	public String getLoanType() {
		return loanType;
	}

	public void setLoanType(String loanType) {
		this.loanType = loanType;
	}

	public String getEmiCollection() {
		return emiCollection;
	}

	public void setEmiCollection(String emiCollection) {
		this.emiCollection = emiCollection;
	}

	public String getRoiType() {
		return roiType;
	}

	public void setRoiType(String roiType) {
		this.roiType = roiType;
	}

	public String getEmiType() {
		return emiType;
	}

	public void setEmiType(String emiType) {
		this.emiType = emiType;
	}

	public String getMinAge() {
		return minAge;
	}

	public void setMinAge(String minAge) {
		this.minAge = minAge;
	}

	public String getMaxAge() {
		return maxAge;
	}

	public void setMaxAge(String maxAge) {
		this.maxAge = maxAge;
	}

	public String getMinAmount() {
		return minAmount;
	}

	public void setMinAmount(String minAmount) {
		this.minAmount = minAmount;
	}

	public String getMaxAmount() {
		return maxAmount;
	}

	public void setMaxAmount(String maxAmount) {
		this.maxAmount = maxAmount;
	}

	public String getPlanStatus() {
		return planStatus;
	}

	public void setPlanStatus(String planStatus) {
		this.planStatus = planStatus;
	}

	public String getMinTerm() {
		return minTerm;
	}

	public void setMinTerm(String minTerm) {
		this.minTerm = minTerm;
	}

	public String getMaxTerm() {
		return maxTerm;
	}

	public void setMaxTerm(String maxTerm) {
		this.maxTerm = maxTerm;
	}

	public String getRoi() {
		return roi;
	}

	public void setRoi(String roi) {
		this.roi = roi;
	}

	public String getSecurityType() {
		return securityType;
	}

	public void setSecurityType(String securityType) {
		this.securityType = securityType;
	}

	public String getProcessingFee() {
		return processingFee;
	}

	public void setProcessingFee(String processingFee) {
		this.processingFee = processingFee;
	}

	public String getLegalAmt() {
		return legalAmt;
	}

	public void setLegalAmt(String legalAmt) {
		this.legalAmt = legalAmt;
	}

	public String getGst() {
		return gst;
	}

	public void setGst(String gst) {
		this.gst = gst;
	}

	public String getInsuranceAmt() {
		return insuranceAmt;
	}

	public void setInsuranceAmt(String insuranceAmt) {
		this.insuranceAmt = insuranceAmt;
	}

	public String getValuerFees() {
		return valuerFees;
	}

	public void setValuerFees(String valuerFees) {
		this.valuerFees = valuerFees;
	}

	public String getGracePeriodDays() {
		return gracePeriodDays;
	}

	public void setGracePeriodDays(String gracePeriodDays) {
		this.gracePeriodDays = gracePeriodDays;
	}

	public String getPenaltyType() {
		return penaltyType;
	}

	public void setPenaltyType(String penaltyType) {
		this.penaltyType = penaltyType;
	}

	public String getPenalty() {
		return penalty;
	}

	public void setPenalty(String penalty) {
		this.penalty = penalty;
	}

	public String getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public String getUpdatedDate() {
		return updatedDate;
	}

	public void setUpdatedDate(String updatedDate) {
		this.updatedDate = updatedDate;
	}

	public String getUpdatedBy() {
		return updatedBy;
	}

	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}

	@Override
	public String toString() {
		return "LoanMaster [id=" + id + ", type=" + type + ", loanName=" + loanName + ", loanType=" + loanType
				+ ", emiCollection=" + emiCollection + ", roiType=" + roiType + ", emiType=" + emiType + ", minAge="
				+ minAge + ", maxAge=" + maxAge + ", minAmount=" + minAmount + ", maxAmount=" + maxAmount
				+ ", planStatus=" + planStatus + ", minTerm=" + minTerm + ", maxTerm=" + maxTerm + ", roi=" + roi
				+ ", securityType=" + securityType + ", processingFee=" + processingFee + ", legalAmt=" + legalAmt
				+ ", gst=" + gst + ", insuranceAmt=" + insuranceAmt + ", valuerFees=" + valuerFees
				+ ", gracePeriodDays=" + gracePeriodDays + ", penaltyType=" + penaltyType + ", penalty=" + penalty
				+ ", createdDate=" + createdDate + ", createdBy=" + createdBy + ", updatedDate=" + updatedDate
				+ ", updatedBy=" + updatedBy + "]";
	}

}
