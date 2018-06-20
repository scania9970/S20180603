package com.threejo.cota.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.threejo.cota.model.Career;

@Repository
public class CareerDaoImpl implements CareerDao{
	@Autowired
	private SqlSession session;

	@Override
	public List<Career> getCareers(String email) {
		return session.selectList("getCareers", email);
	}
	
	
	
}
