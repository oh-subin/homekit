package com.DTO;

public class productDTO {
	private String pro_name;
	private String pro_style;
	private int pro_price;
	private String pro_img;
	
	public productDTO(String pro_name, String pro_style, int pro_price, String pro_img) {
		super();
		this.pro_name = pro_name;
		this.pro_style = pro_style;
		this.pro_price = pro_price;
		this.pro_img = pro_img;
	}

	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}

	public String getPro_style() {
		return pro_style;
	}

	public void setPro_style(String pro_style) {
		this.pro_style = pro_style;
	}

	public int getPro_price() {
		return pro_price;
	}

	public void setPro_price(int pro_price) {
		this.pro_price = pro_price;
	}

	public String getPro_img() {
		return pro_img;
	}

	public void setPro_img(String pro_img) {
		this.pro_img = pro_img;
	}
	
	
}
