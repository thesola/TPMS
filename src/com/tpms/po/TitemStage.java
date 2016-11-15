package com.tpms.po;

import javax.persistence.Table;

import tk.mybatis.mapper.annotation.NameStyle;
import tk.mybatis.mapper.code.Style;

@Table(name="t_itemstage")
@NameStyle(Style.normal)
public class TitemStage {

	private String itemID;
	private Integer stageNumber;
	private String stageState;
	private String stageName;
	private String stageDescription;
	private String stageData;

	public TitemStage() {
	}

	public TitemStage(String itemID, Integer stageNumber, String stageState, String stageName, String stageDescription,
			String stageData) {
		this.itemID = itemID;
		this.stageNumber = stageNumber;
		this.stageState = stageState;
		this.stageName = stageName;
		this.stageDescription = stageDescription;
		this.stageData = stageData;
	}

	public String getItemID() {
		return itemID;
	}

	public void setItemID(String itemID) {
		this.itemID = itemID;
	}

	public Integer getStageNumber() {
		return stageNumber;
	}

	public void setStageNumber(Integer stageNumber) {
		this.stageNumber = stageNumber;
	}

	public String getStageState() {
		return stageState;
	}

	public void setStageState(String stageState) {
		this.stageState = stageState;
	}

	public String getStageName() {
		return stageName;
	}

	public void setStageName(String stageName) {
		this.stageName = stageName;
	}

	public String getStageDescription() {
		return stageDescription;
	}

	public void setStageDescription(String stageDescription) {
		this.stageDescription = stageDescription;
	}

	public String getStageData() {
		return stageData;
	}

	public void setStageData(String stageData) {
		this.stageData = stageData;
	}

	@Override
	public String toString() {
		return "TitemStage [itemID=" + itemID + ", stageNumber=" + stageNumber + ", stageState=" + stageState
				+ ", stageName=" + stageName + ", stageDescription=" + stageDescription + ", stageData=" + stageData
				+ "]";
	}
	
}
