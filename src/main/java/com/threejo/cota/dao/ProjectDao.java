package com.threejo.cota.dao;

import java.util.List;

import com.threejo.cota.model.Project;

public interface ProjectDao {

	List<Project> getProjects(String email);

}
