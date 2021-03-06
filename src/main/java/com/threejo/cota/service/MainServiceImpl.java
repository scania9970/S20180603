package com.threejo.cota.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.threejo.cota.dao.MainDao;
import com.threejo.cota.model.Statistics_TODAY;

@Service
public class MainServiceImpl implements MainService{
	@Autowired
	MainDao mainDao;

	@Override
	public List<Statistics_TODAY> selectDailyRanking() {
		return mainDao.selectDailyRanking();
	}

	@Override
	public List<Statistics_TODAY> selectWeeklyRanking() {
		return mainDao.selectWeeklyRanking();
	}

	@Override
	public List<Statistics_TODAY> selectAnualRanking() {
		return mainDao.selectAnualRanking();
	}
}
