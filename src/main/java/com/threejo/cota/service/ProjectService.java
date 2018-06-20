package com.threejo.cota.service;

import java.util.List;

import com.threejo.cota.model.Project;

public interface ProjectService {
	
	List<Project> getProjects(String email);

}
