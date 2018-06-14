package com.threejo.cota.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.threejo.cota.model.Mypage;

@Repository
public class MypageDaoImpl implements MypageDao {

	@Autowired
	private SqlSession session;

	@Override
	public Mypage selectMyinfo(String email) {
		return session.selectOne("selectMyinfo", email);
	}

	@Override
	public int updateMyinfo(Mypage member) {
		return session.update("updateMyinfo", member);
	}
	
}
