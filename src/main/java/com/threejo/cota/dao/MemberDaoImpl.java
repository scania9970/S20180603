package com.threejo.cota.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.threejo.cota.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public int insert(Member member) {
		return session.insert("insertmb", member);
	}
	
	@Override
	public String emailCheck(String email) {
		return session.selectOne("emailCheck", email);
	}
	
	@Override
	public String nicknameCheck(String nickname) {
		return session.selectOne("nicknameCheck", nickname);
	}
	
	@Override
	public Member select(Member member) {
		return session.selectOne("login", member);
	}
	
/*	@Override
	public String EmailConfirmPro(String email) {
		return session.selectOne("EmailConfirmPro", email);
	}*/
}
