package com.threejo.cota.dao;

import com.threejo.cota.model.Member;

public interface MemberDao {
	
	int insert(Member member);
	
	String emailCheck(String email);
	
	String nicknameCheck(String nickname);

}
