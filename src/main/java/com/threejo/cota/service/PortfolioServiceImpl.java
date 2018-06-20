package com.threejo.cota.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.threejo.cota.dao.PortfolioDao;
import com.threejo.cota.dao.ProjectDao;
import com.threejo.cota.model.Portfolio;
import com.threejo.cota.model.Project;

@Service
public class PortfolioServiceImpl implements PortfolioService{
	
	@Autowired
	private PortfolioDao pd;
	
	@Override
	public Portfolio getPortfolio(String email) {
		return pd.getPortfolio(email);
	}

}
