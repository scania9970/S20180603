package com.threejo.cota.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.threejo.cota.dao.MypageDao;
import com.threejo.cota.model.Career;
import com.threejo.cota.model.Mypage;
import com.threejo.cota.model.Portfolio;
import com.threejo.cota.model.Project;
import com.threejo.cota.model.Statistics_TODAY;

@Service
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	private MypageDao md;

	@Override
	public Mypage selectMyinfo(String email) {
		
		return md.selectMyinfo(email);
	}

	@Override
	public int updateMyinfo(Mypage member) {
		return md.updateMyinfo(member);
	}

	@Override
	public List<Statistics_TODAY> selectListStatToday(String email) {
		return md.selectListStatToday(email);
	}

	@Override
	public Portfolio selectMyinfoPort(String email) {
		return md.selectMyinfoPort(email);
	}

	@Override
	public int insertMyinfoPort(Portfolio portfolio) {
		return md.insertMyinfoPort(portfolio);
	}

	@Override
	public int updateMyinfoPort(Portfolio portfolio) {
		return md.updateMyinfoPort(portfolio);
	}

	@Override
	public List<Career> selectMyinfoCareer(String email) {
		return md.selectMyinfoCareer(email);
	}

	@Override
	public int insertMyinfoCareer(Career career) {
		return md.insertMyinfoCareer(career);
	}

	@Override
	public int deleteMyinfoCareer(int cnum) {
		return md.deleteMyinfoCareer(cnum);
	}

	@Override
	public List<Project> selectMyinfoProject(String email) {
		return md.selectMyinfoProject(email);
	}

	@Override
	public int insertMyinfoProject(Project project) {
		return md.insertMyinfoProject(project);
	}

	@Override
	public int deleteMyinfoProject(int pnum) {
		return md.deleteMyinfoProject(pnum);
	}

	@Override
	public int updateMypagePass(String email, String password) {
		return md.updateMypagePass(email, password);
	}

}
