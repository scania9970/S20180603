package com.threejo.cota.dao;

import com.threejo.cota.model.Mypage;

public interface MypageDao {

	Mypage selectMyinfo(String email);
	int updateMyinfo(Mypage member);
	
}
