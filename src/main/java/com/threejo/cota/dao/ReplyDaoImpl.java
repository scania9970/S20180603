package com.threejo.cota.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.threejo.cota.model.Reply;

@Repository
public class ReplyDaoImpl implements ReplyDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public int replyinsert(Reply reply) {
		return session.insert("Replyinsert", reply);
	}

	@Override
	public List<Reply> rlist(Reply reply) {
		return session.selectList("Replylist", reply);
	}

	@Override
	public int replydelete(int bnum) {
		return session.delete("replydelete", bnum);
	}
}
