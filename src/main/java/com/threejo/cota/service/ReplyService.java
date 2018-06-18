package com.threejo.cota.service;

import java.util.List;

import com.threejo.cota.model.Reply;

public interface ReplyService {

	int replyinsert(Reply reply);

	List<Reply> rlist(Reply reply);

	int replydelete(int bnum);

}
