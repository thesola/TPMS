package com.tpms.po;

import javax.persistence.Id;
import javax.persistence.Table;

import tk.mybatis.mapper.annotation.NameStyle;
import tk.mybatis.mapper.code.Style;

@Table(name="t_group")
@NameStyle(Style.normal)
public class Tgroup {
	
	@Id
	private Integer groupID;
	private String leaderID;
	private String itemID;
	private String groupName;
	private String groupDescription;
	
	public Tgroup() {
	}

	public Tgroup(Integer groupID, String leaderID, String itemID, String groupName, String groupDescription) {
		this.groupID = groupID;
		this.leaderID = leaderID;
		this.itemID = itemID;
		this.groupName = groupName;
		this.groupDescription = groupDescription;
	}

	public Integer getGroupID() {
		return groupID;
	}

	public void setGroupID(Integer groupID) {
		this.groupID = groupID;
	}

	public String getLeaderID() {
		return leaderID;
	}

	public void setLeaderID(String leaderID) {
		this.leaderID = leaderID;
	}

	public String getItemID() {
		return itemID;
	}

	public void setItemID(String itemID) {
		this.itemID = itemID;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public String getGroupDescription() {
		return groupDescription;
	}

	public void setGroupDescription(String groupDescription) {
		this.groupDescription = groupDescription;
	}

	@Override
	public String toString() {
		return "Tgroup [groupID=" + groupID + ", leaderID=" + leaderID + ", itemID=" + itemID + ", groupName="
				+ groupName + ", groupDescription=" + groupDescription + "]";
	}
	
}
