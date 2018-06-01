package com.threejo.cota.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.threejo.cota.model.Board;
import com.threejo.cota.service.BoardService;


@Controller
public class BoardController {
	
	@Autowired
	private BoardService bs;
	
	@RequestMapping(value="/list")
	public String listvalue(Board board, Model model) {
		List<Board> list = bs.list(board);
		
		model.addAttribute("list", list);
		
		return "main/Boardlist";
	}
}
