package com.DTO;

public class RecommendationDTO {
	private String rec_style;
	private String rec_title;
	private String rec_img;
	
	public RecommendationDTO(String rec_style, String rec_title, String rec_img) {
		super();
		this.rec_style = rec_style;
		this.rec_title = rec_title;
		this.rec_img = rec_img;
	}

	public String getRec_style() {
		return rec_style;
	}

	public void setRec_style(String rec_style) {
		this.rec_style = rec_style;
	}

	public String getRec_title() {
		return rec_title;
	}

	public void setRec_title(String rec_title) {
		this.rec_title = rec_title;
	}

	public String getRec_img() {
		return rec_img;
	}

	public void setRec_img(String rec_img) {
		this.rec_img = rec_img;
	}
	
}
