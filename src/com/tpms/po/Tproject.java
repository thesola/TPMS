package com.tpms.po;

import java.sql.Date;

import javax.persistence.Id;
import javax.persistence.Table;

import tk.mybatis.mapper.annotation.NameStyle;
import tk.mybatis.mapper.code.Style;

@Table(name="t_project")
@NameStyle(Style.normal)
public class Tproject {

	@Id
	private Integer projectID;
	private String projectName;
	private String projectDescription;
	private String projectData;
	private String projectState;
	private Date effectiveDate;
	private Integer duration;
	private Integer limit;
	private String teacherID;
	private String classID;
	
	public Tproject() {
	}

	public Tproject(Integer projectID, String projectName, String projectDescription, String projectData,
			String projectState, Date effectiveDate, Integer duration, Integer limit, String teacherID,
			String classID) {
		this.projectID = projectID;
		this.projectName = projectName;
		this.projectDescription = projectDescription;
		this.projectData = projectData;
		this.projectState = projectState;
		this.effectiveDate = effectiveDate;
		this.duration = duration;
		this.limit = limit;
		this.teacherID = teacherID;
		this.classID = classID;
	}

	public Integer getProjectID() {
		return projectID;
	}

	public void setProjectID(Integer projectID) {
		this.projectID = projectID;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getProjectDescription() {
		return projectDescription;
	}

	public void setProjectDescription(String projectDescription) {
		this.projectDescription = projectDescription;
	}

	public String getProjectData() {
		return projectData;
	}

	public void setProjectData(String projectData) {
		this.projectData = projectData;
	}

	public String getProjectState() {
		return projectState;
	}

	public void setProjectState(String projectState) {
		this.projectState = projectState;
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

	public Integer getLimit() {
		return limit;
	}

	public void setLimit(Integer limit) {
		this.limit = limit;
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

	@Override
	public String toString() {
		return "Tproject [projectID=" + projectID + ", projectName=" + projectName + ", projectDescription="
				+ projectDescription + ", projectData=" + projectData + ", projectState=" + projectState
				+ ", effectiveDate=" + effectiveDate + ", duration=" + duration + ", limit=" + limit + ", teacherID="
				+ teacherID + ", classID=" + classID + "]";
	}
	
}
