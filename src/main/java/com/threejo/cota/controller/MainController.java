package com.threejo.cota.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping(value = "/start")
	public String loadStartPage(Model theModel) {
		return "main/start";
	}
	@RequestMapping("/main")
	public String toMain(Model theModel) {
		return "main/main";
	}
	
}
