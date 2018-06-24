package com.threejo.cota.service;

import java.util.ArrayList;

import com.threejo.cota.model.Board;
import com.threejo.cota.model.Reply;

public interface GroupService {

	ArrayList<Board> getPosts(Board board);

	void insertGroup(Board board);

	Board getGroupPost(int bnum);

	int getReplyCount(int bnum);

	void insertGroupReply(Reply reply);

	ArrayList<Reply> getReplys(int bnum);

	void deleteGroupPost(int bnum);

	void updateGroupPost(Board board);

	void updateViewCount(int bnum);

	void updateJoinStatus(Board board);

	int getTotalPostsCount();

	int getSearchedTotalPostsCount(String searchText);

	ArrayList<Board> getSearchedPosts(Board board);
	
}
