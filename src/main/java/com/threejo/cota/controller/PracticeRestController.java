package com.threejo.cota.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.threejo.cota.service.PracticeService;

@RestController
public class PracticeRestController {
	
	@Autowired
	PracticeService ps;
	
	@RequestMapping(value="/paragraphlist")
	public ArrayList<String> getParagraphList(String lang_type){
		ArrayList<String> list = (ArrayList<String>)ps.getParagraphList(lang_type);
		return list;
	}
	
	@RequestMapping(value="/getParagraphContent")
	public String getParagraphContent(String para_title) {
		return ps.getParagraphContent(para_title);
	}
	
}
