package com.tpms.po;

import javax.persistence.Id;
import javax.persistence.Table;

import tk.mybatis.mapper.annotation.NameStyle;
import tk.mybatis.mapper.code.Style;

@Table(name="t_user")
@NameStyle(Style.normal)
public class Tuser {
	
	public static final String ADMIN = "0";
	public static final String TEACHER = "1";
	public static final String STUDENT = "2";
	public static final String MALE = "0";
	public static final String FEMALE = "1";
	public static final String AVAILABLE = "0";
	public static final String DISABLED = "1";
	
	@Id
	private String identity;
	private String passwd;
	private String role;
	private String status;
	
	public Tuser() {
	}
	
	public Tuser(String identity, String passwd, String role) {
		this();
		this.identity = identity;
		this.passwd = passwd;
		this.role = role;
		this.status = AVAILABLE;
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
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Tuser [identity=" + identity + ", passwd=" + passwd + ", role=" + role + "]";
	}

}
