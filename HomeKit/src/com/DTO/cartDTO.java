package com.DTO;

public class cartDTO {
	private int cart_num;
	private String email;
	private String cart_name;
	private int cart_cnt;
	private int cart_price;
	private String cart_img;
	public cartDTO(int cart_num, String email, String cart_name, int cart_cnt, int cart_price, String cart_img) {
		super();
		this.cart_num = cart_num;
		this.email = email;
		this.cart_name = cart_name;
		this.cart_cnt = cart_cnt;
		this.cart_price = cart_price;
		this.cart_img = cart_img;
	}
	public int getCart_num() {
		return cart_num;
	}
	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCart_name() {
		return cart_name;
	}
	public void setCart_name(String cart_name) {
		this.cart_name = cart_name;
	}
	public int getCart_cnt() {
		return cart_cnt;
	}
	public void setCart_cnt(int cart_cnt) {
		this.cart_cnt = cart_cnt;
	}
	public int getCart_price() {
		return cart_price;
	}
	public void setCart_price(int cart_price) {
		this.cart_price = cart_price;
	}
	public String getCart_img() {
		return cart_img;
	}
	public void setCart_img(String cart_img) {
		this.cart_img = cart_img;
	}
	
}
