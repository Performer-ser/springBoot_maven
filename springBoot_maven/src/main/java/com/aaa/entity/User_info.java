package com.aaa.entity;

import java.io.Serializable;

public class User_info implements Serializable{

	private static final long serialVersionUID = 1L;
	private Integer uuid;
	private String uname;
	private String pwd;
	public User_info() {
		super();
	}
	public User_info(Integer uuid, String uname, String pwd) {
		super();
		this.uuid = uuid;
		this.uname = uname;
		this.pwd = pwd;
	}
	@Override
	public String toString() {
		return "User_info [uuid=" + uuid + ", uname=" + uname + ", pwd=" + pwd
				+ "]";
	}
	public Integer getUuid() {
		return uuid;
	}
	public void setUuid(Integer uuid) {
		this.uuid = uuid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
}
