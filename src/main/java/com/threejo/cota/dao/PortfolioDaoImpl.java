package com.threejo.cota.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.threejo.cota.model.Portfolio;

public class PortfolioDaoImpl implements PortfolioDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public int insert(Portfolio portfolio) {
		return session.insert("insert",portfolio);
	}
	
	
}
