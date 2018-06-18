package com.threejo.cota.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.threejo.cota.dao.BoardDao;
import com.threejo.cota.model.Board;


@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDao bd;
	
	@Override
	public List<Board> list(Board board) {
		return bd.list(board);
	}

	@Override
	public List<Board> list2(Board board) {
		return bd.list2(board);
	}
	
	@Override
	public int boardinsert(Board board) {
		return bd.boardinsert(board);
	}

	@Override
	public int boardinsert2(Board board) {
		return bd.boardinsert2(board);
	}
	
	@Override
	public Board post(int bnum) {
		return bd.post(bnum);
	}

	@Override
	public int boardupdate(Board board) {
		return bd.boardupdate(board);
	}

	@Override
	public int boarddelete(int bnum) {
		return bd.boarddelete(bnum);
	}

	@Override
	public int view_countupdate(int bnum) {
		return bd.view_countupdate(bnum);
	}




}
