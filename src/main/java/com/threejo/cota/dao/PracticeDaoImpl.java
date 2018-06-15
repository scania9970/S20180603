package com.threejo.cota.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class PracticeDaoImpl implements PracticeDao{

	@Autowired
	SqlSession session;
	
	@Override
	public List<String> selectTypingDataSentence(String lang_type) {
		return session.selectList("selectTypingDataSentence", lang_type);
	}

	@Override
	public List<String> selectTypingDataWord(String lang_type) {
		return session.selectList("selectTypingDataWord", lang_type);
	}

	@Override
	public List<String> selectTypingDataParagraph(String lang_type) {
		return session.selectList("selectTypingDataParagraph", lang_type);
	}

	@Override
	public List<String> getParagraphList(String lang_type) {
		return session.selectList("selectParagraphList", lang_type);
	}

	@Override
	public String getParagraphContent(String para_title) {
		return session.selectOne("getParagraphContent", para_title);
	}

}
