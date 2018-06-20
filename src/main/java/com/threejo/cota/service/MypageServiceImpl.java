package com.threejo.cota.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.threejo.cota.dao.MypageDao;
import com.threejo.cota.model.Mypage;
import com.threejo.cota.model.Portfolio;
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

}
