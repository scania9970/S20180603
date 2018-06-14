package com.threejo.cota.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.threejo.cota.dao.MypageDao;
import com.threejo.cota.model.Mypage;

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

}
