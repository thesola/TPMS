package com.tpms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import com.tpms.po.Tstudent;
import com.tpms.po.Tuser;

public interface StudentDAO extends BaseDAO<Tstudent> {
	
	// 根据学生状态查找学生
	@Select(" select stu.* from t_user user,t_student stu where user.role="+Tuser.STUDENT+" and user. status=${st} and stu.studentID=user.identity ")
	@ResultMap("studentMap")
	public List<Tstudent> selectBystatus(@Param("st")String status);
	
	// 对学生姓名进行模糊查询
	@Select(" select * from t_student where studentName like '%${key}%' ")
	@ResultMap("studentMap")
	public List<Tstudent> selectBy(@Param("key")String key);
	
	// 根据班级id查找学生信息
	@Select(" select * from t_student where classID=${id} ")
	@ResultMap("studentMap")
	public List<Tstudent> selectByClassID(@Param("id")String classID);
}
