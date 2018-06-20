package com.threejo.cota.dao;

import java.util.List;

import com.threejo.cota.model.Mypage;
import com.threejo.cota.model.Portfolio;
import com.threejo.cota.model.Statistics_TODAY;

public interface MypageDao {

	Mypage selectMyinfo(String email);
	int updateMyinfo(Mypage member);
	Portfolio selectMyinfoPort(String email);
	
	List<Statistics_TODAY> selectListStatToday(String email);
	
}
