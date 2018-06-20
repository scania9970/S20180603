package com.threejo.cota.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.threejo.cota.model.Mypage;
import com.threejo.cota.model.Portfolio;
import com.threejo.cota.model.Statistics_TODAY;

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

	@Override
	public List<Statistics_TODAY> selectListStatToday(String email) {
		return session.selectList("selectListStatToday", email);
	}

	@Override
	public Portfolio selectMyinfoPort(String email) {
		return session.selectOne("selectMyinfoPort", email);
	}
	
}
