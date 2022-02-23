package com.mympm.domain;

import java.sql.Date;

public class M_ReviewVO {
	
	private int mr_idx;
	private String mr_content;
	private Date mr_date;
	private int idx_fk;
	private int midx;
	private String nickname;
	
	public M_ReviewVO() {
		
	}

	public int getMr_idx() {
		return mr_idx;
	}

	public void setMr_idx(int mr_idx) {
		this.mr_idx = mr_idx;
	}

	public String getMr_content() {
		return mr_content;
	}

	public void setMr_content(String mr_content) {
		this.mr_content = mr_content;
	}

	public Date getMr_date() {
		return mr_date;
	}

	public void setMr_date(Date mr_date) {
		this.mr_date = mr_date;
	}

	public int getIdx_fk() {
		return idx_fk;
	}

	public void setIdx_fk(int idx_fk) {
		this.idx_fk = idx_fk;
	}

	public int getMidx() {
		return midx;
	}

	public void setMidx(int midx) {
		this.midx = midx;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "M_ReviewVO [mr_idx=" + mr_idx + ", mr_content=" + mr_content + ", mr_date=" + mr_date + ", idx_fk="
				+ idx_fk + ", midx=" + midx + ", nickname=" + nickname + "]";
	}

	
	
}
