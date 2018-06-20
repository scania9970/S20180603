package com.threejo.cota.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.threejo.cota.dao.PracticeDao;
import com.threejo.cota.model.Statistics_TODAY;
@Service
public class PracticeServiceImpl implements PracticeService{
	
	@Autowired
	private PracticeDao pd;
	
	@Override
	public List<String> getTypingDataSentence(String lang_type) {
		return pd.selectTypingDataSentence(lang_type);
	}

	@Override
	public List<String> getTypingDataWord(String lang_type) {
		return pd.selectTypingDataWord(lang_type);
	}

	@Override
	public List<String> getTypingDataParagraph(String lang_type) {
		return pd.selectTypingDataParagraph(lang_type);
	}

	@Override
	public List<String> getParagraphList(String lang_type) {
		return pd.getParagraphList(lang_type);
	}

	@Override
	public String getParagraphContent(String para_title) {
		return pd.getParagraphContent(para_title);
	}

	@Override
	public void insertStatistics(Statistics_TODAY statistics_TODAY) {
		pd.insertStatistics(statistics_TODAY);
	}

	
}
