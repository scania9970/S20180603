package com.threejo.cota.dao;

import java.util.List;

import com.threejo.cota.model.Board;

public interface BoardDao {

	List<Board> list(Board board);

	int boardinsert(Board board);

	Board post(int bnum);

	int boardupdate(Board board);

	int boarddelete(int bnum);


}
