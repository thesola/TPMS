package com.tpms.po;

import javax.persistence.Table;

import tk.mybatis.mapper.annotation.NameStyle;
import tk.mybatis.mapper.code.Style;

@Table(name="t_class")
@NameStyle(Style.normal)
public class Tclass {
	
	private Integer classID;
	private String className;

	public Tclass() {
	}

	public Tclass(String className) {
		this.className = className;
	}

	public Tclass(Integer classID, String className) {
		this.classID = classID;
		this.className = className;
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

	@Override
	public String toString() {
		return "Tclass [classID=" + classID + ", className=" + className + "]";
	}

}
