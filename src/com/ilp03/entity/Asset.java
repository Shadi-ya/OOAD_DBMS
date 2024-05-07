package com.ilp03.entity;

import java.sql.Date;

public class Asset {
	private int assetId;
	private String assetName;
	private AssetCategory categoryId;
	private Date purchasedDate;
	private String status;
	private Employees createdBy;
	private Employees updatedBy;
	
	public Asset(int assetId, String assetName, AssetCategory categoryId, Date purchasedDate, String status,
			Employees createdBy, Employees updatedBy) {
//		super();
		this.assetId = assetId;
		this.assetName = assetName;
		this.categoryId = categoryId;
		this.purchasedDate = purchasedDate;
		this.status = status;
		this.createdBy = createdBy;
		this.updatedBy = updatedBy;
	}

	public Asset(String assetName,String status) {
		this.assetName = assetName;
		this.status = status;
	}
	public int getAssetId() {
		return assetId;
	}

	public void setAssetId(int assetId) {
		this.assetId = assetId;
	}

	public String getAssetName() {
		return assetName;
	}

	public void setAssetName(String assetName) {
		this.assetName = assetName;
	}

	public AssetCategory getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(AssetCategory categoryId) {
		this.categoryId = categoryId;
	}

	public Date getPurchasedDate() {
		return purchasedDate;
	}

	public void setPurchasedDate(Date purchasedDate) {
		this.purchasedDate = purchasedDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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
