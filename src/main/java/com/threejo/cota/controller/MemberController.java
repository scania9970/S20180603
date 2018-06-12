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
	
	@RequestMapping(value="joinpage")
	public String joinwrite() {
		
		return "member/join";
	}
	
	@RequestMapping(value="join") // 헤더 주소
	public String mbinsert(Member member, Model model) {

		int result = ms.insert(member);
		
			return "member/login"; // jsp 
		}
	

}
