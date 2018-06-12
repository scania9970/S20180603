package com.threejo.cota.service;

import java.util.List;

import com.threejo.cota.model.Practice;

public interface PracticeService {
	List<String> getTypingDataSentence(String lang_type);

	List<String> getTypingDataWord(String lang_type);
}
