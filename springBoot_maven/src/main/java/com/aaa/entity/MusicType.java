package com.aaa.entity;

import java.io.Serializable;

public class MusicType implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private Integer mscid;
	private String typename;
	public MusicType() {
		super();
	}
	public MusicType(Integer mscid, String typename) {
		super();
		this.mscid = mscid;
		this.typename = typename;
	}
	@Override
	public String toString() {
		return "MusicType [mscid=" + mscid + ", typename=" + typename + "]";
	}
	public Integer getMscid() {
		return mscid;
	}
	public void setMscid(Integer mscid) {
		this.mscid = mscid;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}

}
