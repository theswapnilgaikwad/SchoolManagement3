package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Member {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String verifyWithAadhar;
	private String registrationDate;
	private String memberNamePrefix;
	private String memberName;
	private String relativeName;
	private String relativeRelation;
	private String gender;
	private String dob;
	private String age;
	private String maritalStatus;
	private String address;
	private String district;
	private String state;
	private String branchName;
	private String pinCode;
	private String aadharNo;
	private String pan;
	private String voterNo;
	private String phoneno;
	private String emailid;
	private String occupation;
	private String education;
	private String introMCode;
	private String introMName;
	private String nomineeName;
	private String nRelation;
	private String nomineeAddress;
	private String nomineeKycNumber;
	private String nomineeMobileNo;
	private String nomineeAge;
	private String nomineePanNo;
	private String nomineeKycType;
	private String memberJoiningFess;
	private String shareAllotedfrm;
	private String noOfShared;
	private String enterShareAmount;
	private String paymode;
	private String remarks;
	private String memberStatusIsActive;
	private String chkmobile;
	private String chknetBanking;
	private String chkisSms;
	private String chkMinor;
	private String rationNo;
	private String dLNo;
	private String bankName;
	private String bankBranch;
	private String bankCode;
	private String accountNo;
	private String iFSC;
	private String status;

	private String transferDate;
	private String transferAmount;

	public String getTransferDate() {
		return transferDate;
	}

	public void setTransferDate(String transferDate) {
		this.transferDate = transferDate;
	}

	public String getTransferAmount() {
		return transferAmount;
	}

	public void setTransferAmount(String transferAmount) {
		this.transferAmount = transferAmount;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getBankCode() {
		return bankCode;
	}

	public void setBankCode(String bankCode) {
		this.bankCode = bankCode;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getVerifyWithAadhar() {
		return verifyWithAadhar;
	}

	public void setVerifyWithAadhar(String verifyWithAadhar) {
		this.verifyWithAadhar = verifyWithAadhar;
	}

	public String getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(String registrationDate) {
		this.registrationDate = registrationDate;
	}

	public String getMemberNamePrefix() {
		return memberNamePrefix;
	}

	public void setMemberNamePrefix(String memberNamePrefix) {
		this.memberNamePrefix = memberNamePrefix;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getRelativeName() {
		return relativeName;
	}

	public void setRelativeName(String relativeName) {
		this.relativeName = relativeName;
	}

	public String getRelativeRelation() {
		return relativeRelation;
	}

	public void setRelativeRelation(String relativeRelation) {
		this.relativeRelation = relativeRelation;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
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

	public String getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getPinCode() {
		return pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public String getAadharNo() {
		return aadharNo;
	}

	public void setAadharNo(String aadharNo) {
		this.aadharNo = aadharNo;
	}

	public String getPan() {
		return pan;
	}

	public void setPan(String pan) {
		this.pan = pan;
	}

	public String getVoterNo() {
		return voterNo;
	}

	public void setVoterNo(String voterNo) {
		this.voterNo = voterNo;
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getIntroMCode() {
		return introMCode;
	}

	public void setIntroMCode(String introMCode) {
		this.introMCode = introMCode;
	}

	public String getIntroMName() {
		return introMName;
	}

	public void setIntroMName(String introMName) {
		this.introMName = introMName;
	}

	public String getNomineeName() {
		return nomineeName;
	}

	public void setNomineeName(String nomineeName) {
		this.nomineeName = nomineeName;
	}

	public String getnRelation() {
		return nRelation;
	}

	public void setnRelation(String nRelation) {
		this.nRelation = nRelation;
	}

	public String getNomineeAddress() {
		return nomineeAddress;
	}

	public void setNomineeAddress(String nomineeAddress) {
		this.nomineeAddress = nomineeAddress;
	}

	public String getNomineeKycNumber() {
		return nomineeKycNumber;
	}

	public void setNomineeKycNumber(String nomineeKycNumber) {
		this.nomineeKycNumber = nomineeKycNumber;
	}

	public String getNomineeMobileNo() {
		return nomineeMobileNo;
	}

	public void setNomineeMobileNo(String nomineeMobileNo) {
		this.nomineeMobileNo = nomineeMobileNo;
	}

	public String getNomineeAge() {
		return nomineeAge;
	}

	public void setNomineeAge(String nomineeAge) {
		this.nomineeAge = nomineeAge;
	}

	public String getNomineePanNo() {
		return nomineePanNo;
	}

	public void setNomineePanNo(String nomineePanNo) {
		this.nomineePanNo = nomineePanNo;
	}

	public String getNomineeKycType() {
		return nomineeKycType;
	}

	public void setNomineeKycType(String nomineeKycType) {
		this.nomineeKycType = nomineeKycType;
	}

	public String getMemberJoiningFess() {
		return memberJoiningFess;
	}

	public void setMemberJoiningFess(String memberJoiningFess) {
		this.memberJoiningFess = memberJoiningFess;
	}

	public String getShareAllotedfrm() {
		return shareAllotedfrm;
	}

	public void setShareAllotedfrm(String shareAllotedfrm) {
		this.shareAllotedfrm = shareAllotedfrm;
	}

	public String getNoOfShared() {
		return noOfShared;
	}

	public void setNoOfShared(String noOfShared) {
		this.noOfShared = noOfShared;
	}

	public String getEnterShareAmount() {
		return enterShareAmount;
	}

	public void setEnterShareAmount(String enterShareAmount) {
		this.enterShareAmount = enterShareAmount;
	}

	public String getPaymode() {
		return paymode;
	}

	public void setPaymode(String paymode) {
		this.paymode = paymode;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getMemberStatusIsActive() {
		return memberStatusIsActive;
	}

	public void setMemberStatusIsActive(String memberStatusIsActive) {
		this.memberStatusIsActive = memberStatusIsActive;
	}

	public String getChkmobile() {
		return chkmobile;
	}

	public void setChkmobile(String chkmobile) {
		this.chkmobile = chkmobile;
	}

	public String getChknetBanking() {
		return chknetBanking;
	}

	public void setChknetBanking(String chknetBanking) {
		this.chknetBanking = chknetBanking;
	}

	public String getChkisSms() {
		return chkisSms;
	}

	public void setChkisSms(String chkisSms) {
		this.chkisSms = chkisSms;
	}

	public String getChkMinor() {
		return chkMinor;
	}

	public void setChkMinor(String chkMinor) {
		this.chkMinor = chkMinor;
	}

	public String getRationNo() {
		return rationNo;
	}

	public void setRationNo(String rationNo) {
		this.rationNo = rationNo;
	}

	public String getdLNo() {
		return dLNo;
	}

	public void setdLNo(String dLNo) {
		this.dLNo = dLNo;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getBankBranch() {
		return bankBranch;
	}

	public void setBankBranch(String bankBranch) {
		this.bankBranch = bankBranch;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getiFSC() {
		return iFSC;
	}

	public void setiFSC(String iFSC) {
		this.iFSC = iFSC;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", verifyWithAadhar=" + verifyWithAadhar + ", registrationDate=" + registrationDate
				+ ", memberNamePrefix=" + memberNamePrefix + ", memberName=" + memberName + ", relativeName="
				+ relativeName + ", relativeRelation=" + relativeRelation + ", gender=" + gender + ", dob=" + dob
				+ ", age=" + age + ", maritalStatus=" + maritalStatus + ", address=" + address + ", district="
				+ district + ", state=" + state + ", branchName=" + branchName + ", pinCode=" + pinCode + ", aadharNo="
				+ aadharNo + ", pan=" + pan + ", voterNo=" + voterNo + ", phoneno=" + phoneno + ", emailid=" + emailid
				+ ", occupation=" + occupation + ", education=" + education + ", introMCode=" + introMCode
				+ ", introMName=" + introMName + ", nomineeName=" + nomineeName + ", nRelation=" + nRelation
				+ ", nomineeAddress=" + nomineeAddress + ", nomineeKycNumber=" + nomineeKycNumber + ", nomineeMobileNo="
				+ nomineeMobileNo + ", nomineeAge=" + nomineeAge + ", nomineePanNo=" + nomineePanNo
				+ ", nomineeKycType=" + nomineeKycType + ", memberJoiningFess=" + memberJoiningFess
				+ ", shareAllotedfrm=" + shareAllotedfrm + ", noOfShared=" + noOfShared + ", enterShareAmount="
				+ enterShareAmount + ", paymode=" + paymode + ", remarks=" + remarks + ", memberStatusIsActive="
				+ memberStatusIsActive + ", chkmobile=" + chkmobile + ", chknetBanking=" + chknetBanking + ", chkisSms="
				+ chkisSms + ", chkMinor=" + chkMinor + ", rationNo=" + rationNo + ", dLNo=" + dLNo + ", bankName="
				+ bankName + ", bankBranch=" + bankBranch + ", accountNo=" + accountNo + ", iFSC=" + iFSC + "]";
	}

}
