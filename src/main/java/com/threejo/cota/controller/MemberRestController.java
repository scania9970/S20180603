package com.threejo.cota.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.threejo.cota.service.MemberService;


@RestController
public class MemberRestController {
	
	@Autowired
	private MemberService ms;
	
	@RequestMapping(value = "emailCheck")
	public int emailCheck(String email) {
		int result = ms.emailCheck(email);
		
		return result;
	}
	
	@RequestMapping(value = "nicknameCheck")
	public String nicknameCheck(String nickname) {
		ms.nicknameCheck(nickname);
		
		return ms.nicknameCheck(nickname);
	}
	
	@RequestMapping(value = "EmailConfirmPro")
	public String EmailConfirmPro(String email) {
		return ms.EmailConfirmPro(email);
	}

}
