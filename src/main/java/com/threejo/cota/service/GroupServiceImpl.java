package com.threejo.cota.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.threejo.cota.dao.GroupDao;
import com.threejo.cota.model.Board;

@Service
public class GroupServiceImpl implements GroupService{
	@Autowired
	private GroupDao gd;

	@Override
	public ArrayList<Board> getPosts() {
		return (ArrayList<Board>)gd.getPosts();
	}

	@Override
	public void insertGroup(Board board) {
		gd.insertGroup(board);
	}

	@Override
	public Board getGroupPost(int bnum) {
		return gd.getGroupPost(bnum);
	}

}
