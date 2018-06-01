package com.threejo.cota.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.threejo.cota.model.Member;
import com.threejo.cota.service.MemberService;

@Controller
public class MemberController {
	
//	@Autowired
//	private MemberService ms;
	
	@RequestMapping(value="join") // 헤더 주소
	public String listmb(Member member, Model model) {
//		List<Member> list = ms.list(member);
		
//		model.addAttribute("list", list);
		
		return "member/join"; // jsp 
	}

}
