package com.threejo.cota.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.threejo.cota.model.Board;

@Repository
public class BoardDaoImpl implements BoardDao{
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<Board> list(Board board) {
		return session.selectList("Boardlist", board);
	}

	@Override
	public int boardinsert(Board board) {
		return session.insert("Boardinsert", board);
	}

	@Override
	public Board post(int bnum) {
		return session.selectOne("post", bnum);
	}

	@Override
	public int boardupdate(Board board) {
		return session.update("boardupdate", board);
	}

	@Override
	public int boarddelete(int bnum) {
		return session.delete("boarddelete", bnum);
	}


}
