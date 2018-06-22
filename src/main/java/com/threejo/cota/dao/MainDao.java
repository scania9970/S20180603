package com.threejo.cota.dao;

import java.util.List;

import com.threejo.cota.model.Statistics_TODAY;

public interface MainDao {

	List<Statistics_TODAY> selectDailyRanking();

}
