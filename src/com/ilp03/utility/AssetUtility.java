package com.ilp03.utility;

import java.util.Scanner;

import com.ilp03.service.AssetServiceImpl;

public class AssetUtility {

	public static void main(String[] args) {
			// TODO Auto-generated method stub
			Scanner scanner=new Scanner(System.in);
			char goToMainMenu='y';
			while(goToMainMenu=='y')
			{
			AssetServiceImpl assetServiceImpl = new AssetServiceImpl();
			assetServiceImpl.getAsset();
			System.out.println("\nGo back to main menu (y/n):");
		    goToMainMenu=scanner.next().charAt(0);
			}
	}

}