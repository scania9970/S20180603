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
import com.threejo.cota.service.Paging;
import com.threejo.cota.service.ReplyService;



@Controller
public class BoardController {
	
	@Autowired
	private BoardService bs;
	@Autowired
	private ReplyService rs;
	
	@RequestMapping(value="/list1")  /* 게시판 목록*/
	public String listvalue(Board board,String currentPage, Model model) {
		int total = bs.total();
		Paging pg = new Paging(total, currentPage);
		board.setStart(pg.getStart());
		board.setEnd(pg.getEnd());
		List<Board> list = bs.list(board);
		
		model.addAttribute("total", bs.total());
		model.addAttribute("list", list);
		model.addAttribute("pg", pg);
		return "board/Boardlist";
	}
	@RequestMapping(value="/list2")  /* 게시판 목록*/
	public String list2value(Board board,String currentPage, Model model) {
		int total = bs.total2();
		Paging pg = new Paging(total, currentPage);
		board.setStart(pg.getStart());
		board.setEnd(pg.getEnd());
		List<Board> list2 = bs.list2(board);
		
		model.addAttribute("total", bs.total2());
		model.addAttribute("list2", list2);
		model.addAttribute("pg", pg);
		return "board/Boardlist2";
	}
	@RequestMapping(value="/postingform")  /* 게시판 글쓰는 폼*/
	public String postingform() {
		
		return "board/boardposting";
	}
	@RequestMapping(value="/postingform2")  /* 게시판 글쓰는 폼*/
	public String postingform2() {
		
		return "board/boardposting2";
	}
	
	@RequestMapping(value="/postform1")    
	public String postform(int bnum,Reply reply, Model model) {

		/*조회수 업데이트*/
		int a = bs.view_countupdate(bnum);
		
		Board board = bs.post(bnum);
		model.addAttribute("board", board);
		
		
		List<Reply> replylist = rs.rlist(reply);
		model.addAttribute("rlist", replylist);
		System.out.println("rlist" + replylist);
		return "board/boardpost";
	}
	
	@RequestMapping(value="/postform2")    
	public String postform2(int bnum,Reply reply, Model model) {

		/*조회수 업데이트*/
		int a = bs.view_countupdate(bnum);
		
		Board board = bs.post(bnum);
		model.addAttribute("board", board);
		
		
		List<Reply> replylist = rs.rlist(reply);
		model.addAttribute("rlist", replylist);
		System.out.println("rlist" + replylist);
		return "board/boardpost2";
	}
	
	@RequestMapping(value="/posting")
	public String posting(Board board, Model model) {
		int result = bs.boardinsert(board);
		if(result > 0) {
			model.addAttribute("msg", "포스팅 성공");
			return "redirect:list1";
		} else {
			model.addAttribute("msg", "포스팅 실패");
			return "board/boardposting";
		}
	}
	
	@RequestMapping(value="/posting2")
	public String posting2(Board board, Model model) {
		int result = bs.boardinsert2(board);
		if(result > 0) {
			model.addAttribute("msg", "포스팅 성공");
			return "redirect:list2";
		} else {
			model.addAttribute("msg", "포스팅 실패");
			return "board/boardposting2";
		}
	}
	@RequestMapping(value="boardupdateForm")
	public String boardupdateForm(int bnum, Model model) {
		Board board = bs.post(bnum);
		model.addAttribute("board", board);
		return "board/boardupdateForm";
	}
	@RequestMapping(value="boardupdateForm2")
	public String boardupdateForm2(int bnum, Model model) {
		Board board = bs.post(bnum);
		model.addAttribute("board", board);
		return "board/boardupdateForm2";
	}
	@RequestMapping(value="/boardupdate")
	public String boardupdate(Board board, Model model) {
		int a = bs.boardupdate(board);
		return "board/boardpost";
	}
	@RequestMapping(value="/boardupdate2")
	public String boardupdate2(Board board, Model model) {
		int a = bs.boardupdate(board);
		return "board/boardpost2";
	}
	@RequestMapping(value="boarddelete")
	public String boarddelete(int bnum, Model model) {
		rs.replydelete(bnum);
		bs.boarddelete(bnum);
		
		return "redirect:list1";
	}
	
	@RequestMapping(value="boarddelete2")
	public String boarddelete2(int bnum, Model model) {
		rs.replydelete(bnum);
		bs.boarddelete(bnum);
		
		return "redirect:list2";
	}

	@RequestMapping(value="replyPosting1")
	public String replyPosting1(Reply reply, Model model) {
		
		int result = rs.replyinsert(reply);
		if(result > 0) {
			model.addAttribute("msg", "댓글입력 성공");
			return "redirect:list1";
			
		} else {
			model.addAttribute("msg", "댓글입력 실패");
			return "redirect:list1";
		}
	}
	@RequestMapping(value="replyPosting2")
	public String replyPosting2(Reply reply, Model model) {
		int result = rs.replyinsert(reply);
		if(result > 0) {
			model.addAttribute("msg", "댓글입력 성공");
			return "redirect:list2";
			
		} else {
			model.addAttribute("msg", "댓글입력 실패");
			return "redirect:list2";
		}
	}
}
