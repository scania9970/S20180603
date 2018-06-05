package com.threejo.cota.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class PortfolioDaoImpl implements PortfolioDao{
	
	@Autowired
	private SqlSession session;
	
	
}
