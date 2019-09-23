package com.zhongtao.pinpai.bean;

public class User {
	private int id;
	private String uname;
	private String password;
	private int role;
	@Override
	public String toString() {
		return "User [id=" + id + ", uname=" + uname + ", password=" + password + ", role=" + role + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public void setPassword(String password) {
		this.password = password;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public User(int id, String uname, String password, int role) {
		super();
		this.id = id;
		this.uname = uname;
		this.password = password;
		this.role = role;
	}
	public User() {
		super();
	}
	
	
	

	
	
}
