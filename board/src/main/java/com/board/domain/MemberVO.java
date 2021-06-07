package com.board.domain;

public class MemberVO {
	/*
	 * CREATE TABLE tbl_member( id VARCHAR(30) NOT NULL, pwd VARCHAR(40) NOT NULL,
	 * nickname VARCHAR(30) NOT NULL, PRIMARY KEY (id) );
	 */

	private String id;
	private String pwd;
	private String nickname;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

}
