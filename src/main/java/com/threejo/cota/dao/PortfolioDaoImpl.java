package com.threejo.cota.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.threejo.cota.model.Portfolio;

@Repository
public class PortfolioDaoImpl implements PortfolioDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public Portfolio getPortfolio(String email) {
		return session.selectOne("getPortfolio", email);
	}

	
	
}
