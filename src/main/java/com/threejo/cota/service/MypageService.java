package com.threejo.cota.service;

import java.util.List;

import com.threejo.cota.model.Career;
import com.threejo.cota.model.Mypage;
import com.threejo.cota.model.Portfolio;
import com.threejo.cota.model.Statistics_TODAY;

public interface MypageService {

	Mypage selectMyinfo(String email);
	int updateMyinfo(Mypage member);
	
	Portfolio selectMyinfoPort(String email);
	int insertMyinfoPort(Portfolio portfolio);
	int updateMyinfoPort(Portfolio portfolio);
	
	List<Career> selectMyinfoCareer(String email);
	int insertMyinfoCareer(List<Career> career);
	
	List<Statistics_TODAY> selectListStatToday(String email);
	
}
