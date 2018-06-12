package com.threejo.cota.service;

import com.threejo.cota.model.Member;

public interface MemberService {
	
	 int insert(Member member);
	 
	 //Ajax email Check
	 int emailCheck(String email);
	 
	 String nicknameCheck(String nickname);
	 
}
