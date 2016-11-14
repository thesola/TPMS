package com.tpms.po;

public class TgroupMemberRole {
	
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
