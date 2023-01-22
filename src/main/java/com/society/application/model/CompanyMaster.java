package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class CompanyMaster {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String companyName;
	private String shortName;
	private String doj;
	private String cin;
	private String pan;
	private String tan;
	private String gst;
	private String shareValue;
	private String address;
	private String state;
	private String pinCode;
	private String email;
	private String authorizedcapital;
	private String paidup;
	private String landLine;
	private String mobile;
	private String TDSWithPAN;
	private String TDSWithoutPAN;
	private String tax;
	private String taxSr;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getShortName() {
		return shortName;
	}
	public void setShortName(String shortName) {
		this.shortName = shortName;
	}
	public String getDoj() {
		return doj;
	}
	public void setDoj(String doj) {
		this.doj = doj;
	}
	public String getCin() {
		return cin;
	}
	public void setCin(String cin) {
		this.cin = cin;
	}
	public String getPan() {
		return pan;
	}
	public void setPan(String pan) {
		this.pan = pan;
	}
	public String getTan() {
		return tan;
	}
	public void setTan(String tan) {
		this.tan = tan;
	}
	public String getGst() {
		return gst;
	}
	public void setGst(String gst) {
		this.gst = gst;
	}
	public String getShareValue() {
		return shareValue;
	}
	public void setShareValue(String shareValue) {
		this.shareValue = shareValue;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPinCode() {
		return pinCode;
	}
	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAuthorizedcapital() {
		return authorizedcapital;
	}
	public void setAuthorizedcapital(String authorizedcapital) {
		this.authorizedcapital = authorizedcapital;
	}
	public String getPaidup() {
		return paidup;
	}
	public void setPaidup(String paidup) {
		this.paidup = paidup;
	}
	public String getLandLine() {
		return landLine;
	}
	public void setLandLine(String landLine) {
		this.landLine = landLine;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getTDSWithPAN() {
		return TDSWithPAN;
	}
	public void setTDSWithPAN(String tDSWithPAN) {
		TDSWithPAN = tDSWithPAN;
	}
	public String getTDSWithoutPAN() {
		return TDSWithoutPAN;
	}
	public void setTDSWithoutPAN(String tDSWithoutPAN) {
		TDSWithoutPAN = tDSWithoutPAN;
	}
	public String getTax() {
		return tax;
	}
	public void setTax(String tax) {
		this.tax = tax;
	}
	public String getTaxSr() {
		return taxSr;
	}
	public void setTaxSr(String taxSr) {
		this.taxSr = taxSr;
	}
	
	

}
