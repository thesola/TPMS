package com.tpms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import com.tpms.po.Tclass;

public interface ClassDAO extends BaseDAO<Tclass> {
	
	// 按班级状态查找班级
	@Select(" select * from t_class where status = #{st} ")
	@ResultMap("classMap")
	public List<Tclass> selectByStatus(@Param("st")String status);
	
	// 对班级名称模糊查找班级
	@Select(" select * from t_class where className like '%${key}%' ")
	@ResultMap("classMap")
	public List<Tclass> selectBy(@Param("key")String key);
	
}
