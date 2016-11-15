package com.tpms.service;

import java.util.List;

import com.tpms.po.Tclass;
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
	
	// 修改用户状态
	// 获取教师列表
	// 获取班级列表
	// 按班级检索学生信息
	
}
