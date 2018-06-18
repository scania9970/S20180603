package com.threejo.cota.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.threejo.cota.dao.ReplyDao;
import com.threejo.cota.model.Reply;

@Service
public class ReplyServiceImpl implements ReplyService{
	
	@Autowired
	private ReplyDao rd;

	@Override
	public int replyinsert(Reply reply) {
		return  rd.replyinsert(reply);
	}

	@Override
	public List<Reply> rlist(Reply reply) {
		return rd.rlist(reply);
	}

	@Override
	public int replydelete(int bnum) {
		return rd.replydelete(bnum);
	}


	
}
