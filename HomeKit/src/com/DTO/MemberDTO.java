package com.DTO;

public class MemberDTO {

	private String name;
	private String address;
	private String email;
	private String pw;
	private String tel;
	
	public MemberDTO(String name, String address, String email, String pw, String tel) {
		super();
		this.name = name;
		this.address = address;
		this.email = email;
		this.pw = pw;
		this.tel = tel;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
}
