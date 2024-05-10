package com.demo.model;

import javax.validation.constraints.NotNull;

public class Login {
	
	@NotNull(message="Enter your UserId")
	private String userid;
	@NotNull(message="Enter your Password")
	private String password;
	
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
