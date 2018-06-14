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
		
		return "board/Boardlist";
	}
	@RequestMapping(value="/postingform")
	public String postingform() {
		
		return "board/boardposting";
	}
	
	@RequestMapping(value="/postform")
	public String postform(int bnum, Model model) {
		
		Board board = bs.post(bnum);
		model.addAttribute("board", board);
		
		return "board/boardpost";
	}
	
	@RequestMapping(value="/posting")
	public String posting(Board board, Model model) {
		int result = bs.boardinsert(board);
		if(result > 0) {
			model.addAttribute("msg", "포스팅 성공");
			return "redirect:list";
		} else {
			model.addAttribute("msg", "포스팅 실패");
			return "board/boardposting";
		}
	}
	@RequestMapping(value="boardupdateForm")
	public String boardupdateForm(int bnum, Model model) {
		Board board = bs.post(bnum);
		model.addAttribute("board", board);
		return "board/boardupdateForm";
	}
	@RequestMapping(value="/boardupdate")
	public String boardupdate(Board board, Model model) {
		int a = bs.boardupdate(board);
		return "board/boardpost";
	}
	@RequestMapping(value="boarddelete")
	public String boarddelete(int bnum, Model model) {
		bs.boarddelete(bnum);
		
		return "redirect:list";
		
	}
	
}
