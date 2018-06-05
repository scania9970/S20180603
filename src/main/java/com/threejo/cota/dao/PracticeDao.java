package com.threejo.cota.dao;

import java.util.List;

import com.threejo.cota.model.Practice;

public interface PracticeDao {

	List<String> selectTypingData(String lang_type);

}
