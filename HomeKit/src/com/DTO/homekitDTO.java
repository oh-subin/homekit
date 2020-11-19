package com.DTO;

public class homekitDTO {
	private String kit_name;
	private String kit_style;
	private String kit_img;
	
	public homekitDTO(String kit_name, String kit_style, String kit_img) {
		super();
		this.kit_name = kit_name;
		this.kit_style = kit_style;
		this.kit_img = kit_img;
	}

	public String getKit_name() {
		return kit_name;
	}

	public void setKit_name(String kit_name) {
		this.kit_name = kit_name;
	}

	public String getKit_style() {
		return kit_style;
	}

	public void setKit_style(String kit_style) {
		this.kit_style = kit_style;
	}

	public String getKit_img() {
		return kit_img;
	}

	public void setKit_img(String kit_img) {
		this.kit_img = kit_img;
	}
	
}
