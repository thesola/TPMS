package com.tpms.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tpms.po.TuserInfo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"/applicationContext.xml"})
public class TestUserService {
	
	@Autowired
	private UserService userService;

	@Test
	public void testUpdateUserInfo(){
		TuserInfo tuserInfo = new TuserInfo("1502753115");
		tuserInfo.setEmail("1668543818@qq.com");
		tuserInfo.setName("张一凡");
		userService.updateUserInfo(tuserInfo);
	}
	
	@Test
	public void testFindUserInfo(){
		System.err.println( userService.findUserInfoByID("1502753115") );
	}

	@Test
	public void testLogin() {
		System.err.println( userService.login("1402753115", "75311") );
	}

	@Test
	public void testModifyPasswd() {
		userService.modifyPasswd("1402753115", "20101207yly");
	}

}
