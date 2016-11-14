package com.tpms.po;

public class Tstudent {

	private String studentID;
	private String classID;
	private String studentName;
	private String gender;
	private String groupID;
	
	public Tstudent() {
	}

	public Tstudent(String studentID, String classID, String studentName, String gender, String groupID) {
		this.studentID = studentID;
		this.classID = classID;
		this.studentName = studentName;
		this.gender = gender;
		this.groupID = groupID;
	}

	public String getStudentID() {
		return studentID;
	}

	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}

	public String getClassID() {
		return classID;
	}

	public void setClassID(String classID) {
		this.classID = classID;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getGroupID() {
		return groupID;
	}

	public void setGroupID(String groupID) {
		this.groupID = groupID;
	}

	@Override
	public String toString() {
		return "Tstudent [studentID=" + studentID + ", classID=" + classID + ", studentName=" + studentName
				+ ", gender=" + gender + ", groupID=" + groupID + "]";
	}
	
}
