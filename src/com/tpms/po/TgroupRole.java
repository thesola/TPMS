package com.tpms.po;

import javax.persistence.Id;
import javax.persistence.Table;

import tk.mybatis.mapper.annotation.NameStyle;
import tk.mybatis.mapper.code.Style;

@Table(name="t_grouprole")
@NameStyle(Style.normal)
public class TgroupRole {
	
	@Id
	private Integer roleID;
	private String roleName;
	private String roleDescription;

	public TgroupRole() {
	}

	public TgroupRole(Integer roleID, String roleName, String roleDescription) {
		this.roleID = roleID;
		this.roleName = roleName;
		this.roleDescription = roleDescription;
	}

	public Integer getRoleID() {
		return roleID;
	}

	public void setRoleID(Integer roleID) {
		this.roleID = roleID;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getRoleDescription() {
		return roleDescription;
	}

	public void setRoleDescription(String roleDescription) {
		this.roleDescription = roleDescription;
	}

	@Override
	public String toString() {
		return "TgroupRole [roleID=" + roleID + ", roleName=" + roleName + ", roleDescription=" + roleDescription + "]";
	}

}
