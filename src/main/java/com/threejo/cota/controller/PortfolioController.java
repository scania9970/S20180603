package com.threejo.cota.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.threejo.cota.model.Board;
import com.threejo.cota.service.PortfolioService;

@Controller
public class PortfolioController {

	@Autowired
	private PortfolioService ps;
	
	@RequestMapping(value="/po")
	public String listvalue(Board board, Model model) {
		
		return "portfolio/portfolio";
	}
}
