package com.threejo.cota.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.threejo.cota.model.Practice;

@Repository
public class PracticeDaoImpl implements PracticeDao{

	@Autowired
	SqlSession session;
	
	@Override
	public List<String> selectTypingDataSentence(String lang_type) {
		List<String> prac = null;
		prac = session.selectList("selectTypingDataSentence", lang_type);
		return prac;
	}

	@Override
	public List<String> selectTypingDataWord(String lang_type) {
		List<String> prac = null;
		prac = session.selectList("selectTypingDataWord", lang_type);
		return prac;
	}
}
