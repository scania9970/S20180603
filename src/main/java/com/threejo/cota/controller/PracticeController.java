package com.threejo.cota.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.threejo.cota.service.PracticeService;

@Controller
public class PracticeController {
	
	@Autowired
	private PracticeService ps;
	
	@RequestMapping(value="/sentence")
	public String loadSentencePrac(Model model, String lang_type) {
		ArrayList<String> dataList = (ArrayList<String>)ps.getTypingData(lang_type);
		System.out.println("dataList : " + dataList);
		System.out.println("lang_type : " + lang_type);
		model.addAttribute("dataList", dataList);
		return "practice/sentence";
	}
	
	@RequestMapping(value="/typingGame")
	public String loadTypingGame() {
		return "practice/typingGame";
	}
}
