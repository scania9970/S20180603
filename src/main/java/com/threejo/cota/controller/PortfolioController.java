package com.threejo.cota.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.threejo.cota.model.Board;
import com.threejo.cota.model.Career;
import com.threejo.cota.model.Portfolio;
import com.threejo.cota.model.Project;
import com.threejo.cota.service.CareerService;
import com.threejo.cota.service.PortfolioService;
import com.threejo.cota.service.ProjectService;

@Controller
public class PortfolioController {

	@Autowired
	private PortfolioService ps;
	
	@Autowired
	private ProjectService pros;
	
	@Autowired
	private CareerService cs;
	
	@RequestMapping(value="/po")
	public String listvalue(Board board, Model model) {
		
		return "portfolio/portfolio";
	}
	
	@RequestMapping(value="/viewPortfolio")
	public String viewPortfolio(String email, Model model) {
		Portfolio port = ps.getPortfolio(email);
		ArrayList<Project> projects = (ArrayList<Project>)pros.getProjects(email);
		ArrayList<Career> careers = (ArrayList<Career>)cs.getCareers(email);
		model.addAttribute("port", port);
		model.addAttribute("projects", projects);
		model.addAttribute("careers", careers);
		return "portfolio/portfolioView";
	}
}
