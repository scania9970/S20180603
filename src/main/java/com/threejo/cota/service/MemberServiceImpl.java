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
	public int insert(Member member) { // insert 회원가입
		return md.insert(member);
	}

	@Override // ajax
	public int emailCheck(String email) {
		int result = 0;
		if (md.emailCheck(email) != null) {
			result = 1;
		}

		return result;
	}

	@Override // ajax
	public String nicknameCheck(String nickname) {

		return md.nicknameCheck(nickname);
	}

	@Override
	public Member select(Member member) { // select 로그인
		
		return md.select(member);
	}
	
	@Override // ajax
	public String EmailConfirmPro(String email) { // EmailConfirm java 파일 ajax 구현
		EmailConfirm confirm = new EmailConfirm();
		return confirm.connectEmail(email, 0);
	}
	
	@Override
	public Member passwordchange(Member member) {
		
		return md.passwordchange(member);
	}
	
	@Override // ajax
	public String FindPasswordPro(String email) {
		EmailConfirm confirm = new EmailConfirm();
		return confirm.connectEmail(email, 1);
	}
}
