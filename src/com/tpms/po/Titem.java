package com.tpms.po;

import javax.persistence.Table;

import tk.mybatis.mapper.annotation.NameStyle;
import tk.mybatis.mapper.code.Style;

@Table(name="t_item")
@NameStyle(Style.normal)
public class Titem {
	
	private Integer itemID;
	private String itemName;
	private String itemDescription;
	private String leaderID;
	private String projectID;

	public Titem() {
	}

	public Titem(Integer itemID, String itemName, String itemDescription, String leaderID, String projectID) {
		this.itemID = itemID;
		this.itemName = itemName;
		this.itemDescription = itemDescription;
		this.leaderID = leaderID;
		this.projectID = projectID;
	}

	public Integer getItemID() {
		return itemID;
	}

	public void setItemID(Integer itemID) {
		this.itemID = itemID;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getItemDescription() {
		return itemDescription;
	}

	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}

	public String getLeaderID() {
		return leaderID;
	}

	public void setLeaderID(String leaderID) {
		this.leaderID = leaderID;
	}

	public String getProjectID() {
		return projectID;
	}

	public void setProjectID(String projectID) {
		this.projectID = projectID;
	}

	@Override
	public String toString() {
		return "Titem [itemID=" + itemID + ", itemName=" + itemName + ", itemDescription=" + itemDescription
				+ ", leaderID=" + leaderID + ", projectID=" + projectID + "]";
	}

}
