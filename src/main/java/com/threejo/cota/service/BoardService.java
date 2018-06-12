package com.threejo.cota.service;

import java.util.List;

import com.threejo.cota.model.Board;

public interface BoardService {

	List<Board> list(Board board);

	int boardinsert(Board board);

	Board post(int bnum);


}
