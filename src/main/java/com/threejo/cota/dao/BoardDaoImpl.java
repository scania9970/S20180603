package com.threejo.cota.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.threejo.cota.model.Board;

public class BoardDaoImpl implements BoardDao{
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<Board> list(Board board) {
		return session.selectList("Boardlist", board);
	}

}
