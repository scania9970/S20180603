package com.threejo.cota.dao;

import java.util.List;

import com.threejo.cota.model.Career;
import com.threejo.cota.model.Mypage;
import com.threejo.cota.model.Portfolio;
import com.threejo.cota.model.Project;
import com.threejo.cota.model.Statistics_TODAY;

public interface MypageDao {

	Mypage selectMyinfo(String email);
	int updateMyinfo(Mypage member);
	
	Portfolio selectMyinfoPort(String email);
	int insertMyinfoPort(Portfolio portfolio);
	int updateMyinfoPort(Portfolio portfolio);
	
	List<Career> selectMyinfoCareer(String email);
	int insertMyinfoCareer(Career career);
	int deleteMyinfoCareer(int cnum);
	
	List<Project> selectMyinfoProject(String email);
	int insertMyinfoProject(Project project);
	int deleteMyinfoProject(int pnum);
	
	int updateMypagePass(String email, String password);
	
	int updateMypageLeave(String email);
	
	List<Statistics_TODAY> selectListStatToday(String email);
	
}
