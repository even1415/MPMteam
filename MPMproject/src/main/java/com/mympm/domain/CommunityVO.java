package com.mympm.domain;

import java.sql.Date;

public class CommunityVO {

	private int ct_idx;
	private String ct_title;
	private String ct_writer;
	private String ct_content;
	private int ct_readnum;
	private Date ct_date;
	
	public CommunityVO() {
		
	}//------»ı¼ºÀÚ
	
	public int getCt_idx() {
		return ct_idx;
	}
	public void setCt_idx(int ct_idx) {
		this.ct_idx = ct_idx;
	}
	public String getCt_title() {
		return ct_title;
	}
	public void setCt_title(String ct_title) {
		this.ct_title = ct_title;
	}
	public String getCt_writer() {
		return ct_writer;
	}
	public void setCt_writer(String ct_writer) {
		this.ct_writer = ct_writer;
	}
	public String getCt_content() {
		return ct_content;
	}
	public void setCt_content(String ct_content) {
		this.ct_content = ct_content;
	}
	public int getCt_readnum() {
		return ct_readnum;
	}
	public void setCt_readnum(int ct_readnum) {
		this.ct_readnum = ct_readnum;
	}
	public Date getCt_date() {
		return ct_date;
	}
	public void setCt_date(Date ct_date) {
		this.ct_date = ct_date;
	}

	@Override
	public String toString() {
		return "CommunityVO [ct_idx=" + ct_idx + ", ct_title=" + ct_title + ", ct_writer=" + ct_writer + ", ct_content="
				+ ct_content + ", ct_readnum=" + ct_readnum + ", ct_date=" + ct_date + "]";
	}
	
	

	
}
