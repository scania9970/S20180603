package com.threejo.cota.dao;

import java.util.List;

import com.threejo.cota.model.Career;

public interface CareerDao {

	List<Career> getCareers(String email);

}
