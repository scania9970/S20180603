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
		System.out.println("dao");
		System.out.println("email : " + member.getEmail());
		System.out.println("password : " + member.getPassword());
		System.out.println("nickname : " + member.getNickname());
		System.out.println("profile_url : " + member.getProfile_url());
		System.out.println("is_enterprise : " + member.getIs_enterprise());
		return session.insert("insert", member);
	}

}
