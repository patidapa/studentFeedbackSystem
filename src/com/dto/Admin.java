package com.dto;

public class Admin {
	private String uname;
	private String password;
	
	public Admin(String uname, String password) {
		super();
		this.uname = uname;
		this.password = password;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String Password) {
		this.password = password;
	}
}
