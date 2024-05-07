package com.ilp03.entity;

import java.sql.Date;

public class Maintenance {
	private int maintenanceId;
	private Asset assetId;
	private Date maintenanceDate;
	private String description;
	private float maintenanceCost;
	private Employees createdBy;
	private Employees updatedBy;
	
	public Maintenance(int maintenanceId, Asset assetId, Date maintenanceDate, String description,
			float maintenanceCost, Employees createdBy, Employees updatedBy) {
//		super();
		this.maintenanceId = maintenanceId;
		this.assetId = assetId;
		this.maintenanceDate = maintenanceDate;
		this.description = description;
		this.maintenanceCost = maintenanceCost;
		this.createdBy = createdBy;
		this.updatedBy = updatedBy;
	}
	public Maintenance(String description) {
		this.description = description;
	}
	
	public int getMaintenanceId() {
		return maintenanceId;
	}
	public void setMaintenanceId(int maintenanceId) {
		this.maintenanceId = maintenanceId;
	}
	public Asset getAssetId() {
		return assetId;
	}
	public void setAssetId(Asset assetId) {
		this.assetId = assetId;
	}
	public Date getMaintenanceDate() {
		return maintenanceDate;
	}
	public void setMaintenanceDate(Date maintenanceDate) {
		this.maintenanceDate = maintenanceDate;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public float getMaintenanceCost() {
		return maintenanceCost;
	}
	public void setMaintenanceCost(float maintenanceCost) {
		this.maintenanceCost = maintenanceCost;
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
