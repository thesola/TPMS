package com.tpms.po;

import javax.persistence.Table;

@Table(name="t_user")
public class Tuser {
	
	private String identity;
	private String passwd;
	private String role;
	
	public Tuser() {
	}

	public Tuser(String identity, String passwd, String role) {
		this.identity = identity;
		this.passwd = passwd;
		this.role = role;
	}
	
	public String getIdentity() {
		return identity;
	}
	
	public void setIdentity(String identity) {
		this.identity = identity;
	}
	
	public String getPasswd() {
		return passwd;
	}
	
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	public String getRole() {
		return role;
	}
	
	public void setRole(String role) {
		this.role = role;
	}
	
	@Override
	public String toString() {
		return "Tuser [identity=" + identity + ", passwd=" + passwd + ", role=" + role + "]";
	}

}
