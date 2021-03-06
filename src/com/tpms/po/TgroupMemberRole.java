package com.tpms.po;

import javax.persistence.Id;
import javax.persistence.Table;

import tk.mybatis.mapper.annotation.NameStyle;
import tk.mybatis.mapper.code.Style;

@Table(name="t_groupmemberrole")
@NameStyle(Style.normal)
public class TgroupMemberRole {
	
	@Id
	private Integer id;
	private String groupID;
	private String memberID;
	private String roleID;

	public TgroupMemberRole() {
	}

	public TgroupMemberRole(String groupID, String memberID, String roleID) {
		this.groupID = groupID;
		this.memberID = memberID;
		this.roleID = roleID;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getGroupID() {
		return groupID;
	}

	public void setGroupID(String groupID) {
		this.groupID = groupID;
	}

	public String getMemberID() {
		return memberID;
	}

	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}

	public String getRoleID() {
		return roleID;
	}

	public void setRoleID(String roleID) {
		this.roleID = roleID;
	}

	@Override
	public String toString() {
		return "TgroupMemberRole [groupID=" + groupID + ", memberID=" + memberID + ", roleID=" + roleID + "]";
	}

}
