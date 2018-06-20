package com.threejo.cota.service;

import com.threejo.cota.model.Member;

public interface MemberService {
	
	 int insert(Member member);
	 
	 //Ajax email Check
	 int emailCheck(String email);
	 
	 //Ajax nicknameCheck
	 String nicknameCheck(String nickname);
	 
	 Member select(Member member);
	 
}
