package com.threejo.cota.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.threejo.cota.dao.CareerDao;
import com.threejo.cota.model.Career;

@Service
public class CareerServiceImpl implements CareerService{
	@Autowired
	private CareerDao cd;

	@Override
	public List<Career> getCareers(String email) {
		return cd.getCareers(email);
	}
}
