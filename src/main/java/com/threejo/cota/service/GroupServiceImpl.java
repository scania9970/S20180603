package com.threejo.cota.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.threejo.cota.dao.GroupDao;
import com.threejo.cota.model.Board;
import com.threejo.cota.model.Reply;

@Service
public class GroupServiceImpl implements GroupService{
	@Autowired
	private GroupDao gd;

	@Override
	public ArrayList<Board> getPosts(Board board) {
		return (ArrayList<Board>)gd.getPosts(board);
	}

	@Override
	public void insertGroup(Board board) {
		gd.insertGroup(board);
	}

	@Override
	public Board getGroupPost(int bnum) {
		return gd.getGroupPost(bnum);
	}

	@Override
	public int getReplyCount(int bnum) {
		return gd.getReplyCount(bnum);
	}

	@Override
	public void insertGroupReply(Reply reply) {
		gd.insertGroupReply(reply);
	}

	@Override
	public ArrayList<Reply> getReplys(int bnum) {
		return (ArrayList<Reply>)gd.getReplys(bnum);
	}

	@Override
	public void deleteGroupPost(int bnum) {
		gd.deleteGroupPost(bnum);
	}

	@Override
	public void updateGroupPost(Board board) {
		gd.updateGroupPost(board);
	}

	@Override
	public void updateViewCount(int bnum) {
		gd.updateViewCount(bnum);
	}

	@Override
	public void updateJoinStatus(Board board) {
		gd.updateJoinStatus(board);
	}

	@Override
	public int getTotalPostsCount() {
		return gd.getTotalPostsCount();
	}

	@Override
	public int getSearchedTotalPostsCount(String searchText) {
		searchText = "%" + searchText + "%";
		System.out.println("searchText : " + searchText);
		return gd.getSearchedTotalPostsCount(searchText);
	}

	@Override
	public ArrayList<Board> getSearchedPosts(Board board) {
		board.setSearch("%"+board.getSearch()+"%");
		System.out.println("getSearch : " + board.getSearch());
		return (ArrayList<Board>)gd.getSearchedPosts(board);
	}


}
