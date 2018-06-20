package com.threejo.cota.model;

import java.sql.Date;

public class Board {
	private int bnum;
	private String email;
	private int board_type;
	private String title;
	private String content;
	private int join_status;
	private int view_count;
	private int vote_count;
	private Date board_date;
	
	// member 닉네임
	private String nickname;
	
	// 조회용
		private String search;
		private String keyword;
		private String pageNum;
		private int start;
		private int end;
		
		
		
		public String getNickname() {
			return nickname;
		}
		public void setNickname(String nickname) {
			this.nickname = nickname;
		}
		public int getBnum() {
			return bnum;
		}
		public void setBnum(int bnum) {
			this.bnum = bnum;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public int getBoard_type() {
			return board_type;
		}
		public void setBoard_type(int board_type) {
			this.board_type = board_type;
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
		public int getJoin_status() {
			return join_status;
		}
		public void setJoin_status(int join_status) {
			this.join_status = join_status;
		}
		public int getView_count() {
			return view_count;
		}
		public void setView_count(int view_count) {
			this.view_count = view_count;
		}
		public int getVote_count() {
			return vote_count;
		}
		public void setVote_count(int vote_count) {
			this.vote_count = vote_count;
		}
		public Date getBoard_date() {
			return board_date;
		}
		public void setBoard_date(Date board_date) {
			this.board_date = board_date;
		}
		public String getSearch() {
			return search;
		}
		public void setSearch(String search) {
			this.search = search;
		}
		public String getKeyword() {
			return keyword;
		}
		public void setKeyword(String keyword) {
			this.keyword = keyword;
		}
		public String getPageNum() {
			return pageNum;
		}
		public void setPageNum(String pageNum) {
			this.pageNum = pageNum;
		}
		public int getStart() {
			return start;
		}
		public void setStart(int start) {
			this.start = start;
		}
		public int getEnd() {
			return end;
		}
		public void setEnd(int end) {
			this.end = end;
		}
		
		
}
