package com.tpms.po;

import javax.persistence.Id;
import javax.persistence.Table;

import tk.mybatis.mapper.annotation.NameStyle;
import tk.mybatis.mapper.code.Style;

@Table(name="t_teacher")
@NameStyle(Style.normal)
public class Tteacher {
	
	@Id
	private String teacherID;
	private String teacherName;
	private String gender;
	
	public Tteacher() {
	}

	public Tteacher(String teacherID, String teacherName, String gender) {
		this.teacherID = teacherID;
		this.teacherName = teacherName;
		this.gender = gender;
	}

	public String getTeacherID() {
		return teacherID;
	}

	public void setTeacherID(String teacherID) {
		this.teacherID = teacherID;
	}

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "Tteacher [teacherID=" + teacherID + ", teacherName=" + teacherName + ", gender=" + gender + "]";
	}
	
}
