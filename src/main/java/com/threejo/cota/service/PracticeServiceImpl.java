package com.threejo.cota.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.threejo.cota.dao.PracticeDao;
import com.threejo.cota.model.Practice;
@Service
public class PracticeServiceImpl implements PracticeService{
	
	@Autowired
	private PracticeDao pd;
	
	@Override
	public List<String> getTypingData(String lang_type) {
		return pd.selectTypingData(lang_type);
	}
	
}
