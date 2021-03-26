package com.eggta.domain;



public class UserVO {
	String email;
	String nickname;
	String pwd;
	String usercomment;
	int ismen;
	String thumb;
	public String getThumb() {
		return thumb;
	}
	public void setThumb(String thumb) {
		this.thumb = thumb;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getUsercomment() {
		return usercomment;
	}
	public void setUsercomment(String usercomment) {
		this.usercomment = usercomment;
	}
	public int getIsmen() {
		return ismen;
	}
	public void setIsmen(int ismen) {
		this.ismen = ismen;
	}

}
