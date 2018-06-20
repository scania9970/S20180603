package com.threejo.cota.service;

import java.util.List;

import com.threejo.cota.model.Board;

public interface BoardService {

	List<Board> list(Board board);

	List<Board> list2(Board board);

	int boardinsert(Board board);
	
	int boardinsert2(Board board);

	Board post(int bnum);

	int boardupdate(Board board);

	int boarddelete(int bnum);

	int view_countupdate(int bnum);

	int total();

	int total2();



}
