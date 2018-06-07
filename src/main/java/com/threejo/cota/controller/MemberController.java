package com.threejo.cota.controller;

import java.util.List;

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

	@RequestMapping(value = "join") // 헤더 주소 회원가입
	public String mbinsert(Member member, Model model) {

		int result = ms.insert(member);

		System.out.println("controller");
		System.out.println("email  : " + member.getEmail());
		System.out.println("password  : " + member.getPassword());
		System.out.println("nickname  : " + member.getNickname());
		System.out.println("profile_url  : " + member.getProfile_url());

		if (result <= 0) {
			model.addAttribute("msg", "오류 : 회원 정보 입력 실패");
			return "join";
		} else {

			return "member/join"; // jsp
		}

	}

	@RequestMapping(value = "login") // 로그인 창
	public String login() {

		return "member/login";
	}

}
