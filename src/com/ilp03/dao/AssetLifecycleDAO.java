package com.ilp03.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ilp03.entity.Asset;
import com.ilp03.entity.Disposal;
import com.ilp03.entity.Employees;
import com.ilp03.entity.Maintenance;

public class AssetLifecycleDAO {
	
	public static Connection getConnection() {
	    String url = "jdbc:mysql://localhost:3306/assetlifecycle?useSSL=false";
	    String userName = "root";
	    String password = "Shadab@2001";
	    Connection connection = null;
	    try {
			connection = DriverManager.getConnection(url, userName, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return connection;
	}
	
	public static void   closeConnection(Connection connection)
	{
		try {
			connection.close();
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public static Employees getAllAssets(Connection connection, String choice)
	{
		Employees employee = null;
		PreparedStatement statement;
		try {
			statement = connection.prepareStatement("SELECT a.asset_name,emp.emp_firstname,emp.emp_lastname,m.description,d.disposal_method,d.reason,a.status FROM asset a LEFT JOIN asset_assignment aa ON a.asset_ID = aa.asset_ID LEFT JOIN employees emp ON aa.employee_ID = emp.employee_ID LEFT JOIN maintenance m ON a.asset_ID = m.asset_ID LEFT JOIN disposal d ON a.asset_ID = d.asset_ID WHERE a.asset_ID = ?;");
			statement.setString(1, choice);
			ResultSet resultSet = statement.executeQuery();
			while(resultSet.next())
			{
				String assetName=resultSet.getString(1);
				String employeeFirstName=resultSet.getString(2);
				String employeeLastName=resultSet.getString(3);
				String description=resultSet.getString(4);
				String disposalMethod=resultSet.getString(5);
				String reason=resultSet.getString(6);
				String status = resultSet.getString(7);
				
				Asset asset = new Asset(assetName,status);
				Maintenance maintenance = new Maintenance(description);
				Disposal disposal = new Disposal(disposalMethod,reason);
				employee = new Employees(asset,employeeFirstName, employeeLastName, maintenance, disposal);
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 
		
		return employee;
	}
}





















//AssetCategory assetCategory=new AssetCategory(0,null);
//Departments departments=new Departments(0,null);
//JobRole jobRole=new JobRole(0,null);
//Asset asset=new Asset(0,assetName,assetCategory,null,null,null,null);
//Employees employees=new Employees(0,employeeFirstName,employeeLastName,departments,jobRole,null,0);
//Maintenance maintenance =new Maintenance(0,asset,null,description,0,employees,employees);
//Disposal disposal = new Disposal(0,asset,null,disposalMethod,reason,employees,employees);	
//AssetAssignment assetAssignment = new AssetAssignment(0,asset,employees,null,null,employees,employees);
//assetList.add(disposal);