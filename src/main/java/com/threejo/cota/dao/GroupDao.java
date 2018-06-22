package com.threejo.cota.dao;

import java.util.List;

import com.threejo.cota.model.Board;

public interface GroupDao {

	List<Board> getPosts();

	void insertGroup(Board board);

	Board getGroupPost(int bnum);

}
