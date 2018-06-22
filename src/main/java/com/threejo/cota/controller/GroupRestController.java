package com.threejo.cota.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.threejo.cota.model.Board;
import com.threejo.cota.model.Reply;
import com.threejo.cota.model.Statistics_TODAY;
import com.threejo.cota.service.GroupService;

@RestController
public class GroupRestController {
	
	@Autowired
	GroupService gs;
	
	@RequestMapping(value="/insertGroupReply")
	public void insertGroupReply(Reply reply) {
		gs.insertGroupReply(reply);
	}
	
	@RequestMapping(value="/updateJoinStatus")
	public void updateJoinStatus(Board board) {
		gs.updateJoinStatus(board);
	}
	
}
