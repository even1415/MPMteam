package com.mympm.domain;

public class MemberVO {

	private int idx;
	private String name;
	private String userid;
	private String pwd;
	private String email;
	
	private boolean saveId; //아이디저장 체크박스 값 저장
	
	public MemberVO() {
		
	}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isSaveId() {
		return saveId;
	}

	public void setSaveId(boolean saveId) {
		this.saveId = saveId;
	}

	@Override
	public String toString() {
		return "MemberVO [idx=" + idx + ", name=" + name + ", userid=" + userid + ", pwd=" + pwd + ", email=" + email
				+ ", saveId=" + saveId + "]";
	}
	
	
	
}
