package com.tpms.service;


import java.util.ArrayList;
import java.util.List;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tpms.po.Tclass;
import com.tpms.po.TmanagementRight;
import com.tpms.po.TmonitoringRight;
import com.tpms.po.Tstudent;
import com.tpms.po.Tteacher;
import com.tpms.po.Tuser;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"/applicationContext.xml"})
public class testAdminService {

	@Autowired
	private AdminService adminService;
	
	@Test
	public void testGetMonitoringRights(){
		List<TmonitoringRight> tList = adminService.getMonitoringRights("1502753115");
		for (TmonitoringRight tmonitoringRight : tList) {
			System.err.println(tmonitoringRight);
		}
	}
	
//	@Test
//	public void testRemoveMonitoringRight(){
//		TmonitoringRight tRight = new TmonitoringRight();
//		tRight.setTeacherID("1502753115");
//		tRight.setClassID("2");
//		adminService.removeMonitoringRight("","");
//	}
	
	@Test
	public void testAddMonitoringRight(){
		TmonitoringRight tRight = new TmonitoringRight();
		tRight.setTeacherID("1502753115");
		tRight.setClassID("2");
		adminService.addMonitoringRight(tRight);
	}
	
	@Test
	public void testGetManagementRights(){
		List<TmanagementRight> mList = adminService.getManagementRights("1502753115");
		for (TmanagementRight tmanagementRight : mList) {
			System.err.println(tmanagementRight);
		}
	}
	
//	5r
	
	@Test
	public void testAddManagementRight(){
		TmanagementRight mRight = new TmanagementRight();
		mRight.setTeacherID("1502753115");
		mRight.setClassID("2");
		adminService.addManagementRight(mRight);
	}
	
	@Test
	public void testGetStudentsByClassID(){
		List<Tstudent> tstudents = adminService.getStudentsByClassID(Integer.parseInt("2"));
		for (Tstudent tstudent : tstudents) {
			System.err.println( tstudent );
		}
	}
	
	@Test
	public void testGetStudentsBy(){
		List<Tstudent> tstudents = adminService.getStudentsBy("");
		for (Tstudent tstudent : tstudents) {
			System.err.println( tstudent );
		}
	}
	
	@Test
	public void testGetStudentsByStatus(){
		List<Tstudent> tstudents = adminService.getStudentsByStatus(Tuser.DISABLED);
		for (Tstudent tstudent : tstudents) {
			System.err.println( tstudent );
		}
	}
	
	@Test
	public void testGetTeachersBy(){
		List<Tteacher> tteachers = adminService.getTeachersBy("二");
		for (Tteacher tteacher : tteachers) {
			System.err.println(tteacher);
		}
	}
	
	@Test
	public void testGetTeachersByStatus(){
		List<Tteacher> tteachers = adminService.getTeachersByStatus(Tuser.AVAILABLE);
		for (Tteacher tteacher : tteachers) {
			System.err.println(tteacher);
		}
	}
	
	@Test
	public void testSelectBy(){
		List<Tclass> tclasses =  adminService.getClassesBy("31");
		for (Tclass tclass : tclasses) {
			System.err.println( tclass );
		}
	}
	
	@Test
	public void testGetClassesByStatus(){
		List<Tclass> tclasses =  adminService.getClassesByStatus(Tclass.DISABLED);
		for (Tclass tclass : tclasses) {
			System.err.println( tclass );
		}
	}
	
	@Test
	public void testGetAllTeacher(){
		List<Tteacher> tteachers = adminService.getAllTeachers();
		for (Tteacher tteacher : tteachers) {
			System.out.println(tteacher);
		}
	}
	
	@Test
	public void testGetClassStatus(){
		System.out.println( adminService.getClassStatusByID("1") );
	}
	
	@Test
	public void testSetClassStatus(){
		adminService.setClassStatusByID("1", Tclass.DISABLED);
	}
	
	@Test
	public void testGetUserStatus(){
		System.out.println( adminService.getUserStatusByID("1402753115") );
	}
	
	@Test
	public void testSetUserStatus(){
		adminService.setUserStatusByID("1402753130", Tuser.DISABLED);
	}
	
	@Test
	public void testInsertOneStudnt() {
		Tstudent student = new Tstudent("1502753129", "软件1431", "孟二", Tuser.FEMALE);
		adminService.insertOneStudnt(student);
	}

	@Test
	public void testInsertOneTeacher() {
		Tteacher teacher = new Tteacher("1402753115", "张一凡", Tuser.MALE);
		adminService.insertOneTeacher(teacher);
	}
	
	@Test
	public void testInsertOneClass() {
		Tclass tclass  = new Tclass("软件1421");
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
