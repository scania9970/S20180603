package com.threejo.cota.dao;

import java.util.List;

import com.threejo.cota.model.Practice;

public interface PracticeDao {

	List<String> selectTypingDataSentence(String lang_type);
	List<String> selectTypingDataWord(String lang_type);

}
