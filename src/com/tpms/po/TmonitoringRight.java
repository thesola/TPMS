package com.tpms.po;

import java.sql.Date;

import javax.persistence.Id;
import javax.persistence.Table;

import tk.mybatis.mapper.annotation.NameStyle;
import tk.mybatis.mapper.code.Style;

@Table(name="t_monitoringright")
@NameStyle(Style.normal)
public class TmonitoringRight {
	
	@Id
	private Integer id;
	private String teacherID;
	private String classID;
	private Date effectiveDate;
	private Integer duration;
	
	public TmonitoringRight() {
	}

	public TmonitoringRight(String teacherID, String classID, Date effectiveDate, Integer duration) {
		this.teacherID = teacherID;
		this.classID = classID;
		this.effectiveDate = effectiveDate;
		this.duration = duration;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTeacherID() {
		return teacherID;
	}

	public void setTeacherID(String teacherID) {
		this.teacherID = teacherID;
	}

	public String getClassID() {
		return classID;
	}

	public void setClassID(String classID) {
		this.classID = classID;
	}

	public Date getEffectiveDate() {
		return effectiveDate;
	}

	public void setEffectiveDate(Date effectiveDate) {
		this.effectiveDate = effectiveDate;
	}

	public Integer getDuration() {
		return duration;
	}

	public void setDuration(Integer duration) {
		this.duration = duration;
	}

	@Override
	public String toString() {
		return "TmonitoringRight [teacherID=" + teacherID + ", classID=" + classID + ", effectiveDate=" + effectiveDate
				+ ", duration=" + duration + "]";
	}

}
