package com.threejo.cota.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.threejo.cota.dao.MemberDao;
import com.threejo.cota.model.Member;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao md;
	
	@Override
	public int insert(Member member) {
		System.out.println("service");
		System.out.println("member id : " + member.getEmail());
		System.out.println("member id : " + member.getPassword());
		System.out.println("member id : " + member.getNickname());
		System.out.println("member id : " + member.getProfile_url());
		return md.insert(member);
	}

}
