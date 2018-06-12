package com.threejo.cota.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.threejo.cota.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	MainService mainService;
	@RequestMapping(value = "/start")
	public String loadStartPage(Model theModel) {
		return "main/start";
	}
	@RequestMapping("/main")
	public String toMain(Model theModel) {
		String email = mainService.selectDailyRanking();
		theModel.addAttribute("email", email);
		return "main/main";
	}
	
}
