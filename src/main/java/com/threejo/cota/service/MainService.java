package com.threejo.cota.service;

import java.util.List;

import com.threejo.cota.model.Statistics_TODAY;

public interface MainService {

	List<Statistics_TODAY> selectDailyRanking();

	List<Statistics_TODAY> selectWeeklyRanking();

	List<Statistics_TODAY> selectAnualRanking();

}
