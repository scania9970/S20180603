package com.threejo.cota.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.threejo.cota.model.Board;
import com.threejo.cota.model.Reply;

@Repository
public class GroupDaoImpl implements GroupDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public List<Board> getPosts(Board board) {
		return session.selectList("getPosts", board);
	}

	@Override
	public void insertGroup(Board board) {
		session.insert("insertGroup", board);
	}

	@Override
	public Board getGroupPost(int bnum) {
		return session.selectOne("getGroupPost", bnum);
	}

	@Override
	public int getReplyCount(int bnum) {
		return session.selectOne("getReplyCount", bnum);
	}

	@Override
	public void insertGroupReply(Reply reply) {
		session.insert("insertGroupReply", reply);
	}

	@Override
	public List<Reply> getReplys(int bnum) {
		return session.selectList("getReplys", bnum);
	}

	@Override
	public void deleteGroupPost(int bnum) {
		session.delete("deleteGroupReply", bnum);
		session.delete("deleteGroupPost", bnum);
	}

	@Override
	public void updateGroupPost(Board board) {
		session.update("updateGroupPost", board);
	}

	@Override
	public void updateViewCount(int bnum) {
		session.update("updateViewCount", bnum);
	}

	@Override
	public void updateJoinStatus(Board board) {
		session.update("updateJoinStatus", board);
	}

	@Override
	public int getTotalPostsCount() {
		return session.selectOne("getTotalPostsCount");
	}
}
