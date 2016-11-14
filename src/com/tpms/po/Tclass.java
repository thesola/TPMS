package com.tpms.po;

public class Tclass {
	
	private Integer classID;
	private String className;

	public Tclass() {
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
