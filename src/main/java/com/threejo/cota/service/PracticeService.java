package com.threejo.cota.service;

import java.util.List;

import com.threejo.cota.model.Practice;

public interface PracticeService {
	List<Practice> getTypingData(String lang_type);
}
