package com.threejo.cota.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.threejo.cota.model.Practice;
import com.threejo.cota.service.PracticeService;

@Controller
public class PracticeController {
	
	@Autowired
	private PracticeService ps;
	
	@RequestMapping(value="/sentence")
	public String loadSentencePrac(Model model, String lang_type) {
		ArrayList<String> dataList = (ArrayList<String>)ps.getTypingDataSentence(lang_type);
		model.addAttribute("dataList", dataList);
		return "practice/sentence";
	}
	
	@RequestMapping(value="/word")
	public String loadWordPrac(Model model, String lang_type) {
		ArrayList<String> dataList = (ArrayList<String>)ps.getTypingDataWord(lang_type);
		model.addAttribute("dataList", dataList);
		return "practice/word";
	}
	
	@RequestMapping(value="/typingGame")
	public String loadTypingGame() {
		return "practice/typingGame";
	}
}
