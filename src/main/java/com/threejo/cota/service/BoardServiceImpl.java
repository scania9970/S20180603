package com.threejo.cota.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.threejo.cota.dao.BoardDao;
import com.threejo.cota.model.Board;


@Service
public class BoardServiceImpl implements BoardService{
	
	/*@Autowired
	private BoardDao bd;
*/
	@Override
	public List<Board> list(Board board) {
		return null;
	}
	
}
