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
		
		ms.insert(member); // 받아올 데이터타입 앞에 선언 해줌
		System.out.println("checkbox : " + member.getIs_enterprise());
		return "member/login"; // jsp

	}
	
	@RequestMapping(value = "loginpage")
	public String loginpage() {
		
		return "member/login";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST) // 로그인 창
	public String login(String email, String password, Model model) {
		
		int resultEmail = ms.select(email);
		
		if (resultEmail == 1) {
			int resultPassword = ms.selectPassword(email, password);
			
			if (resultPassword == 1) {
				System.out.println(email);
				System.out.println(password);
				// 성공
				return "main/main";
			}
		}
		// 실패
		return "member/login";
	}

}
