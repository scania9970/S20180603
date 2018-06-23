package com.threejo.cota.dao;

import java.util.ArrayList;
import java.util.List;

import com.threejo.cota.model.Board;
import com.threejo.cota.model.Reply;

public interface GroupDao {

	List<Board> getPosts(Board board);

	void insertGroup(Board board);

	Board getGroupPost(int bnum);

	int getReplyCount(int bnum);

	void insertGroupReply(Reply reply);

	List<Reply> getReplys(int bnum);

	void deleteGroupPost(int bnum);

	void updateGroupPost(Board board);

	void updateViewCount(int bnum);

	void updateJoinStatus(Board board);

	int getTotalPostsCount();

	int getSearchedTotalPostsCount(String searchText);

	List<Board> getSearchedPosts(Board board);

}
