package com.threejo.cota.service;


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
		return md.insert(member);
	}
	
	@Override
	public int emailCheck(String email) {
		int result = 0;
		if(md.emailCheck(email) != null) {
			result = 1;
		}
		
		return result;
	}

}
