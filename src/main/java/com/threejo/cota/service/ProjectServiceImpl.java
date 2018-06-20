package com.threejo.cota.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.threejo.cota.dao.ProjectDao;
import com.threejo.cota.model.Project;

@Service
public class ProjectServiceImpl implements ProjectService{
	
	@Autowired 
	private ProjectDao prod;
	
	@Override
	public List<Project> getProjects(String email) {
		return prod.getProjects(email);
	}
}
