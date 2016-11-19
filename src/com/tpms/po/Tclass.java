package com.tpms.po;

import javax.persistence.Id;
import javax.persistence.Table;

import tk.mybatis.mapper.annotation.NameStyle;
import tk.mybatis.mapper.code.Style;

@Table(name="t_class")
@NameStyle(Style.normal)
public class Tclass {
	
	public static final String AVAILABLE = "2";
	public static final String DISABLED = "3";
	
	@Id
	private Integer classID;
	private String className;
	private String status;

	public Tclass() {
	}

	public Tclass(String className) {
		this.className = className;
		this.status = AVAILABLE;
	}

	public Tclass(Integer classID, String className) {
		this.classID = classID;
		this.className = className;
		this.status = AVAILABLE;
	}

	public Integer getClassID() {
		return classID;
	}

	public void setClassID(Integer classID) {
		this.classID = classID;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Tclass [classID=" + classID + ", className=" + className + "]";
	}

}
