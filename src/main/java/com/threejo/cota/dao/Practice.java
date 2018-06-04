package com.threejo.cota.dao;

public class Practice {
	private String lang_type;
	private String field_type;
	private String para_title;
	private String content;
	
	@Override
	public String toString() {
		return "Practice [lang_type=" + lang_type + ", field_type=" + field_type + ", para_title=" + para_title
				+ ", content=" + content + "]";
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
	public String getPara_title() {
		return para_title;
	}
	public void setPara_title(String para_title) {
		this.para_title = para_title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
