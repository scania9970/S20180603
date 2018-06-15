package com.threejo.cota.model;

import java.util.Date;

public class Statistics_SUM {
	
	private String email;
	private Date input_date;
	private String lang_type;
	private String field_type;
	private int speed;
	private int accuracy;
	private int interrupt;
	private String incorrect_key;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getInput_date() {
		return input_date;
	}
	public void setInput_date(Date input_date) {
		this.input_date = input_date;
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
	
}
