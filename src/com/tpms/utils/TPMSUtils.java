package com.tpms.utils;

public class TPMSUtils {
	
	public static String getDefaultPasswdByID(String ID){
		int endIndex = ID.length();
		String passwd = ID.substring(endIndex - 6, endIndex); // 取学号后六位
		return passwd;
	}

}
