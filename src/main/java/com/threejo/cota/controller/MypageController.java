package com.threejo.cota.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.threejo.cota.service.MypageService;

@Controller
public class MypageController {

//	@Autowired
//	private MypageService bs;
	
	@RequestMapping(value = "mypage")
	public String mypage() {
		return "redirect:myinfo";
	}
	
	@RequestMapping(value = "myinfo")
	public String myinfo(Model model) {
		return "mypage/myinfo";
	}
}
