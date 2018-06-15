package com.threejo.cota.service;


import javax.validation.OverridesAttribute;

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
	
	@Override // ajax
	public int emailCheck(String email) {
		int result = 0;
		if(md.emailCheck(email) != null) {
			result = 1;
		}
		
		return result;
	}
	
	@Override // ajax
	public String nicknameCheck(String nickname) {
		md.nicknameCheck(nickname);
		
		return md.nicknameCheck(nickname);
	}
	
	@Override
	public int select(String email) {
		int resultEmail = 0;
		if(md.select(email) != null) {
			resultEmail = 1;
			
		}
		
		return resultEmail;
	}
	
	@Override
	public int selectPassword(String email, String password) {
		int resultPassword = 0;
		if(md.selectPassword(email, password) != null) {
			resultPassword = 1;
			
		}
		
		return resultPassword;
	}

}
