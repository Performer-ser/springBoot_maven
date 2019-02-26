package com.aaa.entity;

import java.io.Serializable;

public class Admins implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private Integer aid;
	private String name;
	private String pwd;
	public Admins() {
		super();
	}
	public Admins(Integer aid, String name, String pwd) {
		super();
		this.aid = aid;
		this.name = name;
		this.pwd = pwd;
	}
	@Override
	public String toString() {
		return "Admins [aid=" + aid + ", name=" + name + ", pwd=" + pwd + "]";
	}
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
}
