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
	public List<String> selectTypingData(String lang_type) {
		System.out.println("lang_type : " + lang_type);
		System.out.println("dataList : " + session.selectList("selectTypingData", lang_type));
		return session.selectList("selectTypingData", lang_type);
	}

}
