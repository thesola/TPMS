package com.tpms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import com.tpms.po.Tteacher;
import com.tpms.po.Tuser;

public interface TeacherDAO extends BaseDAO<Tteacher> {

	// 根据状态查找教师
	@Select(" select * from t_teacher where teacherID in ( select identity from t_user where role="+ Tuser.TEACHER + " and status=${st}  ) ")
	@ResultMap("teacherMap")
	public List<Tteacher> selectByStatus(@Param("st")String status);
	
	// 对名字进行模糊查找
	@Select(" select * from t_teacher where teacherName like '%${key}%' ")
	@ResultMap("teacherMap")
	public List<Tteacher> selectBy(@Param("key")String key);
	
}
