package com.threejo.cota.service;

import com.threejo.cota.model.Mypage;

public interface MypageService {

	Mypage selectMyinfo(String email);
	int updateMyinfo(Mypage member);
	
}
