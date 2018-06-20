package com.threejo.cota.model;

import java.sql.Date;

public class Portfolio {
	
	private String email;
	private String name;
	private Date birth;
	private String image_url;
	private String job;
	private String introduction;
	private String color_back;
	private String color_font;
	private int is_search;
	private int is_visible;
	private Date write_date;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getColor_back() {
		return color_back;
	}
	public void setColor_back(String color_back) {
		this.color_back = color_back;
	}
	public String getColor_font() {
		return color_font;
	}
	public void setColor_font(String color_font) {
		this.color_font = color_font;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getImage_url() {
		return image_url;
	}
	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public int getIs_search() {
		return is_search;
	}
	public void setIs_search(int is_search) {
		this.is_search = is_search;
	}
	public int getIs_visible() {
		return is_visible;
	}
	public void setIs_visible(int is_visible) {
		this.is_visible = is_visible;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	
}
