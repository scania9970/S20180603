package com.threejo.cota.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainDaoImpl implements MainDao{
	@Autowired
	SqlSession session;

	@Override
	public List<String> selectDailyRanking() {
		return session.selectList("selectDailyRanking");
	}
}
