package com.tpms.utils;

import static org.junit.Assert.*;

import org.junit.Test;

public class TestUtils {

	@Test
	public void testGetDefaultPasswdByID() {
		System.out.println( TPMSUtils.getDefaultPasswdByID("1402753115") );
	}

}
