package com.threejo.cota.service;

import java.util.List;

import com.threejo.cota.model.Mypage;
import com.threejo.cota.model.Statistics_TODAY;

public interface MypageService {

	Mypage selectMyinfo(String email);
	int updateMyinfo(Mypage member);
	List<Statistics_TODAY> selectListStatToday(String email);
	
}
