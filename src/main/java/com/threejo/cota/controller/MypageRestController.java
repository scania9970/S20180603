package com.threejo.cota.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.threejo.cota.service.MypageService;

@RestController
public class MypageRestController {
	
	@Autowired
	private MypageService ms;
	
	@RequestMapping(value = "deleteMyinfoCareer")
	public int deleteMyinfoCareer(int cnum) {
		return ms.deleteMyinfoCareer(cnum);
	}
	
	@RequestMapping(value = "deleteMyinfoProject")
	public int deleteMyinfoProject(int pnum) {
		return ms.deleteMyinfoProject(pnum);
	}

}
