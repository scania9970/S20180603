package com.threejo.cota.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SanghunController {
	@RequestMapping(value="/sentence")
	public String loadSentencePrac(Model model) {
		
		return "practice/sentence";
	}
	
	@RequestMapping(value="/typingGame")
	public String loadTypingGame() {
		return "practice/typingGame";
	}
}
