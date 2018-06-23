package com.threejo.cota.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.threejo.cota.model.Board;
import com.threejo.cota.model.Reply;
import com.threejo.cota.service.GroupService;

@Controller
public class GroupController {
	
	@Autowired
	private GroupService gs;
	
	@RequestMapping(value = "/group")
	public String showGroupBoard(Model model ) {
		ArrayList<Board> posts = gs.getPosts();
		model.addAttribute("posts", posts);
		model.addAttribute("total", posts.size());
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
		int bnum = board.getBnum();
		Board post = gs.getGroupPost(bnum); 
		int replyCnt = gs.getReplyCount(bnum);         /* 댓글 수량 */
		ArrayList<Reply> replys = (ArrayList<Reply>) gs.getReplys(bnum);
		gs.updateViewCount(bnum);
		model.addAttribute("post", post);
		model.addAttribute("replyCnt", replyCnt);
		model.addAttribute("replys", replys);
		return "board/viewGroupPost";
	}
	
	@RequestMapping(value = "/deleteGroupPost")
	public String deleteGroupPost(int bnum) {
		gs.deleteGroupPost(bnum);
		return "redirect:group";
	}
	
	@RequestMapping(value = "/showUpdateGroup")
	public String showUpdateForm(Model model, int bnum) {
		Board post = gs.getGroupPost(bnum);
		model.addAttribute("post", post);
		return "board/updateGroupForm";
	}
	
	@RequestMapping(value = "/udpateGroupPost")
	public String updateGroupPost(Board board) {
		int bnum = board.getBnum();
		System.out.println("bnum : " + bnum);
		gs.updateGroupPost(board);
		return "redirect:viewGroupPost?bnum="+bnum;
	}
}
