package com.threejo.cota.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.threejo.cota.model.Statistics_TODAY;
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
		ArrayList<Statistics_TODAY> daily = (ArrayList<Statistics_TODAY>)mainService.selectDailyRanking();
		ArrayList<Statistics_TODAY> weekly = (ArrayList<Statistics_TODAY>)mainService.selectWeeklyRanking();
		ArrayList<Statistics_TODAY> anual = (ArrayList<Statistics_TODAY>)mainService.selectAnualRanking();
		theModel.addAttribute("ranks_today", daily);
		theModel.addAttribute("ranks_weekly", weekly);
		theModel.addAttribute("ranks_anual", anual);
		return "main/main";
	}
	
	
	
}
