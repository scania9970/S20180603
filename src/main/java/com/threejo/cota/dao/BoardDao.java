package com.threejo.cota.dao;

import java.util.List;

import com.threejo.cota.model.Board;

public interface BoardDao {

	List<Board> list(Board board);

}