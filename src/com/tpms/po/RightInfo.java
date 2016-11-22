package com.tpms.po;

// 权限信息
public class RightInfo {

	private String teacherID;
	private String className;
	private Integer studentNumber;
	private Integer rightID;

	public RightInfo() {
	}

	public RightInfo(String teacherID, String className, Integer studentNumber, Integer rightID) {
		this.teacherID = teacherID;
		this.className = className;
		this.studentNumber = studentNumber;
		this.rightID = rightID;
	}

	public String getTeacherID() {
		return teacherID;
	}

	public void setTeacherID(String teacherID) {
		this.teacherID = teacherID;
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

	public Integer getRightID() {
		return rightID;
	}

	public void setRightID(Integer rightID) {
		this.rightID = rightID;
	}

	@Override
	public String toString() {
		return "RightInfo [teacherID=" + teacherID + ", className=" + className + ", studentNumber=" + studentNumber
				+ ", rightID=" + rightID + "]";
	}

}
