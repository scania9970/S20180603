package com.threejo.cota.service;

import java.util.ArrayList;

import com.threejo.cota.model.Board;

public interface GroupService {

	ArrayList<Board> getPosts();

	void insertGroup(Board board);

	Board getGroupPost(int bnum);
	
}
