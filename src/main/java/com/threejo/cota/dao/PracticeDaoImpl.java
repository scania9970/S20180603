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
	public List<String> selectTypingData(String lang_type) {
		System.out.println("2.lang_type : '" + lang_type +"'");
		List<String> prac = null;
		prac = session.selectList("selectTypingData", lang_type);
		System.out.println("3. PracticeDaoImpl prac.size()-> " +prac.size());
		return prac;
	}
}
