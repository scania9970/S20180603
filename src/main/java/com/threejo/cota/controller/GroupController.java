package com.threejo.cota.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.threejo.cota.model.Board;
import com.threejo.cota.service.GroupService;

@Controller
public class GroupController {
	
	@Autowired
	private GroupService gs;
	
	@RequestMapping(value = "/group")
	public String showGroupBoard(Model model ) {
		ArrayList<Board> posts = gs.getPosts();
		model.addAttribute("posts", posts);
		return "board/groupBoard";
	}
	
	@RequestMapping(value = "/groupWriteForm")
	public String showWriteForm() {
		return "board/groupWriteForm";
	}
	
	@RequestMapping(value = "/insertGroup")
	public String insertGroup(Model model, Board board) {
		gs.insertGroup(board);
		return "redirect:group";
	}
	
	@RequestMapping(value="/viewGroupPost")
	public String getGroupPost(Model model, Board board) {
		Board post = gs.getGroupPost(board.getBnum()); 
		model.addAttribute("post", post);
		return "board/viewGroupPost";
	}
}
