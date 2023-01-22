package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class RecurringDeposit {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String recurringDeposit;
	private String rDPlanName;
	private String eDMinimumAmount;
	private String rDInterestRate;
	private String rDTermType;
	private String rDTerm;
	private String rDComN;
	private String rDComR;
	private String rDCompoundIntrval;
	private String rDTotalDeposit;
	private String rDMaturityAmount;
	private String rDGrace;
	private String rDLatefine;
	private String rDStatus;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRecurringDeposit() {
		return recurringDeposit;
	}
	public void setRecurringDeposit(String recurringDeposit) {
		this.recurringDeposit = recurringDeposit;
	}
	public String getrDPlanName() {
		return rDPlanName;
	}
	public void setrDPlanName(String rDPlanName) {
		this.rDPlanName = rDPlanName;
	}
	public String geteDMinimumAmount() {
		return eDMinimumAmount;
	}
	public void seteDMinimumAmount(String eDMinimumAmount) {
		this.eDMinimumAmount = eDMinimumAmount;
	}
	public String getrDInterestRate() {
		return rDInterestRate;
	}
	public void setrDInterestRate(String rDInterestRate) {
		this.rDInterestRate = rDInterestRate;
	}
	public String getrDTermType() {
		return rDTermType;
	}
	public void setrDTermType(String rDTermType) {
		this.rDTermType = rDTermType;
	}
	public String getrDTerm() {
		return rDTerm;
	}
	public void setrDTerm(String rDTerm) {
		this.rDTerm = rDTerm;
	}
	public String getrDComN() {
		return rDComN;
	}
	public void setrDComN(String rDComN) {
		this.rDComN = rDComN;
	}
	public String getrDComR() {
		return rDComR;
	}
	public void setrDComR(String rDComR) {
		this.rDComR = rDComR;
	}
	public String getrDCompoundIntrval() {
		return rDCompoundIntrval;
	}
	public void setrDCompoundIntrval(String rDCompoundIntrval) {
		this.rDCompoundIntrval = rDCompoundIntrval;
	}
	public String getrDTotalDeposit() {
		return rDTotalDeposit;
	}
	public void setrDTotalDeposit(String rDTotalDeposit) {
		this.rDTotalDeposit = rDTotalDeposit;
	}
	public String getrDMaturityAmount() {
		return rDMaturityAmount;
	}
	public void setrDMaturityAmount(String rDMaturityAmount) {
		this.rDMaturityAmount = rDMaturityAmount;
	}
	public String getrDGrace() {
		return rDGrace;
	}
	public void setrDGrace(String rDGrace) {
		this.rDGrace = rDGrace;
	}
	public String getrDLatefine() {
		return rDLatefine;
	}
	public void setrDLatefine(String rDLatefine) {
		this.rDLatefine = rDLatefine;
	}
	public String getrDStatus() {
		return rDStatus;
	}
	public void setrDStatus(String rDStatus) {
		this.rDStatus = rDStatus;
	}
	
	

}
