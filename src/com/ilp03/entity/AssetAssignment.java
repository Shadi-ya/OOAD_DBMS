package com.ilp03.entity;

import java.sql.Date;

public class AssetAssignment {
	private int assignmentId;
	private Asset assetId;
	private Employees employeeId;
	private Date assignmentDate;
	private Date returnDate;
	private Employees createdBy;
	private Employees updatedBy;
	public AssetAssignment(int assignmentId, Asset assetId, Employees employeeId, Date assignmentDate, Date returnDate,
			Employees createdBy, Employees updatedBy) {
		super();
		this.assignmentId = assignmentId;
		this.assetId = assetId;
		this.employeeId = employeeId;
		this.assignmentDate = assignmentDate;
		this.returnDate = returnDate;
		this.createdBy = createdBy;
		this.updatedBy = updatedBy;
	}
	public int getAssignmentId() {
		return assignmentId;
	}
	public void setAssignmentId(int assignmentId) {
		this.assignmentId = assignmentId;
	}
	public Asset getAssetId() {
		return assetId;
	}
	public void setAssetId(Asset assetId) {
		this.assetId = assetId;
	}
	public Employees getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(Employees employeeId) {
		this.employeeId = employeeId;
	}
	public Date getAssignmentDate() {
		return assignmentDate;
	}
	public void setAssignmentDate(Date assignmentDate) {
		this.assignmentDate = assignmentDate;
	}
	public Date getReturnDate() {
		return returnDate;
	}
	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
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
