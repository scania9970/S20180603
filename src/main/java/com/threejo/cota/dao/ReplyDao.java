package com.threejo.cota.dao;

import java.util.List;

import com.threejo.cota.model.Reply;

public interface ReplyDao {

	int replyinsert(Reply reply);

	List<Reply> rlist(Reply reply);

	int replydelete(int bnum);

}
