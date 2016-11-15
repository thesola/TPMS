package com.tpms.service;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import javax.swing.Spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tpms.po.Tclass;
import com.tpms.po.Tstudent;
import com.tpms.po.Tteacher;
import com.tpms.po.Tuser;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"/applicationContext.xml"})
public class testAdminService {

	@Autowired
	private AdminService adminService;
	
	
	@Test
	public void testInsertOneStudnt() {
		Tstudent student = new Tstudent("1402753129", "软件1431", "孟雪", Tuser.FEMALE);
		adminService.insertOneStudnt(student);
	}

	@Test
	public void testInsertOneTeacher() {
		Tteacher teacher = new Tteacher("1402753115", "张一凡", Tuser.MALE);
		adminService.insertOneTeacher(teacher);
	}
	
	@Test
	public void testInsertOneClass() {
		Tclass tclass  = new Tclass("软件1431");
		adminService.insertOneClass(tclass);
	}

	@Test
	public void testInsertStudents() {
		List<Tstudent> tstudents = new ArrayList<>();
		tstudents.add(new Tstudent("1402753130", "软件1431", "王静", Tuser.FEMALE));
		tstudents.add(new Tstudent("1402753131", "软件1431", "肖晓", Tuser.FEMALE));
		
		adminService.insertStudents(tstudents);
	}
	
}
