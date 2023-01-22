package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Loan {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String type;
	private String loanDate;
	private String searchMemberCode;
	private String relativeDetails;
	private String dob;
	private String age;
	private String phoneno;
	private String smsStatus;
	private String address;
	private String pin;
	private String cspName;
	private String loanPlanName;
	private String loanType;
	private String planTerm;
	private String mode;
	private String loanROI;
	private String loanAmount;
	private String ROIType;
	private String emiAmount;
	private String loanPurpose;
	private String goldRateType;
	private String itemType;
	private String todayRate;
	private String itemName;
	private String lockerLoc;
	private String purity;
	private String itemQty;
	private String grossWt;
	private String gwt;
	private String stonewt;
	private String netWt;
	private String itemRate;
	private String eligibleLoan;
	private String netQty;
	private String totalGrossWt;
	private String totalNetWt;
	private String totalEligibleAmt;
	private String goldItem;
	private String guarantorCode;
	private String guarantorName;
	private String addressGuarantor;
	private String pincodeGuarantor;
	private String phone;
	private String securityType;
	private String coApplicantCode;
	private String memberRelativesName;
	private String addressco;
	private String pincodeco;
	private String phoneco;
	private String securityDetails;
	private String processingFee;
	private String legalAmt;
	private String advisorCode;
	private String gst;
	private String insuranceAmt;
	private String vFeesAmt;
	private String advisorName;
	private String createdDate;
	private String createdBy;
	private String updatedDate;
	private String updatedBy;

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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLoanDate() {
		return loanDate;
	}

	public void setLoanDate(String loanDate) {
		this.loanDate = loanDate;
	}

	public String getSearchMemberCode() {
		return searchMemberCode;
	}

	public void setSearchMemberCode(String searchMemberCode) {
		this.searchMemberCode = searchMemberCode;
	}

	public String getRelativeDetails() {
		return relativeDetails;
	}

	public void setRelativeDetails(String relativeDetails) {
		this.relativeDetails = relativeDetails;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	public String getSmsStatus() {
		return smsStatus;
	}

	public void setSmsStatus(String smsStatus) {
		this.smsStatus = smsStatus;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getCspName() {
		return cspName;
	}

	public void setCspName(String cspName) {
		this.cspName = cspName;
	}

	public String getLoanPlanName() {
		return loanPlanName;
	}

	public void setLoanPlanName(String loanPlanName) {
		this.loanPlanName = loanPlanName;
	}

	public String getLoanType() {
		return loanType;
	}

	public void setLoanType(String loanType) {
		this.loanType = loanType;
	}

	public String getPlanTerm() {
		return planTerm;
	}

	public void setPlanTerm(String planTerm) {
		this.planTerm = planTerm;
	}

	public String getMode() {
		return mode;
	}

	public void setMode(String mode) {
		this.mode = mode;
	}

	public String getLoanROI() {
		return loanROI;
	}

	public void setLoanROI(String loanROI) {
		this.loanROI = loanROI;
	}

	public String getLoanAmount() {
		return loanAmount;
	}

	public void setLoanAmount(String loanAmount) {
		this.loanAmount = loanAmount;
	}

	public String getROIType() {
		return ROIType;
	}

	public void setROIType(String rOIType) {
		ROIType = rOIType;
	}

	public String getEmiAmount() {
		return emiAmount;
	}

	public void setEmiAmount(String emiAmount) {
		this.emiAmount = emiAmount;
	}

	public String getLoanPurpose() {
		return loanPurpose;
	}

	public void setLoanPurpose(String loanPurpose) {
		this.loanPurpose = loanPurpose;
	}

	public String getGoldRateType() {
		return goldRateType;
	}

	public void setGoldRateType(String goldRateType) {
		this.goldRateType = goldRateType;
	}

	public String getItemType() {
		return itemType;
	}

	public void setItemType(String itemType) {
		this.itemType = itemType;
	}

	public String getTodayRate() {
		return todayRate;
	}

	public void setTodayRate(String todayRate) {
		this.todayRate = todayRate;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getLockerLoc() {
		return lockerLoc;
	}

	public void setLockerLoc(String lockerLoc) {
		this.lockerLoc = lockerLoc;
	}

	public String getPurity() {
		return purity;
	}

	public void setPurity(String purity) {
		this.purity = purity;
	}

	public String getItemQty() {
		return itemQty;
	}

	public void setItemQty(String itemQty) {
		this.itemQty = itemQty;
	}

	public String getGrossWt() {
		return grossWt;
	}

	public void setGrossWt(String grossWt) {
		this.grossWt = grossWt;
	}

	public String getGwt() {
		return gwt;
	}

	public void setGwt(String gwt) {
		this.gwt = gwt;
	}

	public String getStonewt() {
		return stonewt;
	}

	public void setStonewt(String stonewt) {
		this.stonewt = stonewt;
	}

	public String getNetWt() {
		return netWt;
	}

	public void setNetWt(String netWt) {
		this.netWt = netWt;
	}

	public String getItemRate() {
		return itemRate;
	}

	public void setItemRate(String itemRate) {
		this.itemRate = itemRate;
	}

	public String getEligibleLoan() {
		return eligibleLoan;
	}

	public void setEligibleLoan(String eligibleLoan) {
		this.eligibleLoan = eligibleLoan;
	}

	public String getNetQty() {
		return netQty;
	}

	public void setNetQty(String netQty) {
		this.netQty = netQty;
	}

	public String getTotalGrossWt() {
		return totalGrossWt;
	}

	public void setTotalGrossWt(String totalGrossWt) {
		this.totalGrossWt = totalGrossWt;
	}

	public String getTotalNetWt() {
		return totalNetWt;
	}

	public void setTotalNetWt(String totalNetWt) {
		this.totalNetWt = totalNetWt;
	}

	public String getTotalEligibleAmt() {
		return totalEligibleAmt;
	}

	public void setTotalEligibleAmt(String totalEligibleAmt) {
		this.totalEligibleAmt = totalEligibleAmt;
	}

	public String getGoldItem() {
		return goldItem;
	}

	public void setGoldItem(String goldItem) {
		this.goldItem = goldItem;
	}

	public String getGuarantorCode() {
		return guarantorCode;
	}

	public void setGuarantorCode(String guarantorCode) {
		this.guarantorCode = guarantorCode;
	}

	public String getGuarantorName() {
		return guarantorName;
	}

	public void setGuarantorName(String guarantorName) {
		this.guarantorName = guarantorName;
	}

	public String getAddressGuarantor() {
		return addressGuarantor;
	}

	public void setAddressGuarantor(String addressGuarantor) {
		this.addressGuarantor = addressGuarantor;
	}

	public String getPincodeGuarantor() {
		return pincodeGuarantor;
	}

	public void setPincodeGuarantor(String pincodeGuarantor) {
		this.pincodeGuarantor = pincodeGuarantor;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSecurityType() {
		return securityType;
	}

	public void setSecurityType(String securityType) {
		this.securityType = securityType;
	}

	public String getCoApplicantCode() {
		return coApplicantCode;
	}

	public void setCoApplicantCode(String coApplicantCode) {
		this.coApplicantCode = coApplicantCode;
	}

	public String getMemberRelativesName() {
		return memberRelativesName;
	}

	public void setMemberRelativesName(String memberRelativesName) {
		this.memberRelativesName = memberRelativesName;
	}

	public String getAddressco() {
		return addressco;
	}

	public void setAddressco(String addressco) {
		this.addressco = addressco;
	}

	public String getPincodeco() {
		return pincodeco;
	}

	public void setPincodeco(String pincodeco) {
		this.pincodeco = pincodeco;
	}

	public String getPhoneco() {
		return phoneco;
	}

	public void setPhoneco(String phoneco) {
		this.phoneco = phoneco;
	}

	public String getSecurityDetails() {
		return securityDetails;
	}

	public void setSecurityDetails(String securityDetails) {
		this.securityDetails = securityDetails;
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

	public String getAdvisorCode() {
		return advisorCode;
	}

	public void setAdvisorCode(String advisorCode) {
		this.advisorCode = advisorCode;
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

	public String getvFeesAmt() {
		return vFeesAmt;
	}

	public void setvFeesAmt(String vFeesAmt) {
		this.vFeesAmt = vFeesAmt;
	}

	public String getAdvisorName() {
		return advisorName;
	}

	public void setAdvisorName(String advisorName) {
		this.advisorName = advisorName;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

}
