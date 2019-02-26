package com.aaa.entity;

import java.io.Serializable;
import java.util.Date;

public class Music implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private Integer mscid;//编号
	private String title;//歌名
	private String singer;//歌手
	private String special;//所属专辑
	private String mscvalue;//音乐说明
	private Date msctime;//上传时间
	private Integer click;//试听次数
	private String url;//音乐地址
	public Music() {
		super();
	}
	public Music(Integer mscid, String title, String singer, String special,
			String mscvalue, Date msctime, Integer click, String url) {
		super();
		this.mscid = mscid;
		this.title = title;
		this.singer = singer;
		this.special = special;
		this.mscvalue = mscvalue;
		this.msctime = msctime;
		this.click = click;
		this.url = url;
	}
	@Override
	public String toString() {
		return "Music [mscid=" + mscid + ", title=" + title + ", singer="
				+ singer + ", special=" + special + ", mscvalue=" + mscvalue
				+ ", msctime=" + msctime + ", click=" + click + ", url=" + url
				+ "]";
	}
	public Integer getMscid() {
		return mscid;
	}
	public void setMscid(Integer mscid) {
		this.mscid = mscid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public String getSpecial() {
		return special;
	}
	public void setSpecial(String special) {
		this.special = special;
	}
	public String getMscvalue() {
		return mscvalue;
	}
	public void setMscvalue(String mscvalue) {
		this.mscvalue = mscvalue;
	}
	public Date getMsctime() {
		return msctime;
	}
	public void setMsctime(Date msctime) {
		this.msctime = msctime;
	}
	public Integer getClick() {
		return click;
	}
	public void setClick(Integer click) {
		this.click = click;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}

}
