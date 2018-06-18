package com.threejo.cota.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.threejo.cota.model.Portfolio;

@Repository
public class PortfolioDaoImpl implements PortfolioDao{
	
	@Autowired
	private SqlSession session;

	
	
}
