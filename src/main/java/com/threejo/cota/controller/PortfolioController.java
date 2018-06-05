package com.threejo.cota.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.threejo.cota.model.Board;

@Controller
public class PortfolioController {

	
	@RequestMapping(value="/po")
	public String listvalue(Board board, Model model) {
		
		return "main/portfolio";
	}
	@RequestMapping(value="poupdate")
	public String portfolio(Model model) {
		return null;
	}
}
