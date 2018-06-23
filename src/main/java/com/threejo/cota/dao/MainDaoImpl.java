package com.threejo.cota.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.threejo.cota.model.Statistics_TODAY;

@Repository
public class MainDaoImpl implements MainDao{
	
	@Autowired
	SqlSession session;

	@Override
	public List<Statistics_TODAY> selectDailyRanking() {
		return session.selectList("selectDailyRanking");
	}

	@Override
	public List<Statistics_TODAY> selectWeeklyRanking() {
		return session.selectList("selectWeeklyRanking");
	}

	@Override
	public List<Statistics_TODAY> selectAnualRanking() {
		return session.selectList("selectAnualRanking");
	}
}
