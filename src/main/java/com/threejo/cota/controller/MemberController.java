package com.threejo.cota.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.threejo.cota.model.Member;
import com.threejo.cota.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService ms;

	@RequestMapping(value = "joinpage") // 회원가입 페이지
	public String joinpage() {

		return "member/join";
	}

	@RequestMapping(value = "insertmb", method = RequestMethod.POST) // 헤더 주소 회원가입
	public String insertmb(Member member, Model model) {
		
		int result = ms.insert(member); // 받아올 데이터타입 앞에 선언 해줌

			return "member/join"; // jsp

	}

	@RequestMapping(value = "login") // 로그인 창
	public String login() {

		return "member/login";
	}

}
