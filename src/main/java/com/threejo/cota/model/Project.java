package com.threejo.cota.model;

public class Project {
	private int pnum;
	private String email;
	private String title;
	private String content;
	private String project_url;
	@Override
	public String toString() {
		return "Project [pnum=" + pnum + ", email=" + email + ", title=" + title + ", content=" + content
				+ ", project_url=" + project_url + "]";
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getProject_url() {
		return project_url;
	}
	public void setProject_url(String project_url) {
		this.project_url = project_url;
	}
	
	
}
