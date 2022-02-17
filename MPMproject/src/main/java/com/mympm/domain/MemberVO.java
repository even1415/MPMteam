package com.mympm.domain;

public class MemberVO {

	private int idx;
	private String nickname;
	private String userid;
	private String pwd;
	private String email;
	
	private boolean saveId; //���̵����� üũ�ڽ� �� ����
	
	public MemberVO() {
		
	}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
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
		return "MemberVO [idx=" + idx + ", nickname=" + nickname + ", userid=" + userid + ", pwd=" + pwd + ", email=" + email
				+ ", saveId=" + saveId + "]";
	}
	
	
	
}
