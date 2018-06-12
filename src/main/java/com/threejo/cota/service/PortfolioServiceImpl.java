package com.threejo.cota.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.threejo.cota.dao.PortfolioDao;
import com.threejo.cota.model.Portfolio;

@Service
public class PortfolioServiceImpl implements PortfolioService{
	
	@Autowired
	private PortfolioDao pd;
	
	@Override
	public int insert(Portfolio portfolio) {

		return pd.insert(portfolio);
	}

}
