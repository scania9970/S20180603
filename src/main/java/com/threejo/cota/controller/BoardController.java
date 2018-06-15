package com.threejo.cota.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.threejo.cota.model.Board;
import com.threejo.cota.model.Reply;
import com.threejo.cota.service.BoardService;
import com.threejo.cota.service.ReplyService;


@Controller
public class BoardController {
	
	@Autowired
	private BoardService bs;
	@Autowired
	private ReplyService rs;
	
	@RequestMapping(value="/list")  /* 게시판 목록*/
	public String listvalue(Board board, Model model) {
		List<Board> list = bs.list(board);
		
		model.addAttribute("list", list);
		System.out.println("list"+ list);
		return "board/Boardlist";
	}
	@RequestMapping(value="/postingform")  /* 게시판 글쓰는 폼*/
	public String postingform() {
		
		return "board/boardposting";
	}
	
	@RequestMapping(value="/postform")    
	public String postform(int bnum,Reply reply, Model model) {
		
		Board board = bs.post(bnum);
		model.addAttribute("board", board);
		
		List<Reply> replylist = rs.rlist(reply);
		model.addAttribute("rlist", replylist);
		System.out.println("rlist" + replylist);
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
		rs.replydelete(bnum);
		bs.boarddelete(bnum);
		
		return "redirect:list";
	}

	@RequestMapping(value="replyPosting")
	public String replyPosting(Reply reply, Model model) {
		int result = rs.replyinsert(reply);
		if(result > 0) {
			model.addAttribute("msg", "댓글입력 성공");
			return "redirect:list";
			
		} else {
			model.addAttribute("msg", "댓글입력 실패");
			return "redirect:list";
		}
	}
}
