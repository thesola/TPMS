package com.tpms.service;

import java.util.List;

import com.tpms.po.Tclass;
import com.tpms.po.TmanagementRight;
import com.tpms.po.TmonitoringRight;
import com.tpms.po.Tstudent;
import com.tpms.po.Tteacher;

public interface AdminService {
	
	// 导入单个学生
	public void insertOneStudnt(Tstudent tstudent);
	
	// 导入单个教师
	public void insertOneTeacher(Tteacher tteacher) ;

	// 导入单个班级
	public void insertOneClass(Tclass tclass);
	
	// 导入多个学生
	public void insertStudents(List<Tstudent> tstudents);
	
	// 获取用户状态
	public String getUserStatusByID(String ID);
	
	// 修改用户状态
	public void setUserStatusByID(String ID, String newStatus);
	
	// 获取班级状态
	public String getClassStatusByID(String ID);
	
	// 修改班级状态
	public void setClassStatusByID(String ID, String newStatus);
	
	// 获取教师列表
	public List<Tteacher> getAllTeachers();
	
	// 对教师姓名/工号模糊查询
	public List<Tteacher> getTeachersBy(String key);
	
	// 获取某一种状态的所有教师信息
	public List<Tteacher> getTeachersByStatus(String status);
	
	// 获取班级列表
	public List<Tclass> getAllClasses();
	
	// 对班级名称模糊查询
	public List<Tclass> getClassesBy(String key);
	
	// 获取某一种状态的所有班级列表
	public List<Tclass> getClassesByStatus(String status);
	
	// 按班级检索学生列表
	public  List<Tstudent> getStudentsByClassID(Integer classID);
	
	// 对学生姓名/学号模糊查询
	public List<Tstudent> getStudentsBy(String key);
	
	// 获取某一种状态的学生列表
	public List<Tstudent> getStudentsByStatus(String status);
	
	// 给教师添加管理权限
	public void addManagementRight(TmanagementRight mRight);
	
	// 撤销教师管理权限
	public void removeManagementRight(Integer mRightID);
	
	// 查询教师管理权限
	public List<TmanagementRight> getManagementRights(String teacherID);
	
	// 给教师添加听课权限
	public void addMonitoringRight(TmonitoringRight tRight);
	
	// 撤销教师听课权限
	public void removeMonitoringRight(Integer tRightID);
	
	// 查询教师听课权限
	public List<TmonitoringRight> getMonitoringRights(String teacherID);
	
	// 根据班级id查找班级信息
	public Tclass findClassByID( String id );
	
}
