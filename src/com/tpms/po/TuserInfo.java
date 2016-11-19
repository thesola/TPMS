package com.tpms.po;

import javax.persistence.Id;
import javax.persistence.Table;

import tk.mybatis.mapper.annotation.NameStyle;
import tk.mybatis.mapper.code.Style;

@Table(name="t_userinfo")
@NameStyle(Style.normal)
public class TuserInfo {

	@Id
	private String identity;
	private String name;
	private String email;
	private String academy;
	private String phoneNumber;
	private String workNumber;
	private String selfIntroduction;
	private String head;

	public TuserInfo() {
	}

	public TuserInfo(String identity) {
		this.identity = identity;
	}

	public TuserInfo(String identity, String name) {
		this.identity = identity;
		this.name = name;
	}

	public TuserInfo(String identity, String name, String email, String academy, String phoneNumber, String workNumber,
			String selfIntroduction, String head) {
		this.identity = identity;
		this.name = name;
		this.email = email;
		this.academy = academy;
		this.phoneNumber = phoneNumber;
		this.workNumber = workNumber;
		this.selfIntroduction = selfIntroduction;
		this.head = head;
	}

	public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAcademy() {
		return academy;
	}

	public void setAcademy(String academy) {
		this.academy = academy;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getWorkNumber() {
		return workNumber;
	}

	public void setWorkNumber(String workNumber) {
		this.workNumber = workNumber;
	}

	public String getSelfIntroduction() {
		return selfIntroduction;
	}

	public void setSelfIntroduction(String selfIntroduction) {
		this.selfIntroduction = selfIntroduction;
	}

	public String getHead() {
		return head;
	}

	public void setHead(String head) {
		this.head = head;
	}

	@Override
	public String toString() {
		return "TuserInfo [identity=" + identity + ", name=" + name + ", email=" + email + ", academy=" + academy
				+ ", phoneNumber=" + phoneNumber + ", workNumber=" + workNumber + ", selfIntroduction="
				+ selfIntroduction + ", head=" + head + "]";
	}
	
}
