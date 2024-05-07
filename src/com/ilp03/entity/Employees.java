package com.ilp03.entity;

public class Employees {
	private int employeeId;
	private String employeeFirstName;
	private String employeeLastName;
	private Departments departmentId;
	private JobRole roleId;
	private String email;
	private long phone;
	private Asset asset;
	private Maintenance maintenance;
	private Disposal disposal;
	public Employees(int employeeId, String employeeFirstName, String employeeLastName, Departments departmentId,
			JobRole roleId, String email, long phone) {
//		super();
		this.employeeId = employeeId;
		this.employeeFirstName = employeeFirstName;
		this.employeeLastName = employeeLastName;
		this.departmentId = departmentId;
		this.roleId = roleId;
		this.email = email;
		this.phone = phone;
	}
	
	public Employees(Asset asset, String employeeFirstName, String employeeLastName, Maintenance maintenance, Disposal disposal) {
		this.asset=asset;
		this.employeeFirstName = employeeFirstName;
		this.employeeLastName = employeeLastName;
		this.maintenance=maintenance;
		this.disposal=disposal;
	}
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getEmployeeFirstName() {
		return employeeFirstName;
	}
	public void setEmployeeFirstName(String employeeFirstName) {
		this.employeeFirstName = employeeFirstName;
	}
	public String getEmployeeLastName() {
		return employeeLastName;
	}
	public void setEmployeeLastName(String employeeLastName) {
		this.employeeLastName = employeeLastName;
	}
	public Departments getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(Departments departmentId) {
		this.departmentId = departmentId;
	}
	public JobRole getRoleId() {
		return roleId;
	}
	public void setRoleId(JobRole roleId) {
		this.roleId = roleId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}

	public Asset getAsset() {
		return asset;
	}

	public void setAsset(Asset asset) {
		this.asset = asset;
	}

	public Maintenance getMaintenance() {
		return maintenance;
	}

	public void setMaintenance(Maintenance maintenance) {
		this.maintenance = maintenance;
	}

	public Disposal getDisposal() {
		return disposal;
	}

	public void setDisposal(Disposal disposal) {
		this.disposal = disposal;
	}
	
	
}	
