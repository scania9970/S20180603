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
	public Mypage viewMemberInfo(String email) {
		
		return md.viewMemberInfo(email);
	}

}
