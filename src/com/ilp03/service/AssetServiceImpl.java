package com.ilp03.service;

import java.sql.Connection;
import java.util.Scanner;

import com.ilp03.dao.AssetLifecycleDAO;
import com.ilp03.entity.Disposal;
import com.ilp03.entity.Employees;

public class AssetServiceImpl {
	public void getAsset() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("******* Asset Lifecycle Management *******");
		System.out.println("Enter the ID of the asset you want to track : ");
		String choice = scanner.nextLine();
		Connection connection = AssetLifecycleDAO.getConnection();
		Employees employee =AssetLifecycleDAO.getAllAssets(connection, choice);
			//System.out.println("AssetName\t\t:"+ employee.getAsset().getAssetName() + "\nEmployee First Name\t:" + employee.getEmployeeFirstName() + "\nEmployee Last Name\t:" + employee.getEmployeeLastName()+ "\nAsset Status\t\t:"+ employee.getAsset().getStatus() + "\nMaintenance Done\t:"+ employee.getMaintenance().getDescription() + "\nDisposed Method\t\t:"+ employee.getDisposal().getDisposalMethod() + "\nDisposal Reason\t\t:" + employee.getDisposal().getReason());
			
		System.out.println("+-----------------------+----------------------+---------------------+-----------------+-------------------------------------------+----------------------+---------------------+");
		System.out.printf("| %-20s | %-20s | %-20s | %-15s | %-20s | %-20s | %-20s |%n", 
		                "AssetName", "Employee First Name", "Employee Last Name", 
		                "Asset Status", "Maintenance Done                          ", "Disposed Method", "Disposal Reason");
		System.out.println("+-----------------------+----------------------+---------------------+-----------------+-------------------------------------------+----------------------+---------------------+");
		System.out.printf("| %-20s | %-20s | %-20s | %-15s | %-40s | %-20s | %-20s |%n", 
		                employee.getAsset().getAssetName(), employee.getEmployeeFirstName(), 
		                employee.getEmployeeLastName(), employee.getAsset().getStatus(), 
		                employee.getMaintenance().getDescription(), 
		                employee.getDisposal().getDisposalMethod(), employee.getDisposal().getReason());
		System.out.println("+-----------------------+----------------------+---------------------+-----------------+-------------------------------------------+----------------------+---------------------+");


			
	}
}
