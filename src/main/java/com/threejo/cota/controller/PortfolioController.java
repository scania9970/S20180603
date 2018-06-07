package com.threejo.cota.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.threejo.cota.model.Board;
import com.threejo.cota.model.Portfolio;
import com.threejo.cota.service.PortfolioService;

@Controller
public class PortfolioController {

	@Autowired
	private PortfolioService ps;
	
	@RequestMapping(value="/po")
	public String listvalue(Board board, Model model) {
		
		return "main/portfolio";
	}
	@RequestMapping(value="poupdate")
	public String portfolio(Model model, Portfolio portfolio) {
		int result = ps.insert(portfolio);
		return "main/portfolio";
	}
}
