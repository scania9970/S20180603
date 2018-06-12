package com.threejo.cota.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.threejo.cota.model.Mypage;
import com.threejo.cota.service.MypageService;

@Controller
public class MypageController {

	@Autowired
	private MypageService ms;
	
	@RequestMapping(value = "myinfo")
	public String myinfo(String email, Model model) {
		Mypage memberInfo = ms.viewMemberInfo(email);
		model.addAttribute("member", memberInfo);
		
		return "mypage/myinfo";
	}
}
