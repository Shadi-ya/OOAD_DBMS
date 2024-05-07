package com.ilp03.entity;

import java.sql.Date;

public class Disposal {
	private int disposalId;
	private Asset assetId;
	private Date disposalDate;
	private String disposalMethod;
	private String reason;
	private Employees createdBy;
	private Employees updatedBy;
	public Disposal(int disposalId, Asset assetId, Date disposalDate, String disposalMethod, String reason,
			Employees createdBy, Employees updatedBy) {
//		super();
		this.disposalId = disposalId;
		this.assetId = assetId;
		this.disposalDate = disposalDate;
		this.disposalMethod = disposalMethod;
		this.reason = reason;
		this.createdBy = createdBy;
		this.updatedBy = updatedBy;
	}
	public Disposal(String disposalMethod, String reason) {
		this.disposalMethod = disposalMethod;
		this.reason = reason;
	}
	public int getDisposalId() {
		return disposalId;
	}
	public void setDisposalId(int disposalId) {
		this.disposalId = disposalId;
	}
	public Asset getAssetId() {
		return assetId;
	}
	public void setAssetId(Asset assetId) {
		this.assetId = assetId;
	}
	public Date getDisposalDate() {
		return disposalDate;
	}
	public void setDisposalDate(Date disposalDate) {
		this.disposalDate = disposalDate;
	}
	public String getDisposalMethod() {
		return disposalMethod;
	}
	public void setDisposalMethod(String disposalMethod) {
		this.disposalMethod = disposalMethod;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public Employees getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(Employees createdBy) {
		this.createdBy = createdBy;
	}
	public Employees getUpdatedBy() {
		return updatedBy;
	}
	public void setUpdatedBy(Employees updatedBy) {
		this.updatedBy = updatedBy;
	}
	
	
}
