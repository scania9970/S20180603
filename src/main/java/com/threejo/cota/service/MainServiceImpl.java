package com.threejo.cota.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.threejo.cota.dao.MainDao;

@Service
public class MainServiceImpl implements MainService{
	@Autowired
	MainDao mainDao;
}
