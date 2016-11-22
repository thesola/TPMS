package com.tpms.po;

public class ClassInfo {

	private Integer classID;
	private String className;
	private Integer studentNumber;

	public ClassInfo() {
	}

	public ClassInfo(Integer classID, String className, Integer studentNumber) {
		this.classID = classID;
		this.className = className;
		this.studentNumber = studentNumber;
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

	public Integer getStudentNumber() {
		return studentNumber;
	}

	public void setStudentNumber(Integer studentNumber) {
		this.studentNumber = studentNumber;
	}

	@Override
	public String toString() {
		return "ClassInfo [classID=" + classID + ", className=" + className + ", studentNumber=" + studentNumber + "]";
	}
	
}
