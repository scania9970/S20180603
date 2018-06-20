package com.threejo.cota.service;

import java.util.List;

import com.threejo.cota.model.Career;

public interface CareerService {

	List<Career> getCareers(String email);

}
