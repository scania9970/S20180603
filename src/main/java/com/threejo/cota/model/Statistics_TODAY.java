package com.threejo.cota.model;

import java.util.Date;

public class Statistics_TODAY {
	
	private String email;
	private String lang_type;
	private String field_type;
	private int speed;
	private int accuracy;
	private int interrupt;
	private String incorrect_key;
	private Date today_date;
	
	@Override
	public String toString() {
		return "Statistics_TODAY [email=" + email + ", lang_type=" + lang_type + ", field_type=" + field_type
				+ ", speed=" + speed + ", accuracy=" + accuracy + ", interrupt=" + interrupt + ", incorrect_key="
				+ incorrect_key + ", today_date=" + today_date + "]";
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLang_type() {
		return lang_type;
	}
	public void setLang_type(String lang_type) {
		this.lang_type = lang_type;
	}
	public String getField_type() {
		return field_type;
	}
	public void setField_type(String field_type) {
		this.field_type = field_type;
	}
	public int getSpeed() {
		return speed;
	}
	public void setSpeed(int speed) {
		this.speed = speed;
	}
	public int getAccuracy() {
		return accuracy;
	}
	public void setAccuracy(int accuracy) {
		this.accuracy = accuracy;
	}
	public int getInterrupt() {
		return interrupt;
	}
	public void setInterrupt(int interrupt) {
		this.interrupt = interrupt;
	}
	public String getIncorrect_key() {
		return incorrect_key;
	}
	public void setIncorrect_key(String incorrect_key) {
		this.incorrect_key = incorrect_key;
	}
	public Date getToday_date() {
		return today_date;
	}
	public void setToday_date(Date today_date) {
		this.today_date = today_date;
	}
}
