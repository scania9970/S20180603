package com.threejo.cota.dao;

import java.util.List;

import com.threejo.cota.model.Member;

public interface MemberDao {
	
	List<Member> list(Member member);

}
