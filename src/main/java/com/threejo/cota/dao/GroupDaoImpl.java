package com.threejo.cota.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.threejo.cota.model.Board;

@Repository
public class GroupDaoImpl implements GroupDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public List<Board> getPosts() {
		return session.selectList("getPosts");
	}

	@Override
	public void insertGroup(Board board) {
		session.insert("insertGroup", board);
	}

	@Override
	public Board getGroupPost(int bnum) {
		return session.selectOne("getGroupPost", bnum);
	}
}
