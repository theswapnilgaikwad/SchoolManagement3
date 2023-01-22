package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MaturityMaster {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String dplanCode;
	private String dinstFrom;
	private String dinstTo;
	private String droi;
	private String ddeduction;
	private String rplanCode;
	private String rinstFrom;
	private String rinstTo;
	private String rroi;
	private String rdeduction;
	private String fplanCode;
	private String fmonthsFrom;
	private String fmonthsTo;
	private String froi;
	private String fdeduction; 
	private String mplanCode;
	private String mmonthsFrom;
	private String mmonthsTo;
	private String mroi;
	private String mdeduction;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDplanCode() {
		return dplanCode;
	}
	public void setDplanCode(String dplanCode) {
		this.dplanCode = dplanCode;
	}
	public String getDinstFrom() {
		return dinstFrom;
	}
	public void setDinstFrom(String dinstFrom) {
		this.dinstFrom = dinstFrom;
	}
	public String getDinstTo() {
		return dinstTo;
	}
	public void setDinstTo(String dinstTo) {
		this.dinstTo = dinstTo;
	}
	public String getDroi() {
		return droi;
	}
	public void setDroi(String droi) {
		this.droi = droi;
	}
	public String getDdeduction() {
		return ddeduction;
	}
	public void setDdeduction(String ddeduction) {
		this.ddeduction = ddeduction;
	}
	public String getRplanCode() {
		return rplanCode;
	}
	public void setRplanCode(String rplanCode) {
		this.rplanCode = rplanCode;
	}
	public String getRinstFrom() {
		return rinstFrom;
	}
	public void setRinstFrom(String rinstFrom) {
		this.rinstFrom = rinstFrom;
	}
	public String getRinstTo() {
		return rinstTo;
	}
	public void setRinstTo(String rinstTo) {
		this.rinstTo = rinstTo;
	}
	public String getRroi() {
		return rroi;
	}
	public void setRroi(String rroi) {
		this.rroi = rroi;
	}
	public String getRdeduction() {
		return rdeduction;
	}
	public void setRdeduction(String rdeduction) {
		this.rdeduction = rdeduction;
	}
	public String getFplanCode() {
		return fplanCode;
	}
	public void setFplanCode(String fplanCode) {
		this.fplanCode = fplanCode;
	}
	public String getFmonthsFrom() {
		return fmonthsFrom;
	}
	public void setFmonthsFrom(String fmonthsFrom) {
		this.fmonthsFrom = fmonthsFrom;
	}
	public String getFmonthsTo() {
		return fmonthsTo;
	}
	public void setFmonthsTo(String fmonthsTo) {
		this.fmonthsTo = fmonthsTo;
	}
	public String getFroi() {
		return froi;
	}
	public void setFroi(String froi) {
		this.froi = froi;
	}
	public String getFdeduction() {
		return fdeduction;
	}
	public void setFdeduction(String fdeduction) {
		this.fdeduction = fdeduction;
	}
	public String getMplanCode() {
		return mplanCode;
	}
	public void setMplanCode(String mplanCode) {
		this.mplanCode = mplanCode;
	}
	public String getMmonthsFrom() {
		return mmonthsFrom;
	}
	public void setMmonthsFrom(String mmonthsFrom) {
		this.mmonthsFrom = mmonthsFrom;
	}
	public String getMmonthsTo() {
		return mmonthsTo;
	}
	public void setMmonthsTo(String mmonthsTo) {
		this.mmonthsTo = mmonthsTo;
	}
	public String getMroi() {
		return mroi;
	}
	public void setMroi(String mroi) {
		this.mroi = mroi;
	}
	public String getMdeduction() {
		return mdeduction;
	}
	public void setMdeduction(String mdeduction) {
		this.mdeduction = mdeduction;
	}
	
}
