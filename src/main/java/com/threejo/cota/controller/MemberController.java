package com.threejo.cota.controller;

import javax.servlet.http.HttpSession;

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
		return "member/joinPro"; // jsp

	}
	
	@RequestMapping(value = "loginpage")
	public String loginpage() {
		
		return "member/login";
	}

	@RequestMapping(value = "login") // 로그인 창
	public String login(HttpSession session, Member member, Model model) {
		
		Member resultMember = ms.select(member);
		
		if (resultMember != null) {
				// 성공
				System.out.println(member);
				System.out.println("여기냐 ?");
				
				session.setAttribute("member", resultMember); // session 에 email    jsppage 참고
				return "main/main";
			}
		// 실패
		return "member/login";
	}

}
